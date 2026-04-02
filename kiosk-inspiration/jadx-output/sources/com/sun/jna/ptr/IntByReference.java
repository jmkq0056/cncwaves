package com.sun.jna.ptr;

/* JADX INFO: loaded from: classes4.dex */
public class IntByReference extends ByReference {
    public IntByReference() {
        this(0);
    }

    public IntByReference(int i) {
        super(4);
        setValue(i);
    }

    public void setValue(int i) {
        getPointer().setInt(0L, i);
    }

    public int getValue() {
        return getPointer().getInt(0L);
    }
}
