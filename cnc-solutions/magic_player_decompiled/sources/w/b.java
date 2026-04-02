package w;

import a0.c;
import a0.f;
import a0.i;
import android.graphics.Point;
import android.media.tv.TvView;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import cn.huidu.lcd.airplay.RaopServer;
import cn.huidu.lcd.player.R;
import cn.huidu.lcd.render.media.AspectSurfaceView;
import cn.huidu.lcd.render.media.AspectTextureView;
import cn.huidu.lcd.render.model.PlayTaskNode;
import java.util.Objects;
import l.h;
import t.d;

/* JADX INFO: loaded from: classes.dex */
public class b implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ViewGroup f3772a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ViewGroup f3773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ImageView f3774c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final i f3775d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3776e;

    public b(i iVar) {
        this.f3775d = iVar;
    }

    @Override // a0.i
    public void a(a0.a aVar) {
        this.f3775d.a(aVar);
    }

    @Override // a0.i
    public void b(int i4) {
        this.f3775d.b(i4);
    }

    @Override // a0.i
    public void c(int i4) {
        if (j()) {
            this.f3775d.c(i4);
            m(false);
        }
    }

    @Override // a0.i
    public void d(ViewGroup viewGroup) {
        this.f3772a = (ViewGroup) viewGroup.findViewById(R.id.player_container);
        this.f3773b = (ViewGroup) viewGroup.findViewById(R.id.surface_container);
        ImageView imageView = (ImageView) viewGroup.findViewById(R.id.img_play);
        this.f3774c = imageView;
        imageView.setOnClickListener(new a(this));
        this.f3775d.d(this.f3772a);
    }

    @Override // a0.i
    public void e(Object obj) {
        if (j()) {
            this.f3775d.e(obj);
        }
    }

    @Override // a0.i
    public boolean f() {
        if (!j()) {
            return false;
        }
        boolean zF = this.f3775d.f();
        m(zF);
        return zF;
    }

    @Override // a0.i
    public void g(PlayTaskNode playTaskNode) {
        if (j()) {
            this.f3775d.g(playTaskNode);
            m(false);
        }
    }

    @Override // a0.i
    public void h(int i4, long j4) {
        if (j()) {
            this.f3775d.h(i4, j4);
            m(false);
        }
    }

    public void i() {
        if (f.e().f19k && h.d().e()) {
            l(1, true);
        } else {
            l(0, true);
        }
    }

    public final boolean j() {
        return this.f3776e == 0;
    }

    public void k(int i4, int i5, int i6) {
        if (this.f3776e != i4) {
            androidx.media.b.a(android.support.v4.media.f.a("Ignore video size, current display is "), this.f3776e, "PlayerProxy");
            return;
        }
        a.b.a("setSurfaceAspectRatio: ", i5, "-", i6, "PlayerProxy");
        if (i5 <= 0 || i6 <= 0) {
            return;
        }
        View viewFindViewWithTag = this.f3773b.findViewWithTag("SurfaceView");
        if (viewFindViewWithTag instanceof AspectSurfaceView) {
            Log.d("PlayerProxy", "setSurfaceAspectRatio: AspectSurfaceView");
            ((AspectSurfaceView) viewFindViewWithTag).a(false, i5, i6);
        } else if (viewFindViewWithTag instanceof AspectTextureView) {
            Log.d("PlayerProxy", "setSurfaceAspectRatio: AspectTextureView");
            ((AspectTextureView) viewFindViewWithTag).a(false, i5, i6);
        }
    }

    public void l(int i4, boolean z3) {
        a.a.a("setInputSource: ", i4, "PlayerProxy");
        if (this.f3776e == i4 && !z3) {
            Log.d("PlayerProxy", "setInputSource: not change.");
            return;
        }
        stop();
        this.f3776e = i4;
        if (i4 == 0) {
            this.f3772a.setVisibility(0);
            this.f3773b.setVisibility(8);
            f fVarE = f.e();
            Objects.requireNonNull(fVarE);
            Log.d("PlayTaskManager", "initPlay: ");
            fVarE.d(new c(fVarE, 0));
            return;
        }
        m(false);
        this.f3772a.setVisibility(8);
        this.f3773b.setVisibility(0);
        Log.d("PlayerProxy", "setInputSource: display->" + i4);
        if (i4 != 1) {
            AspectSurfaceView aspectSurfaceView = new AspectSurfaceView(this.f3773b.getContext());
            aspectSurfaceView.setTag("SurfaceView");
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            this.f3773b.addView(aspectSurfaceView, layoutParams);
            if (i4 != 2) {
                RaopServer.getInstance().setDisplay(aspectSurfaceView);
                return;
            }
            d dVarA = d.a();
            Objects.requireNonNull(dVarA);
            aspectSurfaceView.getHolder().addCallback(dVarA.f3508n);
            return;
        }
        h hVarD = h.d();
        hVarD.n(0);
        if (cn.huidu.lcd.core.a.f()) {
            if (Build.VERSION.SDK_INT >= 24) {
                TvView tvView = new TvView(this.f3773b.getContext());
                tvView.setZOrderMediaOverlay(true);
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                layoutParams2.gravity = 17;
                this.f3773b.addView(tvView, layoutParams2);
                new Handler().postDelayed(new m.b(hVarD, tvView), z3 ? 500L : 200L);
                return;
            }
            return;
        }
        if (Build.VERSION.SDK_INT < 29) {
            AspectSurfaceView aspectSurfaceView2 = new AspectSurfaceView(this.f3773b.getContext());
            aspectSurfaceView2.setTag("SurfaceView");
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
            layoutParams3.gravity = 17;
            this.f3773b.addView(aspectSurfaceView2, layoutParams3);
            hVarD.m(aspectSurfaceView2);
            return;
        }
        int i5 = ((n.a) l.b.c().a(n.a.class)).f2616m * 90;
        Point pointB = w0.a.b(w0.c.f3777a);
        FrameLayout.LayoutParams layoutParams4 = (i5 == 90 || i5 == 270) ? new FrameLayout.LayoutParams(pointB.y, pointB.x) : new FrameLayout.LayoutParams(-1, -1);
        layoutParams4.gravity = 17;
        AspectTextureView aspectTextureView = new AspectTextureView(this.f3773b.getContext());
        aspectTextureView.setTag("SurfaceView");
        aspectTextureView.setRotation(i5);
        this.f3773b.addView(aspectTextureView, layoutParams4);
        hVarD.m(aspectTextureView);
    }

    public void m(boolean z3) {
        this.f3774c.setVisibility(z3 ? 0 : 8);
    }

    @Override // a0.i
    public void next() {
        if (j()) {
            this.f3775d.next();
            m(false);
        }
    }

    @Override // a0.i
    public void pause() {
        if (j()) {
            this.f3775d.pause();
            m(true);
        }
    }

    @Override // a0.i
    public void previous() {
        if (j()) {
            this.f3775d.previous();
            m(false);
        }
    }

    @Override // a0.i
    public void resume() {
        if (j()) {
            this.f3775d.resume();
            m(false);
        }
    }

    @Override // a0.i
    public void stop() {
        int i4 = this.f3776e;
        if (i4 == 0) {
            this.f3775d.stop();
        } else if (i4 == 2) {
            d.a().c();
        } else if (i4 == 3) {
            RaopServer.getInstance().stopPlay();
        }
        this.f3772a.removeAllViews();
        this.f3773b.removeAllViews();
    }
}
