package com.google.zxing;

import com.google.zxing.common.detector.MathUtils;

/* JADX INFO: loaded from: classes2.dex */
public class ResultPoint {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final float f1387x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final float f1388y;

    public ResultPoint(float f4, float f5) {
        this.f1387x = f4;
        this.f1388y = f5;
    }

    private static float crossProductZ(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        float f4 = resultPoint2.f1387x;
        float f5 = resultPoint2.f1388y;
        return ((resultPoint.f1388y - f5) * (resultPoint3.f1387x - f4)) - ((resultPoint.f1387x - f4) * (resultPoint3.f1388y - f5));
    }

    public static float distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.distance(resultPoint.f1387x, resultPoint.f1388y, resultPoint2.f1387x, resultPoint2.f1388y);
    }

    public static void orderBestPatterns(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        float fDistance = distance(resultPointArr[0], resultPointArr[1]);
        float fDistance2 = distance(resultPointArr[1], resultPointArr[2]);
        float fDistance3 = distance(resultPointArr[0], resultPointArr[2]);
        if (fDistance2 >= fDistance && fDistance2 >= fDistance3) {
            resultPoint = resultPointArr[0];
            resultPoint2 = resultPointArr[1];
            resultPoint3 = resultPointArr[2];
        } else if (fDistance3 < fDistance2 || fDistance3 < fDistance) {
            resultPoint = resultPointArr[2];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[1];
        } else {
            resultPoint = resultPointArr[1];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[2];
        }
        if (crossProductZ(resultPoint2, resultPoint, resultPoint3) < 0.0f) {
            ResultPoint resultPoint4 = resultPoint3;
            resultPoint3 = resultPoint2;
            resultPoint2 = resultPoint4;
        }
        resultPointArr[0] = resultPoint2;
        resultPointArr[1] = resultPoint;
        resultPointArr[2] = resultPoint3;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ResultPoint) {
            ResultPoint resultPoint = (ResultPoint) obj;
            if (this.f1387x == resultPoint.f1387x && this.f1388y == resultPoint.f1388y) {
                return true;
            }
        }
        return false;
    }

    public final float getX() {
        return this.f1387x;
    }

    public final float getY() {
        return this.f1388y;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.f1388y) + (Float.floatToIntBits(this.f1387x) * 31);
    }

    public final String toString() {
        return "(" + this.f1387x + ',' + this.f1388y + ')';
    }
}
