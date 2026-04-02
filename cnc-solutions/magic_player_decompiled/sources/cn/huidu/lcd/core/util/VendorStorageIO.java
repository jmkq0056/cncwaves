package cn.huidu.lcd.core.util;

import a1.c;

/* JADX INFO: loaded from: classes.dex */
public class VendorStorageIO {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f380a = 0;

    static {
        c.a(w0.c.f3777a, "hdcorejni");
        a.a("/dev/vendor_storage");
    }

    public static native boolean read(int i4, byte[] bArr);

    public static native boolean write(int i4, byte[] bArr);
}
