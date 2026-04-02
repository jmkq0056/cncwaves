package com.stripe.bbpos.bbdevice;

import android.os.Handler;
import android.os.Looper;
import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.bbpos.bbdevice001.SerialPort;
import com.stripe.bbpos.bbdevice001.ioctrl;
import com.sun.jna.platform.win32.WinBase;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import org.apache.http.protocol.HTTP;

/* JADX INFO: loaded from: classes3.dex */
final class ccc028zz {
    private SerialPort aaa000;
    private InputStream aaa001;
    private aaa001zz aaa002;
    private Handler aaa003 = new Handler(Looper.getMainLooper());
    private ccc029zz aaa004;
    private int aaa005;
    private ioctrl aaa006;
    private String aaa007;
    String aaa008;

    private class aaa001zz extends Thread {
        private aaa001zz() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (!isInterrupted()) {
                try {
                    byte[] bArr = new byte[64];
                    if (ccc028zz.this.aaa001 == null) {
                        return;
                    }
                    int i = ccc028zz.this.aaa001.read(bArr);
                    if (i > 0) {
                        ccc028zz.this.aaa000(bArr, i);
                    }
                } catch (IOException unused) {
                    return;
                }
            }
        }
    }

    ccc028zz(ccc029zz ccc029zzVar) {
        this.aaa008 = "";
        this.aaa004 = ccc029zzVar;
        aaa000(0);
        this.aaa006 = new ioctrl();
        this.aaa007 = "";
        this.aaa008 = aaa010();
    }

    private void aaa001(String str) {
    }

    private void aaa011() {
        aaa001zz aaa001zzVar = new aaa001zz();
        this.aaa002 = aaa001zzVar;
        aaa001zzVar.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa012() {
        this.aaa004.aaa000();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa013() {
        this.aaa004.aaa001();
    }

    void aaa001(int i) {
        if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_TOUCH) {
            this.aaa006.SysfsWrite("/proc/sp_i2c_swap_node", i);
        } else if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_SML) {
            this.aaa006.SysfsWrite("/proc/sp_i2c_swap_node", i);
        }
    }

    boolean aaa002() {
        if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS2) {
            this.aaa006.SysfsWrite("/dev/stm8_io", 0);
            this.aaa006.SysfsWrite("/dev/stm8_io", 2);
            this.aaa006.SysfsWrite("/dev/stm8_io", 8);
            return true;
        }
        if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS1_1) {
            this.aaa006.SysfsWrite("/dev/stm8_io", 8);
            this.aaa006.SysfsWrite("/dev/stm8_io", 0);
            this.aaa006.SysfsWrite("/dev/stm8_io", 2);
            return true;
        }
        if (BBDeviceController.aaa022() != BBDeviceController.aaa006zz.WisePOS_SEVEN) {
            return this.aaa006.MTgpioWrite(14, 0) != -1;
        }
        this.aaa006.SysfsWrite("/dev/stm8_io", 8);
        this.aaa006.SysfsWrite("/dev/stm8_io", 0);
        this.aaa006.SysfsWrite("/dev/stm8_io", 2);
        return true;
    }

    boolean aaa003() {
        if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS2) {
            if (this.aaa008.equalsIgnoreCase("")) {
                this.aaa006.SysfsWrite("/dev/stm8_io", 0);
                try {
                    Thread.sleep(500L);
                } catch (Exception unused) {
                }
            }
            this.aaa006.SysfsWrite("/dev/stm8_io", 5);
            this.aaa006.SysfsWrite("/dev/stm8_io", 1);
            this.aaa006.SysfsWrite("/dev/stm8_io", 3);
            this.aaa006.SysfsWrite("/dev/stm8_io", 9);
            this.aaa006.SysfsWrite("/dev/stm8_io", 13);
            this.aaa006.SysfsWrite("/dev/stm8_io", 12);
            return true;
        }
        if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS1_1) {
            this.aaa006.SysfsWrite("/dev/stm8_io", 8);
            this.aaa006.SysfsWrite("/dev/stm8_io", 0);
            this.aaa006.SysfsWrite("/dev/stm8_io", 1);
            this.aaa006.SysfsWrite("/dev/stm8_io", 9);
            this.aaa006.SysfsWrite("/dev/stm8_io", 12);
            this.aaa006.SysfsWrite("/dev/stm8_io", 13);
            this.aaa006.SysfsWrite("/dev/stm8_io", 12);
            return true;
        }
        if (BBDeviceController.aaa022() != BBDeviceController.aaa006zz.WisePOS_SEVEN) {
            return this.aaa006.MTgpioWrite(14, 1) != -1;
        }
        this.aaa006.SysfsWrite("/dev/stm8_io", 8);
        this.aaa006.SysfsWrite("/dev/stm8_io", 0);
        this.aaa006.SysfsWrite("/dev/stm8_io", 1);
        this.aaa006.SysfsWrite("/dev/stm8_io", 9);
        this.aaa006.SysfsWrite("/dev/stm8_io", 12);
        this.aaa006.SysfsWrite("/dev/stm8_io", 13);
        this.aaa006.SysfsWrite("/dev/stm8_io", 12);
        return true;
    }

    boolean aaa004() {
        if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS2) {
            this.aaa006.SysfsWrite("/dev/stm8_io", 5);
            aaa002();
            return true;
        }
        if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS1_1) {
            this.aaa006.SysfsWrite("/dev/stm8_io", 14);
            this.aaa006.SysfsWrite("/dev/stm8_io", 2);
            return true;
        }
        if (BBDeviceController.aaa022() != BBDeviceController.aaa006zz.WisePOS_SEVEN) {
            this.aaa006.SysfsWrite("/sys/class/misc/stm8/light", 0);
            return this.aaa006.MTgpioWrite(21, 0) != -1;
        }
        this.aaa006.SysfsWrite("/dev/stm8_io", 14);
        this.aaa006.SysfsWrite("/dev/stm8_io", 2);
        return true;
    }

    boolean aaa005() {
        if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS2) {
            aaa003();
            this.aaa006.SysfsWrite("/dev/stm8_io", 5);
            this.aaa006.SysfsWrite("/dev/stm8_io", 4);
            return true;
        }
        if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS1_1) {
            this.aaa006.SysfsWrite("/dev/stm8_io", 15);
            this.aaa006.SysfsWrite("/dev/stm8_io", 6);
            this.aaa006.SysfsWrite("/dev/stm8_io", 7);
            this.aaa006.SysfsWrite("/dev/stm8_io", 5);
            this.aaa006.SysfsWrite("/dev/stm8_io", 4);
            return true;
        }
        if (BBDeviceController.aaa022() != BBDeviceController.aaa006zz.WisePOS_SEVEN) {
            return this.aaa006.MTgpioWrite(21, 1) != -1;
        }
        this.aaa006.SysfsWrite("/dev/stm8_io", 15);
        this.aaa006.SysfsWrite("/dev/stm8_io", 6);
        this.aaa006.SysfsWrite("/dev/stm8_io", 7);
        this.aaa006.SysfsWrite("/dev/stm8_io", 5);
        this.aaa006.SysfsWrite("/dev/stm8_io", 4);
        return true;
    }

    boolean aaa006() {
        if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS2) {
            this.aaa006.SysfsWrite("/dev/stm8_io", 14);
            try {
                Thread.sleep(30L);
            } catch (InterruptedException unused) {
            }
            return true;
        }
        if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS1_1) {
            this.aaa006.SysfsWrite("/dev/stm8_io", 16);
            try {
                Thread.sleep(30L);
            } catch (InterruptedException unused2) {
            }
            return true;
        }
        if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_SEVEN) {
            this.aaa006.SysfsWrite("/dev/stm8_io", 16);
            try {
                Thread.sleep(30L);
            } catch (InterruptedException unused3) {
            }
            return true;
        }
        boolean zAaa008 = aaa008();
        try {
            Thread.sleep(30L);
        } catch (InterruptedException unused4) {
        }
        return zAaa008;
    }

    boolean aaa007() {
        return this.aaa006.SysfsWrite("/sys/class/aw9523/mtk_status/value", 1) == 0;
    }

    boolean aaa008() {
        return this.aaa006.SysfsWrite("/sys/class/aw9523/mtk_status/value", 0) == 0;
    }

    boolean aaa009() {
        this.aaa007 = "";
        if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS2) {
            this.aaa006.SysfsWrite("/dev/stm8_io", 5);
            this.aaa006.SysfsWrite("/dev/stm8_io", 1);
            this.aaa006.SysfsWrite("/dev/stm8_io", 3);
            this.aaa006.SysfsWrite("/dev/stm8_io", 9);
            this.aaa006.SysfsWrite("/dev/stm8_io", 5);
            this.aaa006.SysfsWrite("/dev/stm8_io", 4);
            return true;
        }
        if (BBDeviceController.aaa022() != BBDeviceController.aaa006zz.WisePOS1_1) {
            this.aaa006.SysfsWrite("/sys/class/misc/stm8/light", 0);
            return this.aaa006.SysfsWrite("/sys/class/misc/stm8/light", 1) != -1;
        }
        this.aaa006.SysfsWrite("/dev/stm8_io", 15);
        this.aaa006.SysfsWrite("/dev/stm8_io", 6);
        this.aaa006.SysfsWrite("/dev/stm8_io", 7);
        this.aaa006.SysfsWrite("/dev/stm8_io", 5);
        this.aaa006.SysfsWrite("/dev/stm8_io", 4);
        return true;
    }

    void aaa014() {
        this.aaa003.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ccc028zz$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa012();
            }
        });
    }

    void aaa015() {
        this.aaa003.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ccc028zz$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa013();
            }
        });
    }

    void aaa016() {
        aaa001("connect");
        aaa001("STM8 loaded before");
        if (this.aaa000 == null) {
            try {
                if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS2) {
                    this.aaa000 = new SerialPort(new File("/dev/ttyMT3"), WinBase.CBR_38400, 0);
                } else if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS1_1) {
                    this.aaa000 = new SerialPort(new File("/dev/ttyMT0"), WinBase.CBR_38400, 0);
                } else {
                    this.aaa000 = new SerialPort(new File("/dev/ttyST0"), WinBase.CBR_38400, 0);
                }
                this.aaa001 = this.aaa000.getInputStream();
                aaa000(1);
                aaa011();
                this.aaa007 = "";
                aaa014();
            } catch (IOException | SecurityException unused) {
            }
        }
    }

    synchronized void aaa017() {
        if (this.aaa005 == 0) {
            return;
        }
        SerialPort serialPort = this.aaa000;
        if (serialPort != null) {
            serialPort.close();
            this.aaa000 = null;
        }
        aaa001zz aaa001zzVar = this.aaa002;
        if (aaa001zzVar != null) {
            try {
                aaa001zzVar.interrupt();
            } catch (Exception unused) {
            }
            this.aaa002 = null;
        }
        aaa000(0);
        aaa015();
    }

    void aaa018() {
        aaa017();
    }

    void aaa000(ccc029zz ccc029zzVar) {
        this.aaa004 = ccc029zzVar;
    }

    private synchronized void aaa000(int i) {
        this.aaa005 = i;
    }

    private static String aaa010() {
        try {
            return new BufferedReader(new FileReader("/sys/stm8/bbpos_stm8")).readLine();
        } catch (IOException unused) {
            return "";
        }
    }

    boolean aaa000() {
        if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS2) {
            this.aaa006.SysfsWrite("/dev/stm8_io", 15);
            return true;
        }
        if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS1_1) {
            this.aaa006.SysfsWrite("/dev/stm8_io", 17);
            return true;
        }
        if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_SEVEN) {
            this.aaa006.SysfsWrite("/dev/stm8_io", 17);
            return true;
        }
        return aaa007();
    }

    int aaa001() {
        if (BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS2 || BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS1_1 || BBDeviceController.aaa022() == BBDeviceController.aaa006zz.WisePOS_SEVEN) {
            return 1;
        }
        return this.aaa006.IsSTM8Valid();
    }

    void aaa000(byte[] bArr, int i) {
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        try {
            String str = new String(bArr2, HTTP.UTF_8);
            if (str.endsWith("\r\n")) {
                String str2 = this.aaa007 + str.substring(0, str.length() - 2);
                this.aaa007 = str2;
                aaa002(str2);
                return;
            }
            if (str.endsWith("\n")) {
                String str3 = this.aaa007 + str.substring(0, str.length() - 1);
                this.aaa007 = str3;
                aaa002(str3);
                return;
            }
            this.aaa007 += str;
        } catch (UnsupportedEncodingException | Exception unused) {
        }
    }

    void aaa002(final String str) {
        this.aaa003.post(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ccc028zz$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa000(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa000(String str) {
        this.aaa004.onReturnBarcode(str);
    }
}
