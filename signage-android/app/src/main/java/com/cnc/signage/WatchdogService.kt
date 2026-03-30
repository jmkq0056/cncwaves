package com.cnc.signage

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.Service
import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.Handler
import android.os.IBinder
import android.os.Looper
import android.util.Log

class WatchdogService : Service() {

    private val handler = Handler(Looper.getMainLooper())
    private val checkInterval = 30000L // 30 seconds

    private val watchdog = object : Runnable {
        override fun run() {
            try {
                val config = Config(this@WatchdogService)
                if (config.isConfigured()) {
                    val intent = Intent(this@WatchdogService, MainActivity::class.java).apply {
                        addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP)
                    }
                    startActivity(intent)
                }
            } catch (e: Exception) {
                Log.w("Watchdog", "Watchdog check failed: ${e.message}")
            }
            handler.postDelayed(this, checkInterval)
        }
    }

    override fun onCreate() {
        super.onCreate()
        // Must call startForeground within 5 seconds on Android 8+
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channelId = "cnc_watchdog"
            val channel = NotificationChannel(
                channelId, "CNC Signage", NotificationManager.IMPORTANCE_MIN
            ).apply {
                description = "Keeps signage running"
                setShowBadge(false)
            }
            val nm = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            nm.createNotificationChannel(channel)

            val notification = Notification.Builder(this, channelId)
                .setSmallIcon(android.R.drawable.ic_dialog_info)
                .setContentTitle("CNC Signage")
                .setContentText("Running")
                .setOngoing(true)
                .build()

            startForeground(1, notification)
        }
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        handler.removeCallbacks(watchdog)
        handler.postDelayed(watchdog, checkInterval)
        return START_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onDestroy() {
        super.onDestroy()
        handler.removeCallbacks(watchdog)
        // Don't try to restart from onDestroy — START_STICKY handles it
    }
}
