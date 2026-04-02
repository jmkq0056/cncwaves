package androidx.constraintlayout.motion.utils;

import androidx.constraintlayout.motion.widget.KeyCycleOscillator;
import androidx.constraintlayout.motion.widget.SplineSet;

/* JADX INFO: loaded from: classes.dex */
public class VelocityMatrix {
    private static String TAG = "VelocityMatrix";
    public float mDRotate;
    public float mDScaleX;
    public float mDScaleY;
    public float mDTranslateX;
    public float mDTranslateY;
    public float mRotate;

    public void applyTransform(float f4, float f5, int i4, int i5, float[] fArr) {
        float f6 = fArr[0];
        float f7 = fArr[1];
        float f8 = (f4 - 0.5f) * 2.0f;
        float f9 = (f5 - 0.5f) * 2.0f;
        float f10 = f6 + this.mDTranslateX;
        float f11 = f7 + this.mDTranslateY;
        float f12 = (this.mDScaleX * f8) + f10;
        float f13 = (this.mDScaleY * f9) + f11;
        float radians = (float) Math.toRadians(this.mRotate);
        float radians2 = (float) Math.toRadians(this.mDRotate);
        double d4 = (-i4) * f8;
        double d5 = radians;
        double dSin = Math.sin(d5);
        Double.isNaN(d4);
        double d6 = dSin * d4;
        double d7 = i5 * f9;
        double dCos = Math.cos(d5);
        Double.isNaN(d7);
        float f14 = (((float) (d6 - (dCos * d7))) * radians2) + f12;
        double d8 = i4 * f8;
        double dCos2 = Math.cos(d5);
        Double.isNaN(d8);
        double d9 = dCos2 * d8;
        double dSin2 = Math.sin(d5);
        Double.isNaN(d7);
        fArr[0] = f14;
        fArr[1] = (radians2 * ((float) (d9 - (dSin2 * d7)))) + f13;
    }

    public void clear() {
        this.mDRotate = 0.0f;
        this.mDTranslateY = 0.0f;
        this.mDTranslateX = 0.0f;
        this.mDScaleY = 0.0f;
        this.mDScaleX = 0.0f;
    }

    public void setRotationVelocity(SplineSet splineSet, float f4) {
        if (splineSet != null) {
            this.mDRotate = splineSet.getSlope(f4);
            this.mRotate = splineSet.get(f4);
        }
    }

    public void setScaleVelocity(SplineSet splineSet, SplineSet splineSet2, float f4) {
        if (splineSet != null) {
            this.mDScaleX = splineSet.getSlope(f4);
        }
        if (splineSet2 != null) {
            this.mDScaleY = splineSet2.getSlope(f4);
        }
    }

    public void setTranslationVelocity(SplineSet splineSet, SplineSet splineSet2, float f4) {
        if (splineSet != null) {
            this.mDTranslateX = splineSet.getSlope(f4);
        }
        if (splineSet2 != null) {
            this.mDTranslateY = splineSet2.getSlope(f4);
        }
    }

    public void setRotationVelocity(KeyCycleOscillator keyCycleOscillator, float f4) {
        if (keyCycleOscillator != null) {
            this.mDRotate = keyCycleOscillator.getSlope(f4);
        }
    }

    public void setScaleVelocity(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f4) {
        if (keyCycleOscillator == null && keyCycleOscillator2 == null) {
            return;
        }
        if (keyCycleOscillator == null) {
            this.mDScaleX = keyCycleOscillator.getSlope(f4);
        }
        if (keyCycleOscillator2 == null) {
            this.mDScaleY = keyCycleOscillator2.getSlope(f4);
        }
    }

    public void setTranslationVelocity(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f4) {
        if (keyCycleOscillator != null) {
            this.mDTranslateX = keyCycleOscillator.getSlope(f4);
        }
        if (keyCycleOscillator2 != null) {
            this.mDTranslateY = keyCycleOscillator2.getSlope(f4);
        }
    }
}
