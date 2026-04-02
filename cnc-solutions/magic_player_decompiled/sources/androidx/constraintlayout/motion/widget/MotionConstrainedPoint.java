package androidx.constraintlayout.motion.widget;

import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.motion.widget.SplineSet;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Objects;
import org.xbill.DNS.Flags;

/* JADX INFO: loaded from: classes.dex */
class MotionConstrainedPoint implements Comparable<MotionConstrainedPoint> {
    public static final int CARTESIAN = 2;
    public static final boolean DEBUG = false;
    public static final int PERPENDICULAR = 1;
    public static final String TAG = "MotionPaths";
    public static String[] names = {"position", "x", "y", "width", "height", "pathRotate"};
    private float height;
    private Easing mKeyFrameEasing;
    private float position;
    public int visibility;
    private float width;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f138x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f139y;
    private float alpha = 1.0f;
    public int mVisibilityMode = 0;
    private boolean applyElevation = false;
    private float elevation = 0.0f;
    private float rotation = 0.0f;
    private float rotationX = 0.0f;
    public float rotationY = 0.0f;
    private float scaleX = 1.0f;
    private float scaleY = 1.0f;
    private float mPivotX = Float.NaN;
    private float mPivotY = Float.NaN;
    private float translationX = 0.0f;
    private float translationY = 0.0f;
    private float translationZ = 0.0f;
    private int mDrawPath = 0;
    private float mPathRotate = Float.NaN;
    private float mProgress = Float.NaN;
    public LinkedHashMap<String, ConstraintAttribute> attributes = new LinkedHashMap<>();
    public int mMode = 0;
    public double[] mTempValue = new double[18];
    public double[] mTempDelta = new double[18];

    private boolean diff(float f4, float f5) {
        return (Float.isNaN(f4) || Float.isNaN(f5)) ? Float.isNaN(f4) != Float.isNaN(f5) : Math.abs(f4 - f5) > 1.0E-6f;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void addValues(HashMap<String, SplineSet> map, int i4) {
        for (String str : map.keySet()) {
            SplineSet splineSet = map.get(str);
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
                case -760884510:
                    if (str.equals(Key.PIVOT_X)) {
                        b4 = 8;
                    }
                    break;
                case -760884509:
                    if (str.equals(Key.PIVOT_Y)) {
                        b4 = 9;
                    }
                    break;
                case -40300674:
                    if (str.equals(Key.ROTATION)) {
                        b4 = 10;
                    }
                    break;
                case -4379043:
                    if (str.equals(Key.ELEVATION)) {
                        b4 = Flags.CD;
                    }
                    break;
                case 37232917:
                    if (str.equals(Key.TRANSITION_PATH_ROTATE)) {
                        b4 = 12;
                    }
                    break;
                case 92909918:
                    if (str.equals(Key.ALPHA)) {
                        b4 = 13;
                    }
                    break;
            }
            switch (b4) {
                case 0:
                    splineSet.setPoint(i4, Float.isNaN(this.rotationX) ? 0.0f : this.rotationX);
                    break;
                case 1:
                    splineSet.setPoint(i4, Float.isNaN(this.rotationY) ? 0.0f : this.rotationY);
                    break;
                case 2:
                    splineSet.setPoint(i4, Float.isNaN(this.translationX) ? 0.0f : this.translationX);
                    break;
                case 3:
                    splineSet.setPoint(i4, Float.isNaN(this.translationY) ? 0.0f : this.translationY);
                    break;
                case 4:
                    splineSet.setPoint(i4, Float.isNaN(this.translationZ) ? 0.0f : this.translationZ);
                    break;
                case 5:
                    splineSet.setPoint(i4, Float.isNaN(this.mProgress) ? 0.0f : this.mProgress);
                    break;
                case 6:
                    splineSet.setPoint(i4, Float.isNaN(this.scaleX) ? 1.0f : this.scaleX);
                    break;
                case 7:
                    splineSet.setPoint(i4, Float.isNaN(this.scaleY) ? 1.0f : this.scaleY);
                    break;
                case 8:
                    splineSet.setPoint(i4, Float.isNaN(this.mPivotX) ? 0.0f : this.mPivotX);
                    break;
                case 9:
                    splineSet.setPoint(i4, Float.isNaN(this.mPivotY) ? 0.0f : this.mPivotY);
                    break;
                case 10:
                    splineSet.setPoint(i4, Float.isNaN(this.rotation) ? 0.0f : this.rotation);
                    break;
                case 11:
                    splineSet.setPoint(i4, Float.isNaN(this.elevation) ? 0.0f : this.elevation);
                    break;
                case 12:
                    splineSet.setPoint(i4, Float.isNaN(this.mPathRotate) ? 0.0f : this.mPathRotate);
                    break;
                case 13:
                    splineSet.setPoint(i4, Float.isNaN(this.alpha) ? 1.0f : this.alpha);
                    break;
                default:
                    if (str.startsWith(Key.CUSTOM)) {
                        String str2 = str.split(",")[1];
                        if (this.attributes.containsKey(str2)) {
                            ConstraintAttribute constraintAttribute = this.attributes.get(str2);
                            if (splineSet instanceof SplineSet.CustomSet) {
                                ((SplineSet.CustomSet) splineSet).setPoint(i4, constraintAttribute);
                            } else {
                                Log.e("MotionPaths", str + " splineSet not a CustomSet frame = " + i4 + ", value" + constraintAttribute.getValueToInterpolate() + splineSet);
                            }
                        } else {
                            Log.e("MotionPaths", "UNKNOWN customName " + str2);
                        }
                    } else {
                        Log.e("MotionPaths", "UNKNOWN spline " + str);
                    }
                    break;
            }
        }
    }

