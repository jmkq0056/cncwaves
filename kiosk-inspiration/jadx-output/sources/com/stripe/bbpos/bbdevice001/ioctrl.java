package com.stripe.bbpos.bbdevice001;

/* JADX INFO: loaded from: classes3.dex */
public class ioctrl {
    static {
        try {
            System.loadLibrary("SmartPOS-1.2.0");
        } catch (UnsatisfiedLinkError unused) {
        }
    }

    public native int IsAW9523Valid();

    public native int IsSTM8Valid();

    public native int MTgpioWrite(int i, int i2);

    public native int P1000BootOnOff(int i);

    public native int P1000PowerOnOff(int i);

    public native String SysfsRead(String str);

    public native int SysfsWrite(String str, int i);
}
