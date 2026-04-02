package com.arcsoft.face.enums;

/* JADX INFO: loaded from: classes.dex */
public enum DetectFaceOrientPriority {
    ASF_OP_0_ONLY(1),
    ASF_OP_90_ONLY(2),
    ASF_OP_270_ONLY(3),
    ASF_OP_180_ONLY(4),
    ASF_OP_ALL_OUT(5);

    private int priority;

    DetectFaceOrientPriority(int i4) {
        this.priority = i4;
    }

    public int getPriority() {
        return this.priority;
    }
}
