package org.xbill.DNS.utils;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class base32 {
    private String alphabet;
    private boolean lowercase;
    private boolean padding;

    public static class Alphabet {
        public static final String BASE32 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567=";
        public static final String BASE32HEX = "0123456789ABCDEFGHIJKLMNOPQRSTUV=";

        private Alphabet() {
        }
    }

    public base32(String str, boolean z3, boolean z4) {
        this.alphabet = str;
        this.padding = z3;
        this.lowercase = z4;
    }

    private static int blockLenToPadding(int i4) {
        if (i4 == 1) {
            return 6;
        }
        if (i4 == 2) {
            return 4;
        }
        if (i4 == 3) {
            return 3;
        }
        if (i4 != 4) {
            return i4 != 5 ? -1 : 0;
        }
        return 1;
    }

    private static int paddingToBlockLen(int i4) {
        if (i4 == 0) {
            return 5;
        }
        if (i4 == 1) {
            return 4;
        }
        if (i4 == 3) {
            return 3;
        }
        if (i4 != 4) {
            return i4 != 6 ? -1 : 1;
        }
        return 2;
    }

    public byte[] fromString(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (byte b4 : str.getBytes()) {
            char c4 = (char) b4;
            if (!Character.isWhitespace(c4)) {
                byteArrayOutputStream.write((byte) Character.toUpperCase(c4));
            }
        }
        if (!this.padding) {
            while (byteArrayOutputStream.size() % 8 != 0) {
                byteArrayOutputStream.write(61);
            }
        } else if (byteArrayOutputStream.size() % 8 != 0) {
            return null;
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.reset();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        for (int i4 = 0; i4 < byteArray.length / 8; i4++) {
            short[] sArr = new short[8];
            int[] iArr = new int[5];
            int i5 = 8;
            for (int i6 = 0; i6 < 8; i6++) {
                int i7 = (i4 * 8) + i6;
                if (((char) byteArray[i7]) == '=') {
                    break;
                }
                sArr[i6] = (short) this.alphabet.indexOf(byteArray[i7]);
                if (sArr[i6] < 0) {
                    return null;
                }
                i5--;
            }
            int iPaddingToBlockLen = paddingToBlockLen(i5);
            if (iPaddingToBlockLen < 0) {
                return null;
            }
            iArr[0] = (sArr[0] << 3) | (sArr[1] >> 2);
            iArr[1] = ((sArr[1] & 3) << 6) | (sArr[2] << 1) | (sArr[3] >> 4);
            iArr[2] = ((sArr[3] & 15) << 4) | ((sArr[4] >> 1) & 15);
            iArr[3] = (sArr[4] << 7) | (sArr[5] << 2) | (sArr[6] >> 3);
            iArr[4] = sArr[7] | ((sArr[6] & 7) << 5);
            for (int i8 = 0; i8 < iPaddingToBlockLen; i8++) {
                try {
                    dataOutputStream.writeByte((byte) (iArr[i8] & 255));
                } catch (IOException unused) {
                }
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    public String toString(byte[] bArr) {
        int i4;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i5 = 0; i5 < (bArr.length + 4) / 5; i5++) {
            short[] sArr = new short[5];
            int[] iArr = new int[8];
            int i6 = 5;
            for (int i7 = 0; i7 < 5; i7++) {
                int i8 = (i5 * 5) + i7;
                if (i8 < bArr.length) {
                    sArr[i7] = (short) (bArr[i8] & 255);
                } else {
                    sArr[i7] = 0;
                    i6--;
                }
            }
            int iBlockLenToPadding = blockLenToPadding(i6);
            iArr[0] = (byte) ((sArr[0] >> 3) & 31);
            iArr[1] = (byte) (((sArr[0] & 7) << 2) | ((sArr[1] >> 6) & 3));
            iArr[2] = (byte) ((sArr[1] >> 1) & 31);
            iArr[3] = (byte) (((sArr[1] & 1) << 4) | ((sArr[2] >> 4) & 15));
            iArr[4] = (byte) (((sArr[2] & 15) << 1) | ((sArr[3] >> 7) & 1));
            iArr[5] = (byte) ((sArr[3] >> 2) & 31);
            iArr[6] = (byte) (((sArr[4] >> 5) & 7) | ((sArr[3] & 3) << 3));
            iArr[7] = (byte) (sArr[4] & 31);
            int i9 = 0;
            while (true) {
                i4 = 8 - iBlockLenToPadding;
                if (i9 >= i4) {
                    break;
                }
                char cCharAt = this.alphabet.charAt(iArr[i9]);
                if (this.lowercase) {
                    cCharAt = Character.toLowerCase(cCharAt);
                }
                byteArrayOutputStream.write(cCharAt);
                i9++;
            }
            if (this.padding) {
                while (i4 < 8) {
                    byteArrayOutputStream.write(61);
                    i4++;
                }
            }
        }
        return new String(byteArrayOutputStream.toByteArray());
    }
}
