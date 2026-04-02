package f0;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.SystemClock;
import android.util.Log;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import cn.huidu.lcd.render.model.AreaNode;
import cn.huidu.lcd.render.model.EffectNode;
import cn.huidu.lcd.render.model.ImageNode;
import cn.huidu.lcd.render.model.WidgetNode;
import cn.huidu.lcd.render.player.view.DrawableView;
import e0.f;
import java.io.File;
import java.io.IOException;
import pl.droidsonroids.gif.GifImageView;
import pl.droidsonroids.gif.GifInfoHandle;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"ClickableViewAccessibility"})
public class g extends d0.h<ImageNode> implements g0.a, f.a, View.OnTouchListener, p3.a {
    public float A;
    public float B;
    public float C;
    public float D;
    public int E;
    public Matrix F;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public DrawableView f1643p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public GifImageView f1644q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final e0.f f1645r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final z.d f1646s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final e0.g f1647t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1648u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public p3.d f1649v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public VelocityTracker f1650w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public a f1651x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f1652y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f1653z;

    public interface a {
    }

    public g(a0.g gVar, z.d dVar) {
        super(gVar);
        e0.f fVar = new e0.f();
        this.f1645r = fVar;
        fVar.f1588z = this;
        this.f1646s = dVar;
        this.f1647t = new e0.g();
        fVar.f1580r = ((z.a) dVar).b();
    }

    @Override // d0.e
    public void B() {
        ((z.a) this.f1646s).d(((ImageNode) this.f1487b).getImageIndex());
    }

    @Override // d0.e
    public void C() {
        super.C();
        if (!this.f1648u) {
            this.f1645r.f1581s = 0L;
            u();
        } else {
            p3.d dVar = this.f1649v;
            if (dVar != null) {
                dVar.start();
            }
        }
    }

    @Override // d0.e
    public void E(int i4) {
        super.E(i4);
        int imageIndex = ((ImageNode) this.f1487b).getImageIndex();
        ((z.a) this.f1646s).e(imageIndex);
        if (this.f1648u) {
            p3.d dVar = this.f1649v;
            if (dVar != null) {
                this.f1644q.setImageDrawable(dVar);
                this.f1649v.seekTo(i4);
                this.f1649v.start();
                return;
            }
            return;
        }
        this.f1645r.q(imageIndex, this.f1647t);
        e0.f fVar = this.f1645r;
        fVar.f1581s = 0L;
        fVar.f1582t = i4;
        fVar.f1583u = 1;
        u();
    }

    @Override // d0.e
    public void G() {
        super.G();
        this.f1645r.b();
        L();
    }

    @Override // d0.h
    public boolean H(WidgetNode widgetNode) {
        return widgetNode instanceof ImageNode;
    }

    public final void I() {
        int i4 = 0;
        this.E = 0;
        this.f1645r.k();
        a aVar = this.f1651x;
        if (aVar != null) {
            int i5 = this.f1645r.f1578p;
            d0.b bVar = (d0.b) aVar;
            a.a.a("onSwitchToIndex: index--> ", i5, "AreaPlayer");
            for (int i6 = 0; i6 < ((AreaNode) bVar.f1487b).childCount(); i6++) {
                WidgetNode child = ((AreaNode) bVar.f1487b).getChild(i6);
                if (child instanceof ImageNode) {
                    ImageNode imageNode = (ImageNode) child;
                    if (i5 == imageNode.getImageIndex()) {
                        h0.h.b("AreaPlayer", "onSwitchToIndex: " + i6);
                        bVar.f1481s = i6;
                        g gVar = bVar.f1482t;
                        gVar.f1487b = imageNode;
                        gVar.m();
                        if (gVar.f1488c != null) {
                            gVar.n();
                        }
                        g gVar2 = bVar.f1482t;
                        if (!gVar2.f1648u) {
                            e0.g gVar3 = gVar2.f1647t;
                            if (gVar3.f1590b != 0) {
                                i4 = gVar3.f1592d;
                            }
                        }
                        gVar2.E(i4);
                        return;
                    }
                }
            }
        }
    }

    public final void J(float f4, float f5) {
        r();
        if (Math.abs(f4) > Math.abs(f5)) {
            if (f4 > 0.0f) {
                this.f1652y = 2;
                return;
            } else {
                this.f1652y = 1;
                return;
            }
        }
        if (f5 > 0.0f) {
            this.f1652y = 4;
        } else {
            this.f1652y = 3;
        }
    }

    public final Matrix K(RectF rectF, int i4, int i5, int i6, int i7) {
        if (rectF == null || i6 == 0 || i7 == 0 || rectF.width() == 0.0f || rectF.height() == 0.0f) {
            return null;
        }
        float fWidth = i4 / (rectF.width() * i6);
        float fHeight = i5 / (rectF.height() * i7);
        float f4 = (-i6) * fWidth * rectF.left;
        float f5 = (-i7) * fHeight * rectF.top;
        Log.d("ImageWidget", "sx: " + fWidth + ", sy: " + fHeight + ", dx: " + f4 + ", dy: " + f5);
        Matrix matrix = new Matrix();
        matrix.setScale(fWidth, fHeight);
        matrix.postTranslate(f4, f5);
        return matrix;
    }

