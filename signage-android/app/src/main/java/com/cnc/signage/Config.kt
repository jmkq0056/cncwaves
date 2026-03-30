package com.cnc.signage

import android.content.Context

class Config(private val context: Context) {
    private val prefs = context.getSharedPreferences("cnc_signage", Context.MODE_PRIVATE)

    fun isConfigured(): Boolean = prefs.contains("screen_number")

    fun getScreenNumber(): Int = prefs.getInt("screen_number", -1)
    fun setScreenNumber(num: Int) = prefs.edit().putInt("screen_number", num).commit()

    fun getServerUrl(): String =
        prefs.getString("server_url", "https://signage-android.vercel.app") ?: ""

    fun setServerUrl(url: String) = prefs.edit().putString("server_url", url).commit()

    fun getPlaylistHash(): String = prefs.getString("playlist_hash", "") ?: ""
    fun setPlaylistHash(hash: String) =
        prefs.edit().putString("playlist_hash", hash).commit()

    fun getRotationInterval(): Long = prefs.getLong("rotation_interval", 10000L)
    fun setRotationInterval(interval: Long) =
        prefs.edit().putLong("rotation_interval", interval).commit()

    fun getPin(): String = prefs.getString("pin", "1111") ?: "1111"

    // Admin navigation: temporarily disable watchdog/kiosk lock
    fun setAdminNavigating(active: Boolean) =
        prefs.edit().putBoolean("admin_navigating", active).commit()
    fun isAdminNavigating(): Boolean = prefs.getBoolean("admin_navigating", false)

    // Schedule: on/off times (HH:mm format, empty = always on)
    fun getScreenOnTime(): String = prefs.getString("screen_on_time", "") ?: ""
    fun setScreenOnTime(time: String) = prefs.edit().putString("screen_on_time", time).commit()
    fun getScreenOffTime(): String = prefs.getString("screen_off_time", "") ?: ""
    fun setScreenOffTime(time: String) = prefs.edit().putString("screen_off_time", time).commit()

    fun getScreenOffMode(): String = prefs.getString("screen_off_mode", "dim") ?: "dim"
    fun setScreenOffMode(mode: String) = prefs.edit().putString("screen_off_mode", mode).commit()

    // Burst
    fun isBurstEnabled(): Boolean = prefs.getBoolean("burst_enabled", false)
    fun setBurstEnabled(enabled: Boolean) = prefs.edit().putBoolean("burst_enabled", enabled).commit()
    fun getBurstImageUrl(): String = prefs.getString("burst_image_url", "") ?: ""
    fun setBurstImageUrl(url: String) = prefs.edit().putString("burst_image_url", url).commit()
    fun getBurstInterval(): Int = prefs.getInt("burst_interval", 3)
    fun setBurstInterval(min: Int) = prefs.edit().putInt("burst_interval", min).commit()
    fun getBurstDuration(): Int = prefs.getInt("burst_duration", 10)
    fun setBurstDuration(sec: Int) = prefs.edit().putInt("burst_duration", sec).commit()
}
