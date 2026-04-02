package com.stripe.bbpos.bbdevice;

import android.os.Process;
import com.stripe.bbpos.bbdevice.ccc066zz;
import com.sun.jna.platform.win32.WinError;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
final class ccc014zz extends ccc011zz {
    private aaa009zz aaa000;
    private InputStream aaa001;
    private boolean aaa002 = false;
    private int aaa003 = WinError.ERROR_CALL_NOT_IMPLEMENTED;

    ccc014zz(aaa009zz aaa009zzVar, InputStream inputStream) {
        this.aaa000 = aaa009zzVar;
        this.aaa001 = inputStream;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa002() {
        Process.setThreadPriority(-16);
        while (!this.aaa002) {
            try {
                int iAvailable = this.aaa001.available();
                if (iAvailable > 0) {
                    int iMin = Math.min(iAvailable, WinError.ERROR_ENCRYPTION_FAILED);
                    byte[] bArr = new byte[iMin];
                    this.aaa001.read(bArr);
                    this.aaa003 = WinError.ERROR_CALL_NOT_IMPLEMENTED;
                    for (int i = 0; i < iMin; i += 200) {
                        int iMin2 = Math.min(200, iMin - i);
                        byte[] bArr2 = new byte[iMin2];
                        System.arraycopy(bArr, i, bArr2, 0, iMin2);
                        this.aaa000.aaa024.aaa011.aaa063();
                        this.aaa000.aaa000(bArr2);
                    }
                    if (this.aaa000.aaa024.aaa011.aaa025() == ccc066zz.aaa002zz.NO) {
                        ccc025zz.aaa000(bArr);
                    }
                } else {
                    int i2 = this.aaa003;
                    if (i2 > 0) {
                        this.aaa003 = i2 - 1;
                        if (this.aaa000.aaa024.aaa011.aaa025() == ccc066zz.aaa002zz.NO) {
                            ccc071zz.aaa002(2);
                        } else {
                            ccc071zz.aaa002(1);
                        }
                    } else {
                        ccc071zz.aaa002(10);
                    }
                }
                if (this.aaa000.aaa024.aaa011.aaa050()) {
                    this.aaa000.aaa024.aaa011.aaa004(false);
                    this.aaa003 = WinError.ERROR_CALL_NOT_IMPLEMENTED;
                }
            } catch (IOException unused) {
                ccc071zz.aaa002(100);
            }
        }
    }

    void aaa000(InputStream inputStream) {
        this.aaa001 = inputStream;
    }

    @Override // com.stripe.bbpos.bbdevice.ccc011zz
    void aaa001() {
        this.aaa002 = true;
    }

    @Override // com.stripe.bbpos.bbdevice.ccc011zz
    void aaa000() {
        new Thread(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ccc014zz$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa002();
            }
        }, "Data-Receiver-Serial-Thread").start();
    }
}
