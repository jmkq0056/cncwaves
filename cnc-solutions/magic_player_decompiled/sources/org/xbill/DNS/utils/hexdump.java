package org.xbill.DNS.utils;

/* JADX INFO: loaded from: classes2.dex */
public class hexdump {
    private static final char[] hex = "0123456789ABCDEF".toCharArray();

    public static String dump(String str, byte[] bArr, int i4, int i5) {
        StringBuffer stringBuffer = new StringBuffer();
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(i5);
        stringBuffer2.append("b");
        stringBuffer.append(stringBuffer2.toString());
        if (str != null) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(" (");
            stringBuffer3.append(str);
            stringBuffer3.append(")");
            stringBuffer.append(stringBuffer3.toString());
        }
        stringBuffer.append(':');
        int length = (stringBuffer.toString().length() + 8) & (-8);
        stringBuffer.append('\t');
        int i6 = (80 - length) / 3;
        for (int i7 = 0; i7 < i5; i7++) {
            if (i7 != 0 && i7 % i6 == 0) {
                stringBuffer.append('\n');
                for (int i8 = 0; i8 < length / 8; i8++) {
                    stringBuffer.append('\t');
                }
            }
            int i9 = bArr[i7 + i4] & 255;
            char[] cArr = hex;
            stringBuffer.append(cArr[i9 >> 4]);
            stringBuffer.append(cArr[i9 & 15]);
            stringBuffer.append(' ');
        }
        stringBuffer.append('\n');
        return stringBuffer.toString();
    }

    public static String dump(String str, byte[] bArr) {
        return dump(str, bArr, 0, bArr.length);
    }
}
