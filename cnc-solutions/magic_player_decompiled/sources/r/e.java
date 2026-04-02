package r;

import android.app.AlarmManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.os.SystemClock;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import java.util.LinkedList;
import java.util.Objects;
import m.f;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static volatile e f3339n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f3340a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r.a f3341b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final r.b f3342c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final f f3343d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f3344e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3345f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3346g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f3347h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinkedList<b> f3348i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile b f3349j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f3350k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3351l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final BroadcastReceiver f3352m;

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action == null) {
                return;
            }
            if (action.equals("android.net.ethernet.ETHERNET_STATE_CHANGED")) {
                if (intent.getIntExtra("ethernet_state", 0) == 2) {
                    e.a(e.this);
                }
            } else if (action.equals("android.net.wifi.STATE_CHANGE") && ((NetworkInfo) intent.getParcelableExtra("networkInfo")).getDetailedState() == NetworkInfo.DetailedState.CONNECTED) {
                e.a(e.this);
            }
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f3354a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f3355b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f3356c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f3357d;

        public b() {
            this(null, 0L, 0L, 0);
        }

        public b(String str, long j4, long j5, int i4) {
            this.f3354a = str;
            this.f3355b = j4;
            this.f3356c = j5;
            this.f3357d = i4;
        }
    }

    public e() {
        a aVar = new a();
        this.f3352m = aVar;
        this.f3348i = new LinkedList<>();
        this.f3349j = new b(null, 0L, 0L, 0);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter.addAction("android.net.ethernet.ETHERNET_STATE_CHANGED");
        w0.c.f3777a.registerReceiver(aVar, intentFilter);
        this.f3340a = new c(this);
        this.f3341b = new r.a(this);
        this.f3342c = new r.b(this);
        this.f3343d = f.a();
    }

    public static void a(e eVar) {
        Objects.requireNonNull(eVar);
        Log.d("TimeManager", "onNetworkConnected: ");
        c cVar = eVar.f3340a;
        if (cVar.f3333f > 0) {
            cVar.f3335h = 0L;
            Log.d("NtpClientTask", "set next request immediately.");
        }
    }

    public static long c() {
        return d().e();
    }

    public static e d() {
        if (f3339n == null) {
            synchronized (e.class) {
                if (f3339n == null) {
                    f3339n = new e();
                }
            }
        }
        return f3339n;
    }

    public final void b() {
        long jE = e() - System.currentTimeMillis();
        if (Math.abs(jE) > 5) {
            Log.d("TimeManager", "set system time, clock offset: " + jE + "ms");
            AlarmManager alarmManager = (AlarmManager) w0.c.a(NotificationCompat.CATEGORY_ALARM);
            if (alarmManager != null) {
                alarmManager.setTime(e());
            }
        }
    }

    public long e() {
        b bVar = this.f3349j;
        long j4 = bVar.f3355b;
        return j4 != 0 ? (SystemClock.elapsedRealtime() - bVar.f3356c) + j4 : System.currentTimeMillis();
    }

    public synchronized void f(int i4, int i5, boolean z3, int i6) {
        Log.d("TimeManager", "setAutoTime: " + i4 + ", " + i5 + ", " + z3 + ", " + i6);
        this.f3345f = i4;
        if (i4 == 1 || i4 == 2) {
            this.f3340a.c();
        } else {
            this.f3340a.d();
        }
        int i7 = this.f3345f;
        if (i7 != 1 && i7 != 3) {
            i5 = 0;
        }
        this.f3346g = i5;
        if (i5 == 1) {
            this.f3342c.c();
            this.f3341b.d();
        } else if (i5 != 2) {
            this.f3342c.d();
            this.f3341b.d();
        } else {
            this.f3342c.d();
            this.f3341b.c();
        }
        int i8 = this.f3345f;
        if (i8 != 1 && i8 != 5) {
            z3 = false;
        }
        if (!z3) {
            this.f3343d.e();
        } else if (i6 == 1) {
            this.f3343d.d(1);
        } else if (i6 == 2) {
            this.f3343d.d(2);
        }
    }

    public synchronized void g(String str) {
        Log.d("TimeManager", "setNtpHost: " + str);
        c cVar = this.f3340a;
        Objects.requireNonNull(cVar);
        if (str != null && !str.equals(cVar.f3332e)) {
            cVar.f3332e = str;
            cVar.f3335h = 0L;
        }
    }

    public synchronized void h(int i4) {
        this.f3350k = i4;
    }

    public synchronized void i(int i4) {
        this.f3351l = i4;
    }

    public final void j(String str) {
        if (str == null || str.equals(this.f3344e)) {
            return;
        }
        android.support.v4.media.c.a("time host changed: ", str, "TimeManager");
        this.f3344e = str;
        this.f3348i.clear();
    }

    public final synchronized void k(String str, long j4, long j5, long j6) {
        j(str);
        b bVar = new b(str, j4, j5, Math.round(j6 / 2.0f));
        LinkedList<b> linkedList = this.f3348i;
        linkedList.addLast(bVar);
        if (linkedList.size() > 10) {
            linkedList.removeFirst();
        }
        b bVar2 = null;
        long j7 = 0;
        for (b bVar3 : linkedList) {
            long jRound = ((long) Math.round((SystemClock.elapsedRealtime() - bVar3.f3356c) * 1.0E-4f)) + ((long) bVar3.f3357d);
            if (bVar2 == null || jRound < j7) {
                bVar2 = bVar3;
                j7 = jRound;
            }
        }
        if (bVar2 != null && this.f3349j != bVar2) {
            this.f3349j = bVar2;
            b();
        }
    }
}
