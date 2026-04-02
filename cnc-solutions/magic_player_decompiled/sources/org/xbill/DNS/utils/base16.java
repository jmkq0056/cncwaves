package org.xbill.DNS.utils;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class base16 {
    private static final String Base16 = "0123456789ABCDEF";

    private base16() {
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
        if (byteArray.length % 2 != 0) {
            return null;
        }
        byteArrayOutputStream.reset();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        for (int i5 = 0; i5 < byteArray.length; i5 += 2) {
            try {
                dataOutputStream.writeByte((((byte) Base16.indexOf(Character.toUpperCase((char) byteArray[i5]))) << 4) + ((byte) Base16.indexOf(Character.toUpperCase((char) byteArray[i5 + 1]))));
            } catch (IOException unused) {
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static String toString(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (byte b4 : bArr) {
            short s3 = (short) (b4 & 255);
            byteArrayOutputStream.write(Base16.charAt((byte) (s3 >> 4)));
            byteArrayOutputStream.write(Base16.charAt((byte) (s3 & 15)));
        }
        return new String(byteArrayOutputStream.toByteArray());
    }
}
