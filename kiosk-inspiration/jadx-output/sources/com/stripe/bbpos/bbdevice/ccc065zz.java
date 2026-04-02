package com.stripe.bbpos.bbdevice;

/* JADX INFO: loaded from: classes3.dex */
final class ccc065zz extends ccc062zz {
    ccc065zz(byte b, byte b2) {
        super(b, b2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.stripe.bbpos.bbdevice.ccc062zz
    /* JADX INFO: renamed from: aaa000 */
    public ccc062zz clone() {
        return new ccc065zz(aaa002(), aaa003());
    }

    @Override // com.stripe.bbpos.bbdevice.ccc062zz
    protected byte[] aaa001() {
        return ccc058zz.aaa000(aaa002(), aaa003());
    }
}
