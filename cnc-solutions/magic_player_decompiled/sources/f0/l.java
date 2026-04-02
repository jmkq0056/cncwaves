package f0;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.RectF;
import android.os.Build;
import android.os.Message;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import cn.huidu.lcd.render.media.AspectSurfaceView;
import cn.huidu.lcd.render.media.AspectTextureView;
import cn.huidu.lcd.render.media.GLVideoSurfaceView;
import cn.huidu.lcd.render.media.a;
import cn.huidu.lcd.render.model.VideoNode;
import cn.huidu.lcd.render.model.WidgetNode;
import j.t;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ClickableViewAccessibility"})
public class l extends d0.h<VideoNode> implements a.InterfaceC0009a, View.OnTouchListener {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final cn.huidu.lcd.render.media.b f1673p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final cn.huidu.lcd.render.media.a f1674q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final boolean f1675r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1676s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1677t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f1678u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public a f1679v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public float f1680w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f1681x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f1682y;

    public interface a {
    }

    public l(a0.g gVar, boolean z3) {
        super(gVar);
        this.f1675r = z3;
        cn.huidu.lcd.render.media.a aVar = new cn.huidu.lcd.render.media.a();
        this.f1674q = aVar;
        aVar.f473g = this;
        cn.huidu.lcd.render.media.b bVar = new cn.huidu.lcd.render.media.b();
        this.f1673p = bVar;
        aVar.f470d = bVar;
        bVar.f476c = aVar;
    }

    @Override // d0.e
    public void C() {
        super.C();
        this.f1674q.h();
    }

    @Override // d0.e
    public void E(int i4) {
        super.E(i4);
        h0.h.b("VideoWidget", "start: " + i4);
        this.f1674q.g(((VideoNode) this.f1487b).getVideoPath());
        if (i4 <= 500) {
            cn.huidu.lcd.render.media.a aVar = this.f1674q;
            aVar.c();
            aVar.h();
        } else {
            int i5 = i4 + PathInterpolatorCompat.MAX_NUM_POINTS;
            if (i5 < getDuration()) {
                this.f1674q.f(i5);
            } else {
                this.f1674q.f(i4);
            }
            this.f1674q.h();
        }
    }

    @Override // d0.e
    public void G() {
        super.G();
        this.f1674q.i();
    }

    @Override // d0.h
    public boolean H(WidgetNode widgetNode) {
        return widgetNode instanceof VideoNode;
    }

    @Override // d0.e, d0.c
    public void a() {
        super.a();
        cn.huidu.lcd.render.media.a aVar = this.f1674q;
        aVar.c();
        aVar.h();
    }

    @Override // cn.huidu.lcd.render.media.a.InterfaceC0009a
    public void g(cn.huidu.lcd.render.media.a aVar) {
        h0.h.b("VideoWidget", "onError:: ");
        this.f1676s = true;
        if (this.f1486a.f35f) {
            return;
        }
        A(1000);
    }

