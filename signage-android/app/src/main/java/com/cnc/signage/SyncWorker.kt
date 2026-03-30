package com.cnc.signage

import android.content.Context
import android.util.Log
import androidx.work.*
import org.json.JSONObject
import java.net.HttpURLConnection
import java.net.SocketTimeoutException
import java.net.URL
import java.util.concurrent.TimeUnit
import androidx.work.ExistingWorkPolicy

class SyncWorker(context: Context, params: WorkerParameters) : Worker(context, params) {

    companion object {
        private const val TAG = "SyncWorker"

        // Retry config for cold start handling
        private const val MAX_RETRIES = 3
        private val TIMEOUTS = intArrayOf(15000, 25000, 40000) // Escalating timeouts
        private val RETRY_DELAYS = longArrayOf(0, 3000, 8000) // Wait before retry

        fun schedule(context: Context) {
            val constraints = Constraints.Builder()
                .setRequiredNetworkType(NetworkType.CONNECTED)
                .build()

            val syncRequest = PeriodicWorkRequestBuilder<SyncWorker>(5, TimeUnit.MINUTES)
                .setConstraints(constraints)
                .setBackoffCriteria(BackoffPolicy.LINEAR, 1, TimeUnit.MINUTES)
                .build()

            WorkManager.getInstance(context).enqueueUniquePeriodicWork(
                "cnc_sync",
                ExistingPeriodicWorkPolicy.KEEP,
                syncRequest
            )
        }

        fun triggerImmediate(context: Context) {
            val constraints = Constraints.Builder()
                .setRequiredNetworkType(NetworkType.CONNECTED)
                .build()
            val syncRequest = OneTimeWorkRequestBuilder<SyncWorker>()
                .setConstraints(constraints)
                .build()
            WorkManager.getInstance(context).enqueueUniqueWork(
                "cnc_sync_now",
                ExistingWorkPolicy.KEEP, // Don't cancel running sync
                syncRequest
            )
        }
    }

    override fun doWork(): Result {
        val config = Config(applicationContext)
        if (!config.isConfigured()) return Result.success()

        val serverUrl = config.getServerUrl()
        val screenNumber = config.getScreenNumber()
        val endpoint = "$serverUrl/api/screens/$screenNumber"

        // Try to fetch with escalating timeouts (handles Vercel cold starts)
        val serverData = fetchWithRetry(endpoint) ?: return Result.retry()

        return try {
            // Always save config from server (schedule, interval, off mode)
            config.setScreenOnTime(serverData.optString("screenOnTime", ""))
            config.setScreenOffTime(serverData.optString("screenOffTime", ""))
            config.setScreenOffMode(serverData.optString("screenOffMode", "dim"))

            // Save burst config
            val burst = serverData.optJSONObject("burst")
            if (burst != null) {
                config.setBurstEnabled(burst.optBoolean("enabled", false))
                config.setBurstImageUrl(burst.optString("imageUrl", ""))
                config.setBurstInterval(burst.optInt("interval", 3))
                config.setBurstDuration(burst.optInt("duration", 10))
            }
            val serverInterval = serverData.optLong("rotationInterval", 10000L)
            if (serverInterval != config.getRotationInterval()) {
                config.setRotationInterval(serverInterval)
                Log.d(TAG, "Updated rotation interval to ${serverInterval}ms")
            }

            val serverHash = serverData.optString("hash", "")
            val localHash = config.getPlaylistHash()

            // Empty hash = server says "no published content" — keep cached images
            if (serverHash.isEmpty()) {
                Log.d(TAG, "Server returned empty hash — screen not published, keeping cache")
                return Result.success()
            }

            // Same hash = no changes to images
            if (serverHash == localHash) {
                Log.d(TAG, "Hash unchanged, config synced")
                return Result.success()
            }

            // Changes detected — download new images
            val images = serverData.optJSONArray("images")
            if (images == null || images.length() == 0) {
                Log.d(TAG, "No images in response — keeping cache")
                return Result.success() // NEVER accept empty
            }

            // Validate each image has required fields
            for (i in 0 until images.length()) {
                val img = images.optJSONObject(i)
                if (img == null || !img.has("filename") || !img.has("url")) {
                    Log.w(TAG, "Invalid image entry at index $i, aborting sync")
                    return Result.retry()
                }
            }

            val imageCache = ImageCache(applicationContext)
            var allDownloaded = true

            for (i in 0 until images.length()) {
                val img = images.getJSONObject(i)
                val filename = img.getString("filename")
                val imageUrl = img.getString("url")

                if (!imageCache.hasImage(filename)) {
                    // Try downloading each image up to 2 times
                    var downloaded = false
                    for (attempt in 1..2) {
                        if (imageCache.downloadImage(imageUrl, filename)) {
                            downloaded = true
                            break
                        }
                        if (attempt < 2) {
                            Log.w(TAG, "Image download failed for $filename, retrying...")
                            Thread.sleep(2000)
                        }
                    }
                    if (!downloaded) {
                        allDownloaded = false
                        Log.w(TAG, "Failed to download $filename after 2 attempts")
                    }
                }
            }

            // Only update playlist if ALL images downloaded successfully
            if (allDownloaded) {
                val playlistManager = PlaylistManager(applicationContext)
                playlistManager.updatePlaylist(serverData)

                val activeFilenames = (0 until images.length()).map {
                    images.getJSONObject(it).getString("filename")
                }
                imageCache.cleanupUnused(activeFilenames)
                Log.i(TAG, "Sync complete — ${images.length()} images, hash=$serverHash")
            } else {
                Log.w(TAG, "Not all images downloaded — keeping old playlist, will retry")
            }

            Result.success()
        } catch (e: Exception) {
            Log.w(TAG, "Sync processing failed: ${e.message}")
            Result.retry()
        }
    }

