package com.google.zxing.qrcode.detector;

import com.google.zxing.ResultPoint;

/* JADX INFO: loaded from: classes2.dex */
public final class AlignmentPattern extends ResultPoint {
    private final float estimatedModuleSize;

    public AlignmentPattern(float f4, float f5, float f6) {
        super(f4, f5);
        this.estimatedModuleSize = f6;
    }

    public boolean aboutEquals(float f4, float f5, float f6) {
        if (Math.abs(f5 - getY()) > f4 || Math.abs(f6 - getX()) > f4) {
            return false;
        }
        float fAbs = Math.abs(f4 - this.estimatedModuleSize);
        return fAbs <= 1.0f || fAbs <= this.estimatedModuleSize;
    }

    public AlignmentPattern combineEstimate(float f4, float f5, float f6) {
        return new AlignmentPattern((getX() + f5) / 2.0f, (getY() + f4) / 2.0f, (this.estimatedModuleSize + f6) / 2.0f);
    }
}
