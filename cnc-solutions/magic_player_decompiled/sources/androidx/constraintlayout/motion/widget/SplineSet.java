package androidx.constraintlayout.motion.widget;

import android.os.Build;
import android.support.v4.media.g;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.motion.utils.CurveFit;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.Objects;
import org.xbill.DNS.Flags;

/* JADX INFO: loaded from: classes.dex */
public abstract class SplineSet {
    private static final String TAG = "SplineSet";
    private int count;
    public CurveFit mCurveFit;
    private String mType;
    public int[] mTimePoints = new int[10];
    public float[] mValues = new float[10];

    public static class AlphaSet extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f4) {
            view.setAlpha(get(f4));
        }
    }

    public static class CustomSet extends SplineSet {
        public String mAttributeName;
        public SparseArray<ConstraintAttribute> mConstraintAttributeList;
        public float[] mTempValues;

        public CustomSet(String str, SparseArray<ConstraintAttribute> sparseArray) {
            this.mAttributeName = str.split(",")[1];
            this.mConstraintAttributeList = sparseArray;
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setPoint(int i4, float f4) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f4) {
            this.mCurveFit.getPos(f4, this.mTempValues);
            this.mConstraintAttributeList.valueAt(0).setInterpolatedValue(view, this.mTempValues);
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setup(int i4) {
            int size = this.mConstraintAttributeList.size();
            int iNoOfInterpValues = this.mConstraintAttributeList.valueAt(0).noOfInterpValues();
            double[] dArr = new double[size];
            this.mTempValues = new float[iNoOfInterpValues];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, size, iNoOfInterpValues);
            for (int i5 = 0; i5 < size; i5++) {
                int iKeyAt = this.mConstraintAttributeList.keyAt(i5);
                ConstraintAttribute constraintAttributeValueAt = this.mConstraintAttributeList.valueAt(i5);
                double d4 = iKeyAt;
                Double.isNaN(d4);
                dArr[i5] = d4 * 0.01d;
                constraintAttributeValueAt.getValuesToInterpolate(this.mTempValues);
                int i6 = 0;
                while (true) {
                    if (i6 < this.mTempValues.length) {
                        dArr2[i5][i6] = r6[i6];
                        i6++;
                    }
                }
            }
            this.mCurveFit = CurveFit.get(i4, dArr, dArr2);
        }

        public void setPoint(int i4, ConstraintAttribute constraintAttribute) {
            this.mConstraintAttributeList.append(i4, constraintAttribute);
        }
    }

    public static class ElevationSet extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f4) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(get(f4));
            }
        }
    }

    public static class PathRotate extends SplineSet {
        public void setPathRotate(View view, float f4, double d4, double d5) {
            view.setRotation(get(f4) + ((float) Math.toDegrees(Math.atan2(d5, d4))));
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f4) {
        }
    }

    public static class PivotXset extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f4) {
            view.setPivotX(get(f4));
        }
    }

    public static class PivotYset extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f4) {
            view.setPivotY(get(f4));
        }
    }

    public static class ProgressSet extends SplineSet {
        public boolean mNoMethod = false;

        @Override // androidx.constraintlayout.motion.widget.SplineSet
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
                    Log.e(SplineSet.TAG, "unable to setProgress", e4);
                } catch (InvocationTargetException e5) {
                    Log.e(SplineSet.TAG, "unable to setProgress", e5);
                }
            }
        }
    }

    public static class RotationSet extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f4) {
            view.setRotation(get(f4));
        }
    }

    public static class RotationXset extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f4) {
            view.setRotationX(get(f4));
        }
    }

    public static class RotationYset extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f4) {
            view.setRotationY(get(f4));
        }
    }

    public static class ScaleXset extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f4) {
            view.setScaleX(get(f4));
        }
    }

    public static class ScaleYset extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f4) {
            view.setScaleY(get(f4));
        }
    }

    public static class Sort {
        private Sort() {
        }

        public static void doubleQuickSort(int[] iArr, float[] fArr, int i4, int i5) {
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

        private static void swap(int[] iArr, float[] fArr, int i4, int i5) {
            int i6 = iArr[i4];
            iArr[i4] = iArr[i5];
            iArr[i5] = i6;
            float f4 = fArr[i4];
            fArr[i4] = fArr[i5];
            fArr[i5] = f4;
        }
    }

    public static class TranslationXset extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f4) {
            view.setTranslationX(get(f4));
        }
    }

    public static class TranslationYset extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f4) {
            view.setTranslationY(get(f4));
        }
    }

    public static class TranslationZset extends SplineSet {
        @Override // androidx.constraintlayout.motion.widget.SplineSet
        public void setProperty(View view, float f4) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(get(f4));
            }
        }
    }

    public static SplineSet makeCustomSpline(String str, SparseArray<ConstraintAttribute> sparseArray) {
        return new CustomSet(str, sparseArray);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static SplineSet makeSpline(String str) {
        Objects.requireNonNull(str);
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
            case -760884510:
                if (str.equals(Key.PIVOT_X)) {
                    b4 = 9;
                }
                break;
            case -760884509:
                if (str.equals(Key.PIVOT_Y)) {
                    b4 = 10;
                }
                break;
            case -40300674:
                if (str.equals(Key.ROTATION)) {
                    b4 = Flags.CD;
                }
                break;
            case -4379043:
                if (str.equals(Key.ELEVATION)) {
                    b4 = 12;
                }
                break;
            case 37232917:
                if (str.equals(Key.TRANSITION_PATH_ROTATE)) {
                    b4 = 13;
                }
                break;
            case 92909918:
                if (str.equals(Key.ALPHA)) {
                    b4 = 14;
                }
                break;
            case 156108012:
                if (str.equals(Key.WAVE_OFFSET)) {
                    b4 = 15;
                }
                break;
        }
        switch (b4) {
        }
        return new AlphaSet();
    }

    public float get(float f4) {
        return (float) this.mCurveFit.getPos(f4, 0);
    }

    public CurveFit getCurveFit() {
        return this.mCurveFit;
    }

    public float getSlope(float f4) {
        return (float) this.mCurveFit.getSlope(f4, 0);
    }

    public void setPoint(int i4, float f4) {
        int[] iArr = this.mTimePoints;
        if (iArr.length < this.count + 1) {
            this.mTimePoints = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.mValues;
            this.mValues = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.mTimePoints;
        int i5 = this.count;
        iArr2[i5] = i4;
        this.mValues[i5] = f4;
        this.count = i5 + 1;
    }

    public abstract void setProperty(View view, float f4);

    public void setType(String str) {
        this.mType = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setup(int r10) {
        /*
            r9 = this;
            int r0 = r9.count
            if (r0 != 0) goto L5
            return
        L5:
            int[] r1 = r9.mTimePoints
            float[] r2 = r9.mValues
            r3 = 1
            int r0 = r0 - r3
            r4 = 0
            androidx.constraintlayout.motion.widget.SplineSet.Sort.doubleQuickSort(r1, r2, r4, r0)
            r0 = 1
            r1 = 1
        L11:
            int r2 = r9.count
            if (r0 >= r2) goto L24
            int[] r2 = r9.mTimePoints
            int r5 = r0 + (-1)
            r5 = r2[r5]
            r2 = r2[r0]
            if (r5 == r2) goto L21
            int r1 = r1 + 1
        L21:
            int r0 = r0 + 1
            goto L11
        L24:
            double[] r0 = new double[r1]
            r2 = 2
            int[] r2 = new int[r2]
            r2[r3] = r3
            r2[r4] = r1
            java.lang.Class<double> r1 = double.class
            java.lang.Object r1 = java.lang.reflect.Array.newInstance(r1, r2)
            double[][] r1 = (double[][]) r1
            r2 = 0
            r3 = 0
        L37:
            int r5 = r9.count
            if (r2 >= r5) goto L67
            if (r2 <= 0) goto L48
            int[] r5 = r9.mTimePoints
            r6 = r5[r2]
            int r7 = r2 + (-1)
            r5 = r5[r7]
            if (r6 != r5) goto L48
            goto L64
        L48:
            int[] r5 = r9.mTimePoints
            r5 = r5[r2]
            double r5 = (double) r5
            r7 = 4576918229304087675(0x3f847ae147ae147b, double:0.01)
            java.lang.Double.isNaN(r5)
            double r5 = r5 * r7
            r0[r3] = r5
            r5 = r1[r3]
            float[] r6 = r9.mValues
            r6 = r6[r2]
            double r6 = (double) r6
            r5[r4] = r6
            int r3 = r3 + 1
        L64:
            int r2 = r2 + 1
            goto L37
        L67:
            androidx.constraintlayout.motion.utils.CurveFit r10 = androidx.constraintlayout.motion.utils.CurveFit.get(r10, r0, r1)
            r9.mCurveFit = r10
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.SplineSet.setup(int):void");
    }

    public String toString() {
        String string = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i4 = 0; i4 < this.count; i4++) {
            StringBuilder sbA = g.a(string, "[");
            sbA.append(this.mTimePoints[i4]);
            sbA.append(" , ");
            sbA.append(decimalFormat.format(this.mValues[i4]));
            sbA.append("] ");
            string = sbA.toString();
        }
        return string;
    }
}
