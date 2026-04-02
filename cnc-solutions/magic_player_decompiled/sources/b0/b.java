package b0;

import a0.g;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cn.huidu.lcd.render.model.PlayTaskNode;
import d0.f;
import j.q;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g f164a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PlayTaskNode f166c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f167d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f168e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f169f = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f165b = new a(this);

    public static class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WeakReference<b> f170a;

        public a(b bVar) {
            super(Looper.getMainLooper());
            this.f170a = new WeakReference<>(bVar);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            b bVar = this.f170a.get();
            if (bVar != null) {
                bVar.b(message);
            }
        }
    }

    public b(g gVar) {
        this.f164a = gVar;
    }

    public abstract f a();

    public void b(Message message) {
    }

    public void c() {
    }

    public void d(j.g gVar) {
    }

    public abstract boolean e(PlayTaskNode playTaskNode);

    public void f(q qVar) {
    }

    public void g() {
        this.f168e = 1;
        l.c.a().j(-2);
    }

    public void h() {
    }

    public void i() {
        this.f168e = 2;
        l.c cVarA = l.c.a();
        if (cVarA.F == -2) {
            cVarA.j(this.f169f);
        }
    }

    public void k() {
        this.f168e = 2;
        this.f164a.c(this.f166c);
        l.c.a().j(this.f169f);
    }

    public void l() {
        if (this.f168e != 0) {
            this.f168e = 0;
            this.f164a.b(this.f166c);
        }
        l.c cVarA = l.c.a();
        int i4 = cVarA.F;
        if (i4 == 0 || i4 == -5 || i4 == -6 || i4 == -9) {
            cVarA.j(-3);
        }
        this.f165b.removeCallbacksAndMessages(null);
    }

    public void m(int i4) {
    }

    public void n(int i4, long j4) {
    }
}
