package s0;

import android.util.Log;
import n.f;
import n.j;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile e f3439c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f3440a = new a("PlayRecordReport");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a f3441b = new a("VisitorStatsReport");

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f3442a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f3443b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f3444c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f3445d;

        public a(String str) {
            this.f3442a = str;
            long j4 = 0;
            if (this.f3445d == 0) {
                try {
                    j4 = w0.c.f3777a.getSharedPreferences("ReportCache", 0).getLong(str, 0L);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                Log.d("ReportManager", "SharedPreference: " + str + " - " + j4);
                if (j4 < System.currentTimeMillis()) {
                    this.f3445d = j4;
                }
            }
        }

        public boolean a() {
            if (!this.f3443b) {
                return false;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f3445d <= this.f3444c) {
                return false;
            }
            this.f3445d = jCurrentTimeMillis;
            try {
                w0.c.f3777a.getSharedPreferences("ReportCache", 0).edit().putLong(this.f3442a, jCurrentTimeMillis).apply();
                return true;
            } catch (Exception e4) {
                e4.printStackTrace();
                return true;
            }
        }

        public void b(int i4) {
            if (i4 > 0) {
                this.f3444c = Math.max(i4, 60) * 1000;
            } else {
                this.f3443b = false;
            }
        }
    }

    public e() {
        l.b bVarC = l.b.c();
        c((j) bVarC.a(j.class));
        b((f) bVarC.a(f.class));
    }

    public static e a() {
        if (f3439c == null) {
            synchronized (e.class) {
                if (f3439c == null) {
                    f3439c = new e();
                }
            }
        }
        return f3439c;
    }

    public synchronized void b(f fVar) {
        Log.d("ReportManager", "updateConfig: " + fVar.f2636c + ", " + fVar.f2638e);
        if (fVar.f2636c && fVar.f2638e) {
            a aVar = this.f3441b;
            aVar.f3443b = true;
            aVar.b(fVar.f2639f);
        } else {
            this.f3441b.f3443b = false;
        }
    }

    public synchronized void c(j jVar) {
        int i4;
        if (jVar.f2660c && jVar.f2661d) {
            a aVar = this.f3440a;
            aVar.f3443b = true;
            try {
                String[] strArrSplit = jVar.f2662e.split(":");
                int i5 = Integer.parseInt(strArrSplit[0]);
                i4 = (((i5 * 60) + Integer.parseInt(strArrSplit[1])) * 60) + Integer.parseInt(strArrSplit[2]);
            } catch (Exception unused) {
                i4 = -1;
            }
            aVar.b(i4);
        } else {
            this.f3440a.f3443b = false;
        }
    }
}
