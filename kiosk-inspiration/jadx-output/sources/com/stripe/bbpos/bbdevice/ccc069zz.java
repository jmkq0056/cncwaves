package com.stripe.bbpos.bbdevice;

import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
final class ccc069zz {
    static String aaa000(String str) {
        return ccc071zz.aaa000(aaa001(ccc071zz.aaa005(str)));
    }

    static byte[] aaa001(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        if (bArr.length == 8) {
            for (int i = 0; i < 8; i++) {
                bArr2[i] = bArr[i];
                bArr2[i + 8] = (byte) (~bArr[i]);
            }
        }
        return bArr2;
    }

    private static byte[] aaa000(byte[] bArr) {
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

    private static String aaa002(byte[] bArr) {
        String str = "";
        if (bArr == null) {
            return "";
        }
        for (int i = 0; i < bArr.length; i++) {
            str = (str + Integer.toString((bArr[i] >> 4) & 15, 16)) + Integer.toString(bArr[i] & 15, 16);
        }
        return str.toUpperCase(Locale.ROOT);
    }

    private static byte[] aaa001(String str) {
        byte[] bArr = new byte[str.length() / 2];
        int i = 0;
        while (i < str.length()) {
            int i2 = i + 2;
            bArr[i / 2] = (byte) Integer.parseInt(str.substring(i, i2), 16);
            i = i2;
        }
        return bArr;
    }

    static String aaa001(String str, String str2) {
        return aaa002(aaa001(aaa001(str), aaa001(str2)));
    }

    static byte[] aaa002(byte[] bArr, byte[] bArr2) {
        int length = 8 - (bArr.length % 8);
        int length2 = bArr.length + length;
        byte[] bArr3 = new byte[length2];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        for (int i = 0; i < length; i++) {
            bArr3[(length2 - 1) - i] = (byte) length;
        }
        return aaa001(bArr3, bArr2);
    }

    static byte[] aaa001(byte[] bArr, byte[] bArr2) {
        try {
            byte[] bArrAaa000 = aaa000(bArr2);
            byte[] bArr3 = new byte[bArr.length];
            byte[] bArr4 = new byte[8];
            byte[] bArr5 = new byte[8];
            for (int i = 0; i < bArr.length; i += 8) {
                for (int i2 = 0; i2 < 8; i2++) {
                    bArr4[i2] = (byte) (bArr[i + i2] ^ bArr5[i2]);
                }
                ccc043zz.aaa000(ccc043zz.aaa000, ccc043zz.aaa002, bArr4, 8, bArrAaa000, ccc043zz.aaa004, bArr5, 8);
                for (int i3 = 0; i3 < 8; i3++) {
                    bArr3[i + i3] = bArr5[i3];
                }
            }
            return bArr3;
        } catch (Exception unused) {
            return new byte[0];
        }
    }

    static String aaa000(String str, String str2) {
        return aaa002(aaa000(aaa001(str), aaa001(str2)));
    }

    public static byte[] aaa000(byte[] bArr, byte[] bArr2) {
        if (bArr.length % 8 != 0) {
            return new byte[0];
        }
        byte[] bArrAaa000 = aaa000(bArr2);
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        ccc043zz.aaa000(ccc043zz.aaa001, ccc043zz.aaa002, bArr, bArr.length, bArrAaa000, ccc043zz.aaa004, bArr3, length);
        for (int i = 8; i < length; i++) {
            bArr3[i] = (byte) (bArr3[i] ^ bArr[i - 8]);
        }
        return bArr3;
    }
}