    @Override // cn.huidu.lcd.render.media.a.InterfaceC0009a
    public void h(cn.huidu.lcd.render.media.a aVar) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f1493h;
        h0.h.b("VideoWidget", "onPrepared: elapse " + jElapsedRealtime + "ms");
        this.f1677t = (jElapsedRealtime <= 0 || jElapsedRealtime >= 3000) ? 0 : (int) jElapsedRealtime;
    }

    @Override // cn.huidu.lcd.render.media.a.InterfaceC0009a
    public void i(cn.huidu.lcd.render.media.a aVar) {
        h0.h.b("VideoWidget", "onPlayComplete:: ");
        A(0);
    }

    @Override // cn.huidu.lcd.render.media.a.InterfaceC0009a
    public void l(cn.huidu.lcd.render.media.a aVar) {
        h0.h.b("VideoWidget", "onSeekComplete: ");
        if (this.f1486a.f35f) {
            this.f1489d.removeMessages(2);
            this.f1489d.sendEmptyMessageDelayed(2, 300L);
        }
    }

    @Override // d0.d
    public void n() {
        this.f1673p.c(((VideoNode) this.f1487b).getWidth(), ((VideoNode) this.f1487b).getHeight());
        cn.huidu.lcd.render.media.b bVar = this.f1673p;
        bVar.f479f = ((VideoNode) this.f1487b).isKeepAspectRatio();
        if (bVar.f477d > 0 && bVar.f478e > 0) {
            bVar.d();
        }
        cn.huidu.lcd.render.media.b bVar2 = this.f1673p;
        RectF scaleRect = ((VideoNode) this.f1487b).getScaleRect();
        View view = bVar2.f474a;
        if (view instanceof GLVideoSurfaceView) {
            ((GLVideoSurfaceView) view).setTextureRect(scaleRect);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int i4;
        if (this.f1679v == null || !this.f1511o) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        float x3 = motionEvent.getX();
        float y3 = motionEvent.getY();
        if (actionMasked == 0) {
            this.f1680w = x3;
            this.f1681x = y3;
        } else if (actionMasked != 1) {
            if (actionMasked == 2 && this.f1682y == 0) {
                float f4 = x3 - this.f1680w;
                float f5 = y3 - this.f1681x;
                if (Math.abs(f4) > 20.0f || Math.abs(f5) > 20.0f) {
                    this.f1682y = 1;
                    r();
                    if (Math.abs(f4) > Math.abs(f5)) {
                        if (f4 > 0.0f) {
                            this.f1678u = 2;
                        } else {
                            this.f1678u = 1;
                        }
                    } else if (f5 > 0.0f) {
                        this.f1678u = 4;
                    } else {
                        this.f1678u = 3;
                    }
                }
            }
        } else if (this.f1682y == 1) {
            this.f1682y = 0;
            a aVar = this.f1679v;
            if (aVar != null && (i4 = this.f1678u) != 0) {
                if (i4 == 1 || i4 == 3) {
                    ((d0.b) aVar).L(1, this.f1674q.f467a);
                } else {
                    ((d0.b) aVar).L(-1, this.f1674q.f467a);
                }
            }
        }
        return true;
    }

    @Override // d0.d
    public View p(Context context) {
        View gLVideoSurfaceView = this.f1675r ? new GLVideoSurfaceView(context) : Build.VERSION.SDK_INT >= 30 ? new AspectTextureView(context) : new AspectSurfaceView(context);
        gLVideoSurfaceView.setOnTouchListener(this);
        this.f1673p.b(gLVideoSurfaceView);
        return gLVideoSurfaceView;
    }

    @Override // d0.e
    public void t(Object obj) {
        if (obj instanceof t) {
            long j4 = ((t) obj).f1969a;
            h0.h.b("VideoWidget", "onTimeChanged: " + j4);
            if (cn.huidu.lcd.core.a.f337c == 102 && j4 > 1000 && this.f1674q.b()) {
                h0.h.b("VideoWidget", "onTimeChanged: restart media player.");
                cn.huidu.lcd.render.media.a aVar = this.f1674q;
                int currentPosition = aVar.a() ? aVar.f471e.getCurrentPosition() : 0;
                cn.huidu.lcd.render.media.a aVar2 = this.f1674q;
                aVar2.c();
                aVar2.h();
                this.f1674q.f(currentPosition);
            }
        }
    }

    @Override // d0.e
    public void x() {
        h0.h.b("VideoWidget", "onFinishTimerCall: ");
        if (this.f1486a.f35f || this.f1676s) {
            D();
        } else {
            A(5000);
        }
    }

    @Override // d0.e
    public void y(Message message) {
        super.y(message);
        int i4 = message.what;
        if (i4 == 1) {
            cn.huidu.lcd.render.media.a aVar = this.f1674q;
            if (aVar.f468b == 4) {
                aVar.f471e.start();
                aVar.f468b = 3;
            }
            aVar.f469c = 3;
            return;
        }
        if (i4 == 2) {
            cn.huidu.lcd.render.media.a aVar2 = this.f1674q;
            int currentPosition = (int) ((((long) (aVar2.a() ? aVar2.f471e.getCurrentPosition() : 0)) - s()) + ((long) this.f1677t));
            h0.h.b("VideoWidget", "seek offset: " + currentPosition + "ms");
            if (currentPosition > 0) {
                this.f1674q.d();
                if (currentPosition >= 100) {
                    this.f1489d.removeMessages(1);
                    this.f1489d.sendEmptyMessageDelayed(1, currentPosition);
                    return;
                }
                SystemClock.sleep(currentPosition);
                cn.huidu.lcd.render.media.a aVar3 = this.f1674q;
                if (aVar3.f468b == 4) {
                    aVar3.f471e.start();
                    aVar3.f468b = 3;
                }
                aVar3.f469c = 3;
            }
        }
    }

    @Override // d0.e
    public void z() {
        super.z();
        this.f1674q.d();
    }
}
