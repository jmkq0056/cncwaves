package com.stripe.bbpos.bbdevice;

import android.os.Process;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes3.dex */
class ccc031zz implements Runnable {
    private boolean aaa000 = false;
    Thread aaa001;
    private aaa009zz aaa002;

    ccc031zz(aaa009zz aaa009zzVar) {
        this.aaa002 = aaa009zzVar;
    }

    void aaa000() {
        this.aaa000 = true;
    }

    @Override // java.lang.Runnable
    public void run() {
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2;
        this.aaa001 = Thread.currentThread();
        Process.setThreadPriority(10);
        int i = 0;
        while (!this.aaa000) {
            try {
                try {
                    Thread.sleep(50L);
                    i++;
                    if (i >= 10) {
                        break;
                    }
                } catch (InterruptedException unused) {
                    this.aaa000 = true;
                    synchronized (this.aaa002.aaa008) {
                        this.aaa001 = null;
                        aaa009zz aaa009zzVar = this.aaa002;
                        if (aaa009zzVar.aaa021 == this) {
                            aaa009zzVar.aaa021 = null;
                        }
                    }
                }
            } catch (Throwable th) {
                if (!this.aaa000 && (byteArrayOutputStream = this.aaa002.aaa015) != null) {
                    byteArrayOutputStream.reset();
                }
                synchronized (this.aaa002.aaa008) {
                    this.aaa001 = null;
                    aaa009zz aaa009zzVar2 = this.aaa002;
                    if (aaa009zzVar2.aaa021 == this) {
                        aaa009zzVar2.aaa021 = null;
                    }
                    Thread.interrupted();
                    throw th;
                }
            }
        }
        if (!this.aaa000 && (byteArrayOutputStream2 = this.aaa002.aaa015) != null) {
            byteArrayOutputStream2.reset();
        }
        synchronized (this.aaa002.aaa008) {
            this.aaa001 = null;
            aaa009zz aaa009zzVar3 = this.aaa002;
            if (aaa009zzVar3.aaa021 == this) {
                aaa009zzVar3.aaa021 = null;
            }
        }
        Thread.interrupted();
    }
}
