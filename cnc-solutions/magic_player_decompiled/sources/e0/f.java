package e0;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.SystemClock;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.Scroller;
import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes.dex */
public class f implements e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1566d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1567e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Paint f1568f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1569g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1570h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1571i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1572j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1573k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1574l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1575m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Bitmap f1576n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Bitmap f1577o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1579q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f1580r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f1581s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1582t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f1583u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1584v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f1585w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f1586x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Scroller f1587y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public a f1588z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Rect f1563a = new Rect();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RectF f1564b = new RectF();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Paint f1565c = new Paint();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1578p = -1;

    public interface a {
        void c();

        void d();

        Bitmap e(int i4);
    }

    public boolean a() {
        androidx.media.b.a(android.support.v4.media.f.a("canDrag: mTotalImageCount-->"), this.f1580r, "ImageDrawer");
        if (this.f1580r <= 1) {
            return false;
        }
        if (this.f1571i != 0 && this.f1583u == 1) {
            return false;
        }
        if (this.f1584v != 0) {
            androidx.media.b.a(android.support.v4.media.f.a("startDrag: illegal state: "), this.f1584v, "ImageDrawer");
        }
        return true;
    }

    public void b() {
        this.f1578p = -1;
        this.f1577o = null;
        this.f1576n = null;
        this.f1581s = 0L;
        this.f1582t = 0;
        this.f1583u = 0;
    }

    public boolean c() {
        Scroller scroller = this.f1587y;
        if (scroller == null || !scroller.computeScrollOffset()) {
            return false;
        }
        this.f1585w = this.f1587y.getCurrX();
        this.f1586x = this.f1587y.getCurrY();
        return true;
    }

    public void d(float f4, float f5) {
        int i4 = this.f1584v;
        if (i4 == 1) {
            int i5 = (int) (this.f1585w + f4);
            this.f1585w = i5;
            if (i5 > 0) {
                this.f1585w = 0;
                return;
            }
            return;
        }
        if (i4 == 2) {
            int i6 = (int) (this.f1585w + f4);
            this.f1585w = i6;
            if (i6 < 0) {
                this.f1585w = 0;
                return;
            }
            return;
        }
        if (i4 == 3) {
            int i7 = (int) (this.f1586x + f5);
            this.f1586x = i7;
            if (i7 > 0) {
                this.f1586x = 0;
                return;
            }
            return;
        }
        if (i4 != 4) {
            return;
        }
        int i8 = (int) (this.f1586x + f5);
        this.f1586x = i8;
        if (i8 < 0) {
            this.f1586x = 0;
        }
    }

    @Override // e0.d
    public void draw(Canvas canvas) {
        int i4 = this.f1584v;
        if (i4 != 0) {
            if (i4 == 1) {
                float f4 = -Math.min(-this.f1585w, canvas.getWidth());
                h(canvas, f4, 0.0f);
                e(canvas, f4 + canvas.getWidth(), 0.0f);
                return;
            }
            if (i4 == 2) {
                float fMin = Math.min(this.f1585w, canvas.getWidth());
                h(canvas, fMin, 0.0f);
                e(canvas, fMin - canvas.getWidth(), 0.0f);
                return;
            } else if (i4 == 3) {
                float f5 = -Math.min(-this.f1586x, canvas.getHeight());
                h(canvas, 0.0f, f5);
                e(canvas, 0.0f, f5 + canvas.getHeight());
                return;
            } else {
                if (i4 != 4) {
                    return;
                }
                float fMin2 = Math.min(this.f1586x, canvas.getHeight());
                h(canvas, 0.0f, fMin2);
                e(canvas, 0.0f, fMin2 - canvas.getHeight());
                return;
            }
        }
        if (this.f1583u != 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j4 = this.f1581s;
            long j5 = jElapsedRealtime - j4;
            if (j5 > 3000 || j5 < 0) {
                this.f1581s = jElapsedRealtime;
                j5 = 0;
            } else {
                this.f1581s = j4 + j5;
            }
            int i5 = (int) (((long) this.f1582t) + j5);
            this.f1582t = i5;
            int i6 = this.f1574l;
            if (i5 >= i6) {
                if (i5 < this.f1575m) {
                    e(canvas, 0.0f, 0.0f);
                    if (this.f1583u != 2) {
                        this.f1583u = 2;
                        this.f1588z.c();
                        return;
                    }
                    return;
                }
                e(canvas, 0.0f, 0.0f);
                int i7 = this.f1583u;
                if (i7 != 3) {
                    if (i7 == 1) {
                        this.f1588z.c();
                    }
                    this.f1583u = 3;
                    this.f1588z.d();
                }
                return;
            }
            if (this.f1583u != 1) {
                this.f1583u = 1;
            }
            float f6 = i5 / i6;
            switch (this.f1571i) {
                case 0:
                    e(canvas, 0.0f, 0.0f);
                    break;
                case 1:
                    float width = canvas.getWidth() * f6;
                    if (!this.f1572j) {
                        h(canvas, -width, 0.0f);
                    }
                    e(canvas, (-width) + canvas.getWidth(), 0.0f);
                    break;
                case 2:
                    float width2 = canvas.getWidth() * f6;
                    if (!this.f1572j) {
                        h(canvas, width2, 0.0f);
                    }
                    e(canvas, width2 - canvas.getWidth(), 0.0f);
                    break;
                case 3:
                    float height = canvas.getHeight() * f6;
                    if (!this.f1572j) {
                        h(canvas, 0.0f, -height);
                    }
                    e(canvas, 0.0f, (-height) + canvas.getHeight());
                    break;
                case 4:
                    float height2 = canvas.getHeight() * f6;
                    if (!this.f1572j) {
                        h(canvas, 0.0f, height2);
                    }
                    e(canvas, 0.0f, height2 - canvas.getHeight());
                    break;
                case 5:
                    float width3 = canvas.getWidth() - (canvas.getWidth() * f6);
                    if (!this.f1572j) {
                        i(canvas, 0.0f, 0.0f, width3, canvas.getHeight());
                    }
                    f(canvas, width3, 0.0f, canvas.getWidth(), canvas.getHeight());
                    break;
                case 6:
                    float width4 = f6 * canvas.getWidth();
                    if (!this.f1572j) {
                        i(canvas, width4, 0.0f, canvas.getWidth(), canvas.getHeight());
                    }
                    f(canvas, 0.0f, 0.0f, width4, canvas.getHeight());
                    break;
                case 7:
                    float height3 = canvas.getHeight() - (canvas.getHeight() * f6);
                    if (!this.f1572j) {
                        i(canvas, 0.0f, 0.0f, canvas.getWidth(), height3);
                    }
                    f(canvas, 0.0f, height3, canvas.getWidth(), canvas.getHeight());
                    break;
                case 8:
                    float height4 = f6 * canvas.getHeight();
                    if (!this.f1572j) {
                        i(canvas, 0.0f, height4, canvas.getWidth(), canvas.getHeight());
                    }
                    f(canvas, 0.0f, 0.0f, canvas.getWidth(), height4);
                    break;
                case 9:
                    float fA = androidx.constraintlayout.motion.utils.a.a(canvas.getHeight(), f6, 2.0f, canvas.getHeight() / 2.0f);
                    float height5 = ((canvas.getHeight() * f6) / 2.0f) + (canvas.getHeight() / 2.0f);
                    if (!this.f1572j) {
                        i(canvas, 0.0f, 0.0f, canvas.getWidth(), fA);
                        i(canvas, 0.0f, height5, canvas.getWidth(), canvas.getHeight());
                    }
                    f(canvas, 0.0f, fA, canvas.getWidth(), height5);
                    break;
                case 10:
                    float height6 = (canvas.getHeight() * f6) / 2.0f;
                    float fA2 = androidx.constraintlayout.motion.utils.a.a(canvas.getHeight(), f6, 2.0f, canvas.getHeight());
                    if (!this.f1572j) {
                        i(canvas, 0.0f, height6, canvas.getWidth(), fA2);
                    }
                    f(canvas, 0.0f, 0.0f, canvas.getWidth(), height6);
                    f(canvas, 0.0f, fA2, canvas.getWidth(), canvas.getHeight());
                    break;
                case 11:
                    float fA3 = androidx.constraintlayout.motion.utils.a.a(canvas.getWidth(), f6, 2.0f, canvas.getWidth() / 2.0f);
                    float width5 = ((canvas.getWidth() * f6) / 2.0f) + (canvas.getWidth() / 2.0f);
                    if (!this.f1572j) {
                        i(canvas, 0.0f, 0.0f, fA3, canvas.getHeight());
                        i(canvas, width5, 0.0f, canvas.getWidth(), canvas.getHeight());
                    }
                    f(canvas, fA3, 0.0f, width5, canvas.getHeight());
                    break;
                case 12:
                    float width6 = (canvas.getWidth() * f6) / 2.0f;
                    float fA4 = androidx.constraintlayout.motion.utils.a.a(canvas.getWidth(), f6, 2.0f, canvas.getWidth());
                    if (!this.f1572j) {
                        i(canvas, width6, 0.0f, fA4, canvas.getHeight());
                    }
                    f(canvas, 0.0f, 0.0f, width6, canvas.getHeight());
                    f(canvas, fA4, 0.0f, canvas.getWidth(), canvas.getHeight());
                    break;
                case 13:
                    int width7 = canvas.getWidth() / 8;
                    for (int i8 = 0; i8 < 8; i8++) {
                        float f7 = i8 * width7;
                        float f8 = width7;
                        float f9 = (i8 + f6) * f8;
                        if (!this.f1572j) {
                            i(canvas, f9, 0.0f, f7 + f8, canvas.getHeight());
                        }
                        f(canvas, f7, 0.0f, f9, canvas.getHeight());
                    }
                    break;
                case 14:
                    int height7 = canvas.getHeight() / 8;
                    for (int i9 = 0; i9 < 8; i9++) {
                        float f10 = i9 * height7;
                        float f11 = height7;
                        float f12 = (i9 + f6) * f11;
                        if (!this.f1572j) {
                            i(canvas, 0.0f, f12, canvas.getWidth(), f10 + f11);
                        }
                        f(canvas, 0.0f, f10, canvas.getWidth(), f12);
                    }
                    break;
                case 15:
                    if (!this.f1572j) {
                        g(canvas, this.f1577o, 0.0f, 0.0f, this.f1570h, (int) ((1.0f - f6) * 255.0f), false);
                    }
                    g(canvas, l(), 0.0f, 0.0f, this.f1569g, (int) (f6 * 255.0f), true);
                    break;
            }
        }
    }

    public final void e(Canvas canvas, float f4, float f5) {
        g(canvas, l(), f4, f5, this.f1569g, 255, true);
    }

    public final void f(Canvas canvas, float f4, float f5, float f6, float f7) {
        canvas.save();
        canvas.clipRect(f4, f5, f6, f7);
        g(canvas, l(), 0.0f, 0.0f, this.f1569g, 255, true);
        canvas.restore();
    }

    public final void g(Canvas canvas, Bitmap bitmap, float f4, float f5, boolean z3, int i4, boolean z4) {
        float f6;
        float width;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f1563a.set(0, 0, bitmap.getWidth(), bitmap.getHeight());
            if (z3) {
                float width2 = bitmap.getWidth() / bitmap.getHeight();
                if (canvas.getWidth() / canvas.getHeight() < width2) {
                    width = canvas.getWidth();
                    f6 = width / width2;
                } else {
                    float height = canvas.getHeight();
                    float f7 = width2 * height;
                    f6 = height;
                    width = f7;
                }
                float width3 = ((canvas.getWidth() - width) / 2.0f) + f4;
                float height2 = ((canvas.getHeight() - f6) / 2.0f) + f5;
                this.f1564b.set(width3, height2, width + width3, f6 + height2);
            } else {
                this.f1564b.set(f4, f5, canvas.getWidth() + f4, canvas.getHeight() + f5);
            }
            this.f1566d = 0;
            this.f1565c.reset();
            this.f1565c.setAlpha(i4);
            this.f1565c.setFilterBitmap(true);
            canvas.drawBitmap(bitmap, this.f1563a, this.f1564b, this.f1565c);
            return;
        }
        if (z4) {
            int width4 = canvas.getWidth();
            int height3 = canvas.getHeight();
            int i5 = this.f1567e;
            float f8 = (width4 - i5) / 2.0f;
            float f9 = (height3 - i5) / 2.0f;
            float f10 = this.f1567e;
            RectF rectF = new RectF(f8, f9, f10 + f8, f10 + f9);
            canvas.drawColor(0);
            int i6 = this.f1566d + 1;
            this.f1566d = i6;
            if (i6 >= 100) {
                this.f1566d = 0;
            }
            float f11 = this.f1566d * 3.6f;
            if (this.f1568f == null) {
                int i7 = (int) ((w0.c.f3777a.getResources().getDisplayMetrics().density * 3.0f) + 0.5f);
                this.f1567e = (int) ((w0.c.f3777a.getResources().getDisplayMetrics().density * 40.0f) + 0.5f);
                Paint paint = new Paint();
                this.f1568f = paint;
                paint.setStrokeWidth(i7);
                this.f1568f.setColor(Color.parseColor("#FF82C8BE"));
                this.f1568f.setStyle(Paint.Style.STROKE);
                this.f1568f.setStrokeJoin(Paint.Join.ROUND);
                this.f1568f.setStrokeCap(Paint.Cap.ROUND);
            }
            canvas.drawArc(rectF, -90.0f, f11, false, this.f1568f);
        }
    }

    public final void h(Canvas canvas, float f4, float f5) {
        g(canvas, this.f1577o, f4, f5, this.f1570h, 255, false);
    }

    public final void i(Canvas canvas, float f4, float f5, float f6, float f7) {
        canvas.save();
        canvas.clipRect(f4, f5, f6, f7);
        g(canvas, this.f1577o, 0.0f, 0.0f, this.f1570h, 255, false);
        canvas.restore();
    }

    public boolean j(View view, VelocityTracker velocityTracker) {
        int width = view.getWidth();
        int height = view.getHeight();
        velocityTracker.computeCurrentVelocity(100);
        float xVelocity = velocityTracker.getXVelocity();
        float yVelocity = velocityTracker.getYVelocity();
        int i4 = this.f1584v;
        boolean zN = false;
        if (i4 == 1) {
            zN = n(this.f1585w, -width, -xVelocity, true);
        } else if (i4 == 2) {
            zN = n(this.f1585w, width, xVelocity, true);
        } else if (i4 == 3) {
            zN = n(this.f1586x, -height, -yVelocity, false);
        } else if (i4 == 4) {
            zN = n(this.f1586x, height, yVelocity, false);
        }
        return !zN;
    }

    public void k() {
        if (this.f1584v != 0) {
            this.f1584v = 0;
            if (this.f1585w != 0 || this.f1586x != 0) {
                this.f1585w = 0;
                this.f1586x = 0;
            } else {
                this.f1576n = this.f1577o;
                this.f1577o = null;
                this.f1578p = this.f1579q;
            }
        }
    }

    public final Bitmap l() {
        if (this.f1576n == null) {
            this.f1576n = this.f1588z.e(this.f1578p);
        }
        return this.f1576n;
    }

    public void m(g gVar) {
        int i4 = gVar.f1590b;
        this.f1571i = i4;
        if (i4 == 100) {
            this.f1571i = (int) ((Math.random() * 15.0d) + 1.0d);
        }
        this.f1574l = gVar.f1592d;
        this.f1575m = gVar.f1593e;
        if (this.f1571i == 0) {
            this.f1574l = HttpStatus.INTERNAL_SERVER_ERROR_500;
        }
        this.f1573k = gVar.f1591c;
        this.f1569g = gVar.f1589a;
    }

    public final boolean n(int i4, int i5, float f4, boolean z3) {
        boolean z4 = false;
        if (i4 <= Math.min(i5, 0) || i4 >= Math.max(i5, 0)) {
            return false;
        }
        float f5 = i5;
        if (i4 / f5 < 0.5f && f4 < 10.0f) {
            z4 = true;
        }
        int i6 = z4 ? -i4 : i5 - i4;
        int iAbs = (int) (Math.abs(i6 / f5) * 600.0f);
        if (z3) {
            p(i4, 0, i6, 0, iAbs);
        } else {
            p(0, i4, 0, i6, iAbs);
        }
        return true;
    }

    public void o(float f4, float f5) {
        if (Math.abs(f4) > Math.abs(f5)) {
            if (f4 > 0.0f) {
                this.f1584v = 2;
                s();
            } else {
                this.f1584v = 1;
                r();
            }
        } else if (f5 > 0.0f) {
            this.f1584v = 4;
            s();
        } else {
            this.f1584v = 3;
            r();
        }
        this.f1585w = 0;
        this.f1586x = 0;
    }

    public final void p(int i4, int i5, int i6, int i7, int i8) {
        if (this.f1587y == null) {
            this.f1587y = new Scroller(w0.c.f3777a);
        }
        this.f1587y.startScroll(i4, i5, i6, i7, i8);
    }

    public void q(int i4, g gVar) {
        if (this.f1578p != i4) {
            this.f1578p = i4;
            this.f1577o = this.f1576n;
            this.f1576n = null;
            this.f1572j = this.f1573k;
            this.f1570h = this.f1569g;
        }
        m(gVar);
        this.f1584v = 0;
        this.f1581s = 0L;
        this.f1582t = 0;
        this.f1583u = 1;
    }

    public final void r() {
        this.f1577o = this.f1576n;
        this.f1576n = null;
        int i4 = this.f1578p;
        this.f1579q = i4;
        this.f1578p = i4 < this.f1580r + (-1) ? i4 + 1 : 0;
    }

    @Override // e0.e
    public void resume() {
        this.f1581s = 0L;
    }

    public final void s() {
        this.f1577o = this.f1576n;
        this.f1576n = null;
        int i4 = this.f1578p;
        this.f1579q = i4;
        if (i4 <= 0) {
            i4 = this.f1580r;
        }
        this.f1578p = i4 - 1;
    }

    @Override // e0.e
    public void seekTo(int i4) {
        this.f1581s = 0L;
        this.f1582t = i4;
        this.f1583u = 1;
    }
}
