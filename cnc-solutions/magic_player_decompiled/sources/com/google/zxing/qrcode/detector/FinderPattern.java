package com.google.zxing.qrcode.detector;

import com.google.zxing.ResultPoint;

/* JADX INFO: loaded from: classes2.dex */
public final class FinderPattern extends ResultPoint {
    private final int count;
    private final float estimatedModuleSize;

    public FinderPattern(float f4, float f5, float f6) {
        this(f4, f5, f6, 1);
    }

    public boolean aboutEquals(float f4, float f5, float f6) {
        if (Math.abs(f5 - getY()) > f4 || Math.abs(f6 - getX()) > f4) {
            return false;
        }
        float fAbs = Math.abs(f4 - this.estimatedModuleSize);
        return fAbs <= 1.0f || fAbs <= this.estimatedModuleSize;
    }

    public FinderPattern combineEstimate(float f4, float f5, float f6) {
        int i4 = this.count;
        int i5 = i4 + 1;
        float x3 = (getX() * i4) + f5;
        float f7 = i5;
        return new FinderPattern(x3 / f7, ((getY() * this.count) + f4) / f7, ((this.count * this.estimatedModuleSize) + f6) / f7, i5);
    }

    public int getCount() {
        return this.count;
    }

    public float getEstimatedModuleSize() {
        return this.estimatedModuleSize;
    }

    private FinderPattern(float f4, float f5, float f6, int i4) {
        super(f4, f5);
        this.estimatedModuleSize = f6;
        this.count = i4;
    }
}
