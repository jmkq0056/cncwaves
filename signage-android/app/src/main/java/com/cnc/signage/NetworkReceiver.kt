package com.cnc.signage

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.os.Build
import android.util.Log

/**
 * Fires when network connectivity changes.
 * When network comes BACK, triggers an immediate sync via WatchdogService
 * instead of waiting for the next 45s poll cycle.
 *
 * This is the key difference vs the old app (Magic Player) which had
 * NetStateReceiver doing the same thing.
 */
class NetworkReceiver : BroadcastReceiver() {

    override fun onReceive(context: Context, intent: Intent) {
        if (!isNetworkConnected(context)) {
            Log.d(TAG, "Network lost — waiting for reconnection")
            return
        }

        Log.i(TAG, "Network connected — triggering immediate sync")

        // Poke the WatchdogService to sync NOW instead of waiting
        val serviceIntent = Intent(context, WatchdogService::class.java).apply {
            putExtra(WatchdogService.EXTRA_IMMEDIATE_SYNC, true)
        }
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                context.startForegroundService(serviceIntent)
            } else {
                context.startService(serviceIntent)
            }
        } catch (e: Exception) {
            Log.w(TAG, "Could not trigger immediate sync: ${e.message}")
        }
    }

    private fun isNetworkConnected(context: Context): Boolean {
        val cm = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            val network = cm.activeNetwork ?: return false
            val caps = cm.getNetworkCapabilities(network) ?: return false
            return caps.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)
        } else {
            @Suppress("DEPRECATION")
            val info = cm.activeNetworkInfo
            @Suppress("DEPRECATION")
            return info != null && info.isConnected
        }
    }

    companion object {
        private const val TAG = "NetworkReceiver"
    }
}
