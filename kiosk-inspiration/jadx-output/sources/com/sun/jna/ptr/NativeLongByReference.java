package com.sun.jna.ptr;

import com.sun.jna.NativeLong;

/* JADX INFO: loaded from: classes4.dex */
public class NativeLongByReference extends ByReference {
    public NativeLongByReference() {
        this(new NativeLong(0L));
    }

    public NativeLongByReference(NativeLong nativeLong) {
        super(NativeLong.SIZE);
        setValue(nativeLong);
    }

    public void setValue(NativeLong nativeLong) {
        getPointer().setNativeLong(0L, nativeLong);
    }

    public NativeLong getValue() {
        return getPointer().getNativeLong(0L);
    }
}
