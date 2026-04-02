package com.stripe.bbpos.bbdevice;

import android.os.Process;
import com.sun.jna.platform.win32.WinError;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
class ccc015zz extends ccc011zz {
    private aaa009zz aaa000;
    private InputStream aaa001;
    private boolean aaa002 = false;

    ccc015zz(aaa009zz aaa009zzVar, InputStream inputStream) {
        this.aaa000 = aaa009zzVar;
        this.aaa001 = inputStream;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void aaa002() {
        Process.setThreadPriority(-16);
        while (!this.aaa002) {
            try {
                byte[] bArr = new byte[WinError.ERROR_ENCRYPTION_FAILED];
                int i = this.aaa001.read(bArr);
                if (i > 0) {
                    int iMin = Math.min(i, WinError.ERROR_ENCRYPTION_FAILED);
                    byte[] bArr2 = new byte[iMin];
                    System.arraycopy(bArr, 0, bArr2, 0, iMin);
                    this.aaa000.aaa004().aaa034().aaa063();
                    this.aaa000.aaa000(bArr2);
                }
            } catch (IOException e) {
                aaa009zz aaa009zzVar = this.aaa000;
                if (!aaa009zzVar.aaa026) {
                    aaa009zzVar.aaa004().aaa034().aaa007(true);
                    this.aaa000.aaa004().aaa034().aaa012("" + e);
                }
                this.aaa000.aaa004().aaa084();
            }
        }
    }

    @Override // com.stripe.bbpos.bbdevice.ccc011zz
    void aaa000() {
        new Thread(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ccc015zz$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa002();
            }
        }, "Data-Receiver-Test-Channel-Thread").start();
    }

    @Override // com.stripe.bbpos.bbdevice.ccc011zz
    void aaa001() {
        this.aaa002 = true;
    }
}
