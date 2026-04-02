package com.stripe.bbpos.bbdevice.ota;

import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes3.dex */
final class g {
    private byte[] a;
    private byte b;
    private byte c;
    private byte[] d;
    private boolean e;

    g(byte[] bArr, byte b, byte b2, byte[] bArr2) {
        this.a = bArr;
        this.b = b;
        this.c = b2;
        this.d = bArr2;
        if ((bArr[1] & 255) % 2 == 1) {
            this.e = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public g clone() {
        byte[] bArr;
        byte[] bArr2 = this.a;
        int length = bArr2.length;
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArr2, 0, bArr3, 0, length);
        byte[] bArr4 = this.d;
        if (bArr4 != null) {
            int length2 = bArr4.length;
            bArr = new byte[length2];
            System.arraycopy(bArr4, 0, bArr, 0, length2);
        } else {
            bArr = null;
        }
        return new g(bArr3, this.b, this.c, bArr);
    }

    byte[] b() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = this.a;
        byteArrayOutputStream.write(bArr, 0, bArr.length);
        byteArrayOutputStream.write(((this.b & 3) << 6) | (this.c & 15));
        byte[] bArr2 = this.d;
        if (bArr2 != null) {
            byteArrayOutputStream.write((bArr2.length >> 8) & 255);
            byteArrayOutputStream.write(this.d.length & 255);
            byte[] bArr3 = this.d;
            byteArrayOutputStream.write(bArr3, 0, bArr3.length);
        } else {
            byteArrayOutputStream.write(0);
            byteArrayOutputStream.write(0);
        }
        byteArrayOutputStream.write(f.a(byteArrayOutputStream.toByteArray()));
        return byteArrayOutputStream.toByteArray();
    }
}
