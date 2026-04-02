package org.xbill.DNS.utils;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class base64 {
    private static final String Base64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";

    private base64() {
    }

    public static String formatString(byte[] bArr, int i4, String str, boolean z3) {
        String string = toString(bArr);
        StringBuffer stringBuffer = new StringBuffer();
        int i5 = 0;
        while (i5 < string.length()) {
            stringBuffer.append(str);
            int i6 = i5 + i4;
            if (i6 >= string.length()) {
                stringBuffer.append(string.substring(i5));
                if (z3) {
                    stringBuffer.append(" )");
                }
            } else {
                stringBuffer.append(string.substring(i5, i6));
                stringBuffer.append("\n");
            }
            i5 = i6;
        }
        return stringBuffer.toString();
    }

    public static byte[] fromString(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bytes = str.getBytes();
        for (int i4 = 0; i4 < bytes.length; i4++) {
            if (!Character.isWhitespace((char) bytes[i4])) {
                byteArrayOutputStream.write(bytes[i4]);
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (byteArray.length % 4 != 0) {
            return null;
        }
        byteArrayOutputStream.reset();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        for (int i5 = 0; i5 < (byteArray.length + 3) / 4; i5++) {
            short[] sArr = new short[4];
            short[] sArr2 = new short[3];
            for (int i6 = 0; i6 < 4; i6++) {
                sArr[i6] = (short) Base64.indexOf(byteArray[(i5 * 4) + i6]);
            }
            sArr2[0] = (short) ((sArr[0] << 2) + (sArr[1] >> 4));
            if (sArr[2] == 64) {
                sArr2[2] = -1;
                sArr2[1] = -1;
                if ((sArr[1] & 15) != 0) {
                    return null;
                }
            } else if (sArr[3] == 64) {
                sArr2[1] = (short) (((sArr[1] << 4) + (sArr[2] >> 2)) & 255);
                sArr2[2] = -1;
                if ((sArr[2] & 3) != 0) {
                    return null;
                }
            } else {
                sArr2[1] = (short) (((sArr[1] << 4) + (sArr[2] >> 2)) & 255);
                sArr2[2] = (short) (((sArr[2] << 6) + sArr[3]) & 255);
            }
            for (int i7 = 0; i7 < 3; i7++) {
                try {
                    if (sArr2[i7] >= 0) {
                        dataOutputStream.writeByte(sArr2[i7]);
                    }
                } catch (IOException unused) {
                }
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static String toString(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i4 = 0; i4 < (bArr.length + 2) / 3; i4++) {
            short[] sArr = new short[3];
            short[] sArr2 = new short[4];
            for (int i5 = 0; i5 < 3; i5++) {
                int i6 = (i4 * 3) + i5;
                if (i6 < bArr.length) {
                    sArr[i5] = (short) (bArr[i6] & 255);
                } else {
                    sArr[i5] = -1;
                }
            }
            sArr2[0] = (short) (sArr[0] >> 2);
            if (sArr[1] == -1) {
                sArr2[1] = (short) ((sArr[0] & 3) << 4);
            } else {
                sArr2[1] = (short) (((sArr[0] & 3) << 4) + (sArr[1] >> 4));
            }
            if (sArr[1] == -1) {
                sArr2[3] = 64;
                sArr2[2] = 64;
            } else if (sArr[2] == -1) {
                sArr2[2] = (short) ((sArr[1] & 15) << 2);
                sArr2[3] = 64;
            } else {
                sArr2[2] = (short) (((sArr[1] & 15) << 2) + (sArr[2] >> 6));
                sArr2[3] = (short) (sArr[2] & 63);
            }
            for (int i7 = 0; i7 < 4; i7++) {
                byteArrayOutputStream.write(Base64.charAt(sArr2[i7]));
            }
        }
        return new String(byteArrayOutputStream.toByteArray());
    }
}
