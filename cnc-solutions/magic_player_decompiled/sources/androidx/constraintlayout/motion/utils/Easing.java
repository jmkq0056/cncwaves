package androidx.constraintlayout.motion.utils;

import android.support.v4.media.f;
import android.util.Log;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class Easing {
    private static final String ACCELERATE = "cubic(0.4, 0.05, 0.8, 0.7)";
    private static final String DECELERATE = "cubic(0.0, 0.0, 0.2, 0.95)";
    private static final String LINEAR = "cubic(1, 1, 0, 0)";
    private static final String STANDARD = "cubic(0.4, 0.0, 0.2, 1)";
    public String str = "identity";
    public static Easing sDefault = new Easing();
    private static final String STANDARD_NAME = "standard";
    private static final String ACCELERATE_NAME = "accelerate";
    private static final String DECELERATE_NAME = "decelerate";
    private static final String LINEAR_NAME = "linear";
    public static String[] NAMED_EASING = {STANDARD_NAME, ACCELERATE_NAME, DECELERATE_NAME, LINEAR_NAME};

    public static Easing getInterpolator(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("cubic")) {
            return new CubicEasing(str);
        }
        str.hashCode();
        switch (str) {
            case "accelerate":
                return new CubicEasing(ACCELERATE);
            case "decelerate":
                return new CubicEasing(DECELERATE);
            case "linear":
                return new CubicEasing(LINEAR);
            case "standard":
                return new CubicEasing(STANDARD);
            default:
                StringBuilder sbA = f.a("transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or ");
                sbA.append(Arrays.toString(NAMED_EASING));
                Log.e("ConstraintSet", sbA.toString());
                return sDefault;
        }
    }

    public double get(double d4) {
        return d4;
    }

    public double getDiff(double d4) {
        return 1.0d;
    }

    public String toString() {
        return this.str;
    }

    public static class CubicEasing extends Easing {
        private static double d_error = 1.0E-4d;
        private static double error = 0.01d;

        /* JADX INFO: renamed from: x1, reason: collision with root package name */
        public double f134x1;

        /* JADX INFO: renamed from: x2, reason: collision with root package name */
        public double f135x2;

        /* JADX INFO: renamed from: y1, reason: collision with root package name */
        public double f136y1;

        /* JADX INFO: renamed from: y2, reason: collision with root package name */
        public double f137y2;

        public CubicEasing(String str) {
            this.str = str;
            int iIndexOf = str.indexOf(40);
            int iIndexOf2 = str.indexOf(44, iIndexOf);
            this.f134x1 = Double.parseDouble(str.substring(iIndexOf + 1, iIndexOf2).trim());
            int i4 = iIndexOf2 + 1;
            int iIndexOf3 = str.indexOf(44, i4);
            this.f136y1 = Double.parseDouble(str.substring(i4, iIndexOf3).trim());
            int i5 = iIndexOf3 + 1;
            int iIndexOf4 = str.indexOf(44, i5);
            this.f135x2 = Double.parseDouble(str.substring(i5, iIndexOf4).trim());
            int i6 = iIndexOf4 + 1;
            this.f137y2 = Double.parseDouble(str.substring(i6, str.indexOf(41, i6)).trim());
        }

        private double getDiffX(double d4) {
            double d5 = 1.0d - d4;
            double d6 = this.f134x1;
            double d7 = d5 * 3.0d * d5 * d6;
            double d8 = this.f135x2;
            return ((1.0d - d8) * 3.0d * d4 * d4) + ((d8 - d6) * d5 * 6.0d * d4) + d7;
        }

        private double getDiffY(double d4) {
            double d5 = 1.0d - d4;
            double d6 = this.f136y1;
            double d7 = d5 * 3.0d * d5 * d6;
            double d8 = this.f137y2;
            return ((1.0d - d8) * 3.0d * d4 * d4) + ((d8 - d6) * d5 * 6.0d * d4) + d7;
        }

        private double getX(double d4) {
            double d5 = 1.0d - d4;
            double d6 = 3.0d * d5;
            double d7 = d5 * d6 * d4;
            double d8 = d6 * d4 * d4;
            return (this.f135x2 * d8) + (this.f134x1 * d7) + (d4 * d4 * d4);
        }

        private double getY(double d4) {
            double d5 = 1.0d - d4;
            double d6 = 3.0d * d5;
            double d7 = d5 * d6 * d4;
            double d8 = d6 * d4 * d4;
            return (this.f137y2 * d8) + (this.f136y1 * d7) + (d4 * d4 * d4);
        }

        @Override // androidx.constraintlayout.motion.utils.Easing
        public double get(double d4) {
            if (d4 <= 0.0d) {
                return 0.0d;
            }
            if (d4 >= 1.0d) {
                return 1.0d;
            }
            double d5 = 0.5d;
            double d6 = 0.5d;
            while (d5 > error) {
                d5 *= 0.5d;
                d6 = getX(d6) < d4 ? d6 + d5 : d6 - d5;
            }
            double d7 = d6 - d5;
            double x3 = getX(d7);
            double d8 = d6 + d5;
            double x4 = getX(d8);
            double y3 = getY(d7);
            return (((d4 - x3) * (getY(d8) - y3)) / (x4 - x3)) + y3;
        }

        @Override // androidx.constraintlayout.motion.utils.Easing
        public double getDiff(double d4) {
            double d5 = 0.5d;
            double d6 = 0.5d;
            while (d5 > d_error) {
                d5 *= 0.5d;
                d6 = getX(d6) < d4 ? d6 + d5 : d6 - d5;
            }
            double d7 = d6 - d5;
            double d8 = d6 + d5;
            return (getY(d8) - getY(d7)) / (getX(d8) - getX(d7));
        }

        public void setup(double d4, double d5, double d6, double d7) {
            this.f134x1 = d4;
            this.f136y1 = d5;
            this.f135x2 = d6;
            this.f137y2 = d7;
        }

        public CubicEasing(double d4, double d5, double d6, double d7) {
            setup(d4, d5, d6, d7);
        }
    }
}
