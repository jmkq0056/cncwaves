package cn.huidu.lcd.core.util;

import a1.c;

/* JADX INFO: loaded from: classes.dex */
public class NativeIO {
    static {
        c.a(w0.c.f3777a, "hdcorejni");
    }

    public static native void close(int i4);

    public static native void getLocalMac(String str, byte[] bArr);

    public static native boolean initSerial(int i4, int i5, int i6, int i7, char c4);

    public static native int open(String str, int i4);

    public static native int read(int i4, byte[] bArr, int i5);

    public static native void signalSIGUSR2();

    public static native int write(int i4, byte[] bArr, int i5, int i6);
}
