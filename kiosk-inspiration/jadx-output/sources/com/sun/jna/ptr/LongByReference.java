package com.sun.jna.ptr;

/* JADX INFO: loaded from: classes4.dex */
public class LongByReference extends ByReference {
    public LongByReference() {
        this(0L);
    }

    public LongByReference(long j) {
        super(8);
        setValue(j);
    }

    public void setValue(long j) {
        getPointer().setLong(0L, j);
    }

    public long getValue() {
        return getPointer().getLong(0L);
    }
}
