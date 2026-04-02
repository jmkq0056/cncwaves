package com.cnc.signage

import android.content.Context
import android.util.Log
import androidx.work.*
import java.util.concurrent.TimeUnit

/**
 * WorkManager fallback — runs every 15 min as a safety net in case
 * the foreground service gets killed. The real sync runs every 45s
 * inside WatchdogService via SyncEngine.
 */
class SyncWorker(context: Context, params: WorkerParameters) : Worker(context, params) {

    companion object {
        private const val TAG = "SyncWorker"

        fun schedule(context: Context) {
            val constraints = Constraints.Builder()
                .setRequiredNetworkType(NetworkType.CONNECTED)
                .build()

            // 15 min is the real Android minimum for periodic work
            val syncRequest = PeriodicWorkRequestBuilder<SyncWorker>(15, TimeUnit.MINUTES)
                .setConstraints(constraints)
                .setBackoffCriteria(BackoffPolicy.LINEAR, 1, TimeUnit.MINUTES)
                .build()

            WorkManager.getInstance(context).enqueueUniquePeriodicWork(
                "cnc_sync",
                ExistingPeriodicWorkPolicy.KEEP,
                syncRequest
            )
        }

        fun triggerImmediate(context: Context) {
            val constraints = Constraints.Builder()
                .setRequiredNetworkType(NetworkType.CONNECTED)
                .build()
            val syncRequest = OneTimeWorkRequestBuilder<SyncWorker>()
                .setConstraints(constraints)
                .build()
            WorkManager.getInstance(context).enqueueUniqueWork(
                "cnc_sync_now",
                ExistingWorkPolicy.KEEP,
                syncRequest
            )
        }
    }

    override fun doWork(): Result {
        Log.d(TAG, "WorkManager fallback sync running")
        val success = SyncEngine.sync(applicationContext)
        return if (success) Result.success() else Result.retry()
    }
}
