package androidx.constraintlayout.motion.widget;

import android.annotation.TargetApi;
import android.os.Build;
import android.support.v4.media.f;
import android.support.v4.media.g;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.utils.CurveFit;
import androidx.constraintlayout.motion.utils.Oscillator;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import org.xbill.DNS.Flags;

/* JADX INFO: loaded from: classes.dex */
public abstract class KeyCycleOscillator {
    private static final String TAG = "KeyCycleOscillator";
    private CurveFit mCurveFit;
    public ConstraintAttribute mCustom;
    private CycleOscillator mCycleOscillator;
    private String mType;
    private int mWaveShape = 0;
    public int mVariesBy = 0;
    public ArrayList<WavePoint> mWavePoints = new ArrayList<>();

    public static class AlphaSet extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f4) {
            view.setAlpha(get(f4));
        }
    }

    public static class CustomSet extends KeyCycleOscillator {
        public float[] value = new float[1];

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f4) {
            this.value[0] = get(f4);
            this.mCustom.setInterpolatedValue(view, this.value);
        }
    }

    public static class CycleOscillator {
        private static final String TAG = "CycleOscillator";
        public static final int UNSET = -1;
        public CurveFit mCurveFit;
        public float[] mOffset;
        public float mPathLength;
        public float[] mPeriod;
        public double[] mPosition;
        public float[] mScale;
        public double[] mSplineSlopeCache;
        public double[] mSplineValueCache;
        public float[] mValues;
        private final int mVariesBy;
        public int mWaveShape;
        public Oscillator mOscillator = new Oscillator();
        public HashMap<String, ConstraintAttribute> mCustomConstraints = new HashMap<>();

        public CycleOscillator(int i4, int i5, int i6) {
            this.mWaveShape = i4;
            this.mVariesBy = i5;
            this.mOscillator.setType(i4);
            this.mValues = new float[i6];
            this.mPosition = new double[i6];
            this.mPeriod = new float[i6];
            this.mOffset = new float[i6];
            this.mScale = new float[i6];
        }

        private ConstraintAttribute get(String str, ConstraintAttribute.AttributeType attributeType) {
            if (!this.mCustomConstraints.containsKey(str)) {
                ConstraintAttribute constraintAttribute = new ConstraintAttribute(str, attributeType);
                this.mCustomConstraints.put(str, constraintAttribute);
                return constraintAttribute;
            }
            ConstraintAttribute constraintAttribute2 = this.mCustomConstraints.get(str);
            if (constraintAttribute2.getType() == attributeType) {
                return constraintAttribute2;
            }
            StringBuilder sbA = f.a("ConstraintAttribute is already a ");
            sbA.append(constraintAttribute2.getType().name());
            throw new IllegalArgumentException(sbA.toString());
        }

        public double getSlope(float f4) {
            CurveFit curveFit = this.mCurveFit;
            if (curveFit != null) {
                double d4 = f4;
                curveFit.getSlope(d4, this.mSplineSlopeCache);
                this.mCurveFit.getPos(d4, this.mSplineValueCache);
            } else {
                double[] dArr = this.mSplineSlopeCache;
                dArr[0] = 0.0d;
                dArr[1] = 0.0d;
            }
            double d5 = f4;
            double value = this.mOscillator.getValue(d5);
            double slope = this.mOscillator.getSlope(d5);
            double[] dArr2 = this.mSplineSlopeCache;
            return (slope * this.mSplineValueCache[1]) + (value * dArr2[1]) + dArr2[0];
        }

        public double getValues(float f4) {
            CurveFit curveFit = this.mCurveFit;
            if (curveFit != null) {
                curveFit.getPos(f4, this.mSplineValueCache);
            } else {
                double[] dArr = this.mSplineValueCache;
                dArr[0] = this.mOffset[0];
                dArr[1] = this.mValues[0];
            }
            return (this.mOscillator.getValue(f4) * this.mSplineValueCache[1]) + this.mSplineValueCache[0];
        }

        public void setPoint(int i4, int i5, float f4, float f5, float f6) {
            double[] dArr = this.mPosition;
            double d4 = i5;
            Double.isNaN(d4);
            dArr[i4] = d4 / 100.0d;
            this.mPeriod[i4] = f4;
            this.mOffset[i4] = f5;
            this.mValues[i4] = f6;
        }

        public void setup(float f4) {
            this.mPathLength = f4;
            double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, this.mPosition.length, 2);
            float[] fArr = this.mValues;
            this.mSplineValueCache = new double[fArr.length + 1];
            this.mSplineSlopeCache = new double[fArr.length + 1];
            if (this.mPosition[0] > 0.0d) {
                this.mOscillator.addPoint(0.0d, this.mPeriod[0]);
            }
            double[] dArr2 = this.mPosition;
            int length = dArr2.length - 1;
            if (dArr2[length] < 1.0d) {
                this.mOscillator.addPoint(1.0d, this.mPeriod[length]);
            }
            for (int i4 = 0; i4 < dArr.length; i4++) {
                dArr[i4][0] = this.mOffset[i4];
                int i5 = 0;
                while (true) {
                    if (i5 < this.mValues.length) {
                        dArr[i5][1] = r4[i5];
                        i5++;
                    }
                }
                this.mOscillator.addPoint(this.mPosition[i4], this.mPeriod[i4]);
            }
            this.mOscillator.normalize();
            double[] dArr3 = this.mPosition;
            if (dArr3.length > 1) {
                this.mCurveFit = CurveFit.get(0, dArr3, dArr);
            } else {
                this.mCurveFit = null;
            }
        }
    }

    public static class ElevationSet extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f4) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(get(f4));
            }
        }
    }

    public static class IntDoubleSort {
        private IntDoubleSort() {
        }

        private static int partition(int[] iArr, float[] fArr, int i4, int i5) {
            int i6 = iArr[i5];
            int i7 = i4;
            while (i4 < i5) {
                if (iArr[i4] <= i6) {
                    swap(iArr, fArr, i7, i4);
                    i7++;
                }
                i4++;
            }
            swap(iArr, fArr, i7, i5);
            return i7;
        }

        public static void sort(int[] iArr, float[] fArr, int i4, int i5) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i5;
            iArr2[1] = i4;
            int i6 = 2;
            while (i6 > 0) {
                int i7 = i6 - 1;
                int i8 = iArr2[i7];
                i6 = i7 - 1;
                int i9 = iArr2[i6];
                if (i8 < i9) {
                    int iPartition = partition(iArr, fArr, i8, i9);
                    int i10 = i6 + 1;
                    iArr2[i6] = iPartition - 1;
                    int i11 = i10 + 1;
                    iArr2[i10] = i8;
                    int i12 = i11 + 1;
                    iArr2[i11] = i9;
                    i6 = i12 + 1;
                    iArr2[i12] = iPartition + 1;
                }
            }
        }

        private static void swap(int[] iArr, float[] fArr, int i4, int i5) {
            int i6 = iArr[i4];
            iArr[i4] = iArr[i5];
            iArr[i5] = i6;
            float f4 = fArr[i4];
            fArr[i4] = fArr[i5];
            fArr[i5] = f4;
        }
    }

    public static class IntFloatFloatSort {
        private IntFloatFloatSort() {
        }

        private static int partition(int[] iArr, float[] fArr, float[] fArr2, int i4, int i5) {
            int i6 = iArr[i5];
            int i7 = i4;
            while (i4 < i5) {
                if (iArr[i4] <= i6) {
                    swap(iArr, fArr, fArr2, i7, i4);
                    i7++;
                }
                i4++;
            }
            swap(iArr, fArr, fArr2, i7, i5);
            return i7;
        }

        public static void sort(int[] iArr, float[] fArr, float[] fArr2, int i4, int i5) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i5;
            iArr2[1] = i4;
            int i6 = 2;
            while (i6 > 0) {
                int i7 = i6 - 1;
                int i8 = iArr2[i7];
                i6 = i7 - 1;
                int i9 = iArr2[i6];
                if (i8 < i9) {
                    int iPartition = partition(iArr, fArr, fArr2, i8, i9);
                    int i10 = i6 + 1;
                    iArr2[i6] = iPartition - 1;
                    int i11 = i10 + 1;
                    iArr2[i10] = i8;
                    int i12 = i11 + 1;
                    iArr2[i11] = i9;
                    i6 = i12 + 1;
                    iArr2[i12] = iPartition + 1;
                }
            }
        }

        private static void swap(int[] iArr, float[] fArr, float[] fArr2, int i4, int i5) {
            int i6 = iArr[i4];
            iArr[i4] = iArr[i5];
            iArr[i5] = i6;
            float f4 = fArr[i4];
            fArr[i4] = fArr[i5];
            fArr[i5] = f4;
            float f5 = fArr2[i4];
            fArr2[i4] = fArr2[i5];
            fArr2[i5] = f5;
        }
    }

    public static class PathRotateSet extends KeyCycleOscillator {
        public void setPathRotate(View view, float f4, double d4, double d5) {
            view.setRotation(get(f4) + ((float) Math.toDegrees(Math.atan2(d5, d4))));
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f4) {
        }
    }

    public static class ProgressSet extends KeyCycleOscillator {
        public boolean mNoMethod = false;

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f4) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(get(f4));
                return;
            }
            if (this.mNoMethod) {
                return;
            }
            Method method = null;
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.mNoMethod = true;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(get(f4)));
                } catch (IllegalAccessException e4) {
                    Log.e(KeyCycleOscillator.TAG, "unable to setProgress", e4);
                } catch (InvocationTargetException e5) {
                    Log.e(KeyCycleOscillator.TAG, "unable to setProgress", e5);
                }
            }
        }
    }

    public static class RotationSet extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f4) {
            view.setRotation(get(f4));
        }
    }

    public static class RotationXset extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f4) {
            view.setRotationX(get(f4));
        }
    }

    public static class RotationYset extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f4) {
            view.setRotationY(get(f4));
        }
    }

    public static class ScaleXset extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f4) {
            view.setScaleX(get(f4));
        }
    }

    public static class ScaleYset extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f4) {
            view.setScaleY(get(f4));
        }
    }

    public static class TranslationXset extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f4) {
            view.setTranslationX(get(f4));
        }
    }

    public static class TranslationYset extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f4) {
            view.setTranslationY(get(f4));
        }
    }

    public static class TranslationZset extends KeyCycleOscillator {
        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        public void setProperty(View view, float f4) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(get(f4));
            }
        }
    }

    public static class WavePoint {
        public float mOffset;
        public float mPeriod;
        public int mPosition;
        public float mValue;

        public WavePoint(int i4, float f4, float f5, float f6) {
            this.mPosition = i4;
            this.mValue = f6;
            this.mOffset = f5;
            this.mPeriod = f4;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static KeyCycleOscillator makeSpline(String str) {
        if (str.startsWith(Key.CUSTOM)) {
            return new CustomSet();
        }
        byte b4 = -1;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals(Key.ROTATION_X)) {
                    b4 = 0;
                }
                break;
            case -1249320805:
                if (str.equals(Key.ROTATION_Y)) {
                    b4 = 1;
                }
                break;
            case -1225497657:
                if (str.equals(Key.TRANSLATION_X)) {
                    b4 = 2;
                }
                break;
            case -1225497656:
                if (str.equals(Key.TRANSLATION_Y)) {
                    b4 = 3;
                }
                break;
            case -1225497655:
                if (str.equals(Key.TRANSLATION_Z)) {
                    b4 = 4;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    b4 = 5;
                }
                break;
            case -908189618:
                if (str.equals(Key.SCALE_X)) {
                    b4 = 6;
                }
                break;
            case -908189617:
                if (str.equals(Key.SCALE_Y)) {
                    b4 = 7;
                }
                break;
            case -797520672:
                if (str.equals(Key.WAVE_VARIES_BY)) {
                    b4 = 8;
                }
                break;
            case -40300674:
                if (str.equals(Key.ROTATION)) {
                    b4 = 9;
                }
                break;
            case -4379043:
                if (str.equals(Key.ELEVATION)) {
                    b4 = 10;
                }
                break;
            case 37232917:
                if (str.equals(Key.TRANSITION_PATH_ROTATE)) {
                    b4 = Flags.CD;
                }
                break;
            case 92909918:
                if (str.equals(Key.ALPHA)) {
                    b4 = 12;
                }
                break;
            case 156108012:
                if (str.equals(Key.WAVE_OFFSET)) {
                    b4 = 13;
                }
                break;
        }
        switch (b4) {
            case 0:
                return new RotationXset();
            case 1:
                return new RotationYset();
            case 2:
                return new TranslationXset();
            case 3:
                return new TranslationYset();
            case 4:
                return new TranslationZset();
            case 5:
                return new ProgressSet();
            case 6:
                return new ScaleXset();
            case 7:
                return new ScaleYset();
            case 8:
                return new AlphaSet();
            case 9:
                return new RotationSet();
            case 10:
                return new ElevationSet();
            case 11:
                return new PathRotateSet();
            case 12:
                return new AlphaSet();
            case 13:
                return new AlphaSet();
            default:
                return null;
        }
    }

    public float get(float f4) {
        return (float) this.mCycleOscillator.getValues(f4);
    }

    public CurveFit getCurveFit() {
        return this.mCurveFit;
    }

    public float getSlope(float f4) {
        return (float) this.mCycleOscillator.getSlope(f4);
    }

    public void setPoint(int i4, int i5, int i6, float f4, float f5, float f6, ConstraintAttribute constraintAttribute) {
        this.mWavePoints.add(new WavePoint(i4, f4, f5, f6));
        if (i6 != -1) {
            this.mVariesBy = i6;
        }
        this.mWaveShape = i5;
        this.mCustom = constraintAttribute;
    }

    public abstract void setProperty(View view, float f4);

    public void setType(String str) {
        this.mType = str;
    }

    @TargetApi(19)
    public void setup(float f4) {
        int size = this.mWavePoints.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.mWavePoints, new Comparator<WavePoint>() { // from class: androidx.constraintlayout.motion.widget.KeyCycleOscillator.1
            @Override // java.util.Comparator
            public int compare(WavePoint wavePoint, WavePoint wavePoint2) {
                return Integer.compare(wavePoint.mPosition, wavePoint2.mPosition);
            }
        });
        double[] dArr = new double[size];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, size, 2);
        this.mCycleOscillator = new CycleOscillator(this.mWaveShape, this.mVariesBy, size);
        int i4 = 0;
        for (WavePoint wavePoint : this.mWavePoints) {
            float f5 = wavePoint.mPeriod;
            double d4 = f5;
            Double.isNaN(d4);
            dArr[i4] = d4 * 0.01d;
            double[] dArr3 = dArr2[i4];
            float f6 = wavePoint.mValue;
            dArr3[0] = f6;
            double[] dArr4 = dArr2[i4];
            float f7 = wavePoint.mOffset;
            dArr4[1] = f7;
            this.mCycleOscillator.setPoint(i4, wavePoint.mPosition, f5, f7, f6);
            i4++;
        }
        this.mCycleOscillator.setup(f4);
        this.mCurveFit = CurveFit.get(0, dArr, dArr2);
    }

    public String toString() {
        String string = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (WavePoint wavePoint : this.mWavePoints) {
            StringBuilder sbA = g.a(string, "[");
            sbA.append(wavePoint.mPosition);
            sbA.append(" , ");
            sbA.append(decimalFormat.format(wavePoint.mValue));
            sbA.append("] ");
            string = sbA.toString();
        }
        return string;
    }

    public boolean variesByPath() {
        return this.mVariesBy == 1;
    }

    public void setPoint(int i4, int i5, int i6, float f4, float f5, float f6) {
        this.mWavePoints.add(new WavePoint(i4, f4, f5, f6));
        if (i6 != -1) {
            this.mVariesBy = i6;
        }
        this.mWaveShape = i5;
    }
}
