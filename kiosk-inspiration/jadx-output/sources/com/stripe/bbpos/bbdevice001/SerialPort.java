package com.stripe.bbpos.bbdevice001;

import android.util.Log;
import com.stripe.bbpos.bbdevice001.aaa000zz;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class SerialPort {
    private FileInputStream aaa000;
    private FileOutputStream aaa001;
    public FileDescriptor mFd;

    static {
        try {
            System.loadLibrary("SmartPOS_SerialPort-1.2.0");
        } catch (UnsatisfiedLinkError unused) {
        }
    }

    public SerialPort(File file, int i, int i2) throws IOException, SecurityException {
        if ((aaa000zz.aaa000() == aaa000zz.EnumC0046aaa000zz.WisePOS1 || aaa000zz.aaa000() == aaa000zz.EnumC0046aaa000zz.WisePOS1_1 || aaa000zz.aaa000() == aaa000zz.EnumC0046aaa000zz.WisePOSPlus) && !(file.canRead() && file.canWrite())) {
            throw new SecurityException();
        }
        FileDescriptor fileDescriptorOpen = open(file.getAbsolutePath(), i, i2);
        this.mFd = fileDescriptorOpen;
        if (fileDescriptorOpen == null) {
            Log.e("SerialPort", "native open returns null");
            throw new IOException();
        }
        this.aaa000 = new FileInputStream(this.mFd);
        this.aaa001 = new FileOutputStream(this.mFd);
    }

    private static native FileDescriptor open(String str, int i, int i2);

    public native void close();

    public InputStream getInputStream() {
        return this.aaa000;
    }

    public OutputStream getOutputStream() {
        return this.aaa001;
    }
}