    /**
     * Fetch endpoint with escalating retries to handle Vercel cold starts.
     *
     * Attempt 1: 15s timeout (works if function is warm)
     * Attempt 2: 25s timeout after 3s wait (warms up the function)
     * Attempt 3: 40s timeout after 8s wait (guaranteed warm by now)
     *
     * Returns parsed JSONObject or null if all attempts fail.
     */
    private fun fetchWithRetry(endpoint: String): JSONObject? {
        for (attempt in 0 until MAX_RETRIES) {
            // Wait before retry (not before first attempt)
            if (RETRY_DELAYS[attempt] > 0) {
                try {
                    Thread.sleep(RETRY_DELAYS[attempt])
                } catch (_: InterruptedException) {
                    return null
                }
            }

            val timeout = TIMEOUTS[attempt]
            var connection: HttpURLConnection? = null

            try {
                Log.d(TAG, "Fetch attempt ${attempt + 1}/$MAX_RETRIES (timeout=${timeout}ms)")

                connection = URL(endpoint).openConnection() as HttpURLConnection
                connection.connectTimeout = timeout
                connection.readTimeout = timeout
                connection.setRequestProperty("Accept", "application/json")
                connection.setRequestProperty("Connection", "close") // Don't keep-alive on serverless

                val responseCode = connection.responseCode

                when {
                    responseCode == 200 -> {
                        val response = connection.inputStream.use { input ->
                            // Limit to 1MB to prevent memory waste on error pages
                            val text = input.bufferedReader().readText()
                            if (text.length > 1_000_000) text.substring(0, 1_000_000) else text
                        }
                        val json = JSONObject(response)
                        Log.d(TAG, "Fetch success on attempt ${attempt + 1}")
                        return json
                    }
                    // 502/503/504 = Vercel cold start or overloaded — retry
                    responseCode in 500..599 -> {
                        Log.w(TAG, "Server error $responseCode on attempt ${attempt + 1}")
                        // Continue to next retry
                    }
                    // 404 = screen doesn't exist — don't retry
                    responseCode == 404 -> {
                        Log.w(TAG, "Screen not found (404)")
                        return null
                    }
                    // Other client errors — don't retry
                    responseCode in 400..499 -> {
                        Log.w(TAG, "Client error $responseCode — not retrying")
                        return null
                    }
                    else -> {
                        Log.w(TAG, "Unexpected response $responseCode")
                    }
                }
            } catch (e: SocketTimeoutException) {
                Log.w(TAG, "Timeout on attempt ${attempt + 1} (${timeout}ms) — ${if (attempt < MAX_RETRIES - 1) "retrying" else "giving up"}")
                // This is the most likely cold start symptom — retry with longer timeout
            } catch (e: java.net.ConnectException) {
                Log.w(TAG, "Connection refused on attempt ${attempt + 1} — server may be starting")
            } catch (e: java.net.UnknownHostException) {
                Log.w(TAG, "DNS failed — no internet?")
                return null // No point retrying if DNS fails
            } catch (e: Exception) {
                Log.w(TAG, "Fetch failed attempt ${attempt + 1}: ${e.javaClass.simpleName}: ${e.message}")
            } finally {
                connection?.disconnect()
            }
        }

        Log.w(TAG, "All $MAX_RETRIES fetch attempts failed")
        return null
    }
}
