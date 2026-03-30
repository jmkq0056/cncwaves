package com.cnc.signage

import android.content.Context

class Config(private val context: Context) {
    private val prefs = context.getSharedPreferences("cnc_signage", Context.MODE_PRIVATE)

    fun isConfigured(): Boolean = prefs.contains("screen_number")

    fun getScreenNumber(): Int = prefs.getInt("screen_number", -1)
    fun setScreenNumber(num: Int) = prefs.edit().putInt("screen_number", num).apply()

    fun getServerUrl(): String =
        prefs.getString("server_url", "https://signage-rouge.vercel.app") ?: ""

    fun setServerUrl(url: String) = prefs.edit().putString("server_url", url).apply()

    fun getPlaylistHash(): String = prefs.getString("playlist_hash", "") ?: ""
    fun setPlaylistHash(hash: String) =
        prefs.edit().putString("playlist_hash", hash).apply()

    fun getRotationInterval(): Long = prefs.getLong("rotation_interval", 10000L)
    fun setRotationInterval(interval: Long) =
        prefs.edit().putLong("rotation_interval", interval).apply()

    fun getPin(): String = prefs.getString("pin", "1111") ?: "1111"
}
