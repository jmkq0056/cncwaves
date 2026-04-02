package com.stripe.bbpos.bbdevice;

import android.os.Process;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
final class ccc012zz extends ccc011zz {
    private aaa009zz aaa000;
    private InputStream aaa001;
    private boolean aaa002 = false;
    private int aaa003 = 100;

    ccc012zz(aaa009zz aaa009zzVar, InputStream inputStream) {
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
                    byte[] bArr = new byte[iAvailable];
                    this.aaa001.read(bArr);
                    this.aaa003 = 100;
                    this.aaa000.aaa024.aaa011.aaa063();
                    this.aaa000.aaa000(bArr);
                    ccc025zz.aaa000(bArr);
                } else {
                    int i = this.aaa003;
                    if (i > 0) {
                        this.aaa003 = i - 1;
                        ccc071zz.aaa002(1);
                    } else {
                        ccc071zz.aaa002(10);
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.stripe.bbpos.bbdevice.ccc011zz
    void aaa000() {
        new Thread(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ccc012zz$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa002();
            }
        }, "Data-Receiver-Bluetooth-Thread").start();
    }

    @Override // com.stripe.bbpos.bbdevice.ccc011zz
    void aaa001() {
        this.aaa002 = true;
    }
}
