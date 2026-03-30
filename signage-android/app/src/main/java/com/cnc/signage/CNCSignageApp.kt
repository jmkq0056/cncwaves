package com.cnc.signage

import android.app.AlarmManager
import android.app.Application
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.os.Build
import android.util.Log
import kotlin.system.exitProcess

class CNCSignageApp : Application() {
    override fun onCreate() {
        super.onCreate()

        Thread.setDefaultUncaughtExceptionHandler { _, throwable ->
            Log.e("CNCSignage", "CRASH — scheduling restart in 2s", throwable)

            try {
                // Use AlarmManager to restart AFTER this process dies
                // startActivity() from crash handler is unreliable
                val restartIntent = Intent(this, MainActivity::class.java).apply {
                    addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK)
                }
                val flags = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                    PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
                } else {
                    PendingIntent.FLAG_UPDATE_CURRENT
                }
                val pendingIntent = PendingIntent.getActivity(this, 0, restartIntent, flags)
                val alarmManager = getSystemService(Context.ALARM_SERVICE) as AlarmManager

                // Use inexact alarm — exact requires runtime permission on Android 12+
                alarmManager.set(
                    AlarmManager.RTC_WAKEUP,
                    System.currentTimeMillis() + 2000,
                    pendingIntent
                )
            } catch (e: Exception) {
                Log.e("CNCSignage", "Failed to schedule restart alarm", e)
            }

            android.os.Process.killProcess(android.os.Process.myPid())
            exitProcess(1)
        }

        // Start watchdog service
        try {
            val watchdogIntent = Intent(this, WatchdogService::class.java)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                startForegroundService(watchdogIntent)
            } else {
                startService(watchdogIntent)
            }
        } catch (e: Exception) {
            Log.w("CNCSignage", "Could not start watchdog: ${e.message}")
        }
    }
}
