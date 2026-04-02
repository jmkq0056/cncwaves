package androidx.transition;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.util.AttributeSet;
import androidx.appcompat.graphics.drawable.a;
import androidx.core.content.res.TypedArrayUtils;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
public class ArcMotion extends PathMotion {
    private static final float DEFAULT_MAX_ANGLE_DEGREES = 70.0f;
    private static final float DEFAULT_MAX_TANGENT = (float) Math.tan(Math.toRadians(35.0d));
    private static final float DEFAULT_MIN_ANGLE_DEGREES = 0.0f;
    private float mMaximumAngle;
    private float mMaximumTangent;
    private float mMinimumHorizontalAngle;
    private float mMinimumHorizontalTangent;
    private float mMinimumVerticalAngle;
    private float mMinimumVerticalTangent;

    public ArcMotion() {
        this.mMinimumHorizontalAngle = 0.0f;
        this.mMinimumVerticalAngle = 0.0f;
        this.mMaximumAngle = DEFAULT_MAX_ANGLE_DEGREES;
        this.mMinimumHorizontalTangent = 0.0f;
        this.mMinimumVerticalTangent = 0.0f;
        this.mMaximumTangent = DEFAULT_MAX_TANGENT;
    }

    private static float toTangent(float f4) {
        if (f4 < 0.0f || f4 > 90.0f) {
            throw new IllegalArgumentException("Arc must be between 0 and 90 degrees");
        }
        return (float) Math.tan(Math.toRadians(f4 / 2.0f));
    }

    public float getMaximumAngle() {
        return this.mMaximumAngle;
    }

    public float getMinimumHorizontalAngle() {
        return this.mMinimumHorizontalAngle;
    }

    public float getMinimumVerticalAngle() {
        return this.mMinimumVerticalAngle;
    }

    @Override // androidx.transition.PathMotion
    public Path getPath(float f4, float f5, float f6, float f7) {
        float fA;
        float fA2;
        float f8;
        Path path = new Path();
        path.moveTo(f4, f5);
        float f9 = f6 - f4;
        float f10 = f7 - f5;
        float f11 = (f10 * f10) + (f9 * f9);
        float f12 = (f4 + f6) / 2.0f;
        float f13 = (f5 + f7) / 2.0f;
        float f14 = 0.25f * f11;
        boolean z3 = f5 > f7;
        if (Math.abs(f9) < Math.abs(f10)) {
            float fAbs = Math.abs(f11 / (f10 * 2.0f));
            if (z3) {
                fA2 = fAbs + f7;
                fA = f6;
            } else {
                fA2 = fAbs + f5;
                fA = f4;
            }
            f8 = this.mMinimumVerticalTangent;
        } else {
            float f15 = f11 / (f9 * 2.0f);
            if (z3) {
                fA2 = f5;
                fA = f15 + f4;
            } else {
                fA = f6 - f15;
                fA2 = f7;
            }
            f8 = this.mMinimumHorizontalTangent;
        }
        float f16 = f14 * f8 * f8;
        float f17 = f12 - fA;
        float f18 = f13 - fA2;
        float f19 = (f18 * f18) + (f17 * f17);
        float f20 = this.mMaximumTangent;
        float f21 = f14 * f20 * f20;
        if (f19 >= f16) {
            f16 = f19 > f21 ? f21 : 0.0f;
        }
        if (f16 != 0.0f) {
            float fSqrt = (float) Math.sqrt(f16 / f19);
            fA = a.a(fA, f12, fSqrt, f12);
            fA2 = a.a(fA2, f13, fSqrt, f13);
        }
        path.cubicTo((f4 + fA) / 2.0f, (f5 + fA2) / 2.0f, (fA + f6) / 2.0f, (fA2 + f7) / 2.0f, f6, f7);
        return path;
    }

    public void setMaximumAngle(float f4) {
        this.mMaximumAngle = f4;
        this.mMaximumTangent = toTangent(f4);
    }

    public void setMinimumHorizontalAngle(float f4) {
        this.mMinimumHorizontalAngle = f4;
        this.mMinimumHorizontalTangent = toTangent(f4);
    }

    public void setMinimumVerticalAngle(float f4) {
        this.mMinimumVerticalAngle = f4;
        this.mMinimumVerticalTangent = toTangent(f4);
    }

    @SuppressLint({"RestrictedApi"})
    public ArcMotion(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMinimumHorizontalAngle = 0.0f;
        this.mMinimumVerticalAngle = 0.0f;
        this.mMaximumAngle = DEFAULT_MAX_ANGLE_DEGREES;
        this.mMinimumHorizontalTangent = 0.0f;
        this.mMinimumVerticalTangent = 0.0f;
        this.mMaximumTangent = DEFAULT_MAX_TANGENT;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.ARC_MOTION);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        setMinimumVerticalAngle(TypedArrayUtils.getNamedFloat(typedArrayObtainStyledAttributes, xmlPullParser, "minimumVerticalAngle", 1, 0.0f));
        setMinimumHorizontalAngle(TypedArrayUtils.getNamedFloat(typedArrayObtainStyledAttributes, xmlPullParser, "minimumHorizontalAngle", 0, 0.0f));
        setMaximumAngle(TypedArrayUtils.getNamedFloat(typedArrayObtainStyledAttributes, xmlPullParser, "maximumAngle", 2, DEFAULT_MAX_ANGLE_DEGREES));
        typedArrayObtainStyledAttributes.recycle();
    }
}
