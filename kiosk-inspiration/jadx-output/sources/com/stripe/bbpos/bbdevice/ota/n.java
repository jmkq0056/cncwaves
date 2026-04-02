package com.stripe.bbpos.bbdevice.ota;

/* JADX INFO: loaded from: classes3.dex */
final class n {
    static byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr2 == null || bArr2.length != 8) {
            return null;
        }
        try {
            int length = bArr.length;
            byte[] bArr3 = new byte[length];
            if (d.a(d.b, d.c, bArr, bArr.length, bArr2, d.e, bArr3, length, null) == 0) {
                return null;
            }
            return bArr3;
        } catch (Exception unused) {
            return null;
        }
    }

    static byte[] b(byte[] bArr, byte[] bArr2) {
        if (bArr2 == null || bArr2.length != 8) {
            return null;
        }
        try {
            int length = bArr.length;
            byte[] bArr3 = new byte[length];
            if (d.a(d.a, d.c, bArr, bArr.length, bArr2, d.e, bArr3, length, null) == 0) {
                return null;
            }
            return bArr3;
        } catch (Exception unused) {
            return null;
        }
    }

    static byte[] c(byte[] bArr, byte[] bArr2) {
        if (bArr2 == null || bArr2.length != 8) {
            return null;
        }
        try {
            byte[] bArr3 = new byte[bArr.length];
            byte[] bArr4 = new byte[8];
            byte[] bArr5 = new byte[8];
            int i = 0;
            while (i < bArr.length) {
                for (int i2 = 0; i2 < 8; i2++) {
                    bArr4[i2] = (byte) (bArr[i + i2] ^ bArr5[i2]);
                }
                byte[] bArr6 = bArr2;
                d.a(d.a, d.c, bArr4, 8, bArr6, d.e, bArr5, 8, null);
                for (int i3 = 0; i3 < 8; i3++) {
                    bArr3[i + i3] = bArr5[i3];
                }
                i += 8;
                bArr2 = bArr6;
            }
            return bArr3;
        } catch (Exception unused) {
            return null;
        }
    }

    static String a(String str, String str2) {
        return f0.a(a(f0.i(str), f0.i(str2)));
    }

    static String b(String str, String str2) {
        return f0.a(b(f0.i(str), f0.i(str2)));
    }

    static String c(String str, String str2) {
        return f0.a(c(f0.i(str), f0.i(str2)));
    }
}
