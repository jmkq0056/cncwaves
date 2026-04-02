package androidx.constraintlayout.motion.utils;

import android.support.v4.media.f;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class Oscillator {
    public static final int BOUNCE = 6;
    public static final int COS_WAVE = 5;
    public static final int REVERSE_SAW_WAVE = 4;
    public static final int SAW_WAVE = 3;
    public static final int SIN_WAVE = 0;
    public static final int SQUARE_WAVE = 1;
    public static String TAG = "Oscillator";
    public static final int TRIANGLE_WAVE = 2;
    public double[] mArea;
    public int mType;
    public float[] mPeriod = new float[0];
    public double[] mPosition = new double[0];
    public double PI2 = 6.283185307179586d;
    private boolean mNormalized = false;

    public void addPoint(double d4, float f4) {
        int length = this.mPeriod.length + 1;
        int iBinarySearch = Arrays.binarySearch(this.mPosition, d4);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 1;
        }
        this.mPosition = Arrays.copyOf(this.mPosition, length);
        this.mPeriod = Arrays.copyOf(this.mPeriod, length);
        this.mArea = new double[length];
        double[] dArr = this.mPosition;
        System.arraycopy(dArr, iBinarySearch, dArr, iBinarySearch + 1, (length - iBinarySearch) - 1);
        this.mPosition[iBinarySearch] = d4;
        this.mPeriod[iBinarySearch] = f4;
        this.mNormalized = false;
    }

    public double getDP(double d4) {
        if (d4 <= 0.0d) {
            d4 = 1.0E-5d;
        } else if (d4 >= 1.0d) {
            d4 = 0.999999d;
        }
        int iBinarySearch = Arrays.binarySearch(this.mPosition, d4);
        if (iBinarySearch > 0 || iBinarySearch == 0) {
            return 0.0d;
        }
        int i4 = (-iBinarySearch) - 1;
        float[] fArr = this.mPeriod;
        int i5 = i4 - 1;
        double d5 = fArr[i4] - fArr[i5];
        double[] dArr = this.mPosition;
        double d6 = dArr[i4] - dArr[i5];
        Double.isNaN(d5);
        double d7 = d5 / d6;
        double d8 = d4 * d7;
        double d9 = fArr[i5];
        double d10 = d7 * dArr[i5];
        Double.isNaN(d9);
        return (d9 - d10) + d8;
    }

    public double getP(double d4) {
        if (d4 < 0.0d) {
            d4 = 0.0d;
        } else if (d4 > 1.0d) {
            d4 = 1.0d;
        }
        int iBinarySearch = Arrays.binarySearch(this.mPosition, d4);
        if (iBinarySearch > 0) {
            return 1.0d;
        }
        if (iBinarySearch == 0) {
            return 0.0d;
        }
        int i4 = (-iBinarySearch) - 1;
        float[] fArr = this.mPeriod;
        int i5 = i4 - 1;
        double d5 = fArr[i4] - fArr[i5];
        double[] dArr = this.mPosition;
        double d6 = dArr[i4] - dArr[i5];
        Double.isNaN(d5);
        double d7 = d5 / d6;
        double d8 = this.mArea[i5];
        double d9 = fArr[i5];
        double d10 = dArr[i5] * d7;
        Double.isNaN(d9);
        return ((((d4 * d4) - (dArr[i5] * dArr[i5])) * d7) / 2.0d) + ((d4 - dArr[i5]) * (d9 - d10)) + d8;
    }

    public double getSlope(double d4) {
        switch (this.mType) {
            case 1:
                return 0.0d;
            case 2:
                return Math.signum((((getP(d4) * 4.0d) + 3.0d) % 4.0d) - 2.0d) * getDP(d4) * 4.0d;
            case 3:
                return getDP(d4) * 2.0d;
            case 4:
                return (-getDP(d4)) * 2.0d;
            case 5:
                return Math.sin(getP(d4) * this.PI2) * getDP(d4) * (-this.PI2);
            case 6:
                return ((((getP(d4) * 4.0d) + 2.0d) % 4.0d) - 2.0d) * getDP(d4) * 4.0d;
            default:
                return Math.cos(getP(d4) * this.PI2) * getDP(d4) * this.PI2;
        }
    }

    public double getValue(double d4) {
        double dAbs;
        switch (this.mType) {
            case 1:
                return Math.signum(0.5d - (getP(d4) % 1.0d));
            case 2:
                dAbs = Math.abs((((getP(d4) * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((getP(d4) * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                dAbs = ((getP(d4) * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos(getP(d4) * this.PI2);
            case 6:
                double dAbs2 = 1.0d - Math.abs(((getP(d4) * 4.0d) % 4.0d) - 2.0d);
                dAbs = dAbs2 * dAbs2;
                break;
            default:
                return Math.sin(getP(d4) * this.PI2);
        }
        return 1.0d - dAbs;
    }

    public void normalize() {
        double d4 = 0.0d;
        int i4 = 0;
        while (true) {
            float[] fArr = this.mPeriod;
            if (i4 >= fArr.length) {
                break;
            }
            double d5 = fArr[i4];
            Double.isNaN(d5);
            d4 += d5;
            i4++;
        }
        double d6 = 0.0d;
        int i5 = 1;
        while (true) {
            float[] fArr2 = this.mPeriod;
            if (i5 >= fArr2.length) {
                break;
            }
            int i6 = i5 - 1;
            float f4 = (fArr2[i6] + fArr2[i5]) / 2.0f;
            double[] dArr = this.mPosition;
            double d7 = dArr[i5] - dArr[i6];
            double d8 = f4;
            Double.isNaN(d8);
            d6 += d7 * d8;
            i5++;
        }
        int i7 = 0;
        while (true) {
            float[] fArr3 = this.mPeriod;
            if (i7 >= fArr3.length) {
                break;
            }
            double d9 = fArr3[i7];
            Double.isNaN(d9);
            fArr3[i7] = (float) (d9 * (d4 / d6));
            i7++;
        }
        this.mArea[0] = 0.0d;
        int i8 = 1;
        while (true) {
            float[] fArr4 = this.mPeriod;
            if (i8 >= fArr4.length) {
                this.mNormalized = true;
                return;
            }
            int i9 = i8 - 1;
            float f5 = (fArr4[i9] + fArr4[i8]) / 2.0f;
            double[] dArr2 = this.mPosition;
            double d10 = dArr2[i8] - dArr2[i9];
            double[] dArr3 = this.mArea;
            double d11 = dArr3[i9];
            double d12 = f5;
            Double.isNaN(d12);
            dArr3[i8] = (d10 * d12) + d11;
            i8++;
        }
    }

    public void setType(int i4) {
        this.mType = i4;
    }

    public String toString() {
        StringBuilder sbA = f.a("pos =");
        sbA.append(Arrays.toString(this.mPosition));
        sbA.append(" period=");
        sbA.append(Arrays.toString(this.mPeriod));
        return sbA.toString();
    }
}
