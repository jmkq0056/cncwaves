package f0;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.VelocityTracker;
import android.view.View;
import cn.huidu.lcd.render.model.OfficeNode;
import cn.huidu.lcd.render.model.WidgetNode;
import cn.huidu.lcd.render.player.view.DrawableView;
import e0.f;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ClickableViewAccessibility"})
public class i extends d0.h<OfficeNode> implements g0.a, f.a, View.OnTouchListener {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final e0.f f1658p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final z.d f1659q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final e0.g f1660r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1661s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Matrix f1662t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public float f1663u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public float f1664v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public float f1665w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f1666x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f1667y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public VelocityTracker f1668z;

    public i(a0.g gVar) {
        super(gVar);
        e0.f fVar = new e0.f();
        this.f1658p = fVar;
        fVar.f1588z = this;
        this.f1659q = new z.a(3);
        this.f1660r = new e0.g();
    }

    @Override // d0.e
    public void B() {
        ((z.a) this.f1659q).d(0);
    }

    @Override // d0.e
    public void C() {
        super.C();
        this.f1658p.f1581s = 0L;
        u();
    }

    @Override // d0.e
    public void E(int i4) {
        int i5;
        super.E(i4);
        int iB = ((z.a) this.f1659q).b();
        int interval = ((OfficeNode) this.f1487b).getInterval();
        int i6 = 0;
        if (interval <= 0 || iB <= 0) {
            i5 = 0;
        } else {
            i6 = (i4 / interval) % iB;
            i5 = i4 % interval;
        }
        I(i6, i5);
    }

    @Override // d0.e
    public void G() {
        super.G();
        this.f1658p.b();
    }

    @Override // d0.h
    public boolean H(WidgetNode widgetNode) {
        return widgetNode instanceof OfficeNode;
    }

    public final void I(int i4, int i5) {
        h0.h.b("OfficeWidget", "playAt: index=" + i4 + ", position=" + i5);
        ((z.a) this.f1659q).e(i4);
        this.f1661s = i4;
        this.f1658p.q(i4, this.f1660r);
        e0.f fVar = this.f1658p;
        fVar.f1581s = 0L;
        fVar.f1582t = i5;
        fVar.f1583u = 1;
        u();
    }

    @Override // d0.e, d0.c
    public void a() {
        super.a();
        if (((OfficeNode) this.f1487b).getEndType() == 0) {
            I(0, 0);
        }
    }

    @Override // e0.f.a
    public void c() {
        int i4 = this.f1661s + 1;
        if (i4 < ((z.a) this.f1659q).b()) {
            ((z.a) this.f1659q).e(i4);
        }
    }

    @Override // e0.f.a
    public void d() {
        if (((OfficeNode) this.f1487b).isAutoPlay()) {
            int i4 = this.f1661s + 1;
            if (i4 >= ((z.a) this.f1659q).b()) {
                h0.h.b("OfficeWidget", "onDisplayEnd: finish play.");
                A(0);
                return;
            }
            h0.h.b("OfficeWidget", "onDisplayEnd: play next: " + i4);
            I(i4, 0);
        }
    }

    @Override // e0.f.a
    public Bitmap e(int i4) {
        return ((z.a) this.f1659q).a(i4);
    }

    @Override // g0.a
    public void f(Canvas canvas) {
        canvas.concat(this.f1662t);
        this.f1658p.draw(canvas);
        if (this.f1667y != 2) {
            if (w()) {
                u();
            }
        } else {
            if (this.f1658p.c()) {
                u();
                return;
            }
            this.f1667y = 0;
            this.f1658p.k();
            I(this.f1658p.f1578p, 0);
        }
    }

    @Override // d0.d
    public void m() {
        List<String> fileList = ((OfficeNode) this.f1487b).getFileList();
        z.e eVar = new z.e();
        eVar.a(fileList);
        ((z.a) this.f1659q).g(eVar);
        this.f1658p.f1580r = ((z.a) this.f1659q).b();
        e0.g gVar = this.f1660r;
        gVar.f1590b = 0;
        gVar.f1591c = false;
        gVar.f1592d = 0;
        gVar.f1593e = ((OfficeNode) this.f1487b).getInterval();
        this.f1660r.f1589a = false;
    }

