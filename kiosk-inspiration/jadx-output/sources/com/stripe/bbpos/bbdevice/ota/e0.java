package com.stripe.bbpos.bbdevice.ota;

/* JADX INFO: loaded from: classes3.dex */
final class e0 {
    private static byte[] a(byte[] bArr) {
        byte[] bArr2 = new byte[24];
        int i = 0;
        if (bArr.length == 8) {
            while (i < 8) {
                bArr2[i] = bArr[i];
                bArr2[i + 8] = bArr[i];
                bArr2[i + 16] = bArr[i];
                i++;
            }
        } else if (bArr.length == 16) {
            while (i < 8) {
                bArr2[i] = bArr[i];
                int i2 = i + 8;
                bArr2[i2] = bArr[i2];
                bArr2[i + 16] = bArr[i];
                i++;
            }
        } else if (bArr.length == 24) {
            while (i < 24) {
                bArr2[i] = bArr[i];
                i++;
            }
        }
        return bArr2;
    }

    static String b(String str, String str2) {
        return f0.a(b(f0.i(str), f0.i(str2)));
    }

    static String c(String str, String str2) {
        return f0.a(c(f0.i(str), f0.i(str2)));
    }

    static byte[] b(byte[] bArr, byte[] bArr2) {
        if (bArr2 == null) {
            return null;
        }
        try {
            byte[] bArrA = a(bArr2);
            int length = bArr.length;
            byte[] bArr3 = new byte[length];
            if (d.a(d.a, d.c, bArr, bArr.length, bArrA, d.f, bArr3, length, null) == 0) {
                return null;
            }
            return bArr3;
        } catch (Exception unused) {
            return null;
        }
    }

    static byte[] c(byte[] bArr, byte[] bArr2) {
        try {
            byte[] bArrA = a(bArr2);
            byte[] bArr3 = new byte[bArr.length];
            byte[] bArr4 = new byte[8];
            byte[] bArr5 = new byte[8];
            for (int i = 0; i < bArr.length; i += 8) {
                for (int i2 = 0; i2 < 8; i2++) {
                    bArr4[i2] = (byte) (bArr[i + i2] ^ bArr5[i2]);
                }
                d.a(d.a, d.c, bArr4, 8, bArrA, d.f, bArr5, 8, null);
                for (int i3 = 0; i3 < 8; i3++) {
                    bArr3[i + i3] = bArr5[i3];
                }
            }
            return bArr3;
        } catch (Exception unused) {
            return null;
        }
    }

    static String a(String str, String str2) {
        return f0.a(a(f0.i(str), f0.i(str2)));
    }

    static byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null || bArr.length % 8 != 0) {
            return null;
        }
        try {
            byte[] bArrA = a(bArr2);
            int length = bArr.length;
            byte[] bArr3 = new byte[length];
            if (d.a(d.b, d.c, bArr, bArr.length, bArrA, d.f, bArr3, length, null) == 0) {
                return null;
            }
            return bArr3;
        } catch (Exception unused) {
            return null;
        }
    }
}
