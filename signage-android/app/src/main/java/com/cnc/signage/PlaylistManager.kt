package com.cnc.signage

import android.content.Context
import android.util.Log
import org.json.JSONObject
import java.io.File

class PlaylistManager(private val context: Context) {
    private val playlistFile = File(context.filesDir, "playlist.json")
    private val tempFile = File(context.filesDir, "playlist.json.tmp")

    fun getImageFilenames(): List<String> {
        return try {
            if (!playlistFile.exists()) return emptyList()
            val text = playlistFile.readText()
            if (text.isBlank()) return emptyList()
            val json = JSONObject(text)
            val images = json.optJSONArray("images") ?: return emptyList()
            val count = images.length().coerceAtMost(100) // Cap at 100 images
            (0 until count).mapNotNull { i ->
                val obj = images.optJSONObject(i) ?: return@mapNotNull null
                obj.optString("filename", "").takeIf { it.isNotEmpty() }
            }
        } catch (e: Exception) {
            Log.w("PlaylistManager", "Error reading playlist: ${e.message}")
            emptyList()
        }
    }

    fun getImageFiles(): List<File> {
        val cache = ImageCache(context)
        return cache.getCachedImages(getImageFilenames())
    }

    fun getRotationInterval(): Long {
        return try {
            if (!playlistFile.exists()) return DEFAULT_INTERVAL
            val json = JSONObject(playlistFile.readText())
            json.optLong("rotationInterval", DEFAULT_INTERVAL)
        } catch (e: Exception) {
            DEFAULT_INTERVAL
        }
    }

    fun updatePlaylist(serverResponse: JSONObject) {
        val images = serverResponse.optJSONArray("images") ?: return
        if (images.length() == 0) return // NEVER accept empty playlist

        // ATOMIC WRITE: write to temp file, then rename
        // If interrupted mid-write, temp file is corrupt but playlist.json is untouched
        try {
            tempFile.writeText(serverResponse.toString())

            // Verify the temp file is valid JSON before replacing
            val verify = JSONObject(tempFile.readText())
            if (verify.optJSONArray("images")?.length() ?: 0 == 0) {
                tempFile.delete()
                return
            }

            // Atomic rename
            if (!tempFile.renameTo(playlistFile)) {
                // renameTo can fail on some filesystems — fallback to copy
                tempFile.copyTo(playlistFile, overwrite = true)
                tempFile.delete()
            }
        } catch (e: Exception) {
            Log.e("PlaylistManager", "Failed to write playlist: ${e.message}")
            tempFile.delete()
            return
        }

        val config = Config(context)
        config.setPlaylistHash(serverResponse.optString("hash", ""))
        config.setRotationInterval(serverResponse.optLong("rotationInterval", DEFAULT_INTERVAL))
    }

    companion object {
        const val DEFAULT_INTERVAL = 10000L
    }
}
