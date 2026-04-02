package com.sun.jna.ptr;

/* JADX INFO: loaded from: classes4.dex */
public class FloatByReference extends ByReference {
    public FloatByReference() {
        this(0.0f);
    }

    public FloatByReference(float f) {
        super(4);
        setValue(f);
    }

    public void setValue(float f) {
        getPointer().setFloat(0L, f);
    }

    public float getValue() {
        return getPointer().getFloat(0L);
    }
}
