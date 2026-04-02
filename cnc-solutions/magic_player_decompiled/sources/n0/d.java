package n0;

import n.i;
import s.h;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static d f2711f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Thread f2712a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f2713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f2714c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2715d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2716e;

    public d() {
        b();
    }

    public static d a() {
        if (f2711f == null) {
            synchronized (d.class) {
                if (f2711f == null) {
                    f2711f = new d();
                }
            }
        }
        return f2711f;
    }

    public final void b() {
        i iVar = (i) l.b.c().a(i.class);
        this.f2713b = iVar.f2656c;
        this.f2714c = iVar.f2657d;
        this.f2715d = iVar.f2658e;
        this.f2716e = iVar.f2659f * 1000;
    }

    public void c() {
        Thread thread = this.f2712a;
        if (thread == null || !thread.isAlive()) {
            h.a("start monitor thread..");
            Thread thread2 = new Thread(new d.d(this));
            this.f2712a = thread2;
            thread2.setName("TelephonyMonitor");
            this.f2712a.start();
        }
    }
}
