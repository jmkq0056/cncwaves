package com.cnc.signage

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
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

            val pendingResult = goAsync()

            Handler(Looper.getMainLooper()).postDelayed({
                try {
                    // Start watchdog service
                    val watchdogIntent = Intent(context, WatchdogService::class.java)
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                        context.startForegroundService(watchdogIntent)
                    } else {
                        context.startService(watchdogIntent)
                    }
                } catch (e: Exception) {
                    Log.w("CNCSignage", "Could not start watchdog on boot: ${e.message}")
                }

                try {
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                        // Android 10+: background activity launch is blocked.
                        // Use a full-screen intent (like alarm/call apps) to force
                        // the activity onto the screen.
                        launchViaFullScreenIntent(context)
                    } else {
                        // Pre-Android 10: direct launch works fine
                        val launchIntent = Intent(context, MainActivity::class.java).apply {
                            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP)
                        }
                        context.startActivity(launchIntent)
                    }
                } catch (e: Exception) {
                    Log.e("CNCSignage", "Failed to launch from boot: ${e.message}")
                }

                try {
                    pendingResult.finish()
                } catch (_: Exception) {}
            }, 3000)
        }
    }

    private fun launchViaFullScreenIntent(context: Context) {
        val nm = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                "cnc_boot", "Boot Launch", NotificationManager.IMPORTANCE_HIGH
            ).apply {
                description = "Launches signage after boot"
                lockscreenVisibility = Notification.VISIBILITY_PUBLIC
            }
            nm.createNotificationChannel(channel)
        }

        val launchIntent = Intent(context, MainActivity::class.java).apply {
            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP)
        }
        val flags = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        } else {
            PendingIntent.FLAG_UPDATE_CURRENT
        }
        val fullScreenPending = PendingIntent.getActivity(context, 1, launchIntent, flags)

        val notification = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            Notification.Builder(context, "cnc_boot")
        } else {
            @Suppress("DEPRECATION")
            Notification.Builder(context)
        }.apply {
            setSmallIcon(android.R.drawable.ic_dialog_info)
            setContentTitle("CNC Signage")
            setContentText("Starting...")
            setFullScreenIntent(fullScreenPending, true)
            setAutoCancel(true)
        }.build()

        nm.notify(2, notification)

        // Also try direct launch as fallback
        try {
            context.startActivity(launchIntent)
        } catch (_: Exception) {}

        // Dismiss notification after a few seconds
        Handler(Looper.getMainLooper()).postDelayed({
            nm.cancel(2)
        }, 5000)
    }
}
