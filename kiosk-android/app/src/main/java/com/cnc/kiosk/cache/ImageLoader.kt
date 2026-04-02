package com.cnc.kiosk.cache

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.widget.ImageView
import kotlinx.coroutines.*
import java.io.File
import java.net.URL
import java.security.MessageDigest

object ImageLoader {
    private val memCache = LinkedHashMap<String, Bitmap>(50, 0.75f, true)
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())

    fun load(url: String, into: ImageView, placeholder: Int = 0) {
        if (url.isBlank()) {
            if (placeholder != 0) into.setImageResource(placeholder)
            else into.setImageResource(android.R.color.darker_gray)
            return
        }

        val cached = memCache[url]
        if (cached != null) {
            into.setImageBitmap(cached)
            return
        }

        if (placeholder != 0) into.setImageResource(placeholder)
        else into.setImageResource(android.R.color.darker_gray)

        val cacheDir = into.context.cacheDir
        val diskFile = File(cacheDir, "img_" + md5(url))

        scope.launch {
            try {
                val bmp = if (diskFile.exists()) {
                    BitmapFactory.decodeFile(diskFile.absolutePath)
                } else {
                    val bytes = URL(url).readBytes()
                    diskFile.writeBytes(bytes)
                    BitmapFactory.decodeByteArray(bytes, 0, bytes.size)
                }
                if (bmp != null) {
                    synchronized(memCache) {
                        if (memCache.size > 80) {
                            val first = memCache.keys.first()
                            memCache.remove(first)
                        }
                        memCache[url] = bmp
                    }
                    withContext(Dispatchers.Main) {
                        into.setImageBitmap(bmp)
                    }
                }
            } catch (_: Exception) {}
        }
    }

    private fun md5(s: String): String {
        val digest = MessageDigest.getInstance("MD5")
        return digest.digest(s.toByteArray()).joinToString("") { "%02x".format(it) }
    }
}
