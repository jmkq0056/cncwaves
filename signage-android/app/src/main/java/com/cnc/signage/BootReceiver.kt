package com.cnc.signage

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.util.Log

class BootReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        val action = intent.action
        if (action == Intent.ACTION_BOOT_COMPLETED ||
            action == "android.intent.action.QUICKBOOT_POWERON" ||
            action == "android.intent.action.REBOOT"
        ) {
            Log.i("CNCSignage", "Boot completed — launching app in 3s")

            // goAsync keeps the broadcast alive until we call finish()
            // Without this, Android may kill the process before our 3s delay fires
            val pendingResult = goAsync()

            Handler(Looper.getMainLooper()).postDelayed({
                try {
                    val launchIntent = Intent(context, MainActivity::class.java).apply {
                        addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP)
                    }
                    context.startActivity(launchIntent)
                } catch (e: Exception) {
                    Log.e("CNCSignage", "Failed to launch from boot: ${e.message}")
                }

                try {
                    val watchdogIntent = Intent(context, WatchdogService::class.java)
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                        context.startForegroundService(watchdogIntent)
                    } else {
                        context.startService(watchdogIntent)
                    }
                } catch (e: Exception) {
                    Log.w("CNCSignage", "Could not start watchdog on boot: ${e.message}")
                }

                // Release the broadcast
                try {
                    pendingResult.finish()
                } catch (_: Exception) {}
            }, 3000)
        }
    }
}
