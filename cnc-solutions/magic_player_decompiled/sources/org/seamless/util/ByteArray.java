package org.seamless.util;

/* JADX INFO: loaded from: classes2.dex */
public class ByteArray {
    public static byte[] toPrimitive(Byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i4 = 0; i4 < bArr.length; i4++) {
            bArr2[i4] = bArr[i4].byteValue();
        }
        return bArr2;
    }

    public static Byte[] toWrapper(byte[] bArr) {
        Byte[] bArr2 = new Byte[bArr.length];
        for (int i4 = 0; i4 < bArr.length; i4++) {
            bArr2[i4] = Byte.valueOf(bArr[i4]);
        }
        return bArr2;
    }
}
