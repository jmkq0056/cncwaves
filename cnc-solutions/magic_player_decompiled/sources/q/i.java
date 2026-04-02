package q;

import android.net.TrafficStats;
import android.os.SystemClock;
import java.util.concurrent.TimeUnit;
import k2.u;
import k2.x;

/* JADX INFO: loaded from: classes.dex */
public class i {
    public static int a(String str, int i4, int i5) {
        TrafficStats.getTotalRxBytes();
        SystemClock.elapsedRealtime();
        try {
            u.b bVar = new u.b();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            bVar.a(30L, timeUnit);
            bVar.c(30L, timeUnit);
            bVar.b(30L, timeUnit);
            new u(bVar);
            new x.a().e(null);
            throw null;
        } catch (Throwable th) {
            l.e.B(null);
            throw th;
        }
    }
}
