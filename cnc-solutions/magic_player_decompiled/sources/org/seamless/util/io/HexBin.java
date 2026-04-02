package org.seamless.util.io;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public final class HexBin {
    private static final int BASELENGTH = 255;
    private static final int LOOKUPLENGTH = 16;
    private static byte[] hexNumberTable = new byte[255];
    private static byte[] lookUpHexAlphabet = new byte[16];

    static {
        for (int i4 = 0; i4 < 255; i4++) {
            hexNumberTable[i4] = -1;
        }
        for (int i5 = 57; i5 >= 48; i5--) {
            hexNumberTable[i5] = (byte) (i5 - 48);
        }
        for (int i6 = 70; i6 >= 65; i6--) {
            hexNumberTable[i6] = (byte) ((i6 - 65) + 10);
        }
        for (int i7 = 102; i7 >= 97; i7--) {
            hexNumberTable[i7] = (byte) ((i7 - 97) + 10);
        }
        for (int i8 = 0; i8 < 10; i8++) {
            lookUpHexAlphabet[i8] = (byte) (i8 + 48);
        }
        for (int i9 = 10; i9 <= 15; i9++) {
            lookUpHexAlphabet[i9] = (byte) ((i9 + 65) - 10);
        }
    }

    public static String bytesToString(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return new String(encode(bArr));
    }

    public static byte[] decode(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        if (length % 2 != 0) {
            return null;
        }
        int i4 = length / 2;
        byte[] bArr2 = new byte[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i5 * 2;
            if (isHex(bArr[i6])) {
                int i7 = i6 + 1;
                if (isHex(bArr[i7])) {
                    byte[] bArr3 = hexNumberTable;
                    bArr2[i5] = (byte) ((bArr3[bArr[i6]] << 4) | bArr3[bArr[i7]]);
                }
            }
            return null;
        }
        return bArr2;
    }

    public static byte[] encode(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[length * 2];
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = i4 * 2;
            byte[] bArr3 = lookUpHexAlphabet;
            bArr2[i5] = bArr3[(bArr[i4] >> 4) & 15];
            bArr2[i5 + 1] = bArr3[bArr[i4] & 15];
        }
        return bArr2;
    }

    public static boolean isHex(byte b4) {
        return hexNumberTable[b4] != -1;
    }

    public static byte[] stringToBytes(String str) {
        return decode(str.getBytes());
    }

    public static String bytesToString(byte[] bArr, String str) {
        if (bArr == null) {
            return null;
        }
        String str2 = new String(encode(bArr));
        StringBuilder sb = new StringBuilder();
        int i4 = 1;
        for (char c4 : str2.toCharArray()) {
            sb.append(c4);
            if (i4 == 2) {
                sb.append(str);
                i4 = 1;
            } else {
                i4++;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    public static byte[] stringToBytes(String str, String str2) {
        return decode(str.replaceAll(str2, "").getBytes());
    }

    public static String encode(String str) {
        byte[] bArrEncode;
        if (str == null) {
            return null;
        }
        try {
            bArrEncode = encode(str.getBytes("utf-8"));
        } catch (UnsupportedEncodingException unused) {
            bArrEncode = null;
        }
        if (bArrEncode == null) {
            return null;
        }
        return new String(bArrEncode);
    }

    public static String decode(String str) {
        byte[] bArrDecode;
        if (str == null) {
            return null;
        }
        try {
            bArrDecode = decode(str.getBytes("utf-8"));
        } catch (UnsupportedEncodingException unused) {
            bArrDecode = null;
        }
        if (bArrDecode == null) {
            return null;
        }
        return new String(bArrDecode);
    }
}
