package org.eclipse.jetty.util;

import androidx.constraintlayout.solver.a;
import androidx.core.view.PointerIconCompat;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public class B64Code {
    public static final char __pad = '=';
    public static final char[] __rfc1421alphabet = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
    public static final byte[] __rfc1421nibbles = new byte[256];

    static {
        for (int i4 = 0; i4 < 256; i4++) {
            __rfc1421nibbles[i4] = -1;
        }
        for (byte b4 = 0; b4 < 64; b4 = (byte) (b4 + 1)) {
            __rfc1421nibbles[(byte) __rfc1421alphabet[b4]] = b4;
        }
        __rfc1421nibbles[61] = 0;
    }

    public static String decode(String str, String str2) {
        byte[] bArrDecode = decode(str);
        return str2 == null ? new String(bArrDecode) : new String(bArrDecode, str2);
    }

    public static String encode(String str) {
        try {
            return encode(str, (String) null);
        } catch (UnsupportedEncodingException e4) {
            throw new IllegalArgumentException(e4.toString());
        }
    }

    public static String encode(String str, String str2) throws UnsupportedEncodingException {
        byte[] bytes;
        if (str2 == null) {
            bytes = str.getBytes("ISO-8859-1");
        } else {
            bytes = str.getBytes(str2);
        }
        return new String(encode(bytes));
    }

    public static byte[] decode(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        int length = cArr.length;
        if (length % 4 == 0) {
            int i4 = 1;
            int i5 = length - 1;
            while (i5 >= 0 && cArr[i5] == '=') {
                i5--;
            }
            int i6 = 0;
            if (i5 < 0) {
                return new byte[0];
            }
            int i7 = ((i5 + 1) * 3) / 4;
            byte[] bArr = new byte[i7];
            int i8 = (i7 / 3) * 3;
            int i9 = 0;
            while (i6 < i8) {
                try {
                    byte[] bArr2 = __rfc1421nibbles;
                    int i10 = i9 + 1;
                    try {
                        byte b4 = bArr2[cArr[i9]];
                        int i11 = i10 + 1;
                        try {
                            byte b5 = bArr2[cArr[i10]];
                            int i12 = i11 + 1;
                            try {
                                byte b6 = bArr2[cArr[i11]];
                                int i13 = i12 + 1;
                                try {
                                    byte b7 = bArr2[cArr[i12]];
                                    if (b4 >= 0 && b5 >= 0 && b6 >= 0 && b7 >= 0) {
                                        int i14 = i6 + 1;
                                        bArr[i6] = (byte) ((b4 << 2) | (b5 >>> 4));
                                        int i15 = i14 + 1;
                                        bArr[i14] = (byte) ((b5 << 4) | (b6 >>> 2));
                                        bArr[i15] = (byte) ((b6 << 6) | b7);
                                        i6 = i15 + 1;
                                        i9 = i13;
                                    } else {
                                        throw new IllegalArgumentException("Not B64 encoded");
                                    }
                                } catch (IndexOutOfBoundsException unused) {
                                    i9 = i13;
                                    throw new IllegalArgumentException(a.a("char ", i9, " was not B64 encoded"));
                                }
                            } catch (IndexOutOfBoundsException unused2) {
                                i9 = i12;
                            }
                        } catch (IndexOutOfBoundsException unused3) {
                            i9 = i11;
                        }
                    } catch (IndexOutOfBoundsException unused4) {
                        i9 = i10;
                    }
                } catch (IndexOutOfBoundsException unused5) {
                }
            }
            if (i7 != i6) {
                int i16 = i7 % 3;
                try {
                    if (i16 == 1) {
                        byte[] bArr3 = __rfc1421nibbles;
                        i4 = i9 + 1;
                        byte b8 = bArr3[cArr[i9]];
                        int i17 = i4 + 1;
                        byte b9 = bArr3[cArr[i4]];
                        if (b8 >= 0 && b9 >= 0) {
                            bArr[i6] = (byte) ((b9 >>> 4) | (b8 << 2));
                        } else {
                            throw new IllegalArgumentException("Not B64 encoded");
                        }
                    } else if (i16 == 2) {
                        byte[] bArr4 = __rfc1421nibbles;
                        int i18 = i9 + 1;
                        byte b10 = bArr4[cArr[i9]];
                        int i19 = i18 + 1;
                        try {
                            byte b11 = bArr4[cArr[i18]];
                            int i20 = i19 + 1;
                            byte b12 = bArr4[cArr[i19]];
                            if (b10 >= 0 && b11 >= 0 && b12 >= 0) {
                                bArr[i6] = (byte) ((b10 << 2) | (b11 >>> 4));
                                i4 = b11 << 4;
                                bArr[i6 + 1] = (byte) ((b12 >>> 2) | i4);
                            } else {
                                throw new IllegalArgumentException("Not B64 encoded");
                            }
                        } catch (IndexOutOfBoundsException unused6) {
                            i9 = i19;
                            throw new IllegalArgumentException(a.a("char ", i9, " was not B64 encoded"));
                        }
                    }
                } catch (IndexOutOfBoundsException unused7) {
                    i9 = i4;
                }
            }
            return bArr;
        }
        throw new IllegalArgumentException("Input block size is not 4");
    }

    public static char[] encode(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        char[] cArr = new char[((length + 2) / 3) * 4];
        int i4 = (length / 3) * 3;
        int i5 = 0;
        int i6 = 0;
        while (i5 < i4) {
            int i7 = i5 + 1;
            byte b4 = bArr[i5];
            int i8 = i7 + 1;
            byte b5 = bArr[i7];
            int i9 = i8 + 1;
            byte b6 = bArr[i8];
            int i10 = i6 + 1;
            char[] cArr2 = __rfc1421alphabet;
            cArr[i6] = cArr2[(b4 >>> 2) & 63];
            int i11 = i10 + 1;
            cArr[i10] = cArr2[((b4 << 4) & 63) | ((b5 >>> 4) & 15)];
            int i12 = i11 + 1;
            cArr[i11] = cArr2[((b5 << 2) & 63) | ((b6 >>> 6) & 3)];
            i6 = i12 + 1;
            cArr[i12] = cArr2[b6 & 63];
            i5 = i9;
        }
        if (length != i5) {
            int i13 = length % 3;
            if (i13 == 1) {
                byte b7 = bArr[i5];
                int i14 = i6 + 1;
                char[] cArr3 = __rfc1421alphabet;
                cArr[i6] = cArr3[(b7 >>> 2) & 63];
                int i15 = i14 + 1;
                cArr[i14] = cArr3[(b7 << 4) & 63];
                cArr[i15] = __pad;
                cArr[i15 + 1] = __pad;
            } else if (i13 == 2) {
                int i16 = i5 + 1;
                byte b8 = bArr[i5];
                byte b9 = bArr[i16];
                int i17 = i6 + 1;
                char[] cArr4 = __rfc1421alphabet;
                cArr[i6] = cArr4[(b8 >>> 2) & 63];
                int i18 = i17 + 1;
                cArr[i17] = cArr4[((b8 << 4) & 63) | ((b9 >>> 4) & 15)];
                cArr[i18] = cArr4[(b9 << 2) & 63];
                cArr[i18 + 1] = __pad;
            }
        }
        return cArr;
    }

    public static char[] encode(byte[] bArr, boolean z3) {
        if (bArr == null) {
            return null;
        }
        if (!z3) {
            return encode(bArr);
        }
        int length = bArr.length;
        int i4 = ((length + 2) / 3) * 4;
        char[] cArr = new char[((i4 / 76) * 2) + 2 + i4];
        int i5 = (length / 3) * 3;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i6 < i5) {
            int i9 = i6 + 1;
            byte b4 = bArr[i6];
            int i10 = i9 + 1;
            byte b5 = bArr[i9];
            int i11 = i10 + 1;
            byte b6 = bArr[i10];
            int i12 = i7 + 1;
            char[] cArr2 = __rfc1421alphabet;
            cArr[i7] = cArr2[(b4 >>> 2) & 63];
            int i13 = i12 + 1;
            cArr[i12] = cArr2[((b4 << 4) & 63) | ((b5 >>> 4) & 15)];
            int i14 = i13 + 1;
            cArr[i13] = cArr2[((b5 << 2) & 63) | ((b6 >>> 6) & 3)];
            i7 = i14 + 1;
            cArr[i14] = cArr2[b6 & 63];
            i8 += 4;
            if (i8 % 76 == 0) {
                int i15 = i7 + 1;
                cArr[i7] = '\r';
                i7 = i15 + 1;
                cArr[i15] = '\n';
            }
            i6 = i11;
        }
        if (length != i6) {
            int i16 = length % 3;
            if (i16 == 1) {
                byte b7 = bArr[i6];
                int i17 = i7 + 1;
                char[] cArr3 = __rfc1421alphabet;
                cArr[i7] = cArr3[(b7 >>> 2) & 63];
                int i18 = i17 + 1;
                cArr[i17] = cArr3[(b7 << 4) & 63];
                int i19 = i18 + 1;
                cArr[i18] = __pad;
                i7 = i19 + 1;
                cArr[i19] = __pad;
            } else if (i16 == 2) {
                int i20 = i6 + 1;
                byte b8 = bArr[i6];
                byte b9 = bArr[i20];
                int i21 = i7 + 1;
                char[] cArr4 = __rfc1421alphabet;
                cArr[i7] = cArr4[(b8 >>> 2) & 63];
                int i22 = i21 + 1;
                cArr[i21] = cArr4[((b8 << 4) & 63) | ((b9 >>> 4) & 15)];
                int i23 = i22 + 1;
                cArr[i22] = cArr4[(b9 << 2) & 63];
                i7 = i23 + 1;
                cArr[i23] = __pad;
            }
        }
        cArr[i7] = '\r';
        cArr[i7 + 1] = '\n';
        return cArr;
    }

    public static byte[] decode(String str) {
        if (str == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((str.length() * 4) / 3);
        decode(str, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static void decode(String str, ByteArrayOutputStream byteArrayOutputStream) {
        if (str == null) {
            return;
        }
        if (byteArrayOutputStream != null) {
            byte[] bArr = new byte[4];
            int i4 = 0;
            int i5 = 0;
            while (i4 < str.length()) {
                int i6 = i4 + 1;
                char cCharAt = str.charAt(i4);
                if (cCharAt == '=') {
                    return;
                }
                if (!Character.isWhitespace(cCharAt)) {
                    byte[] bArr2 = __rfc1421nibbles;
                    if (bArr2[cCharAt] >= 0) {
                        int i7 = i5 + 1;
                        bArr[i5] = bArr2[cCharAt];
                        if (i7 == 2) {
                            byteArrayOutputStream.write((bArr[1] >>> 4) | (bArr[0] << 2));
                        } else if (i7 == 3) {
                            byteArrayOutputStream.write((bArr[1] << 4) | (bArr[2] >>> 2));
                        } else if (i7 == 4) {
                            byteArrayOutputStream.write((bArr[2] << 6) | bArr[3]);
                            i5 = 0;
                        }
                        i5 = i7;
                    } else {
                        throw new IllegalArgumentException("Not B64 encoded");
                    }
                }
                i4 = i6;
            }
            return;
        }
        throw new IllegalArgumentException("No outputstream for decoded bytes");
    }

    public static void encode(int i4, Appendable appendable) throws IOException {
        char[] cArr = __rfc1421alphabet;
        appendable.append(cArr[(((-67108864) & i4) >> 26) & 63]);
        appendable.append(cArr[((66060288 & i4) >> 20) & 63]);
        appendable.append(cArr[((1032192 & i4) >> 14) & 63]);
        appendable.append(cArr[((i4 & 16128) >> 8) & 63]);
        appendable.append(cArr[((i4 & 252) >> 2) & 63]);
        appendable.append(cArr[((i4 & 3) << 4) & 63]);
        appendable.append(__pad);
    }

    public static void encode(long j4, Appendable appendable) throws IOException {
        int i4 = (int) ((j4 >> 32) & (-4));
        char[] cArr = __rfc1421alphabet;
        appendable.append(cArr[(((-67108864) & i4) >> 26) & 63]);
        appendable.append(cArr[((66060288 & i4) >> 20) & 63]);
        appendable.append(cArr[((1032192 & i4) >> 14) & 63]);
        appendable.append(cArr[((i4 & 16128) >> 8) & 63]);
        appendable.append(cArr[((i4 & 252) >> 2) & 63]);
        appendable.append(cArr[(((i4 & 3) << 4) + (((int) (j4 >> 28)) & 15)) & 63]);
        int i5 = 268435455 & ((int) j4);
        appendable.append(cArr[((264241152 & i5) >> 22) & 63]);
        appendable.append(cArr[((4128768 & i5) >> 16) & 63]);
        appendable.append(cArr[((64512 & i5) >> 10) & 63]);
        appendable.append(cArr[((i5 & PointerIconCompat.TYPE_TEXT) >> 4) & 63]);
        appendable.append(cArr[((i5 & 15) << 2) & 63]);
    }
}
