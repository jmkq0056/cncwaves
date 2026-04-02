package com.stripe.bbpos.bbdevice;

import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
class ccc022zz extends ccc018zz {
    private aaa009zz aaa000;
    private OutputStream aaa001;

    ccc022zz(aaa009zz aaa009zzVar, OutputStream outputStream) {
        this.aaa000 = aaa009zzVar;
        this.aaa001 = outputStream;
    }

    @Override // com.stripe.bbpos.bbdevice.ccc018zz
    void aaa000() {
    }

    @Override // com.stripe.bbpos.bbdevice.ccc018zz
    void aaa000(byte[] bArr) {
        this.aaa000.aaa004().aaa034().aaa063();
        this.aaa000.aaa004().aaa034().aaa004(true);
        if (bArr != null) {
            try {
                this.aaa001.write(bArr);
                this.aaa001.flush();
            } catch (Exception unused) {
            }
        }
    }
}
