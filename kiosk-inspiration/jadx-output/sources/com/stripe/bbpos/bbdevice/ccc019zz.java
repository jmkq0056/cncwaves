package com.stripe.bbpos.bbdevice;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
final class ccc019zz extends ccc018zz {
    private aaa009zz aaa000;
    private OutputStream aaa001;

    ccc019zz(aaa009zz aaa009zzVar, OutputStream outputStream) {
        this.aaa000 = aaa009zzVar;
        this.aaa001 = outputStream;
    }

    @Override // com.stripe.bbpos.bbdevice.ccc018zz
    void aaa000() {
    }

    @Override // com.stripe.bbpos.bbdevice.ccc018zz
    void aaa000(byte[] bArr) {
        this.aaa000.aaa024.aaa011.aaa063();
        try {
            this.aaa001.write(bArr, 0, bArr.length);
            this.aaa001.flush();
        } catch (IOException e) {
            try {
                this.aaa000.aaa024.aaa011.aaa000("Connection drop (3061)", false);
                this.aaa000.aaa024.aaa014();
            } catch (Exception unused) {
                e.printStackTrace();
            }
        }
    }
}
