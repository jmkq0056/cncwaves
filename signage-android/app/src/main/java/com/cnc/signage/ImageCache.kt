package com.cnc.signage

import android.content.Context
import android.graphics.BitmapFactory
import android.util.Log
import java.io.File
import java.io.FileOutputStream
import java.io.IOException
import java.net.HttpURLConnection
import java.net.URL

class ImageCache(private val context: Context) {
    private val cacheDir = File(context.filesDir, "cache").also { it.mkdirs() }

    companion object {
        private const val MAX_IMAGE_SIZE = 50L * 1024 * 1024 // 50 MB max per image
    }

    fun getCachedImages(filenames: List<String>): List<File> {
        return filenames.mapNotNull { filename ->
            if (!isValidFilename(filename)) return@mapNotNull null
            val file = File(cacheDir, filename)
            if (file.exists() && file.length() > 0) file else null
        }
    }

    fun hasImage(filename: String): Boolean {
        if (!isValidFilename(filename)) return false
        val file = File(cacheDir, filename)
        return file.exists() && file.length() > 0
    }

    fun downloadImage(url: String, filename: String): Boolean {
        if (!isValidFilename(filename)) {
            Log.w("ImageCache", "Invalid filename rejected: $filename")
            return false
        }

        var connection: HttpURLConnection? = null
        return try {
            connection = URL(url).openConnection() as HttpURLConnection
            connection.connectTimeout = 30000
            connection.readTimeout = 30000
            connection.setRequestProperty("Connection", "close")

            if (connection.responseCode == 200) {
                val tempFile = File(cacheDir, "$filename.tmp")

                // Download with size limit to prevent filling disk
                connection.inputStream.use { input ->
                    FileOutputStream(tempFile).use { output ->
                        val buffer = ByteArray(8192)
                        var totalRead = 0L
                        var bytesRead: Int
                        while (input.read(buffer).also { bytesRead = it } != -1) {
                            totalRead += bytesRead
                            if (totalRead > MAX_IMAGE_SIZE) {
                                throw IOException("Image exceeds ${MAX_IMAGE_SIZE / 1024 / 1024}MB limit")
                            }
                            output.write(buffer, 0, bytesRead)
                        }
                    }
                }

                // Verify image header WITHOUT allocating bitmap memory
                val boundsCheck = BitmapFactory.Options().apply { inJustDecodeBounds = true }
                BitmapFactory.decodeFile(tempFile.absolutePath, boundsCheck)
                if (boundsCheck.outWidth <= 0 || boundsCheck.outHeight <= 0) {
                    Log.w("ImageCache", "Corrupt image for $filename, keeping cached version")
                    tempFile.delete()
                    return false
                }

                // Header valid — move to final location
                val finalFile = File(cacheDir, filename)
                if (tempFile.renameTo(finalFile)) {
                    true
                } else {
                    try {
                        tempFile.copyTo(finalFile, overwrite = true)
                        tempFile.delete()
                        true
                    } catch (e: Exception) {
                        Log.w("ImageCache", "Failed to move temp file for $filename")
                        tempFile.delete()
                        false
                    }
                }
            } else {
                Log.w("ImageCache", "HTTP ${connection.responseCode} for $filename")
                false
            }
        } catch (e: IOException) {
            Log.w("ImageCache", "Download failed for $filename: ${e.message}")
            // Clean up partial temp file
            File(cacheDir, "$filename.tmp").delete()
            false
        } catch (e: Exception) {
            Log.w("ImageCache", "Download failed for $filename: ${e.message}")
            File(cacheDir, "$filename.tmp").delete()
            false
        } finally {
            connection?.disconnect()
        }
    }

    fun cleanupUnused(activeFilenames: List<String>) {
        cacheDir.listFiles()?.forEach { file ->
            if (!file.name.endsWith(".tmp") && file.name !in activeFilenames) {
                file.delete()
            }
        }
        cacheDir.listFiles()?.filter { it.name.endsWith(".tmp") }?.forEach { it.delete() }
    }

    private fun isValidFilename(filename: String): Boolean {
        return filename.isNotEmpty() &&
                !filename.contains("..") &&
                !filename.contains("/") &&
                !filename.contains("\\") &&
                !filename.startsWith(".") &&
                !filename.contains('\u0000') &&
                filename.none { it.isISOControl() }
    }
}
