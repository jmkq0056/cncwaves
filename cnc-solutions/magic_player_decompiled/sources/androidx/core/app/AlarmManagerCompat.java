package androidx.core.app;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.os.Build;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public final class AlarmManagerCompat {
    private AlarmManagerCompat() {
    }

    public static void setAlarmClock(@NonNull AlarmManager alarmManager, long j4, @NonNull PendingIntent pendingIntent, @NonNull PendingIntent pendingIntent2) {
        if (Build.VERSION.SDK_INT >= 21) {
            alarmManager.setAlarmClock(new AlarmManager.AlarmClockInfo(j4, pendingIntent), pendingIntent2);
        } else {
            setExact(alarmManager, 0, j4, pendingIntent2);
        }
    }

    public static void setAndAllowWhileIdle(@NonNull AlarmManager alarmManager, int i4, long j4, @NonNull PendingIntent pendingIntent) {
        if (Build.VERSION.SDK_INT >= 23) {
            alarmManager.setAndAllowWhileIdle(i4, j4, pendingIntent);
        } else {
            alarmManager.set(i4, j4, pendingIntent);
        }
    }

    public static void setExact(@NonNull AlarmManager alarmManager, int i4, long j4, @NonNull PendingIntent pendingIntent) {
        alarmManager.setExact(i4, j4, pendingIntent);
    }

    public static void setExactAndAllowWhileIdle(@NonNull AlarmManager alarmManager, int i4, long j4, @NonNull PendingIntent pendingIntent) {
        if (Build.VERSION.SDK_INT >= 23) {
            alarmManager.setExactAndAllowWhileIdle(i4, j4, pendingIntent);
        } else {
            setExact(alarmManager, i4, j4, pendingIntent);
        }
    }
}
