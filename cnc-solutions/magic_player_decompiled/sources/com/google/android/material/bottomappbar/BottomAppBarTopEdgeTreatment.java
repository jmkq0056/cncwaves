package com.google.android.material.bottomappbar;

import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.graphics.drawable.a;
import com.google.android.material.shape.EdgeTreatment;
import com.google.android.material.shape.ShapePath;

/* JADX INFO: loaded from: classes.dex */
public class BottomAppBarTopEdgeTreatment extends EdgeTreatment implements Cloneable {
    private static final int ANGLE_LEFT = 180;
    private static final int ANGLE_UP = 270;
    private static final int ARC_HALF = 180;
    private static final int ARC_QUARTER = 90;
    private float cradleVerticalOffset;
    private float fabDiameter;
    private float fabMargin;
    private float horizontalOffset;
    private float roundedCornerRadius;

    public BottomAppBarTopEdgeTreatment(float f4, float f5, float f6) {
        this.fabMargin = f4;
        this.roundedCornerRadius = f5;
        setCradleVerticalOffset(f6);
        this.horizontalOffset = 0.0f;
    }

    public float getCradleVerticalOffset() {
        return this.cradleVerticalOffset;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f4, float f5, float f6, @NonNull ShapePath shapePath) {
        float f7 = this.fabDiameter;
        if (f7 == 0.0f) {
            shapePath.lineTo(f4, 0.0f);
            return;
        }
        float f8 = ((this.fabMargin * 2.0f) + f7) / 2.0f;
        float f9 = f6 * this.roundedCornerRadius;
        float f10 = f5 + this.horizontalOffset;
        float fA = a.a(1.0f, f6, f8, this.cradleVerticalOffset * f6);
        if (fA / f8 >= 1.0f) {
            shapePath.lineTo(f4, 0.0f);
            return;
        }
        float f11 = f8 + f9;
        float f12 = fA + f9;
        float fSqrt = (float) Math.sqrt((f11 * f11) - (f12 * f12));
        float f13 = f10 - fSqrt;
        float f14 = f10 + fSqrt;
        float degrees = (float) Math.toDegrees(Math.atan(fSqrt / f12));
        float f15 = 90.0f - degrees;
        shapePath.lineTo(f13, 0.0f);
        float f16 = f9 * 2.0f;
        shapePath.addArc(f13 - f9, 0.0f, f13 + f9, f16, 270.0f, degrees);
        shapePath.addArc(f10 - f8, (-f8) - fA, f10 + f8, f8 - fA, 180.0f - f15, (f15 * 2.0f) - 180.0f);
        shapePath.addArc(f14 - f9, 0.0f, f14 + f9, f16, 270.0f - degrees, degrees);
        shapePath.lineTo(f4, 0.0f);
    }

    public float getFabCradleMargin() {
        return this.fabMargin;
    }

    public float getFabCradleRoundedCornerRadius() {
        return this.roundedCornerRadius;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float getFabDiameter() {
        return this.fabDiameter;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float getHorizontalOffset() {
        return this.horizontalOffset;
    }

    public void setCradleVerticalOffset(@FloatRange(from = 0.0d) float f4) {
        if (f4 < 0.0f) {
            throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
        }
        this.cradleVerticalOffset = f4;
    }

    public void setFabCradleMargin(float f4) {
        this.fabMargin = f4;
    }

    public void setFabCradleRoundedCornerRadius(float f4) {
        this.roundedCornerRadius = f4;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setFabDiameter(float f4) {
        this.fabDiameter = f4;
    }

    public void setHorizontalOffset(float f4) {
        this.horizontalOffset = f4;
    }
}
