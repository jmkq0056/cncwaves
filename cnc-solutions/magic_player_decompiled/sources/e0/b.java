package e0;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.SystemClock;
import cn.huidu.lcd.render.model.ImageSize;
import e0.h;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class b extends h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Rect f1532b = new Rect();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RectF f1533c = new RectF();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1534d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f1535e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1536f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1537g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1538h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f1539i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f1540j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1541k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public z.d f1542l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public List<ImageSize> f1543m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1544n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1545o;

    @Override // e0.h
    public void a(z.d dVar) {
        this.f1542l = dVar;
    }

    public final void b(Canvas canvas, Bitmap bitmap, float f4, float f5, float f6, float f7) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        this.f1532b.set(0, 0, bitmap.getWidth(), bitmap.getHeight());
        this.f1533c.set(f4, f5, f6 + f4, f7 + f5);
        canvas.drawBitmap(bitmap, this.f1532b, this.f1533c, (Paint) null);
    }

    @Override // e0.d
    public void draw(Canvas canvas) {
        float f4;
        float width;
        int i4;
        float f5;
        float f6;
        int i5;
        int i6;
        float f7;
        int i7;
        if (this.f1537g) {
            long j4 = this.f1540j + ((long) this.f1536f);
            this.f1540j = j4;
            f4 = j4;
        } else {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j5 = this.f1539i;
            long j6 = jElapsedRealtime - j5;
            if (j6 > 3000 || j6 < 0) {
                this.f1539i = jElapsedRealtime;
                j6 = 0;
            } else {
                this.f1539i = j5 + j6;
            }
            long j7 = this.f1540j + j6;
            this.f1540j = j7;
            f4 = j7 * this.f1535e;
        }
        float f8 = f4;
        switch (this.f1534d) {
            case 101:
                int iB = ((z.a) this.f1542l).b();
                int width2 = canvas.getWidth();
                int height = canvas.getHeight();
                if (this.f1543m.size() == iB) {
                    float f9 = width2;
                    float f10 = f8 - f9;
                    float f11 = this.f1538h ? this.f1544n : this.f1544n + width2;
                    if (f10 > f11) {
                        f10 %= f11;
                    }
                    float f12 = -f10;
                    float f13 = 0.0f;
                    int i8 = 0;
                    while (f12 < f9) {
                        if (i8 < 0 || i8 >= iB) {
                            f5 = f9;
                        } else {
                            ImageSize imageSize = this.f1543m.get(i8);
                            f5 = (height / imageSize.height) * imageSize.width;
                        }
                        float f14 = f12 + f5;
                        if (f14 > 0.0f && i8 >= 0 && i8 < iB) {
                            b(canvas, ((z.a) this.f1542l).a(i8), f12, 0.0f, f5, height);
                        }
                        i8++;
                        if (i8 >= iB) {
                            i8 = this.f1538h ? 0 : -1;
                        }
                        f13 = f5;
                        f12 = f14;
                    }
                    if ((f12 - f9) / f13 < 0.5f) {
                        ((z.a) this.f1542l).d(i8);
                    }
                }
                width = f8 - canvas.getWidth();
                i4 = this.f1544n;
                i6 = (int) (width / i4);
                break;
            case 102:
                int iB2 = ((z.a) this.f1542l).b();
                int width3 = canvas.getWidth();
                int height2 = canvas.getHeight();
                if (this.f1543m.size() == iB2) {
                    float f15 = width3;
                    float f16 = f8 - f15;
                    float f17 = this.f1538h ? this.f1544n : this.f1544n + width3;
                    if (f16 > f17) {
                        f16 %= f17;
                    }
                    float f18 = f16 + f15;
                    int i9 = iB2 - 1;
                    int i10 = i9;
                    float f19 = 0.0f;
                    while (f18 > 0.0f) {
                        if (i10 < 0 || i10 >= iB2) {
                            f6 = f15;
                        } else {
                            ImageSize imageSize2 = this.f1543m.get(i10);
                            f6 = (height2 / imageSize2.height) * imageSize2.width;
                        }
                        float f20 = f18 - f6;
                        if (f20 >= f15 || i10 < 0 || i10 >= iB2) {
                            i5 = i10;
                        } else {
                            i5 = i10;
                            b(canvas, ((z.a) this.f1542l).a(i10), f20, 0.0f, f6, height2);
                        }
                        i10 = i5 - 1;
                        if (i10 < 0) {
                            i10 = this.f1538h ? i9 : iB2;
                        }
                        f19 = f6;
                        f18 = f20;
                    }
                    int i11 = i10;
                    if ((0.0f - f18) / f19 < 0.5f) {
                        ((z.a) this.f1542l).d(i11);
                    }
                }
                width = f8 - canvas.getWidth();
                i4 = this.f1544n;
                i6 = (int) (width / i4);
                break;
            case 103:
                int iB3 = ((z.a) this.f1542l).b();
                int width4 = canvas.getWidth();
                int height3 = canvas.getHeight();
                if (this.f1543m.size() == iB3) {
                    float f21 = height3;
                    float f22 = f8 - f21;
                    float f23 = this.f1538h ? this.f1545o : this.f1545o + height3;
                    if (f22 > f23) {
                        f22 %= f23;
                    }
                    float f24 = -f22;
                    float f25 = 0.0f;
                    int i12 = 0;
                    while (f24 < f21) {
                        if (i12 < 0 || i12 >= iB3) {
                            f7 = f21;
                        } else {
                            ImageSize imageSize3 = this.f1543m.get(i12);
                            f7 = (width4 / imageSize3.width) * imageSize3.height;
                        }
                        float f26 = f24 + f7;
                        if (f26 <= 0.0f || i12 < 0 || i12 >= iB3) {
                            i7 = i12;
                        } else {
                            i7 = i12;
                            b(canvas, ((z.a) this.f1542l).a(i12), 0.0f, f24, width4, f7);
                        }
                        i12 = i7 + 1;
                        if (i12 >= iB3) {
                            i12 = this.f1538h ? 0 : -1;
                        }
                        f25 = f7;
                        f24 = f26;
                    }
                    int i13 = i12;
                    if ((f24 - f21) / f25 < 0.5f) {
                        ((z.a) this.f1542l).d(i13);
                    }
                }
                width = f8 - canvas.getHeight();
                i4 = this.f1545o;
                i6 = (int) (width / i4);
                break;
            default:
                i6 = 0;
                break;
        }
        if (i6 > this.f1541k) {
            this.f1541k = i6;
            h.a aVar = this.f1594a;
            if (aVar != null) {
                ((f0.k) aVar).A(0);
            }
        }
    }

    @Override // e0.e
    public void resume() {
        this.f1539i = 0L;
    }

    @Override // e0.e
    public void seekTo(int i4) {
        this.f1539i = 0L;
        if (this.f1537g) {
            this.f1540j = ((long) ((int) ((i4 * 60.0f) / 1000.0f))) * ((long) this.f1536f);
        } else {
            this.f1540j = i4;
        }
        this.f1541k = 0;
    }
}
