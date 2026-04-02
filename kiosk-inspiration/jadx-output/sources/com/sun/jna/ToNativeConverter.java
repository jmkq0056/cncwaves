package com.sun.jna;

/* JADX INFO: loaded from: classes4.dex */
public interface ToNativeConverter {
    Class<?> nativeType();

    Object toNative(Object obj, ToNativeContext toNativeContext);
}
