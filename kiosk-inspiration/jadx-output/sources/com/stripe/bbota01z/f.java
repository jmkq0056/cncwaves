package com.stripe.bbota01z;

/* JADX INFO: loaded from: classes3.dex */
public enum f {
    DATA(0),
    EOF(1),
    EXT_SEG(2),
    START_SEG(3),
    EXT_LIN(4),
    START_LIN(5),
    BBPOS_DEFINE_CMAC(6),
    BBPOS_DEFINE_TARGET_DEVICE_CHECKING(7),
    UNKNOWN(255);

    int a;

    f(int i) {
        this.a = i;
    }

    public static f a(int i) {
        for (f fVar : values()) {
            if (fVar.a == i) {
                return fVar;
            }
        }
        return UNKNOWN;
    }
}
