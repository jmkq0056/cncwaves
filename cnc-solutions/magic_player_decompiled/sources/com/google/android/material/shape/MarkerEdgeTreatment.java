package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public final class MarkerEdgeTreatment extends EdgeTreatment {
    private final float radius;

    public MarkerEdgeTreatment(float f4) {
        this.radius = f4 - 0.001f;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public boolean forceIntersection() {
        return true;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f4, float f5, float f6, @NonNull ShapePath shapePath) {
        double d4 = this.radius;
        double dSqrt = Math.sqrt(2.0d);
        Double.isNaN(d4);
        float f7 = (float) ((dSqrt * d4) / 2.0d);
        float fSqrt = (float) Math.sqrt(Math.pow(this.radius, 2.0d) - Math.pow(f7, 2.0d));
        double d5 = this.radius;
        double dSqrt2 = Math.sqrt(2.0d);
        Double.isNaN(d5);
        double d6 = dSqrt2 * d5;
        double d7 = this.radius;
        Double.isNaN(d7);
        shapePath.reset(f5 - f7, ((float) (-(d6 - d7))) + fSqrt);
        double d8 = this.radius;
        double dSqrt3 = Math.sqrt(2.0d);
        Double.isNaN(d8);
        double d9 = dSqrt3 * d8;
        double d10 = this.radius;
        Double.isNaN(d10);
        shapePath.lineTo(f5, (float) (-(d9 - d10)));
        double d11 = this.radius;
        double dSqrt4 = Math.sqrt(2.0d);
        Double.isNaN(d11);
        double d12 = dSqrt4 * d11;
        double d13 = this.radius;
        Double.isNaN(d13);
        shapePath.lineTo(f5 + f7, ((float) (-(d12 - d13))) + fSqrt);
    }
}
