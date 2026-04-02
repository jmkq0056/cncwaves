package org.xbill.DNS;

import java.net.InetAddress;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes2.dex */
public final class ReverseMap {
    private static Name inaddr4 = Name.fromConstantString("in-addr.arpa.");
    private static Name inaddr6 = Name.fromConstantString("ip6.arpa.");

    private ReverseMap() {
    }

    public static Name fromAddress(byte[] bArr) {
        if (bArr.length != 4 && bArr.length != 16) {
            throw new IllegalArgumentException("array must contain 4 or 16 elements");
        }
        StringBuffer stringBuffer = new StringBuffer();
        if (bArr.length == 4) {
            for (int length = bArr.length - 1; length >= 0; length--) {
                stringBuffer.append(bArr[length] & 255);
                if (length > 0) {
                    stringBuffer.append(".");
                }
            }
        } else {
            int[] iArr = new int[2];
            for (int length2 = bArr.length - 1; length2 >= 0; length2--) {
                iArr[0] = (bArr[length2] & 255) >> 4;
                iArr[1] = bArr[length2] & 255 & 15;
                for (int i4 = 1; i4 >= 0; i4--) {
                    stringBuffer.append(Integer.toHexString(iArr[i4]));
                    if (length2 > 0 || i4 > 0) {
                        stringBuffer.append(".");
                    }
                }
            }
        }
        try {
            return bArr.length == 4 ? Name.fromString(stringBuffer.toString(), inaddr4) : Name.fromString(stringBuffer.toString(), inaddr6);
        } catch (TextParseException unused) {
            throw new IllegalStateException("name cannot be invalid");
        }
    }

    public static Name fromAddress(int[] iArr) {
        byte[] bArr = new byte[iArr.length];
        for (int i4 = 0; i4 < iArr.length; i4++) {
            if (iArr[i4] >= 0 && iArr[i4] <= 255) {
                bArr[i4] = (byte) iArr[i4];
            } else {
                throw new IllegalArgumentException("array must contain values between 0 and 255");
            }
        }
        return fromAddress(bArr);
    }

    public static Name fromAddress(InetAddress inetAddress) {
        return fromAddress(inetAddress.getAddress());
    }

    public static Name fromAddress(String str, int i4) throws UnknownHostException {
        byte[] byteArray = Address.toByteArray(str, i4);
        if (byteArray != null) {
            return fromAddress(byteArray);
        }
        throw new UnknownHostException("Invalid IP address");
    }

    public static Name fromAddress(String str) throws UnknownHostException {
        byte[] byteArray = Address.toByteArray(str, 1);
        if (byteArray == null) {
            byteArray = Address.toByteArray(str, 2);
        }
        if (byteArray != null) {
            return fromAddress(byteArray);
        }
        throw new UnknownHostException("Invalid IP address");
    }
}
