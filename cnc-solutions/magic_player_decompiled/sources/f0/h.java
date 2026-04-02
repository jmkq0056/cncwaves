package f0;

import android.content.Context;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import cn.huidu.lcd.render.R$id;
import cn.huidu.lcd.render.R$layout;
import cn.huidu.lcd.render.media.AspectSurfaceView;
import cn.huidu.lcd.render.media.a;
import cn.huidu.lcd.render.model.LiveStreamNode;
import cn.huidu.lcd.render.model.WidgetNode;
import j.t;

/* JADX INFO: loaded from: classes.dex */
public class h extends d0.h<LiveStreamNode> implements a.InterfaceC0009a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final cn.huidu.lcd.render.media.b f1654p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final cn.huidu.lcd.render.media.a f1655q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public View f1656r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1657s;

    public h(a0.g gVar) {
        super(gVar);
        cn.huidu.lcd.render.media.a aVar = new cn.huidu.lcd.render.media.a();
        this.f1655q = aVar;
        aVar.f473g = this;
        cn.huidu.lcd.render.media.b bVar = new cn.huidu.lcd.render.media.b();
        this.f1654p = bVar;
        aVar.f470d = bVar;
        bVar.f476c = aVar;
    }

    @Override // d0.e
    public void C() {
        super.C();
        this.f1655q.h();
    }

    @Override // d0.e
    public void E(int i4) {
        super.E(i4);
        I(true);
        this.f1655q.g(((LiveStreamNode) this.f1487b).getUrl());
        this.f1655q.h();
    }

    @Override // d0.e
    public void G() {
        super.G();
        this.f1489d.removeMessages(6);
        this.f1655q.i();
    }

    @Override // d0.h
    public boolean H(WidgetNode widgetNode) {
        return widgetNode instanceof LiveStreamNode;
    }

    public final void I(boolean z3) {
        this.f1657s = z3;
        View view = this.f1656r;
        if (view != null) {
            view.setVisibility(z3 ? 0 : 8);
        }
    }

    @Override // d0.e, d0.c
    public void a() {
        super.a();
    }

    @Override // cn.huidu.lcd.render.media.a.InterfaceC0009a
    public void g(cn.huidu.lcd.render.media.a aVar) {
        h0.h.b("LiveStreamWidget", "onError:: ");
        this.f1489d.removeMessages(6);
        this.f1489d.sendEmptyMessageDelayed(6, 3000L);
    }

    @Override // cn.huidu.lcd.render.media.a.InterfaceC0009a
    public void h(cn.huidu.lcd.render.media.a aVar) {
        I(false);
    }

    @Override // cn.huidu.lcd.render.media.a.InterfaceC0009a
    public void i(cn.huidu.lcd.render.media.a aVar) {
        h0.h.b("LiveStreamWidget", "onPlayComplete:: ");
    }

    @Override // cn.huidu.lcd.render.media.a.InterfaceC0009a
    public void l(cn.huidu.lcd.render.media.a aVar) {
        h0.h.b("LiveStreamWidget", "onSeekComplete:: ");
    }

    @Override // d0.d
    public void n() {
        I(this.f1657s);
    }

    @Override // d0.d
    public View p(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        AspectSurfaceView aspectSurfaceView = new AspectSurfaceView(context);
        this.f1654p.b(aspectSurfaceView);
        frameLayout.addView(aspectSurfaceView, -1, -1);
        LayoutInflater.from(context).inflate(R$layout.loading_view, (ViewGroup) frameLayout, true);
        this.f1656r = frameLayout.findViewById(R$id.ll_loading);
        return frameLayout;
    }

    @Override // d0.e
    public void t(Object obj) {
        if ((obj instanceof t) && ((t) obj).f1969a > 1000 && this.f1655q.b()) {
            cn.huidu.lcd.render.media.a aVar = this.f1655q;
            aVar.c();
            aVar.h();
        }
    }

    @Override // d0.e
    public void x() {
        h0.h.b("LiveStreamWidget", "onFinishTimerCall: ");
        D();
    }

    @Override // d0.e
    public void y(Message message) {
        if (message.what != 6) {
            super.y(message);
            return;
        }
        h0.h.b("LiveStreamWidget", "onHandleMessage: MSG_CODE_RETRY_PLAY");
        cn.huidu.lcd.render.media.a aVar = this.f1655q;
        aVar.c();
        aVar.h();
    }

    @Override // d0.e
    public void z() {
        super.z();
        this.f1655q.d();
    }
}