    public final void L() {
        p3.d dVar = this.f1649v;
        if (dVar != null) {
            dVar.f3035h.remove(this);
            this.f1649v.stop();
            this.f1649v.a();
            this.f1649v = null;
        }
    }

    public final void M(boolean z3) {
        this.f1648u = z3;
        this.f1643p.setVisibility(z3 ? 8 : 0);
        this.f1644q.setVisibility(this.f1648u ? 0 : 8);
    }

    @Override // d0.e, d0.c
    public void a() {
        super.a();
        if (!this.f1648u) {
            this.f1645r.m(this.f1647t);
            this.f1645r.seekTo(0);
            u();
        } else {
            p3.d dVar = this.f1649v;
            if (dVar != null) {
                dVar.seekTo(0);
                this.f1649v.start();
            }
        }
    }

    @Override // p3.a
    public void b(int i4) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f1493h;
        if (jElapsedRealtime >= 0 && jElapsedRealtime < 50) {
            return;
        }
        if (this.f1649v != null && s() < getDuration() && this.f1649v.getDuration() < getDuration()) {
            this.f1649v.seekTo(0);
            this.f1649v.start();
        } else {
            if (this.f1486a.f35f) {
                return;
            }
            A(0);
        }
    }

    @Override // e0.f.a
    public void c() {
        int imageIndex = ((ImageNode) this.f1487b).getImageIndex() + 1;
        if (imageIndex >= ((z.a) this.f1646s).b()) {
            imageIndex = 0;
        }
        ((z.a) this.f1646s).e(imageIndex);
    }

    @Override // e0.f.a
    public void d() {
        A(0);
    }

    @Override // e0.f.a
    public Bitmap e(int i4) {
        return ((z.a) this.f1646s).a(i4);
    }

    @Override // g0.a
    public void f(Canvas canvas) {
        canvas.concat(this.F);
        this.f1645r.draw(canvas);
        if (this.E != 2) {
            if (w()) {
                u();
            }
        } else if (this.f1645r.c()) {
            u();
        } else {
            I();
        }
    }

    @Override // d0.d
    public void m() {
        L();
        if (!((ImageNode) this.f1487b).isGif()) {
            EffectNode effect = ((ImageNode) this.f1487b).getEffect();
            this.f1647t.f1590b = effect.getEffectType();
            this.f1647t.f1591c = effect.isClearScreen();
            this.f1647t.f1592d = effect.getEnterTime();
            this.f1647t.f1593e = effect.getDisplayTime();
            this.f1647t.f1589a = ((ImageNode) this.f1487b).isKeepAspectRatio();
            return;
        }
        try {
            File file = new File(((ImageNode) this.f1487b).getImagePath());
            Log.d("ImageWidget", "prepare: gif file size: " + file.length());
            if (file.length() < 8388608) {
                byte[] bArrY = l.e.y(file, 8388608);
                if (bArrY == null) {
                    return;
                } else {
                    this.f1649v = new p3.d(new GifInfoHandle(bArrY), null, null, true);
                }
            } else {
                this.f1649v = new p3.d(file.getPath());
            }
            this.f1649v.f3035h.add(this);
            this.f1649v.f3034g.f(0);
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }

    @Override // d0.d
    public void n() {
        int i4;
        int i5;
        M(((ImageNode) this.f1487b).isGif());
        RectF scaleRect = ((ImageNode) this.f1487b).getScaleRect();
        if (!this.f1648u) {
            int i6 = this.f1509m;
            int i7 = this.f1510n;
            this.F = K(scaleRect, i6, i7, i6, i7);
            return;
        }
        p3.d dVar = this.f1649v;
        if (dVar != null) {
            int i8 = dVar.f3044q;
            i5 = dVar.f3045r;
            i4 = i8;
        } else {
            i4 = 0;
            i5 = 0;
        }
        a.b.a("gif intrinsic width: ", i4, ", height: ", i5, "ImageWidget");
        Matrix matrixK = K(scaleRect, this.f1509m, this.f1510n, i4, i5);
        if (matrixK != null) {
            this.f1644q.setScaleType(ImageView.ScaleType.MATRIX);
            this.f1644q.setImageMatrix(matrixK);
        } else if (((ImageNode) this.f1487b).isKeepAspectRatio()) {
            this.f1644q.setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            this.f1644q.setScaleType(ImageView.ScaleType.FIT_XY);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00c9  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r10, android.view.MotionEvent r11) {
        /*
            Method dump skipped, instruction units count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f0.g.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // d0.d
    public View p(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setOnTouchListener(this);
        DrawableView drawableView = new DrawableView(context);
        this.f1643p = drawableView;
        drawableView.setOnDrawListener(this);
        frameLayout.addView(this.f1643p, -1, -1);
        GifImageView gifImageView = new GifImageView(context);
        this.f1644q = gifImageView;
        frameLayout.addView(gifImageView, -1, -1);
        return frameLayout;
    }

    @Override // d0.e
    public void u() {
        DrawableView drawableView = this.f1643p;
        if (drawableView != null) {
            drawableView.invalidate();
        }
    }

    @Override // d0.e
    public void x() {
        D();
    }

    @Override // d0.e
    public void z() {
        p3.d dVar;
        super.z();
        if (!this.f1648u || (dVar = this.f1649v) == null) {
            return;
        }
        dVar.stop();
    }
}
