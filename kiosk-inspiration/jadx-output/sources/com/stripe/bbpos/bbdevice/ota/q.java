package com.stripe.bbpos.bbdevice.ota;

import com.google.common.primitives.SignedBytes;

/* JADX INFO: loaded from: classes3.dex */
class q {
    static int a(byte b) {
        int i = (b & 128) != 0 ? 1 : 0;
        if ((b & SignedBytes.MAX_POWER_OF_TWO) != 0) {
            i++;
        }
        if ((b & 32) != 0) {
            i++;
        }
        if ((b & 16) != 0) {
            i++;
        }
        if ((b & 8) != 0) {
            i++;
        }
        if ((b & 4) != 0) {
            i++;
        }
        if ((b & 2) != 0) {
            i++;
        }
        return (b & 1) != 0 ? i + 1 : i;
    }

    static byte[] a(byte[] bArr) {
        byte[] bArr2 = new byte[3];
        byte b = bArr[0];
        if (b != 0) {
            bArr2[0] = b(b);
            return bArr2;
        }
        byte b2 = bArr[1];
        if (b2 == 0) {
            bArr2[2] = b(bArr[2]);
            return bArr2;
        }
        bArr2[1] = b(b2);
        return bArr2;
    }

    static byte b(byte b) {
        if ((b & 128) != 0) {
            return (byte) -128;
        }
        if ((b & SignedBytes.MAX_POWER_OF_TWO) != 0) {
            return SignedBytes.MAX_POWER_OF_TWO;
        }
        if ((b & 32) != 0) {
            return (byte) 32;
        }
        if ((b & 16) != 0) {
            return (byte) 16;
        }
        if ((b & 8) != 0) {
            return (byte) 8;
        }
        if ((b & 4) != 0) {
            return (byte) 4;
        }
        if ((b & 2) != 0) {
            return (byte) 2;
        }
        return (b & 1) != 0 ? (byte) 1 : (byte) 0;
    }

    static byte[] b(byte[] bArr, byte[] bArr2) {
        byte[] bArrC = c(bArr, bArr2);
        byte[] bArr3 = new byte[16];
        for (int i = 0; i < 16; i++) {
            bArr3[i] = bArrC[i];
        }
        return e0.b(bArrC, bArr3);
    }

    static byte[] c(byte[] bArr, byte[] bArr2) {
        if (bArr2 != null && bArr != null && bArr2.length != 0 && bArr.length != 0) {
            try {
                byte[] bArrD = d(bArr, bArr2);
                bArrD[5] = (byte) (bArrD[5] ^ 255);
                bArrD[13] = (byte) (bArrD[13] ^ 255);
                return bArrD;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    static byte[] d(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[8];
        for (int i = 0; i < 8; i++) {
            bArr3[i] = bArr[i + 2];
        }
        bArr3[5] = (byte) (bArr3[5] & 224);
        bArr3[6] = 0;
        bArr3[7] = 0;
        byte[] bArrE = e(bArr, bArr2);
        byte b = (byte) (bArr[7] & 31);
        byte[] bArr4 = {b, bArr[8], bArr[9]};
        a(bArr3, bArr4, a(bArr4));
        for (int iA = a(b) + a(bArr4[1]) + a(bArr4[2]); iA > 0; iA--) {
            bArrE = a(bArr3, bArrE);
            a(bArr3, bArr4, a(bArr4));
        }
        return bArrE;
    }

    static byte[] e(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[8];
        byte[] bArr4 = new byte[16];
        for (int i = 0; i < 8; i++) {
            bArr3[i] = bArr[i];
        }
        bArr3[7] = (byte) (bArr3[7] & 224);
        byte[] bArr5 = new byte[16];
        for (int i2 = 0; i2 < 16; i2++) {
            bArr4[i2] = bArr2[i2];
        }
        byte[] bArrB = e0.b(bArr3, bArr4);
        for (int i3 = 0; i3 < 8; i3++) {
            bArr5[i3] = bArrB[i3];
        }
        bArr4[0] = (byte) (bArr4[0] ^ 192);
        bArr4[1] = (byte) (bArr4[1] ^ 192);
        bArr4[2] = (byte) (bArr4[2] ^ 192);
        bArr4[3] = (byte) (bArr4[3] ^ 192);
        bArr4[8] = (byte) (bArr4[8] ^ 192);
        bArr4[9] = (byte) (bArr4[9] ^ 192);
        bArr4[10] = (byte) (bArr4[10] ^ 192);
        bArr4[11] = (byte) (bArr4[11] ^ 192);
        byte[] bArrB2 = e0.b(bArr3, bArr4);
        for (int i4 = 0; i4 < 8; i4++) {
            bArr5[i4 + 8] = bArrB2[i4];
        }
        return bArr5;
    }

    static void a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte b = bArr[5];
        byte b2 = bArr3[0];
        bArr[5] = (byte) (b | b2);
        byte b3 = bArr[6];
        byte b4 = bArr3[1];
        bArr[6] = (byte) (b3 | b4);
        byte b5 = bArr[7];
        byte b6 = bArr3[2];
        bArr[7] = (byte) (b5 | b6);
        bArr2[0] = (byte) (bArr2[0] ^ b2);
        bArr2[1] = (byte) (bArr2[1] ^ b4);
        bArr2[2] = (byte) (bArr2[2] ^ b6);
    }

    static byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[8];
        byte[] bArr4 = new byte[8];
        for (int i = 0; i < 8; i++) {
            bArr3[i] = bArr2[i];
            bArr4[i] = bArr2[i + 8];
        }
        byte[] bArr5 = new byte[8];
        byte[] bArr6 = new byte[16];
        for (int i2 = 0; i2 < 8; i2++) {
            bArr5[i2] = (byte) (bArr[i2] ^ bArr4[i2]);
        }
        byte[] bArrB = n.b(bArr5, bArr3);
        for (int i3 = 0; i3 < 8; i3++) {
            bArr6[i3 + 8] = (byte) (bArrB[i3] ^ bArr4[i3]);
        }
        bArr3[0] = (byte) (bArr3[0] ^ 192);
        bArr3[1] = (byte) (bArr3[1] ^ 192);
        bArr3[2] = (byte) (bArr3[2] ^ 192);
        bArr3[3] = (byte) (bArr3[3] ^ 192);
        bArr4[0] = (byte) (bArr4[0] ^ 192);
        bArr4[1] = (byte) (bArr4[1] ^ 192);
        bArr4[2] = (byte) (bArr4[2] ^ 192);
        bArr4[3] = (byte) (bArr4[3] ^ 192);
        for (int i4 = 0; i4 < 8; i4++) {
            bArr5[i4] = (byte) (bArr[i4] ^ bArr4[i4]);
        }
        byte[] bArrB2 = n.b(bArr5, bArr3);
        for (int i5 = 0; i5 < 8; i5++) {
            bArr6[i5] = (byte) (bArrB2[i5] ^ bArr4[i5]);
        }
        return bArr6;
    }
}
