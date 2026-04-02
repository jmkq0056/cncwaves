package f0;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.view.View;
import cn.huidu.lcd.render.model.EWatchNode;
import cn.huidu.lcd.render.model.WidgetNode;
import cn.huidu.lcd.render.player.view.DrawableView;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public class b extends d0.h<EWatchNode> implements g0.a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final e0.c f1630p;

    public b(a0.g gVar) {
        super(gVar);
        this.f1630p = new e0.c();
    }

    @Override // d0.e
    public void C() {
        super.C();
        u();
    }

    @Override // d0.e
    public void E(int i4) {
        super.E(i4);
        u();
    }

    @Override // d0.h
    public boolean H(WidgetNode widgetNode) {
        return widgetNode instanceof EWatchNode;
    }

    @Override // d0.e, d0.c
    public void a() {
        super.a();
        u();
    }

    @Override // g0.a
    public void f(Canvas canvas) {
        e0.c cVar = this.f1630p;
        cVar.f1546a.setTimeInMillis(System.currentTimeMillis());
        TimeZone timeZone = TimeZone.getDefault();
        if (!timeZone.equals(cVar.f1546a.getTimeZone())) {
            cVar.f1546a.setTimeZone(timeZone);
        }
        cVar.f1558m = cVar.f1546a.get(11);
        cVar.f1559n = cVar.f1546a.get(12);
        cVar.f1560o = cVar.f1546a.get(13);
        cVar.f1561p = cVar.f1546a.get(14);
        this.f1630p.draw(canvas);
        if (w()) {
            v(100L);
        }
    }

    @Override // d0.d
    public void m() {
        this.f1630p.f1551f = ((EWatchNode) this.f1487b).getTextSize();
        this.f1630p.f1552g = ((EWatchNode) this.f1487b).getTextColor();
        this.f1630p.f1553h = ((EWatchNode) this.f1487b).getStrokeColor();
        this.f1630p.f1554i = ((EWatchNode) this.f1487b).getBaseColor();
        this.f1630p.f1555j = ((EWatchNode) this.f1487b).getStyle();
        this.f1630p.f1556k = ((EWatchNode) this.f1487b).getAlignment();
        this.f1630p.f1557l = ((EWatchNode) this.f1487b).getPadding();
    }

    @Override // d0.d
    public View p(Context context) {
        DrawableView drawableView = new DrawableView(context);
        drawableView.setOnDrawListener(this);
        if (Build.VERSION.SDK_INT > 19) {
            drawableView.setLayerType(1, null);
        }
        return drawableView;
    }

    @Override // d0.e
    public void x() {
        D();
    }
}
