package com.sun.jna.ptr;

/* JADX INFO: loaded from: classes4.dex */
public class DoubleByReference extends ByReference {
    public DoubleByReference() {
        this(0.0d);
    }

    public DoubleByReference(double d) {
        super(8);
        setValue(d);
    }

    public void setValue(double d) {
        getPointer().setDouble(0L, d);
    }

    public double getValue() {
        return getPointer().getDouble(0L);
    }
}
