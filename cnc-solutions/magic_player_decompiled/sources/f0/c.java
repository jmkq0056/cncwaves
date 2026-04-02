package f0;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.tv.TvView;
import android.os.Build;
import android.util.Log;
import android.view.SurfaceView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import cn.huidu.lcd.render.media.AspectTextureView;
import cn.huidu.lcd.render.model.HdmiInNode;
import cn.huidu.lcd.render.model.WidgetNode;

/* JADX INFO: loaded from: classes.dex */
public class c extends d0.h<HdmiInNode> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public FrameLayout f1631p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public TvView f1632q;

    public c(a0.g gVar) {
        super(gVar);
    }

    @Override // d0.e
    public void C() {
        super.C();
    }

    @Override // d0.e
    public void E(int i4) {
        super.E(i4);
        I(l.h.d().e());
    }

    @Override // d0.e
    public void G() {
        super.G();
        if (!cn.huidu.lcd.core.a.d() || this.f1632q == null) {
            return;
        }
        Log.d("HdmiInWidget", "releaseView: +++TvView");
        this.f1632q.reset();
        this.f1631p.removeAllViews();
        this.f1632q = null;
    }

    @Override // d0.h
    public boolean H(WidgetNode widgetNode) {
        return widgetNode instanceof HdmiInNode;
    }

    @SuppressLint({"NewApi"})
    public final void I(boolean z3) {
        if (cn.huidu.lcd.core.a.f()) {
            if (z3) {
                if (this.f1631p.findViewWithTag("HDMI IN") != null) {
                    return;
                }
                this.f1631p.removeAllViews();
                TvView tvView = new TvView(this.f1631p.getContext());
                tvView.setZOrderMediaOverlay(true);
                tvView.setTag("HDMI IN");
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                layoutParams.gravity = 17;
                this.f1631p.addView(tvView, layoutParams);
                l.h.d().o(tvView);
                this.f1632q = tvView;
                return;
            }
            if (((HdmiInNode) this.f1487b).isHideNoSignal()) {
                this.f1631p.removeAllViews();
                return;
            }
            if (this.f1631p.findViewWithTag("NoSignal") != null) {
                return;
            }
            this.f1631p.removeAllViews();
            TextView textView = new TextView(this.f1631p.getContext());
            textView.setTag("NoSignal");
            textView.setGravity(17);
            textView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            textView.setTextColor(SupportMenu.CATEGORY_MASK);
            textView.setTextSize(32.0f);
            textView.setText("No Signal");
            this.f1631p.addView(textView, new FrameLayout.LayoutParams(-1, -1));
            return;
        }
        if (!z3) {
            if (((HdmiInNode) this.f1487b).isHideNoSignal()) {
                this.f1631p.removeAllViews();
                return;
            }
            if (this.f1631p.findViewWithTag("NoSignal") != null) {
                return;
            }
            this.f1631p.removeAllViews();
            TextView textView2 = new TextView(this.f1631p.getContext());
            textView2.setTag("NoSignal");
            textView2.setGravity(17);
            textView2.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            textView2.setTextColor(SupportMenu.CATEGORY_MASK);
            textView2.setTextSize(32.0f);
            textView2.setText("No Signal");
            this.f1631p.addView(textView2, new FrameLayout.LayoutParams(-1, -1));
            return;
        }
        if (this.f1631p.findViewWithTag("HDMI IN") != null) {
            return;
        }
        this.f1631p.removeAllViews();
        l.h hVarD = l.h.d();
        if (Build.VERSION.SDK_INT < 29) {
            SurfaceView surfaceView = new SurfaceView(this.f1631p.getContext());
            surfaceView.setZOrderOnTop(true);
            surfaceView.setTag("HDMI IN");
            this.f1631p.addView(surfaceView, new FrameLayout.LayoutParams(-1, -1));
            hVarD.n(((HdmiInNode) this.f1487b).getRotation());
            hVarD.m(surfaceView);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = (((HdmiInNode) this.f1487b).getRotation() == 90 || ((HdmiInNode) this.f1487b).getRotation() == 270) ? new FrameLayout.LayoutParams(this.f1510n, this.f1509m) : new FrameLayout.LayoutParams(this.f1509m, this.f1510n);
        layoutParams2.gravity = 17;
        AspectTextureView aspectTextureView = new AspectTextureView(this.f1631p.getContext());
        aspectTextureView.setRotation(((HdmiInNode) this.f1487b).getRotation());
        aspectTextureView.setTag("HDMI IN");
        this.f1631p.addView(aspectTextureView, layoutParams2);
        hVarD.n(((HdmiInNode) this.f1487b).getRotation());
        hVarD.m(aspectTextureView);
    }

    @Override // d0.e, d0.c
    public void a() {
        super.a();
    }

    @Override // d0.d
    public void m() {
    }

    @Override // d0.d
    public View p(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        this.f1631p = frameLayout;
        return frameLayout;
    }

    @Override // d0.e
    public void t(Object obj) {
        if (obj instanceof j.i) {
            int i4 = ((j.i) obj).f1945a;
            if (i4 == 1) {
                I(true);
            } else {
                if (i4 != 2) {
                    return;
                }
                I(false);
            }
        }
    }

    @Override // d0.e
    public void x() {
        D();
    }

    @Override // d0.e
    public void z() {
        super.z();
    }
}
