package androidx.constraintlayout.motion.widget;

import android.graphics.RectF;
import android.support.v4.media.b;
import android.support.v4.media.f;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.graphics.drawable.a;
import androidx.constraintlayout.motion.utils.CurveFit;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.motion.utils.VelocityMatrix;
import androidx.constraintlayout.motion.widget.KeyCycleOscillator;
import androidx.constraintlayout.motion.widget.SplineSet;
import androidx.constraintlayout.motion.widget.TimeCycleSplineSet;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class MotionController {
    private static final boolean DEBUG = false;
    public static final int DRAW_PATH_AS_CONFIGURED = 4;
    public static final int DRAW_PATH_BASIC = 1;
    public static final int DRAW_PATH_CARTESIAN = 3;
    public static final int DRAW_PATH_NONE = 0;
    public static final int DRAW_PATH_RECTANGLE = 5;
    public static final int DRAW_PATH_RELATIVE = 2;
    public static final int DRAW_PATH_SCREEN = 6;
    private static final boolean FAVOR_FIXED_SIZE_VIEWS = false;
    public static final int HORIZONTAL_PATH_X = 2;
    public static final int HORIZONTAL_PATH_Y = 3;
    public static final int PATH_PERCENT = 0;
    public static final int PATH_PERPENDICULAR = 1;
    private static final String TAG = "MotionController";
    public static final int VERTICAL_PATH_X = 4;
    public static final int VERTICAL_PATH_Y = 5;
    public String[] attributeTable;
    private CurveFit mArcSpline;
    private int[] mAttributeInterpCount;
    private String[] mAttributeNames;
    private HashMap<String, SplineSet> mAttributesMap;
    public String mConstraintTag;
    private HashMap<String, KeyCycleOscillator> mCycleMap;
    public int mId;
    private double[] mInterpolateData;
    private int[] mInterpolateVariables;
    private double[] mInterpolateVelocity;
    private KeyTrigger[] mKeyTriggers;
    private CurveFit[] mSpline;
    private HashMap<String, TimeCycleSplineSet> mTimeCycleAttributesMap;
    public View mView;
    private int mCurveFitType = -1;
    private MotionPaths mStartMotionPath = new MotionPaths();
    private MotionPaths mEndMotionPath = new MotionPaths();
    private MotionConstrainedPoint mStartPoint = new MotionConstrainedPoint();
    private MotionConstrainedPoint mEndPoint = new MotionConstrainedPoint();
    public float mMotionStagger = Float.NaN;
    public float mStaggerOffset = 0.0f;
    public float mStaggerScale = 1.0f;
    private int MAX_DIMENSION = 4;
    private float[] mValuesBuff = new float[4];
    private ArrayList<MotionPaths> mMotionPaths = new ArrayList<>();
    private float[] mVelocity = new float[1];
    private ArrayList<Key> mKeyList = new ArrayList<>();
    private int mPathMotionArc = Key.UNSET;

    public MotionController(View view) {
        setView(view);
    }

    private float getAdjustedPosition(float f4, float[] fArr) {
        float f5 = 0.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else {
            float f6 = this.mStaggerScale;
            if (f6 != 1.0d) {
                float f7 = this.mStaggerOffset;
                if (f4 < f7) {
                    f4 = 0.0f;
                }
                if (f4 > f7 && f4 < 1.0d) {
                    f4 = (f4 - f7) * f6;
                }
            }
        }
        Easing easing = this.mStartMotionPath.mKeyFrameEasing;
        float f8 = Float.NaN;
        for (MotionPaths motionPaths : this.mMotionPaths) {
            Easing easing2 = motionPaths.mKeyFrameEasing;
            if (easing2 != null) {
                float f9 = motionPaths.time;
                if (f9 < f4) {
                    easing = easing2;
                    f5 = f9;
                } else if (Float.isNaN(f8)) {
                    f8 = motionPaths.time;
                }
            }
        }
        if (easing != null) {
            float f10 = (Float.isNaN(f8) ? 1.0f : f8) - f5;
            double d4 = (f4 - f5) / f10;
            f4 = (((float) easing.get(d4)) * f10) + f5;
            if (fArr != null) {
                fArr[0] = (float) easing.getDiff(d4);
            }
        }
        return f4;
    }

    private float getPreCycleDistance() {
        float[] fArr = new float[2];
        float f4 = 1.0f / 99;
        double d4 = 0.0d;
        double d5 = 0.0d;
        int i4 = 0;
        float f5 = 0.0f;
        while (i4 < 100) {
            float f6 = i4 * f4;
            double d6 = f6;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            float f7 = Float.NaN;
            float f8 = 0.0f;
            for (MotionPaths motionPaths : this.mMotionPaths) {
                Easing easing2 = motionPaths.mKeyFrameEasing;
                float f9 = f4;
                if (easing2 != null) {
                    float f10 = motionPaths.time;
                    if (f10 < f6) {
                        f8 = f10;
                        easing = easing2;
                    } else if (Float.isNaN(f7)) {
                        f7 = motionPaths.time;
                    }
                }
                f4 = f9;
            }
            float f11 = f4;
            if (easing != null) {
                if (Float.isNaN(f7)) {
                    f7 = 1.0f;
                }
                d6 = (((float) easing.get((f6 - f8) / r16)) * (f7 - f8)) + f8;
            }
            this.mSpline[0].getPos(d6, this.mInterpolateData);
            this.mStartMotionPath.getCenter(this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
            if (i4 > 0) {
                double d7 = f5;
                double d8 = fArr[1];
                Double.isNaN(d8);
                double d9 = d5 - d8;
                double d10 = fArr[0];
                Double.isNaN(d10);
                double dHypot = Math.hypot(d9, d4 - d10);
                Double.isNaN(d7);
                f5 = (float) (dHypot + d7);
            }
            d4 = fArr[0];
            d5 = fArr[1];
            i4++;
            f4 = f11;
        }
        return f5;
    }

    private void insertKey(MotionPaths motionPaths) {
        if (Collections.binarySearch(this.mMotionPaths, motionPaths) == 0) {
            StringBuilder sbA = f.a(" KeyPath positon \"");
            sbA.append(motionPaths.position);
            sbA.append("\" outside of range");
            Log.e(TAG, sbA.toString());
        }
        this.mMotionPaths.add((-r0) - 1, motionPaths);
    }

    private void readView(MotionPaths motionPaths) {
        motionPaths.setBounds((int) this.mView.getX(), (int) this.mView.getY(), this.mView.getWidth(), this.mView.getHeight());
    }

    public void addKey(Key key) {
        this.mKeyList.add(key);
    }

    public void addKeys(ArrayList<Key> arrayList) {
        this.mKeyList.addAll(arrayList);
    }

    public void buildBounds(float[] fArr, int i4) {
        float f4 = 1.0f / (i4 - 1);
        HashMap<String, SplineSet> map = this.mAttributesMap;
        if (map != null) {
            map.get(Key.TRANSLATION_X);
        }
        HashMap<String, SplineSet> map2 = this.mAttributesMap;
        if (map2 != null) {
            map2.get(Key.TRANSLATION_Y);
        }
        HashMap<String, KeyCycleOscillator> map3 = this.mCycleMap;
        if (map3 != null) {
            map3.get(Key.TRANSLATION_X);
        }
        HashMap<String, KeyCycleOscillator> map4 = this.mCycleMap;
        if (map4 != null) {
            map4.get(Key.TRANSLATION_Y);
        }
        for (int i5 = 0; i5 < i4; i5++) {
            float f5 = i5 * f4;
            float f6 = this.mStaggerScale;
            float f7 = 0.0f;
            if (f6 != 1.0f) {
                float f8 = this.mStaggerOffset;
                if (f5 < f8) {
                    f5 = 0.0f;
                }
                if (f5 > f8 && f5 < 1.0d) {
                    f5 = (f5 - f8) * f6;
                }
            }
            double d4 = f5;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            float f9 = Float.NaN;
            for (MotionPaths motionPaths : this.mMotionPaths) {
                Easing easing2 = motionPaths.mKeyFrameEasing;
                if (easing2 != null) {
                    float f10 = motionPaths.time;
                    if (f10 < f5) {
                        easing = easing2;
                        f7 = f10;
                    } else if (Float.isNaN(f9)) {
                        f9 = motionPaths.time;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f9)) {
                    f9 = 1.0f;
                }
                d4 = (((float) easing.get((f5 - f7) / r11)) * (f9 - f7)) + f7;
            }
            this.mSpline[0].getPos(d4, this.mInterpolateData);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d4, dArr);
                }
            }
            this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, fArr, i5 * 2);
        }
    }

    public int buildKeyBounds(float[] fArr, int[] iArr) {
        if (fArr == null) {
            return 0;
        }
        double[] timePoints = this.mSpline[0].getTimePoints();
        if (iArr != null) {
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            int i4 = 0;
            while (it.hasNext()) {
                iArr[i4] = it.next().mMode;
                i4++;
            }
        }
        int i5 = 0;
        for (double d4 : timePoints) {
            this.mSpline[0].getPos(d4, this.mInterpolateData);
            this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, fArr, i5);
            i5 += 2;
        }
        return i5 / 2;
    }

    public int buildKeyFrames(float[] fArr, int[] iArr) {
        if (fArr == null) {
            return 0;
        }
        double[] timePoints = this.mSpline[0].getTimePoints();
        if (iArr != null) {
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            int i4 = 0;
            while (it.hasNext()) {
                iArr[i4] = it.next().mMode;
                i4++;
            }
        }
        int i5 = 0;
        for (double d4 : timePoints) {
            this.mSpline[0].getPos(d4, this.mInterpolateData);
            this.mStartMotionPath.getCenter(this.mInterpolateVariables, this.mInterpolateData, fArr, i5);
            i5 += 2;
        }
        return i5 / 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0065 A[PHI: r11
      0x0065: PHI (r11v2 float) = (r11v1 float), (r11v4 float) binds: [B:21:0x004b, B:26:0x0056] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0103  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void buildPath(float[] r22, int r23) {
        /*
            Method dump skipped, instruction units count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionController.buildPath(float[], int):void");
    }

    public void buildRect(float f4, float[] fArr, int i4) {
        this.mSpline[0].getPos(getAdjustedPosition(f4, null), this.mInterpolateData);
        this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, fArr, i4);
    }

    public void buildRectangles(float[] fArr, int i4) {
        float f4 = 1.0f / (i4 - 1);
        for (int i5 = 0; i5 < i4; i5++) {
            this.mSpline[0].getPos(getAdjustedPosition(i5 * f4, null), this.mInterpolateData);
            this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, fArr, i5 * 8);
        }
    }

    public int getAttributeValues(String str, float[] fArr, int i4) {
        SplineSet splineSet = this.mAttributesMap.get(str);
        if (splineSet == null) {
            return -1;
        }
        for (int i5 = 0; i5 < fArr.length; i5++) {
            fArr[i5] = splineSet.get(i5 / (fArr.length - 1));
        }
        return fArr.length;
    }

    public void getDpDt(float f4, float f5, float f6, float[] fArr) {
        double[] dArr;
        float adjustedPosition = getAdjustedPosition(f4, this.mVelocity);
        CurveFit[] curveFitArr = this.mSpline;
        int i4 = 0;
        if (curveFitArr == null) {
            MotionPaths motionPaths = this.mEndMotionPath;
            float f7 = motionPaths.f140x;
            MotionPaths motionPaths2 = this.mStartMotionPath;
            float f8 = f7 - motionPaths2.f140x;
            float f9 = motionPaths.f141y - motionPaths2.f141y;
            float f10 = motionPaths.width - motionPaths2.width;
            float f11 = (motionPaths.height - motionPaths2.height) + f9;
            fArr[0] = ((f10 + f8) * f5) + ((1.0f - f5) * f8);
            fArr[1] = (f11 * f6) + ((1.0f - f6) * f9);
            return;
        }
        double d4 = adjustedPosition;
        curveFitArr[0].getSlope(d4, this.mInterpolateVelocity);
        this.mSpline[0].getPos(d4, this.mInterpolateData);
        float f12 = this.mVelocity[0];
        while (true) {
            dArr = this.mInterpolateVelocity;
            if (i4 >= dArr.length) {
                break;
            }
            double d5 = dArr[i4];
            double d6 = f12;
            Double.isNaN(d6);
            dArr[i4] = d5 * d6;
            i4++;
        }
        CurveFit curveFit = this.mArcSpline;
        if (curveFit == null) {
            this.mStartMotionPath.setDpDt(f5, f6, fArr, this.mInterpolateVariables, dArr, this.mInterpolateData);
            return;
        }
        double[] dArr2 = this.mInterpolateData;
        if (dArr2.length > 0) {
            curveFit.getPos(d4, dArr2);
            this.mArcSpline.getSlope(d4, this.mInterpolateVelocity);
            this.mStartMotionPath.setDpDt(f5, f6, fArr, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
        }
    }

    public int getDrawPath() {
        int iMax = this.mStartMotionPath.mDrawPath;
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        while (it.hasNext()) {
            iMax = Math.max(iMax, it.next().mDrawPath);
        }
        return Math.max(iMax, this.mEndMotionPath.mDrawPath);
    }

    public float getFinalX() {
        return this.mEndMotionPath.f140x;
    }

    public float getFinalY() {
        return this.mEndMotionPath.f141y;
    }

    public MotionPaths getKeyFrame(int i4) {
        return this.mMotionPaths.get(i4);
    }

    public int getKeyFrameInfo(int i4, int[] iArr) {
        float[] fArr = new float[2];
        int i5 = 0;
        int i6 = 0;
        for (Key key : this.mKeyList) {
            int i7 = key.mType;
            if (i7 == i4 || i4 != -1) {
                iArr[i6] = 0;
                int i8 = i6 + 1;
                iArr[i8] = i7;
                int i9 = i8 + 1;
                iArr[i9] = key.mFramePosition;
                this.mSpline[0].getPos(r8 / 100.0f, this.mInterpolateData);
                this.mStartMotionPath.getCenter(this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
                int i10 = i9 + 1;
                iArr[i10] = Float.floatToIntBits(fArr[0]);
                int i11 = i10 + 1;
                iArr[i11] = Float.floatToIntBits(fArr[1]);
                if (key instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) key;
                    int i12 = i11 + 1;
                    iArr[i12] = keyPosition.mPositionType;
                    int i13 = i12 + 1;
                    iArr[i13] = Float.floatToIntBits(keyPosition.mPercentX);
                    i11 = i13 + 1;
                    iArr[i11] = Float.floatToIntBits(keyPosition.mPercentY);
                }
                int i14 = i11 + 1;
                iArr[i6] = i14 - i6;
                i5++;
                i6 = i14;
            }
        }
        return i5;
    }

    public float getKeyFrameParameter(int i4, float f4, float f5) {
        MotionPaths motionPaths = this.mEndMotionPath;
        float f6 = motionPaths.f140x;
        MotionPaths motionPaths2 = this.mStartMotionPath;
        float f7 = motionPaths2.f140x;
        float f8 = f6 - f7;
        float f9 = motionPaths.f141y;
        float f10 = motionPaths2.f141y;
        float f11 = f9 - f10;
        float f12 = (motionPaths2.width / 2.0f) + f7;
        float f13 = (motionPaths2.height / 2.0f) + f10;
        float fHypot = (float) Math.hypot(f8, f11);
        if (fHypot < 1.0E-7d) {
            return Float.NaN;
        }
        float f14 = f4 - f12;
        float f15 = f5 - f13;
        if (((float) Math.hypot(f14, f15)) == 0.0f) {
            return 0.0f;
        }
        float f16 = (f15 * f11) + (f14 * f8);
        if (i4 == 0) {
            return f16 / fHypot;
        }
        if (i4 == 1) {
            return (float) Math.sqrt((fHypot * fHypot) - (f16 * f16));
        }
        if (i4 == 2) {
            return f14 / f8;
        }
        if (i4 == 3) {
            return f15 / f8;
        }
        if (i4 == 4) {
            return f14 / f11;
        }
        if (i4 != 5) {
            return 0.0f;
        }
        return f15 / f11;
    }

    public KeyPositionBase getPositionKeyframe(int i4, int i5, float f4, float f5) {
        RectF rectF = new RectF();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f6 = motionPaths.f140x;
        rectF.left = f6;
        float f7 = motionPaths.f141y;
        rectF.top = f7;
        rectF.right = f6 + motionPaths.width;
        rectF.bottom = f7 + motionPaths.height;
        RectF rectF2 = new RectF();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f8 = motionPaths2.f140x;
        rectF2.left = f8;
        float f9 = motionPaths2.f141y;
        rectF2.top = f9;
        rectF2.right = f8 + motionPaths2.width;
        rectF2.bottom = f9 + motionPaths2.height;
        for (Key key : this.mKeyList) {
            if (key instanceof KeyPositionBase) {
                KeyPositionBase keyPositionBase = (KeyPositionBase) key;
                if (keyPositionBase.intersects(i4, i5, rectF, rectF2, f4, f5)) {
                    return keyPositionBase;
                }
            }
        }
        return null;
    }

    public void getPostLayoutDvDp(float f4, int i4, int i5, float f5, float f6, float[] fArr) {
        float adjustedPosition = getAdjustedPosition(f4, this.mVelocity);
        HashMap<String, SplineSet> map = this.mAttributesMap;
        SplineSet splineSet = map == null ? null : map.get(Key.TRANSLATION_X);
        HashMap<String, SplineSet> map2 = this.mAttributesMap;
        SplineSet splineSet2 = map2 == null ? null : map2.get(Key.TRANSLATION_Y);
        HashMap<String, SplineSet> map3 = this.mAttributesMap;
        SplineSet splineSet3 = map3 == null ? null : map3.get(Key.ROTATION);
        HashMap<String, SplineSet> map4 = this.mAttributesMap;
        SplineSet splineSet4 = map4 == null ? null : map4.get(Key.SCALE_X);
        HashMap<String, SplineSet> map5 = this.mAttributesMap;
        SplineSet splineSet5 = map5 == null ? null : map5.get(Key.SCALE_Y);
        HashMap<String, KeyCycleOscillator> map6 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator = map6 == null ? null : map6.get(Key.TRANSLATION_X);
        HashMap<String, KeyCycleOscillator> map7 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator2 = map7 == null ? null : map7.get(Key.TRANSLATION_Y);
        HashMap<String, KeyCycleOscillator> map8 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator3 = map8 == null ? null : map8.get(Key.ROTATION);
        HashMap<String, KeyCycleOscillator> map9 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator4 = map9 == null ? null : map9.get(Key.SCALE_X);
        HashMap<String, KeyCycleOscillator> map10 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator5 = map10 != null ? map10.get(Key.SCALE_Y) : null;
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.clear();
        velocityMatrix.setRotationVelocity(splineSet3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(splineSet, splineSet2, adjustedPosition);
        velocityMatrix.setScaleVelocity(splineSet4, splineSet5, adjustedPosition);
        velocityMatrix.setRotationVelocity(keyCycleOscillator3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(keyCycleOscillator, keyCycleOscillator2, adjustedPosition);
        velocityMatrix.setScaleVelocity(keyCycleOscillator4, keyCycleOscillator5, adjustedPosition);
        CurveFit curveFit = this.mArcSpline;
        if (curveFit != null) {
            double[] dArr = this.mInterpolateData;
            if (dArr.length > 0) {
                double d4 = adjustedPosition;
                curveFit.getPos(d4, dArr);
                this.mArcSpline.getSlope(d4, this.mInterpolateVelocity);
                this.mStartMotionPath.setDpDt(f5, f6, fArr, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
            }
            velocityMatrix.applyTransform(f5, f6, i4, i5, fArr);
            return;
        }
        int i6 = 0;
        if (this.mSpline == null) {
            MotionPaths motionPaths = this.mEndMotionPath;
            float f7 = motionPaths.f140x;
            MotionPaths motionPaths2 = this.mStartMotionPath;
            float f8 = f7 - motionPaths2.f140x;
            KeyCycleOscillator keyCycleOscillator6 = keyCycleOscillator5;
            float f9 = motionPaths.f141y - motionPaths2.f141y;
            KeyCycleOscillator keyCycleOscillator7 = keyCycleOscillator4;
            float f10 = motionPaths.width - motionPaths2.width;
            float f11 = (motionPaths.height - motionPaths2.height) + f9;
            fArr[0] = ((f10 + f8) * f5) + ((1.0f - f5) * f8);
            fArr[1] = (f11 * f6) + ((1.0f - f6) * f9);
            velocityMatrix.clear();
            velocityMatrix.setRotationVelocity(splineSet3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(splineSet, splineSet2, adjustedPosition);
            velocityMatrix.setScaleVelocity(splineSet4, splineSet5, adjustedPosition);
            velocityMatrix.setRotationVelocity(keyCycleOscillator3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(keyCycleOscillator, keyCycleOscillator2, adjustedPosition);
            velocityMatrix.setScaleVelocity(keyCycleOscillator7, keyCycleOscillator6, adjustedPosition);
            velocityMatrix.applyTransform(f5, f6, i4, i5, fArr);
            return;
        }
        double adjustedPosition2 = getAdjustedPosition(adjustedPosition, this.mVelocity);
        this.mSpline[0].getSlope(adjustedPosition2, this.mInterpolateVelocity);
        this.mSpline[0].getPos(adjustedPosition2, this.mInterpolateData);
        float f12 = this.mVelocity[0];
        while (true) {
            double[] dArr2 = this.mInterpolateVelocity;
            if (i6 >= dArr2.length) {
                this.mStartMotionPath.setDpDt(f5, f6, fArr, this.mInterpolateVariables, dArr2, this.mInterpolateData);
                velocityMatrix.applyTransform(f5, f6, i4, i5, fArr);
                return;
            } else {
                double d5 = dArr2[i6];
                double d6 = f12;
                Double.isNaN(d6);
                dArr2[i6] = d5 * d6;
                i6++;
            }
        }
    }

    public float getStartX() {
        return this.mStartMotionPath.f140x;
    }

    public float getStartY() {
        return this.mStartMotionPath.f141y;
    }

    public int getkeyFramePositions(int[] iArr, float[] fArr) {
        int i4 = 0;
        int i5 = 0;
        for (Key key : this.mKeyList) {
            iArr[i4] = (key.mType * 1000) + key.mFramePosition;
            this.mSpline[0].getPos(r6 / 100.0f, this.mInterpolateData);
            this.mStartMotionPath.getCenter(this.mInterpolateVariables, this.mInterpolateData, fArr, i5);
            i5 += 2;
            i4++;
        }
        return i4;
    }

    public boolean interpolate(View view, float f4, long j4, KeyCache keyCache) {
        TimeCycleSplineSet.PathRotate pathRotate;
        boolean pathRotate2;
        double d4;
        float adjustedPosition = getAdjustedPosition(f4, null);
        HashMap<String, SplineSet> map = this.mAttributesMap;
        if (map != null) {
            Iterator<SplineSet> it = map.values().iterator();
            while (it.hasNext()) {
                it.next().setProperty(view, adjustedPosition);
            }
        }
        HashMap<String, TimeCycleSplineSet> map2 = this.mTimeCycleAttributesMap;
        if (map2 != null) {
            pathRotate = null;
            boolean property = false;
            for (TimeCycleSplineSet timeCycleSplineSet : map2.values()) {
                if (timeCycleSplineSet instanceof TimeCycleSplineSet.PathRotate) {
                    pathRotate = (TimeCycleSplineSet.PathRotate) timeCycleSplineSet;
                } else {
                    property |= timeCycleSplineSet.setProperty(view, adjustedPosition, j4, keyCache);
                }
            }
            pathRotate2 = property;
        } else {
            pathRotate = null;
            pathRotate2 = false;
        }
        CurveFit[] curveFitArr = this.mSpline;
        if (curveFitArr != null) {
            double d5 = adjustedPosition;
            curveFitArr[0].getPos(d5, this.mInterpolateData);
            this.mSpline[0].getSlope(d5, this.mInterpolateVelocity);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d5, dArr);
                    this.mArcSpline.getSlope(d5, this.mInterpolateVelocity);
                }
            }
            this.mStartMotionPath.setView(view, this.mInterpolateVariables, this.mInterpolateData, this.mInterpolateVelocity, null);
            HashMap<String, SplineSet> map3 = this.mAttributesMap;
            if (map3 != null) {
                for (SplineSet splineSet : map3.values()) {
                    if (splineSet instanceof SplineSet.PathRotate) {
                        double[] dArr2 = this.mInterpolateVelocity;
                        ((SplineSet.PathRotate) splineSet).setPathRotate(view, adjustedPosition, dArr2[0], dArr2[1]);
                    }
                }
            }
            if (pathRotate != null) {
                double[] dArr3 = this.mInterpolateVelocity;
                d4 = d5;
                pathRotate2 = pathRotate.setPathRotate(view, keyCache, adjustedPosition, j4, dArr3[0], dArr3[1]) | pathRotate2;
            } else {
                d4 = d5;
            }
            int i4 = 1;
            while (true) {
                CurveFit[] curveFitArr2 = this.mSpline;
                if (i4 >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[i4].getPos(d4, this.mValuesBuff);
                this.mStartMotionPath.attributes.get(this.mAttributeNames[i4 - 1]).setInterpolatedValue(view, this.mValuesBuff);
                i4++;
            }
            MotionConstrainedPoint motionConstrainedPoint = this.mStartPoint;
            if (motionConstrainedPoint.mVisibilityMode == 0) {
                if (adjustedPosition <= 0.0f) {
                    view.setVisibility(motionConstrainedPoint.visibility);
                } else if (adjustedPosition >= 1.0f) {
                    view.setVisibility(this.mEndPoint.visibility);
                } else if (this.mEndPoint.visibility != motionConstrainedPoint.visibility) {
                    view.setVisibility(0);
                }
            }
            if (this.mKeyTriggers != null) {
                int i5 = 0;
                while (true) {
                    KeyTrigger[] keyTriggerArr = this.mKeyTriggers;
                    if (i5 >= keyTriggerArr.length) {
                        break;
                    }
                    keyTriggerArr[i5].conditionallyFire(adjustedPosition, view);
                    i5++;
                }
            }
        } else {
            MotionPaths motionPaths = this.mStartMotionPath;
            float f5 = motionPaths.f140x;
            MotionPaths motionPaths2 = this.mEndMotionPath;
            float fA = a.a(motionPaths2.f140x, f5, adjustedPosition, f5);
            float f6 = motionPaths.f141y;
            float fA2 = a.a(motionPaths2.f141y, f6, adjustedPosition, f6);
            float f7 = motionPaths.width;
            float f8 = motionPaths2.width;
            float fA3 = a.a(f8, f7, adjustedPosition, f7);
            float f9 = motionPaths.height;
            float f10 = motionPaths2.height;
            float f11 = fA + 0.5f;
            int i6 = (int) f11;
            float f12 = fA2 + 0.5f;
            int i7 = (int) f12;
            int i8 = (int) (f11 + fA3);
            int iA = (int) (f12 + a.a(f10, f9, adjustedPosition, f9));
            int i9 = i8 - i6;
            int i10 = iA - i7;
            if (f8 != f7 || f10 != f9) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i9, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(i10, BasicMeasure.EXACTLY));
            }
            view.layout(i6, i7, i8, iA);
        }
        HashMap<String, KeyCycleOscillator> map4 = this.mCycleMap;
        if (map4 != null) {
            for (KeyCycleOscillator keyCycleOscillator : map4.values()) {
                if (keyCycleOscillator instanceof KeyCycleOscillator.PathRotateSet) {
                    double[] dArr4 = this.mInterpolateVelocity;
                    ((KeyCycleOscillator.PathRotateSet) keyCycleOscillator).setPathRotate(view, adjustedPosition, dArr4[0], dArr4[1]);
                } else {
                    keyCycleOscillator.setProperty(view, adjustedPosition);
                }
            }
        }
        return pathRotate2;
    }

    public String name() {
        return this.mView.getContext().getResources().getResourceEntryName(this.mView.getId());
    }

    public void positionKeyframe(View view, KeyPositionBase keyPositionBase, float f4, float f5, String[] strArr, float[] fArr) {
        RectF rectF = new RectF();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f6 = motionPaths.f140x;
        rectF.left = f6;
        float f7 = motionPaths.f141y;
        rectF.top = f7;
        rectF.right = f6 + motionPaths.width;
        rectF.bottom = f7 + motionPaths.height;
        RectF rectF2 = new RectF();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f8 = motionPaths2.f140x;
        rectF2.left = f8;
        float f9 = motionPaths2.f141y;
        rectF2.top = f9;
        rectF2.right = f8 + motionPaths2.width;
        rectF2.bottom = f9 + motionPaths2.height;
        keyPositionBase.positionAttributes(view, rectF, rectF2, f4, f5, strArr, fArr);
    }

    public void setDrawPath(int i4) {
        this.mStartMotionPath.mDrawPath = i4;
    }

    public void setEndState(ConstraintWidget constraintWidget, ConstraintSet constraintSet) {
        MotionPaths motionPaths = this.mEndMotionPath;
        motionPaths.time = 1.0f;
        motionPaths.position = 1.0f;
        readView(motionPaths);
        this.mEndMotionPath.setBounds(constraintWidget.getX(), constraintWidget.getY(), constraintWidget.getWidth(), constraintWidget.getHeight());
        this.mEndMotionPath.applyParameters(constraintSet.getParameters(this.mId));
        this.mEndPoint.setState(constraintWidget, constraintSet, this.mId);
    }

    public void setPathMotionArc(int i4) {
        this.mPathMotionArc = i4;
    }

    public void setStartCurrentState(View view) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        motionPaths.setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.mStartPoint.setState(view);
    }

    public void setStartState(ConstraintWidget constraintWidget, ConstraintSet constraintSet) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        readView(motionPaths);
        this.mStartMotionPath.setBounds(constraintWidget.getX(), constraintWidget.getY(), constraintWidget.getWidth(), constraintWidget.getHeight());
        ConstraintSet.Constraint parameters = constraintSet.getParameters(this.mId);
        this.mStartMotionPath.applyParameters(parameters);
        this.mMotionStagger = parameters.motion.mMotionStagger;
        this.mStartPoint.setState(constraintWidget, constraintSet, this.mId);
    }

    public void setView(View view) {
        this.mView = view;
        this.mId = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            this.mConstraintTag = ((ConstraintLayout.LayoutParams) layoutParams).getConstraintTag();
        }
    }

    public void setup(int i4, int i5, float f4, long j4) {
        ArrayList arrayList;
        String[] strArr;
        TimeCycleSplineSet timeCycleSplineSetMakeSpline;
        ConstraintAttribute constraintAttribute;
        SplineSet splineSetMakeSpline;
        ConstraintAttribute constraintAttribute2;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> map = new HashMap<>();
        int i6 = this.mPathMotionArc;
        if (i6 != Key.UNSET) {
            this.mStartMotionPath.mPathMotionArc = i6;
        }
        this.mStartPoint.different(this.mEndPoint, hashSet2);
        ArrayList<Key> arrayList2 = this.mKeyList;
        if (arrayList2 != null) {
            arrayList = null;
            for (Key key : arrayList2) {
                if (key instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) key;
                    insertKey(new MotionPaths(i4, i5, keyPosition, this.mStartMotionPath, this.mEndMotionPath));
                    int i7 = keyPosition.mCurveFit;
                    if (i7 != Key.UNSET) {
                        this.mCurveFitType = i7;
                    }
                } else if (key instanceof KeyCycle) {
                    key.getAttributeNames(hashSet3);
                } else if (key instanceof KeyTimeCycle) {
                    key.getAttributeNames(hashSet);
                } else if (key instanceof KeyTrigger) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((KeyTrigger) key);
                } else {
                    key.setInterpolation(map);
                    key.getAttributeNames(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        char c4 = 0;
        if (arrayList != null) {
            this.mKeyTriggers = (KeyTrigger[]) arrayList.toArray(new KeyTrigger[0]);
        }
        char c5 = 1;
        if (!hashSet2.isEmpty()) {
            this.mAttributesMap = new HashMap<>();
            for (String str : hashSet2) {
                if (str.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str2 = str.split(",")[c5];
                    for (Key key2 : this.mKeyList) {
                        HashMap<String, ConstraintAttribute> map2 = key2.mCustomConstraints;
                        if (map2 != null && (constraintAttribute2 = map2.get(str2)) != null) {
                            sparseArray.append(key2.mFramePosition, constraintAttribute2);
                        }
                    }
                    splineSetMakeSpline = SplineSet.makeCustomSpline(str, sparseArray);
                } else {
                    splineSetMakeSpline = SplineSet.makeSpline(str);
                }
                if (splineSetMakeSpline != null) {
                    splineSetMakeSpline.setType(str);
                    this.mAttributesMap.put(str, splineSetMakeSpline);
                }
                c5 = 1;
            }
            ArrayList<Key> arrayList3 = this.mKeyList;
            if (arrayList3 != null) {
                for (Key key3 : arrayList3) {
                    if (key3 instanceof KeyAttributes) {
                        key3.addValues(this.mAttributesMap);
                    }
                }
            }
            this.mStartPoint.addValues(this.mAttributesMap, 0);
            this.mEndPoint.addValues(this.mAttributesMap, 100);
            for (String str3 : this.mAttributesMap.keySet()) {
                this.mAttributesMap.get(str3).setup(map.containsKey(str3) ? map.get(str3).intValue() : 0);
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.mTimeCycleAttributesMap == null) {
                this.mTimeCycleAttributesMap = new HashMap<>();
            }
            for (String str4 : hashSet) {
                if (!this.mTimeCycleAttributesMap.containsKey(str4)) {
                    if (str4.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str5 = str4.split(",")[1];
                        for (Key key4 : this.mKeyList) {
                            HashMap<String, ConstraintAttribute> map3 = key4.mCustomConstraints;
                            if (map3 != null && (constraintAttribute = map3.get(str5)) != null) {
                                sparseArray2.append(key4.mFramePosition, constraintAttribute);
                            }
                        }
                        timeCycleSplineSetMakeSpline = TimeCycleSplineSet.makeCustomSpline(str4, sparseArray2);
                    } else {
                        timeCycleSplineSetMakeSpline = TimeCycleSplineSet.makeSpline(str4, j4);
                    }
                    if (timeCycleSplineSetMakeSpline != null) {
                        timeCycleSplineSetMakeSpline.setType(str4);
                        this.mTimeCycleAttributesMap.put(str4, timeCycleSplineSetMakeSpline);
                    }
                }
            }
            ArrayList<Key> arrayList4 = this.mKeyList;
            if (arrayList4 != null) {
                for (Key key5 : arrayList4) {
                    if (key5 instanceof KeyTimeCycle) {
                        ((KeyTimeCycle) key5).addTimeValues(this.mTimeCycleAttributesMap);
                    }
                }
            }
            for (String str6 : this.mTimeCycleAttributesMap.keySet()) {
                this.mTimeCycleAttributesMap.get(str6).setup(map.containsKey(str6) ? map.get(str6).intValue() : 0);
            }
        }
        int i8 = 2;
        int size = this.mMotionPaths.size() + 2;
        MotionPaths[] motionPathsArr = new MotionPaths[size];
        motionPathsArr[0] = this.mStartMotionPath;
        motionPathsArr[size - 1] = this.mEndMotionPath;
        if (this.mMotionPaths.size() > 0 && this.mCurveFitType == -1) {
            this.mCurveFitType = 0;
        }
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        int i9 = 1;
        while (it.hasNext()) {
            motionPathsArr[i9] = it.next();
            i9++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str7 : this.mEndMotionPath.attributes.keySet()) {
            if (this.mStartMotionPath.attributes.containsKey(str7)) {
                if (!hashSet2.contains("CUSTOM," + str7)) {
                    hashSet4.add(str7);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.mAttributeNames = strArr2;
        this.mAttributeInterpCount = new int[strArr2.length];
        int i10 = 0;
        while (true) {
            strArr = this.mAttributeNames;
            if (i10 >= strArr.length) {
                break;
            }
            String str8 = strArr[i10];
            this.mAttributeInterpCount[i10] = 0;
            int i11 = 0;
            while (true) {
                if (i11 >= size) {
                    break;
                }
                if (motionPathsArr[i11].attributes.containsKey(str8)) {
                    int[] iArr = this.mAttributeInterpCount;
                    iArr[i10] = motionPathsArr[i11].attributes.get(str8).noOfInterpValues() + iArr[i10];
                    break;
                }
                i11++;
            }
            i10++;
        }
        boolean z3 = motionPathsArr[0].mPathMotionArc != Key.UNSET;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i12 = 1; i12 < size; i12++) {
            motionPathsArr[i12].different(motionPathsArr[i12 - 1], zArr, this.mAttributeNames, z3);
        }
        int i13 = 0;
        for (int i14 = 1; i14 < length; i14++) {
            if (zArr[i14]) {
                i13++;
            }
        }
        int[] iArr2 = new int[i13];
        this.mInterpolateVariables = iArr2;
        this.mInterpolateData = new double[iArr2.length];
        this.mInterpolateVelocity = new double[iArr2.length];
        int i15 = 0;
        for (int i16 = 1; i16 < length; i16++) {
            if (zArr[i16]) {
                this.mInterpolateVariables[i15] = i16;
                i15++;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, size, this.mInterpolateVariables.length);
        double[] dArr2 = new double[size];
        for (int i17 = 0; i17 < size; i17++) {
            motionPathsArr[i17].fillStandard(dArr[i17], this.mInterpolateVariables);
            dArr2[i17] = motionPathsArr[i17].time;
        }
        int i18 = 0;
        while (true) {
            int[] iArr3 = this.mInterpolateVariables;
            if (i18 >= iArr3.length) {
                break;
            }
            if (iArr3[i18] < MotionPaths.names.length) {
                String strA = b.a(new StringBuilder(), MotionPaths.names[this.mInterpolateVariables[i18]], " [");
                for (int i19 = 0; i19 < size; i19++) {
                    StringBuilder sbA = f.a(strA);
                    sbA.append(dArr[i19][i18]);
                    strA = sbA.toString();
                }
            }
            i18++;
        }
        this.mSpline = new CurveFit[this.mAttributeNames.length + 1];
        int i20 = 0;
        while (true) {
            String[] strArr3 = this.mAttributeNames;
            if (i20 >= strArr3.length) {
                break;
            }
            String str9 = strArr3[i20];
            int i21 = 0;
            double[] dArr3 = null;
            int i22 = 0;
            double[][] dArr4 = null;
            while (i21 < size) {
                if (motionPathsArr[i21].hasCustomData(str9)) {
                    if (dArr4 == null) {
                        dArr3 = new double[size];
                        int[] iArr4 = new int[i8];
                        iArr4[1] = motionPathsArr[i21].getCustomDataCount(str9);
                        iArr4[c4] = size;
                        dArr4 = (double[][]) Array.newInstance((Class<?>) double.class, iArr4);
                    }
                    dArr3[i22] = motionPathsArr[i21].time;
                    motionPathsArr[i21].getCustomData(str9, dArr4[i22], 0);
                    i22++;
                }
                i21++;
                i8 = 2;
                c4 = 0;
            }
            i20++;
            this.mSpline[i20] = CurveFit.get(this.mCurveFitType, Arrays.copyOf(dArr3, i22), (double[][]) Arrays.copyOf(dArr4, i22));
            i8 = 2;
            c4 = 0;
        }
        this.mSpline[0] = CurveFit.get(this.mCurveFitType, dArr2, dArr);
        if (motionPathsArr[0].mPathMotionArc != Key.UNSET) {
            int[] iArr5 = new int[size];
            double[] dArr5 = new double[size];
            double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) double.class, size, 2);
            for (int i23 = 0; i23 < size; i23++) {
                iArr5[i23] = motionPathsArr[i23].mPathMotionArc;
                dArr5[i23] = motionPathsArr[i23].time;
                dArr6[i23][0] = motionPathsArr[i23].f140x;
                dArr6[i23][1] = motionPathsArr[i23].f141y;
            }
            this.mArcSpline = CurveFit.getArc(iArr5, dArr5, dArr6);
        }
        float preCycleDistance = Float.NaN;
        this.mCycleMap = new HashMap<>();
        if (this.mKeyList != null) {
            for (String str10 : hashSet3) {
                KeyCycleOscillator keyCycleOscillatorMakeSpline = KeyCycleOscillator.makeSpline(str10);
                if (keyCycleOscillatorMakeSpline != null) {
                    if (keyCycleOscillatorMakeSpline.variesByPath() && Float.isNaN(preCycleDistance)) {
                        preCycleDistance = getPreCycleDistance();
                    }
                    keyCycleOscillatorMakeSpline.setType(str10);
                    this.mCycleMap.put(str10, keyCycleOscillatorMakeSpline);
                }
            }
            for (Key key6 : this.mKeyList) {
                if (key6 instanceof KeyCycle) {
                    ((KeyCycle) key6).addCycleValues(this.mCycleMap);
                }
            }
            Iterator<KeyCycleOscillator> it2 = this.mCycleMap.values().iterator();
            while (it2.hasNext()) {
                it2.next().setup(preCycleDistance);
            }
        }
    }

    public String toString() {
        StringBuilder sbA = f.a(" start: x: ");
        sbA.append(this.mStartMotionPath.f140x);
        sbA.append(" y: ");
        sbA.append(this.mStartMotionPath.f141y);
        sbA.append(" end: x: ");
        sbA.append(this.mEndMotionPath.f140x);
        sbA.append(" y: ");
        sbA.append(this.mEndMotionPath.f141y);
        return sbA.toString();
    }
}
