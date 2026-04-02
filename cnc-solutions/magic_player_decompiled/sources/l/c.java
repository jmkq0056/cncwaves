package l;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.Point;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.WindowManager;
import org.eclipse.jetty.util.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public static c O;
    public String A;
    public boolean B;
    public int C;
    public long D;
    public long E;
    public int F;
    public boolean G;
    public boolean H;
    public int I;
    public long J;
    public boolean K;
    public boolean L;
    public boolean M;
    public boolean N;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f2295a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f2296b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2297c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2298d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2299e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2300f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2301g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2302h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2303i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte[] f2304j = new byte[6];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2305k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2306l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2307m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2308n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2309o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public byte f2310p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public byte f2311q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public String f2312r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public String f2313s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public byte f2314t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public byte f2315u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f2316v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public String f2317w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f2318x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f2319y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f2320z;

    public static c a() {
        if (O == null) {
            synchronized (c.class) {
                if (O == null) {
                    O = new c();
                }
            }
        }
        return O;
    }

    public final String b(String str) {
        return w0.h.g((str + ":MagicPlayer").getBytes());
    }

    public void c(Context context) {
        this.f2297c = cn.huidu.lcd.core.a.f337c;
        this.f2309o = cn.huidu.lcd.core.a.f338d;
        n.d dVar = (n.d) b.c().a(n.d.class);
        this.f2296b = dVar.f2632d;
        this.f2295a = dVar.f2631c;
        Point pointB = s.c.b();
        this.f2298d = pointB.x;
        this.f2299e = pointB.y;
        this.C = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        this.B = w0.a.e(context);
        this.f2305k = h.a.T(Build.VERSION.RELEASE);
        this.f2306l = h.a.T(cn.huidu.lcd.core.a.f335a);
        this.f2307m = e.x(e.p(context));
        PackageInfo packageInfoA = w0.a.a(context, "cn.huidu.lcd.services");
        this.f2308n = e.x(packageInfoA != null ? packageInfoA.versionName : null);
        n.e eVar = (n.e) b.c().a(n.e.class);
        this.f2319y = eVar.f2634c;
        this.f2320z = eVar.f2635d;
        this.A = w0.h.c(this.f2296b);
        this.f2304j = new byte[6];
        n.a aVar = (n.a) b.c().a(n.a.class);
        this.K = aVar.f2610g;
        this.L = aVar.f2617n;
        this.M = aVar.f2618o;
        this.N = aVar.f2619p;
        f(context);
        this.D = s.m.e();
        this.E = s.m.d();
        e();
        g();
        this.J = SystemClock.elapsedRealtime();
        d();
    }

    public final synchronized void d() {
        this.I++;
    }

    public final void e() {
        n.c cVar = (n.c) b.c().a(n.c.class);
        int i4 = ((n.k) b.c().a(n.k.class)).f2663c;
        boolean z3 = this.G;
        if (z3) {
            boolean z4 = cVar.f2627c;
            if (!z4) {
                this.f2310p = (byte) 2;
            } else if (z3 || !z4) {
                this.f2310p = (byte) 1;
            } else {
                this.f2310p = (byte) 0;
            }
        } else {
            this.f2310p = (byte) 3;
        }
        this.f2311q = (byte) i4;
        this.f2312r = cVar.f2628d;
        this.f2313s = cVar.f2629e;
    }

    public void f(Context context) {
        try {
            String strA = q.g.a();
            byte[] bArr = new byte[6];
            try {
                String[] strArrSplit = strA.split("[:]");
                for (int i4 = 0; i4 < 6; i4++) {
                    bArr[i4] = (byte) Integer.parseInt(strArrSplit[i4], 16);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            this.f2304j = bArr;
            f.g gVarA = f.e.a(context).a();
            String strY = h.a.y();
            if (TextUtils.isEmpty(strY)) {
                strY = StringUtil.ALL_INTERFACES;
            }
            this.f2300f = h.a.h0(strY);
            this.f2301g = h.a.h0(gVarA.f1624c);
            this.f2302h = h.a.h0(gVarA.f1625d);
            this.f2303i = h.a.h0(gVarA.f1626e);
            Log.d("DeviceManager", "eth0 Mac: " + strA + ", ip: " + gVarA.f1623b + " mIpAddress-> " + this.f2300f);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void g() {
        n.g gVar = (n.g) b.c().a(n.g.class);
        if (this.H) {
            this.f2314t = (byte) 1;
        } else {
            this.f2314t = (byte) 0;
        }
        if (gVar.f2647c) {
            this.f2315u = (byte) 1;
        } else {
            this.f2315u = (byte) 0;
        }
        this.f2316v = gVar.f2649e;
        this.f2317w = gVar.f2650f;
        this.f2318x = gVar.f2651g;
    }

    public void h(String str) {
        if (str == null || str.equals(this.f2296b)) {
            return;
        }
        android.support.v4.media.c.a("setDeviceId: ", str, "DeviceManager");
        this.f2296b = str;
        this.A = w0.h.c(str);
        d();
    }

    public void i(String str) {
        if (str == null || str.equals(this.f2295a)) {
            return;
        }
        android.support.v4.media.c.a("setDeviceName: ", str, "DeviceManager");
        this.f2295a = str;
        d();
    }

    public void j(int i4) {
        if (i4 != this.F) {
            this.F = i4;
            d();
            g3.c.b().f(new j.e());
        }
    }

    public void k(boolean z3) {
        if (z3 != this.B) {
            Log.d("DeviceManager", "setScreenState: " + z3);
            this.B = z3;
            if (z3 && this.F == -7) {
                this.F = -3;
            } else if (!z3 && this.F != -7) {
                this.F = -7;
            }
            d();
        }
    }
}
