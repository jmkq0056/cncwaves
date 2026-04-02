package com.stripe.bbpos.bbdevice;

import android.os.Process;
import java.io.IOException;
import java.io.PipedInputStream;

/* JADX INFO: loaded from: classes3.dex */
final class ccc013zz extends ccc011zz {
    private aaa009zz aaa000;
    private PipedInputStream aaa001;
    private boolean aaa002 = false;
    private int aaa003 = 40;

    ccc013zz(aaa009zz aaa009zzVar, PipedInputStream pipedInputStream) {
        this.aaa000 = aaa009zzVar;
        this.aaa001 = pipedInputStream;
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
                    this.aaa003 = 40;
                    this.aaa000.aaa024.aaa011.aaa063();
                    this.aaa000.aaa000(bArr);
                    ccc025zz.aaa000(bArr);
                } else {
                    try {
                        int i = this.aaa003;
                        if (i > 0) {
                            this.aaa003 = i - 1;
                            Thread.sleep(3L);
                        } else {
                            Thread.sleep(10L);
                        }
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.stripe.bbpos.bbdevice.ccc011zz
    void aaa000() {
        new Thread(new Runnable() { // from class: com.stripe.bbpos.bbdevice.ccc013zz$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.aaa002();
            }
        }, "Data-Receiver-BLE-Thread").start();
    }

    @Override // com.stripe.bbpos.bbdevice.ccc011zz
    void aaa001() {
        this.aaa002 = true;
    }
}
