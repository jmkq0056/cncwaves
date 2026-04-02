package com.arcsoft.face.enums;

/* JADX INFO: loaded from: classes.dex */
public enum DetectMode {
    ASF_DETECT_MODE_VIDEO(0),
    ASF_DETECT_MODE_IMAGE(4294967295L);

    private long mode;

    DetectMode(long j4) {
        this.mode = j4;
    }

    public long getMode() {
        return this.mode;
    }
}
