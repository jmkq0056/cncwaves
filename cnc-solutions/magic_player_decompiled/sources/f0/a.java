package f0;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.view.View;
import cn.huidu.lcd.render.model.ClockNode;
import cn.huidu.lcd.render.model.TimerNode;
import cn.huidu.lcd.render.model.WidgetNode;
import cn.huidu.lcd.render.player.view.DrawableView;
import h0.k;
import j.t;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class a extends d0.h<ClockNode> implements g0.a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final /* synthetic */ int f1628p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Object f1629q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(a0.g gVar, int i4) {
        super(gVar);
        this.f1628p = i4;
        if (i4 != 1) {
            this.f1629q = new e0.a();
        } else {
            super(gVar);
            this.f1629q = new e0.k();
        }
    }

    @Override // d0.e
    public void C() {
        switch (this.f1628p) {
            case 0:
                super.C();
                u();
                break;
            default:
                super.C();
                u();
                break;
        }
    }

    @Override // d0.e
    public void E(int i4) {
        switch (this.f1628p) {
            case 0:
                super.E(i4);
                u();
                break;
            default:
                super.E(i4);
                u();
                break;
        }
    }

    @Override // d0.h
    public boolean H(WidgetNode widgetNode) {
        switch (this.f1628p) {
            case 0:
                return widgetNode instanceof ClockNode;
            default:
                return widgetNode instanceof TimerNode;
        }
    }

    @Override // d0.e, d0.c
    public void a() {
        switch (this.f1628p) {
            case 0:
                super.a();
                u();
                break;
            default:
                super.a();
                u();
                break;
        }
    }

    @Override // g0.a
    public void f(Canvas canvas) {
        switch (this.f1628p) {
            case 0:
                ((e0.a) this.f1629q).draw(canvas);
                if (w()) {
                    v(100L);
                }
                break;
            default:
                ((e0.k) this.f1629q).draw(canvas);
                if (w()) {
                    v(100L);
                }
                break;
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // d0.d
    public void m() {
        switch (this.f1628p) {
            case 0:
                ((e0.a) this.f1629q).b((ClockNode) this.f1487b);
                break;
            default:
                e0.k kVar = (e0.k) this.f1629q;
                TimerNode timerNode = (TimerNode) this.f1487b;
                Objects.requireNonNull(kVar);
                kVar.f1607c = timerNode.getTimeMode();
                kVar.f1608d = timerNode.getTargetTime();
                kVar.f1606b.f1847h = timerNode.getFontStyle();
                kVar.f1606b.f1848i = timerNode.getTimeFontStyle();
                h0.k kVar2 = kVar.f1606b;
                String format = timerNode.getFormat();
                kVar2.f1840a.clear();
                if (format != null && format.length() != 0) {
                    int i4 = 0;
                    boolean z3 = false;
                    for (int i5 = 0; i5 < format.length(); i5++) {
                        char cCharAt = format.charAt(i5);
                        if (cCharAt == '{') {
                            if (i5 > i4) {
                                kVar2.f1840a.add(format.substring(i4, i5));
                            }
                            i4 = i5 + 1;
                            z3 = true;
                        } else if (z3 && cCharAt == '}') {
                            if (i5 > i4) {
                                List<Object> list = kVar2.f1840a;
                                String strSubstring = format.substring(i4, i5);
                                k.b bVar = new k.b(null);
                                bVar.f1850b = Math.min(strSubstring.length(), 9);
                                if (strSubstring.matches("y+")) {
                                    bVar.f1849a = 1;
                                } else if (strSubstring.matches("M+")) {
                                    bVar.f1849a = 2;
                                } else if (strSubstring.matches("d+")) {
                                    bVar.f1849a = 3;
                                } else if (strSubstring.matches("H+")) {
                                    bVar.f1849a = 4;
                                } else if (strSubstring.matches("m+")) {
                                    bVar.f1849a = 5;
                                } else if (strSubstring.matches("s+")) {
                                    bVar.f1849a = 6;
                                }
                                list.add(bVar);
                            }
                            i4 = i5 + 1;
                            z3 = false;
                        }
                    }
                    if (i4 < format.length()) {
                        kVar2.f1840a.add(format.substring(i4));
                    }
                    for (int i6 = 0; i6 < kVar2.f1840a.size(); i6++) {
                        Object obj = kVar2.f1840a.get(i6);
                        if (obj instanceof k.b) {
                            switch (((k.b) obj).f1849a) {
                                case 1:
                                    kVar2.f1841b = true;
                                    break;
                                case 2:
                                    kVar2.f1842c = true;
                                    break;
                                case 3:
                                    kVar2.f1843d = true;
                                    break;
                                case 4:
                                    kVar2.f1844e = true;
                                    break;
                                case 5:
                                    kVar2.f1845f = true;
                                    break;
                                case 6:
                                    kVar2.f1846g = true;
                                    break;
                            }
                        }
                    }
                }
                String fontName = timerNode.getFontStyle() != null ? timerNode.getFontStyle().getFontName() : null;
                if (!TextUtils.isEmpty(fontName)) {
                    kVar.f1605a.setTypeface(w0.g.b().c(fontName));
                }
                break;
        }
    }

    @Override // d0.d
    public View p(Context context) {
        switch (this.f1628p) {
            case 0:
                DrawableView drawableView = new DrawableView(context);
                drawableView.setOnDrawListener(this);
                return drawableView;
            default:
                DrawableView drawableView2 = new DrawableView(context);
                drawableView2.setOnDrawListener(this);
                return drawableView2;
        }
    }

    @Override // d0.e
    public void t(Object obj) {
        switch (this.f1628p) {
            case 0:
                if (obj instanceof t) {
                    h0.h.b("ClockWidget", "onTimeChanged: update clock.");
                    ((e0.a) this.f1629q).b((ClockNode) this.f1487b);
                }
                break;
        }
    }

    @Override // d0.e
    public void x() {
        switch (this.f1628p) {
            case 0:
                D();
                break;
            default:
                D();
                break;
        }
    }
}
