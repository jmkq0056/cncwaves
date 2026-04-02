package com.google.android.material.transition.platform;

import android.graphics.Path;
import android.graphics.PointF;
import android.transition.PathMotion;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes2.dex */
@RequiresApi(21)
public final class MaterialArcMotion extends PathMotion {
    private static PointF getControlPoint(float f4, float f5, float f6, float f7) {
        return f5 > f7 ? new PointF(f6, f5) : new PointF(f4, f7);
    }

    @Override // android.transition.PathMotion
    @NonNull
    public Path getPath(float f4, float f5, float f6, float f7) {
        Path path = new Path();
        path.moveTo(f4, f5);
        PointF controlPoint = getControlPoint(f4, f5, f6, f7);
        path.quadTo(controlPoint.x, controlPoint.y, f6, f7);
        return path;
    }
}