    @Override // d0.d
    public void n() {
        Matrix matrix;
        RectF scaleRect = ((OfficeNode) this.f1487b).getScaleRect();
        int i4 = this.f1509m;
        int i5 = this.f1510n;
        if (scaleRect == null || i4 == 0 || i5 == 0 || scaleRect.width() == 0.0f || scaleRect.height() == 0.0f) {
            matrix = null;
        } else {
            float fWidth = i4 / (scaleRect.width() * i4);
            float fHeight = i5 / (scaleRect.height() * i5);
            float f4 = (-i4) * fWidth * scaleRect.left;
            float f5 = (-i5) * fHeight * scaleRect.top;
            h0.h.b("OfficeWidget", "sx: " + fWidth + ", sy: " + fHeight + ", dx: " + f4 + ", dy: " + f5);
            matrix = new Matrix();
            matrix.setScale(fWidth, fHeight);
            matrix.postTranslate(f4, f5);
        }
        this.f1662t = matrix;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x007a  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r7, android.view.MotionEvent r8) {
        /*
            r6 = this;
            boolean r0 = r6.f1511o
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            android.view.VelocityTracker r0 = r6.f1668z
            if (r0 != 0) goto L10
            android.view.VelocityTracker r0 = android.view.VelocityTracker.obtain()
            r6.f1668z = r0
        L10:
            android.view.VelocityTracker r0 = r6.f1668z
            r0.addMovement(r8)
            int r0 = r8.getActionMasked()
            float r2 = r8.getX()
            float r8 = r8.getY()
            r3 = 1
            if (r0 == 0) goto Laa
            r4 = 2
            if (r0 == r3) goto L7a
            if (r0 == r4) goto L2e
            r5 = 3
            if (r0 == r5) goto L7a
            goto Lae
        L2e:
            int r7 = r6.f1667y
            if (r7 != 0) goto L67
            float r7 = r6.f1663u
            float r7 = r2 - r7
            float r0 = r6.f1664v
            float r0 = r8 - r0
            float r1 = java.lang.Math.abs(r7)
            r4 = 1101004800(0x41a00000, float:20.0)
            int r1 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r1 > 0) goto L4c
            float r1 = java.lang.Math.abs(r0)
            int r1 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r1 <= 0) goto Lae
        L4c:
            e0.f r1 = r6.f1658p
            boolean r1 = r1.a()
            if (r1 == 0) goto L62
            r6.f1667y = r3
            r6.r()
            e0.f r1 = r6.f1658p
            r1.o(r7, r0)
            r6.u()
            goto Lae
        L62:
            r6.f1663u = r2
            r6.f1664v = r8
            goto Lae
        L67:
            if (r7 != r3) goto Lae
            float r7 = r6.f1665w
            float r7 = r2 - r7
            float r0 = r6.f1666x
            float r0 = r8 - r0
            e0.f r1 = r6.f1658p
            r1.d(r7, r0)
            r6.u()
            goto Lae
        L7a:
            int r0 = r6.f1667y
            if (r0 != r3) goto L9c
            e0.f r0 = r6.f1658p
            android.view.VelocityTracker r5 = r6.f1668z
            boolean r7 = r0.j(r7, r5)
            if (r7 == 0) goto L97
            r6.f1667y = r1
            e0.f r7 = r6.f1658p
            r7.k()
            e0.f r7 = r6.f1658p
            int r7 = r7.f1578p
            r6.I(r7, r1)
            goto L9c
        L97:
            r6.f1667y = r4
            r6.u()
        L9c:
            android.view.VelocityTracker r7 = r6.f1668z
            r7.clear()
            android.view.VelocityTracker r7 = r6.f1668z
            r7.recycle()
            r7 = 0
            r6.f1668z = r7
            goto Lae
        Laa:
            r6.f1663u = r2
            r6.f1664v = r8
        Lae:
            r6.f1665w = r2
            r6.f1666x = r8
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.i.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // d0.d
    public View p(Context context) {
        DrawableView drawableView = new DrawableView(context);
        drawableView.setOnTouchListener(this);
        drawableView.setOnDrawListener(this);
        return drawableView;
    }

    @Override // d0.e
    public void x() {
        h0.h.b("OfficeWidget", "onFinishTimerCall: ");
        D();
    }

    @Override // d0.e
    public void z() {
        super.z();
    }
}
