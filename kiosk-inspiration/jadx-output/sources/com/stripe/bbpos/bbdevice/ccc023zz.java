package com.stripe.bbpos.bbdevice;

/* JADX INFO: loaded from: classes3.dex */
final class ccc023zz extends ccc018zz {
    private static final String aaa002 = ccc021zz.class.getName();
    private aaa009zz aaa000;
    private aaa004zz aaa001;

    ccc023zz(aaa009zz aaa009zzVar, aaa004zz aaa004zzVar) {
        this.aaa000 = aaa009zzVar;
        this.aaa001 = aaa004zzVar;
    }

    @Override // com.stripe.bbpos.bbdevice.ccc018zz
    void aaa000() {
    }

    @Override // com.stripe.bbpos.bbdevice.ccc018zz
    synchronized void aaa000(byte[] bArr) {
        this.aaa000.aaa024.aaa011.aaa063();
        this.aaa001.aaa000(bArr);
    }
}
