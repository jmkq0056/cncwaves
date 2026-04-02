package y;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes.dex */
public class i implements Interpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f4000a = 0.06666667f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f4001b = 0.022222223f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f4002c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f4003d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f4004e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f4005f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f4006g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f4007h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f4008i;

    public i() {
        float fSqrt = (float) Math.sqrt(1.2f);
        float fSqrt2 = (float) Math.sqrt(0.2f);
        float fSqrt3 = (float) Math.sqrt(0.06666667f);
        float fSqrt4 = (float) Math.sqrt(0.022222223f);
        float fSqrt5 = (float) Math.sqrt(0.011111111f);
        this.f4002c = fSqrt;
        float f4 = fSqrt + fSqrt2;
        this.f4003d = f4;
        float f5 = f4 + fSqrt3;
        this.f4004e = f5;
        float f6 = f5 + fSqrt3;
        this.f4005f = f6;
        float f7 = f6 + fSqrt4;
        this.f4006g = f7;
        float f8 = f7 + fSqrt5;
        this.f4007h = f8;
        this.f4008i = f8 + fSqrt5;
    }

    public float a(float f4, float f5, float f6) {
        float f7 = f6 - f5;
        float f8 = f6 - f4;
        return (f7 * f7) - (f8 * f8);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f4) {
        float f5;
        float f6 = this.f4008i;
        float f7 = f4 * f6;
        float f8 = this.f4002c;
        if (f7 < f8) {
            return a(f7, 0.0f, f8);
        }
        float f9 = this.f4003d;
        if (f7 < f9) {
            f5 = 1.2f;
        } else {
            float f10 = this.f4004e;
            if (f7 < f10) {
                return 1.0f - a(f7, f9, f10);
            }
            float f11 = this.f4005f;
            if (f7 < f11) {
                float f12 = f7 - f10;
                return (1.0f - this.f4000a) + (f12 * f12);
            }
            f8 = this.f4006g;
            if (f7 < f8) {
                return 1.0f + a(f7, f11, f8);
            }
            float f13 = this.f4007h;
            if (f7 >= f13) {
                if (f7 < f6) {
                    return ((this.f4001b / 2.0f) + 1.0f) - a(f7, f13, f6);
                }
                return 1.0f;
            }
            f5 = this.f4001b + 1.0f;
        }
        float f14 = f7 - f8;
        return f5 - (f14 * f14);
    }
}
