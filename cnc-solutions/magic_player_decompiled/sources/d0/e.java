package d0;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import cn.huidu.lcd.render.model.Node;
import d0.c;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class e<T extends Node> extends d<T> implements c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Handler f1489d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1490e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1491f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1492g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f1493h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f1494i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f1495j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1496k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public c.a f1497l;

    public static class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WeakReference<e> f1498a;

        public a(e eVar) {
            super(Looper.getMainLooper());
            this.f1498a = new WeakReference<>(eVar);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            e eVar = this.f1498a.get();
            if (eVar != null) {
                eVar.y(message);
            }
        }
    }

    public e(a0.g gVar) {
        super(gVar);
        this.f1496k = false;
        this.f1489d = new a(this);
    }

    public void A(int i4) {
        if (this.f1490e == 1) {
            this.f1489d.removeMessages(65535);
            this.f1489d.sendEmptyMessageDelayed(65535, i4);
        }
    }

    public void B() {
    }

    public void C() {
        this.f1490e = 1;
        F((int) this.f1495j);
    }

    public void D() {
        if (this.f1490e == 1) {
            this.f1491f = true;
            this.f1490e = 3;
            this.f1486a.b(this.f1487b);
            this.f1489d.removeCallbacksAndMessages(null);
            c.a aVar = this.f1497l;
            if (aVar != null) {
                aVar.j(this);
            }
        }
    }

    public void E(int i4) {
        this.f1491f = false;
        this.f1490e = 1;
        this.f1486a.c(this.f1487b);
        F(i4);
    }

    public void F(int i4) {
        this.f1489d.removeMessages(65535);
        int duration = getDuration();
        if (duration <= 0) {
            this.f1491f = true;
            return;
        }
        if (i4 > duration) {
            i4 %= duration;
        }
        this.f1492g = i4;
        SystemClock.elapsedRealtime();
        this.f1493h = SystemClock.elapsedRealtime();
        this.f1494i = r.e.c();
        if (this.f1496k) {
            this.f1489d.removeMessages(FragmentActivity.MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS);
            this.f1489d.sendEmptyMessageDelayed(FragmentActivity.MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS, (duration - i4) - 50);
        }
    }

    public void G() {
        this.f1490e = 0;
        r();
    }

    public void a() {
        this.f1490e = 1;
        this.f1486a.c(this.f1487b);
        F(0);
    }

    public void r() {
        this.f1489d.removeMessages(FragmentActivity.MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS);
    }

    public long s() {
        return (SystemClock.elapsedRealtime() - this.f1493h) + ((long) this.f1492g);
    }

    public void t(Object obj) {
    }

    public void u() {
        this.f1489d.removeMessages(65533);
        View view = this.f1488c;
        if (view != null) {
            view.invalidate();
        }
    }

    public void v(long j4) {
        this.f1489d.removeMessages(65533);
        this.f1489d.sendEmptyMessageDelayed(65533, j4);
    }

    public boolean w() {
        int i4 = this.f1490e;
        return (i4 == 0 || i4 == 2) ? false : true;
    }

    public void x() {
    }

    public void y(Message message) {
        switch (message.what) {
            case 65533:
                u();
                break;
            case FragmentActivity.MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS /* 65534 */:
                x();
                break;
            case 65535:
                D();
                break;
        }
    }

    public void z() {
        this.f1490e = 2;
        this.f1495j = s();
        r();
    }
}
