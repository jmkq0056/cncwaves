package com.stripe.bbpos.bbdevice;

import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes3.dex */
final class aaa010zz {
    private byte[] aaa000;
    private byte aaa001;
    private byte aaa002;
    private final byte[] aaa003;
    private boolean aaa004;

    aaa010zz(byte[] bArr, byte b, byte b2, byte[] bArr2) {
        this.aaa000 = bArr;
        this.aaa001 = b;
        this.aaa002 = b2;
        this.aaa003 = bArr2;
        if ((bArr[1] & 255) % 2 == 1) {
            this.aaa004 = true;
        }
    }

    void aaa000(byte b) {
        this.aaa002 = b;
    }

    byte aaa001() {
        return this.aaa001;
    }

    byte aaa002() {
        return this.aaa002;
    }

    byte[] aaa003() {
        return this.aaa000;
    }

    byte[] aaa004() {
        return this.aaa003;
    }

    boolean aaa005() {
        return this.aaa004;
    }

    byte[] aaa006() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = this.aaa000;
        byteArrayOutputStream.write(bArr, 0, bArr.length);
        byteArrayOutputStream.write(((this.aaa001 & 3) << 6) | (this.aaa002 & 15));
        byte[] bArr2 = this.aaa003;
        if (bArr2 != null) {
            byteArrayOutputStream.write((bArr2.length >> 8) & 255);
            byteArrayOutputStream.write(this.aaa003.length & 255);
            byte[] bArr3 = this.aaa003;
            byteArrayOutputStream.write(bArr3, 0, bArr3.length);
        } else {
            byteArrayOutputStream.write(0);
            byteArrayOutputStream.write(0);
        }
        byteArrayOutputStream.write(aaa007zz.aaa000(byteArrayOutputStream.toByteArray()));
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: aaa000, reason: merged with bridge method [inline-methods] */
    public aaa010zz clone() {
        byte[] bArr = this.aaa000;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        byte[] bArr3 = this.aaa003;
        int length2 = bArr3.length;
        byte[] bArr4 = new byte[length2];
        System.arraycopy(bArr3, 0, bArr4, 0, length2);
        return new aaa010zz(bArr2, this.aaa001, this.aaa002, bArr4);
    }

    aaa010zz(byte[] bArr) {
        byte[] bArr2 = new byte[2];
        this.aaa000 = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, 2);
        byte b = bArr[2];
        this.aaa001 = (byte) ((b >> 6) & 3);
        this.aaa002 = (byte) (b & 15);
        int i = ((bArr[3] & 255) << 8) | (bArr[4] & 255);
        byte[] bArr3 = new byte[i];
        this.aaa003 = bArr3;
        System.arraycopy(bArr, 5, bArr3, 0, i);
        if ((this.aaa000[1] & 255) % 2 == 1) {
            this.aaa004 = true;
        }
    }
}
