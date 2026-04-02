package com.sun.jna.ptr;

/* JADX INFO: loaded from: classes4.dex */
public class ByteByReference extends ByReference {
    public ByteByReference() {
        this((byte) 0);
    }

    public ByteByReference(byte b) {
        super(1);
        setValue(b);
    }

    public void setValue(byte b) {
        getPointer().setByte(0L, b);
    }

    public byte getValue() {
        return getPointer().getByte(0L);
    }
}
