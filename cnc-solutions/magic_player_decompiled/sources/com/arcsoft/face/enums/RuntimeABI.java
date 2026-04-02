package com.arcsoft.face.enums;

/* JADX INFO: loaded from: classes.dex */
public enum RuntimeABI {
    ANDROID_ABI_UNSUPPORTED(0),
    ANDROID_ABI_ARM64(1),
    ANDROID_ABI_ARM32(2);

    public int value;

    RuntimeABI(int i4) {
        this.value = i4;
    }
}
