package com.stripe.bbpos.bbdevice;

/* JADX INFO: loaded from: classes3.dex */
abstract class ccc062zz {
    protected static final byte[] aaa002 = {-59, -9, 42, 108};
    private byte aaa000;
    private byte aaa001;

    protected ccc062zz(byte b, byte b2) {
        this.aaa000 = b;
        this.aaa001 = b2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // 
    /* JADX INFO: renamed from: aaa000, reason: merged with bridge method [inline-methods] */
    public abstract ccc062zz clone();

    protected void aaa000(byte b) {
        this.aaa001 = b;
    }

    protected abstract byte[] aaa001();

    protected byte aaa002() {
        return this.aaa000;
    }

    protected byte aaa003() {
        return this.aaa001;
    }
}
