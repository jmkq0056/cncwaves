package com.arcsoft.imageutil;

import androidx.constraintlayout.solver.a;
import com.arcsoft.face.FaceEngine;

/* JADX INFO: loaded from: classes.dex */
public enum ArcSoftImageFormat {
    BGR24(513),
    NV21(FaceEngine.CP_PAF_NV21),
    NV12(2049),
    I420(1537),
    YV12(1541),
    YUYV(1281),
    GRAY(FaceEngine.CP_PAF_GRAY);

    public int format;

    ArcSoftImageFormat(int i4) {
        this.format = i4;
    }

    public static ArcSoftImageFormat valueOf(int i4) {
        for (ArcSoftImageFormat arcSoftImageFormat : values()) {
            if (arcSoftImageFormat.format == i4) {
                return arcSoftImageFormat;
            }
        }
        throw new IllegalArgumentException(a.a("formatValue '", i4, "' does not match any format"));
    }
}
