package com.cnc.signage

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.Service
import android.content.Context
import android.content.Intent
import android.content.pm.ServiceInfo
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.os.Build
import android.os.Handler
import android.os.HandlerThread
import android.os.IBinder
import android.os.Looper
import android.os.SystemClock
import android.util.Log

class WatchdogService : Service() {

    private val mainHandler = Handler(Looper.getMainLooper())
    private lateinit var syncThread: HandlerThread
    private lateinit var syncHandler: Handler
    private val activityCheckInterval = 30000L // 30s — keep MainActivity alive
    private val syncInterval = 45000L           // 45s — sync content from server
    private var consecutiveFailures = 0

    // Hard rate-limit: no matter how many times this Runnable is posted (leaked
    // copies, double-scheduled, etc.) it cannot fire startActivity faster than
    // MIN_START_INTERVAL_MS. Belt-and-suspenders after we observed 141/sec
    // startActivity spam in v1.2.
    private val activityWatchdog = object : Runnable {
        override fun run() {
            try {
                val now = SystemClock.elapsedRealtime()
                val sinceLast = now - lastActivityStartMs
                if (sinceLast < MIN_START_INTERVAL_MS) {
                    Log.w(TAG, "Activity watchdog rate-limited (last start ${sinceLast}ms ago)")
                } else {
                    val config = Config(this@WatchdogService)
                    if (config.isConfigured() && !config.isAdminNavigating()) {
                        lastActivityStartMs = now
                        val intent = Intent(this@WatchdogService, MainActivity::class.java).apply {
                            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                            addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP)
                        }
                        Log.i(TAG, "Activity watchdog → startActivity(MainActivity)")
                        startActivity(intent)
                    }
                }
            } catch (e: Exception) {
                Log.w(TAG, "Activity watchdog failed: ${e.message}")
            }
            mainHandler.postDelayed(this, activityCheckInterval)
        }
    }

    private val syncLoop = object : Runnable {
        override fun run() {
            try {
                if (!isNetworkAvailable()) {
                    Log.d(TAG, "No network — skipping sync, waiting for connectivity")
                    consecutiveFailures = 0 // don't count network-down as failure
                    scheduleSyncLoop(syncInterval)
                    return
                }

                val config = Config(this@WatchdogService)
                if (!config.isConfigured()) {
                    scheduleSyncLoop(syncInterval)
                    return
                }

                val success = SyncEngine.sync(this@WatchdogService)
                if (success) {
                    consecutiveFailures = 0
                    scheduleSyncLoop(syncInterval)
                } else {
                    consecutiveFailures++
                    // Back off on repeated failures: 45s, 90s, 135s, cap at 3min
                    val backoff = (syncInterval * consecutiveFailures).coerceAtMost(180000L)
                    Log.w(TAG, "Sync failed ($consecutiveFailures consecutive), next in ${backoff / 1000}s")
                    scheduleSyncLoop(backoff)
                }
            } catch (e: Exception) {
                Log.w(TAG, "Sync loop error: ${e.message}")
                consecutiveFailures++
                scheduleSyncLoop(syncInterval)
            }
        }
    }

    private fun scheduleSyncLoop(delayMs: Long) {
        syncHandler.removeCallbacks(syncLoop)
        syncHandler.postDelayed(syncLoop, delayMs)
    }

    private fun isNetworkAvailable(): Boolean {
        val cm = getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
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

    override fun onCreate() {
        super.onCreate()

        // Foreground notification — required on Android 8+
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

            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.UPSIDE_DOWN_CAKE) {
                startForeground(1, notification, ServiceInfo.FOREGROUND_SERVICE_TYPE_SPECIAL_USE)
            } else {
                startForeground(1, notification)
            }
        }

        // Dedicated thread for sync (network I/O off main thread)
        syncThread = HandlerThread("CNC-Sync").also { it.start() }
        syncHandler = Handler(syncThread.looper)
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        // Activity watchdog on main thread
        mainHandler.removeCallbacks(activityWatchdog)
        mainHandler.postDelayed(activityWatchdog, activityCheckInterval)

        // Sync loop on background thread
        syncHandler.removeCallbacks(syncLoop)

        // If triggered by NetworkReceiver, sync immediately
        val immediate = intent?.getBooleanExtra(EXTRA_IMMEDIATE_SYNC, false) ?: false
        if (immediate) {
            Log.i(TAG, "Immediate sync triggered (network change)")
            consecutiveFailures = 0 // network just came back, reset failures
            syncHandler.post(syncLoop)
        } else {
            // Normal start: first sync in 5s, then every 45s
            syncHandler.postDelayed(syncLoop, 5000)
        }

        return START_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onDestroy() {
        super.onDestroy()
        mainHandler.removeCallbacks(activityWatchdog)
        syncHandler.removeCallbacks(syncLoop)
        syncThread.quitSafely()
    }

    companion object {
        private const val TAG = "WatchdogService"
        const val EXTRA_IMMEDIATE_SYNC = "immediate_sync"
        private const val MIN_START_INTERVAL_MS = 25_000L
        @Volatile private var lastActivityStartMs: Long = 0L
    }
}
