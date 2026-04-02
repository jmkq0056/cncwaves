package com.google.android.exoplayer2.scheduler;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import android.os.PersistableBundle;
import android.util.Log;
import g1.a;
import java.util.Objects;
import o1.e;

/* JADX INFO: loaded from: classes.dex */
public final class PlatformScheduler$PlatformSchedulerService extends JobService {
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        PersistableBundle extras = jobParameters.getExtras();
        int iA = new a(extras.getInt("requirements")).a(this);
        if (iA != 0) {
            Log.w("PlatformScheduler", "Requirements not met: " + iA);
            jobFinished(jobParameters, true);
            return false;
        }
        String string = extras.getString("service_action");
        Objects.requireNonNull(string);
        String string2 = extras.getString("service_package");
        Objects.requireNonNull(string2);
        Intent intent = new Intent(string).setPackage(string2);
        if (e.f2847a >= 26) {
            startForegroundService(intent);
            return false;
        }
        startService(intent);
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
