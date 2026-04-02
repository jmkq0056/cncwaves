package com.sun.jna.ptr;

/* JADX INFO: loaded from: classes4.dex */
public class ShortByReference extends ByReference {
    public ShortByReference() {
        this((short) 0);
    }

    public ShortByReference(short s) {
        super(2);
        setValue(s);
    }

    public void setValue(short s) {
        getPointer().setShort(0L, s);
    }

    public short getValue() {
        return getPointer().getShort(0L);
    }
}
