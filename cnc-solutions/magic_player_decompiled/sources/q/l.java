package q;

import android.app.AlarmManager;
import android.content.Context;
import android.util.Log;
import androidx.core.app.NotificationCompat;

/* JADX INFO: loaded from: classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f3098a;

    public l(Context context) {
        this.f3098a = context;
    }

    public static void a(long j4, Context context) {
        Log.d("TimeSetUtils", "setSystemTime: " + j4);
        ((AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM)).setTime(j4);
    }

    public void b(String str) {
        AlarmManager alarmManager = (AlarmManager) this.f3098a.getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (alarmManager != null) {
            alarmManager.setTimeZone(str);
        }
    }
}