    public void applyParameters(View view) {
        this.visibility = view.getVisibility();
        this.alpha = view.getVisibility() != 0 ? 0.0f : view.getAlpha();
        this.applyElevation = false;
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 21) {
            this.elevation = view.getElevation();
        }
        this.rotation = view.getRotation();
        this.rotationX = view.getRotationX();
        this.rotationY = view.getRotationY();
        this.scaleX = view.getScaleX();
        this.scaleY = view.getScaleY();
        this.mPivotX = view.getPivotX();
        this.mPivotY = view.getPivotY();
        this.translationX = view.getTranslationX();
        this.translationY = view.getTranslationY();
        if (i4 >= 21) {
            this.translationZ = view.getTranslationZ();
        }
    }

    public void different(MotionConstrainedPoint motionConstrainedPoint, HashSet<String> hashSet) {
        if (diff(this.alpha, motionConstrainedPoint.alpha)) {
            hashSet.add(Key.ALPHA);
        }
        if (diff(this.elevation, motionConstrainedPoint.elevation)) {
            hashSet.add(Key.ELEVATION);
        }
        int i4 = this.visibility;
        int i5 = motionConstrainedPoint.visibility;
        if (i4 != i5 && this.mVisibilityMode == 0 && (i4 == 0 || i5 == 0)) {
            hashSet.add(Key.ALPHA);
        }
        if (diff(this.rotation, motionConstrainedPoint.rotation)) {
            hashSet.add(Key.ROTATION);
        }
        if (!Float.isNaN(this.mPathRotate) || !Float.isNaN(motionConstrainedPoint.mPathRotate)) {
            hashSet.add(Key.TRANSITION_PATH_ROTATE);
        }
        if (!Float.isNaN(this.mProgress) || !Float.isNaN(motionConstrainedPoint.mProgress)) {
            hashSet.add("progress");
        }
        if (diff(this.rotationX, motionConstrainedPoint.rotationX)) {
            hashSet.add(Key.ROTATION_X);
        }
        if (diff(this.rotationY, motionConstrainedPoint.rotationY)) {
            hashSet.add(Key.ROTATION_Y);
        }
        if (diff(this.mPivotX, motionConstrainedPoint.mPivotX)) {
            hashSet.add(Key.PIVOT_X);
        }
        if (diff(this.mPivotY, motionConstrainedPoint.mPivotY)) {
            hashSet.add(Key.PIVOT_Y);
        }
        if (diff(this.scaleX, motionConstrainedPoint.scaleX)) {
            hashSet.add(Key.SCALE_X);
        }
        if (diff(this.scaleY, motionConstrainedPoint.scaleY)) {
            hashSet.add(Key.SCALE_Y);
        }
        if (diff(this.translationX, motionConstrainedPoint.translationX)) {
            hashSet.add(Key.TRANSLATION_X);
        }
        if (diff(this.translationY, motionConstrainedPoint.translationY)) {
            hashSet.add(Key.TRANSLATION_Y);
        }
        if (diff(this.translationZ, motionConstrainedPoint.translationZ)) {
            hashSet.add(Key.TRANSLATION_Z);
        }
    }

    public void fillStandard(double[] dArr, int[] iArr) {
        float[] fArr = {this.position, this.f138x, this.f139y, this.width, this.height, this.alpha, this.elevation, this.rotation, this.rotationX, this.rotationY, this.scaleX, this.scaleY, this.mPivotX, this.mPivotY, this.translationX, this.translationY, this.translationZ, this.mPathRotate};
        int i4 = 0;
        for (int i5 = 0; i5 < iArr.length; i5++) {
            if (iArr[i5] < 18) {
                dArr[i4] = fArr[iArr[i5]];
                i4++;
            }
        }
    }

    public int getCustomData(String str, double[] dArr, int i4) {
        ConstraintAttribute constraintAttribute = this.attributes.get(str);
        if (constraintAttribute.noOfInterpValues() == 1) {
            dArr[i4] = constraintAttribute.getValueToInterpolate();
            return 1;
        }
        int iNoOfInterpValues = constraintAttribute.noOfInterpValues();
        constraintAttribute.getValuesToInterpolate(new float[iNoOfInterpValues]);
        int i5 = 0;
        while (i5 < iNoOfInterpValues) {
            dArr[i4] = r1[i5];
            i5++;
            i4++;
        }
        return iNoOfInterpValues;
    }

    public int getCustomDataCount(String str) {
        return this.attributes.get(str).noOfInterpValues();
    }

    public boolean hasCustomData(String str) {
        return this.attributes.containsKey(str);
    }

    public void setBounds(float f4, float f5, float f6, float f7) {
        this.f138x = f4;
        this.f139y = f5;
        this.width = f6;
        this.height = f7;
    }

    public void setState(View view) {
        setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        applyParameters(view);
    }

    @Override // java.lang.Comparable
    public int compareTo(MotionConstrainedPoint motionConstrainedPoint) {
        return Float.compare(this.position, motionConstrainedPoint.position);
    }

    public void setState(ConstraintWidget constraintWidget, ConstraintSet constraintSet, int i4) {
        setBounds(constraintWidget.getX(), constraintWidget.getY(), constraintWidget.getWidth(), constraintWidget.getHeight());
        applyParameters(constraintSet.getParameters(i4));
    }

    public void applyParameters(ConstraintSet.Constraint constraint) {
        ConstraintSet.PropertySet propertySet = constraint.propertySet;
        int i4 = propertySet.mVisibilityMode;
        this.mVisibilityMode = i4;
        int i5 = propertySet.visibility;
        this.visibility = i5;
        this.alpha = (i5 == 0 || i4 != 0) ? propertySet.alpha : 0.0f;
        ConstraintSet.Transform transform = constraint.transform;
        this.applyElevation = transform.applyElevation;
        this.elevation = transform.elevation;
        this.rotation = transform.rotation;
        this.rotationX = transform.rotationX;
        this.rotationY = transform.rotationY;
        this.scaleX = transform.scaleX;
        this.scaleY = transform.scaleY;
        this.mPivotX = transform.transformPivotX;
        this.mPivotY = transform.transformPivotY;
        this.translationX = transform.translationX;
        this.translationY = transform.translationY;
        this.translationZ = transform.translationZ;
        this.mKeyFrameEasing = Easing.getInterpolator(constraint.motion.mTransitionEasing);
        ConstraintSet.Motion motion = constraint.motion;
        this.mPathRotate = motion.mPathRotate;
        this.mDrawPath = motion.mDrawPath;
        this.mProgress = constraint.propertySet.mProgress;
        for (String str : constraint.mCustomConstraints.keySet()) {
            ConstraintAttribute constraintAttribute = constraint.mCustomConstraints.get(str);
            if (constraintAttribute.getType() != ConstraintAttribute.AttributeType.STRING_TYPE) {
                this.attributes.put(str, constraintAttribute);
            }
        }
    }

    public void different(MotionConstrainedPoint motionConstrainedPoint, boolean[] zArr, String[] strArr) {
        zArr[0] = zArr[0] | diff(this.position, motionConstrainedPoint.position);
        zArr[1] = zArr[1] | diff(this.f138x, motionConstrainedPoint.f138x);
        zArr[2] = zArr[2] | diff(this.f139y, motionConstrainedPoint.f139y);
        zArr[3] = zArr[3] | diff(this.width, motionConstrainedPoint.width);
        zArr[4] = diff(this.height, motionConstrainedPoint.height) | zArr[4];
    }
}
