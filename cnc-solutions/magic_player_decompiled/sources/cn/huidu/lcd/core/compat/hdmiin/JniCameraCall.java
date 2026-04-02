package cn.huidu.lcd.core.compat.hdmiin;

/* JADX INFO: loaded from: classes.dex */
public class JniCameraCall {
    public static native void closeDevice();

    public static native int[] getFormat();

    public static native int getState();

    public static native void openDevice();
}
