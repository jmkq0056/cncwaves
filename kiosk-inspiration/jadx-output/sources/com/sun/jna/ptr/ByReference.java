package com.sun.jna.ptr;

import com.sun.jna.Memory;
import com.sun.jna.PointerType;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ByReference extends PointerType {
    protected ByReference(int i) {
        setPointer(new Memory(i));
    }
}
