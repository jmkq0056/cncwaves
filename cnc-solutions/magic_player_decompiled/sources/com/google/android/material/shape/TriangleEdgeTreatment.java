package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public class TriangleEdgeTreatment extends EdgeTreatment {
    private final boolean inside;
    private final float size;

    public TriangleEdgeTreatment(float f4, boolean z3) {
        this.size = f4;
        this.inside = z3;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f4, float f5, float f6, @NonNull ShapePath shapePath) {
        shapePath.lineTo(f5 - (this.size * f6), 0.0f);
        shapePath.lineTo(f5, (this.inside ? this.size : -this.size) * f6);
        shapePath.lineTo((this.size * f6) + f5, 0.0f);
        shapePath.lineTo(f4, 0.0f);
    }
}
