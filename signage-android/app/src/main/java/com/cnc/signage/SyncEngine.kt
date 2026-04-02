package com.cnc.signage

import android.content.Context
import android.content.Intent
import android.util.Log
import org.json.JSONObject
import java.net.HttpURLConnection
import java.net.SocketTimeoutException
import java.net.URL

/**
 * Core sync logic extracted from SyncWorker so it can be called from:
 * - WatchdogService (foreground service, 45s loop — primary)
 * - SyncWorker (WorkManager fallback)
 * - Manual trigger (admin menu)
 *
 * Broadcasts ACTION_SYNC_COMPLETE when playlist hash changes so
 * MainActivity can reload images without its own polling loop.
 */
object SyncEngine {
    private const val TAG = "SyncEngine"

    // Retry config for Vercel cold start handling
    private const val MAX_RETRIES = 3
    private val TIMEOUTS = intArrayOf(15000, 25000, 40000)
    private val RETRY_DELAYS = longArrayOf(0, 3000, 8000)

    const val ACTION_SYNC_COMPLETE = "com.cnc.signage.SYNC_COMPLETE"
    const val EXTRA_HASH_CHANGED = "hash_changed"

    /** Returns true if sync succeeded (even if no changes), false if it failed. */
    fun sync(context: Context): Boolean {
        val config = Config(context)
        if (!config.isConfigured()) return true // nothing to do

        val serverUrl = config.getServerUrl()
        val screenNumber = config.getScreenNumber()
        val endpoint = "$serverUrl/api/screens/$screenNumber"

        val serverData = fetchWithRetry(endpoint)
        if (serverData == null) {
            Log.w(TAG, "Fetch failed — will retry next cycle")
            return false
        }

        return try {
            // Always save config from server
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

            if (serverHash.isEmpty()) {
                Log.d(TAG, "Server returned empty hash — keeping cache")
                return true
            }

            if (serverHash == localHash) {
                Log.d(TAG, "Hash unchanged, config synced")
                return true
            }

            // Hash changed — download new images
            val images = serverData.optJSONArray("images")
            if (images == null || images.length() == 0) {
                Log.d(TAG, "No images in response — keeping cache")
                return true
            }

            // Validate each image
            for (i in 0 until images.length()) {
                val img = images.optJSONObject(i)
                if (img == null || !img.has("filename") || !img.has("url")) {
                    Log.w(TAG, "Invalid image entry at index $i, aborting sync")
                    return false
                }
            }

            val imageCache = ImageCache(context)
            var allDownloaded = true

            for (i in 0 until images.length()) {
                val img = images.getJSONObject(i)
                val filename = img.getString("filename")
                val imageUrl = img.getString("url")

                if (!imageCache.hasImage(filename)) {
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

            if (allDownloaded) {
                val playlistManager = PlaylistManager(context)
                playlistManager.updatePlaylist(serverData)

                val activeFilenames = (0 until images.length()).map {
                    images.getJSONObject(it).getString("filename")
                }
                imageCache.cleanupUnused(activeFilenames)
                Log.i(TAG, "Sync complete — ${images.length()} images, hash=$serverHash")

                // Notify MainActivity that content changed
                broadcastSyncComplete(context, hashChanged = true)
            } else {
                Log.w(TAG, "Not all images downloaded — keeping old playlist")
                // Still broadcast so UI knows sync ran (even if no change)
                broadcastSyncComplete(context, hashChanged = false)
            }

            true
        } catch (e: Exception) {
            Log.w(TAG, "Sync processing failed: ${e.message}")
            false
        }
    }

    private fun broadcastSyncComplete(context: Context, hashChanged: Boolean) {
        val intent = Intent(ACTION_SYNC_COMPLETE).apply {
            putExtra(EXTRA_HASH_CHANGED, hashChanged)
            setPackage(context.packageName) // local broadcast only
        }
        context.sendBroadcast(intent)
    }

    /**
     * Fetch endpoint with escalating retries for Vercel cold starts.
     *
     * Attempt 1: 15s timeout (works if function is warm)
     * Attempt 2: 25s timeout after 3s wait (warms up the function)
     * Attempt 3: 40s timeout after 8s wait (guaranteed warm by now)
     */
    fun fetchWithRetry(endpoint: String): JSONObject? {
        for (attempt in 0 until MAX_RETRIES) {
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
                connection.setRequestProperty("Connection", "close")

                val responseCode = connection.responseCode

                when {
                    responseCode == 200 -> {
                        val response = connection.inputStream.use { input ->
                            val text = input.bufferedReader().readText()
                            if (text.length > 1_000_000) text.substring(0, 1_000_000) else text
                        }
                        val json = JSONObject(response)
                        Log.d(TAG, "Fetch success on attempt ${attempt + 1}")
                        return json
                    }
                    responseCode in 500..599 -> {
                        Log.w(TAG, "Server error $responseCode on attempt ${attempt + 1}")
                    }
                    responseCode == 404 -> {
                        Log.w(TAG, "Screen not found (404)")
                        return null
                    }
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
            } catch (e: java.net.ConnectException) {
                Log.w(TAG, "Connection refused on attempt ${attempt + 1} — server may be starting")
            } catch (e: java.net.UnknownHostException) {
                Log.w(TAG, "DNS failed — no internet?")
                return null
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
