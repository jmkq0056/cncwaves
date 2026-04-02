package androidx.constraintlayout.motion.utils;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class HyperSpline {
    public double[][] mCtl;
    public Cubic[][] mCurve;
    public double[] mCurveLength;
    public int mDimensionality;
    public int mPoints;
    public double mTotalLength;

    public static class Cubic {
        public static final double HALF = 0.5d;
        public static final double THIRD = 0.3333333333333333d;
        public double mA;
        public double mB;
        public double mC;
        public double mD;

        public Cubic(double d4, double d5, double d6, double d7) {
            this.mA = d4;
            this.mB = d5;
            this.mC = d6;
            this.mD = d7;
        }

        public double eval(double d4) {
            return (((((this.mD * d4) + this.mC) * d4) + this.mB) * d4) + this.mA;
        }

        public double vel(double d4) {
            return (((this.mC * 0.5d) + (this.mD * 0.3333333333333333d * d4)) * d4) + this.mB;
        }
    }

    public HyperSpline(double[][] dArr) {
        setup(dArr);
    }

    public static Cubic[] calcNaturalCubic(int i4, double[] dArr) {
        double[] dArr2 = new double[i4];
        double[] dArr3 = new double[i4];
        double[] dArr4 = new double[i4];
        int i5 = i4 - 1;
        int i6 = 0;
        dArr2[0] = 0.5d;
        int i7 = 1;
        for (int i8 = 1; i8 < i5; i8++) {
            dArr2[i8] = 1.0d / (4.0d - dArr2[i8 - 1]);
        }
        int i9 = i5 - 1;
        dArr2[i5] = 1.0d / (2.0d - dArr2[i9]);
        dArr3[0] = (dArr[1] - dArr[0]) * 3.0d * dArr2[0];
        while (i7 < i5) {
            int i10 = i7 + 1;
            int i11 = i7 - 1;
            dArr3[i7] = (((dArr[i10] - dArr[i11]) * 3.0d) - dArr3[i11]) * dArr2[i7];
            i7 = i10;
        }
        dArr3[i5] = (((dArr[i5] - dArr[i9]) * 3.0d) - dArr3[i9]) * dArr2[i5];
        dArr4[i5] = dArr3[i5];
        while (i9 >= 0) {
            dArr4[i9] = dArr3[i9] - (dArr2[i9] * dArr4[i9 + 1]);
            i9--;
        }
        Cubic[] cubicArr = new Cubic[i5];
        while (i6 < i5) {
            int i12 = i6 + 1;
            cubicArr[i6] = new Cubic((float) dArr[i6], dArr4[i6], (((dArr[i12] - dArr[i6]) * 3.0d) - (dArr4[i6] * 2.0d)) - dArr4[i12], ((dArr[i6] - dArr[i12]) * 2.0d) + dArr4[i6] + dArr4[i12]);
            i6 = i12;
        }
        return cubicArr;
    }

    public double approxLength(Cubic[] cubicArr) {
        int i4;
        int length = cubicArr.length;
        double[] dArr = new double[cubicArr.length];
        double d4 = 0.0d;
        double d5 = 0.0d;
        double dSqrt = 0.0d;
        while (true) {
            i4 = 0;
            if (d5 >= 1.0d) {
                break;
            }
            double d6 = 0.0d;
            while (i4 < cubicArr.length) {
                double d7 = dArr[i4];
                double dEval = cubicArr[i4].eval(d5);
                dArr[i4] = dEval;
                double d8 = d7 - dEval;
                d6 += d8 * d8;
                i4++;
            }
            if (d5 > 0.0d) {
                dSqrt += Math.sqrt(d6);
            }
            d5 += 0.1d;
        }
        while (i4 < cubicArr.length) {
            double d9 = dArr[i4];
            double dEval2 = cubicArr[i4].eval(1.0d);
            dArr[i4] = dEval2;
            double d10 = d9 - dEval2;
            d4 += d10 * d10;
            i4++;
        }
        return Math.sqrt(d4) + dSqrt;
    }

    public void getPos(double d4, double[] dArr) {
        double d5 = d4 * this.mTotalLength;
        int i4 = 0;
        while (true) {
            double[] dArr2 = this.mCurveLength;
            if (i4 >= dArr2.length - 1 || dArr2[i4] >= d5) {
                break;
            }
            d5 -= dArr2[i4];
            i4++;
        }
        for (int i5 = 0; i5 < dArr.length; i5++) {
            dArr[i5] = this.mCurve[i5][i4].eval(d5 / this.mCurveLength[i4]);
        }
    }

    public void getVelocity(double d4, double[] dArr) {
        double d5 = d4 * this.mTotalLength;
        int i4 = 0;
        while (true) {
            double[] dArr2 = this.mCurveLength;
            if (i4 >= dArr2.length - 1 || dArr2[i4] >= d5) {
                break;
            }
            d5 -= dArr2[i4];
            i4++;
        }
        for (int i5 = 0; i5 < dArr.length; i5++) {
            dArr[i5] = this.mCurve[i5][i4].vel(d5 / this.mCurveLength[i4]);
        }
    }

    public void setup(double[][] dArr) {
        int i4;
        int length = dArr[0].length;
        this.mDimensionality = length;
        int length2 = dArr.length;
        this.mPoints = length2;
        this.mCtl = (double[][]) Array.newInstance((Class<?>) double.class, length, length2);
        this.mCurve = new Cubic[this.mDimensionality][];
        for (int i5 = 0; i5 < this.mDimensionality; i5++) {
            for (int i6 = 0; i6 < this.mPoints; i6++) {
                this.mCtl[i5][i6] = dArr[i6][i5];
            }
        }
        int i7 = 0;
        while (true) {
            i4 = this.mDimensionality;
            if (i7 >= i4) {
                break;
            }
            Cubic[][] cubicArr = this.mCurve;
            double[][] dArr2 = this.mCtl;
            cubicArr[i7] = calcNaturalCubic(dArr2[i7].length, dArr2[i7]);
            i7++;
        }
        this.mCurveLength = new double[this.mPoints - 1];
        this.mTotalLength = 0.0d;
        Cubic[] cubicArr2 = new Cubic[i4];
        for (int i8 = 0; i8 < this.mCurveLength.length; i8++) {
            for (int i9 = 0; i9 < this.mDimensionality; i9++) {
                cubicArr2[i9] = this.mCurve[i9][i8];
            }
            double d4 = this.mTotalLength;
            double[] dArr3 = this.mCurveLength;
            double dApproxLength = approxLength(cubicArr2);
            dArr3[i8] = dApproxLength;
            this.mTotalLength = d4 + dApproxLength;
        }
    }

    public HyperSpline() {
    }

    public void getPos(double d4, float[] fArr) {
        double d5 = d4 * this.mTotalLength;
        int i4 = 0;
        while (true) {
            double[] dArr = this.mCurveLength;
            if (i4 >= dArr.length - 1 || dArr[i4] >= d5) {
                break;
            }
            d5 -= dArr[i4];
            i4++;
        }
        for (int i5 = 0; i5 < fArr.length; i5++) {
            fArr[i5] = (float) this.mCurve[i5][i4].eval(d5 / this.mCurveLength[i4]);
        }
    }

    public double getPos(double d4, int i4) {
        double[] dArr;
        double d5 = d4 * this.mTotalLength;
        int i5 = 0;
        while (true) {
            dArr = this.mCurveLength;
            if (i5 >= dArr.length - 1 || dArr[i5] >= d5) {
                break;
            }
            d5 -= dArr[i5];
            i5++;
        }
        return this.mCurve[i4][i5].eval(d5 / dArr[i5]);
    }
}
