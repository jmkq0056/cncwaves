package com.stripe.bbpos.bbdevice.ota;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.sun.jna.platform.win32.OleAuto;
import kotlin.io.encoding.Base64;
import org.kamranzafar.jtar.TarHeader;

/* JADX INFO: loaded from: classes3.dex */
class h {
    private static byte[] a = {TarHeader.LF_LINK, -120, -124, -126, -127, 8, -127, 8, 4, 2, 1, -104, 1, -104, -108, -110, -111, Ascii.CAN, -111, Ascii.CAN, Ascii.DC4, Ascii.DC2, 17, -88, 17, -88, -92, -94, -95, 40, -95, 40, 36, 34, 33, -72, 33, -72, -76, -78, -79, 56, -79, 56, TarHeader.LF_BLK, TarHeader.LF_SYMLINK, TarHeader.LF_LINK, -120};
    private static byte[] b = {17, 2, -95, 40, 56, -111, -79, -88, -120, Ascii.DC2, 34, -76, 8, -92, TarHeader.LF_SYMLINK, -108, -124, 1, 33, Ascii.DC4, TarHeader.LF_LINK, -78, -126, -104, -94, Ascii.CAN, TarHeader.LF_BLK, 4, 36, -110, -127, -72};
    private static byte[] c = {-17, 3, 65, -3, -40, 116, Ascii.RS, 71, 38, -17, -5, 34, -77, -40, -124, Ascii.RS, 57, -84, -89, 96, 98, -63, -51, -70, 92, -106, -112, 89, 5, 59, 122, -123, SignedBytes.MAX_POWER_OF_TWO, -3, Ascii.RS, -56, -25, -118, -117, 33, -38, 67, 100, -97, 45, Ascii.DC4, -79, 114, -11, 91, -56, -74, -100, TarHeader.LF_CONTIG, 118, -20, 57, -96, -93, 5, 82, 110, 15, -39};
    private static byte[] d = {-89, -35, 13, 120, -98, 11, -29, -107, 96, TarHeader.LF_FIFO, TarHeader.LF_FIFO, 79, -7, 96, 90, -93, 17, 36, -46, -121, -56, 82, 117, -20, -69, -63, 76, -70, 36, -2, -113, Ascii.EM, -38, 19, 102, -81, 73, -48, -112, 6, -116, 106, -5, -111, TarHeader.LF_CONTIG, -115, 13, 120, -65, 73, 17, -12, 35, -27, -50, 59, 85, -68, -94, 87, -24, 34, 116, -50};
    private static byte[] e = {44, -22, -63, -65, 74, 36, 31, -62, 121, 71, -94, 124, -74, -39, 104, Ascii.NAK, -128, 86, 93, 1, TarHeader.LF_CHR, -3, -12, -82, -34, TarHeader.LF_NORMAL, 7, -101, -27, -125, -101, 104, 73, -76, 46, -125, 31, -62, -75, 124, -94, Ascii.EM, -40, -27, 124, 47, -125, -38, -9, 107, -112, -2, -60, 1, 90, -105, 97, -90, Base64.padSymbol, SignedBytes.MAX_POWER_OF_TWO, 11, 88, -26, Base64.padSymbol};
    private static byte[] f = {77, -47, -78, 15, 40, -67, -28, 120, -10, 74, 15, -109, -117, Ascii.ETB, -47, -92, 58, -20, -55, TarHeader.LF_DIR, -109, 86, 126, -53, 85, 32, -96, -2, 108, -119, Ascii.ETB, 98, Ascii.ETB, 98, 75, -79, -76, -34, -47, -121, -55, Ascii.DC4, 60, 74, 126, -88, -30, 125, -96, -97, -10, 92, 106, 9, -115, -16, 15, -29, 83, 37, -107, TarHeader.LF_FIFO, 40, -53};

    static byte[] a(byte[] bArr, byte[] bArr2) {
        short[] sArr = new short[8];
        short[] sArr2 = new short[8];
        byte[] bArr3 = new byte[8];
        a(bArr, sArr);
        for (int i = 0; i < 24; i++) {
            a(6, sArr2, sArr, 4, a);
            int i2 = i * 16;
            a(sArr2, bArr2, i2, 8);
            byte[] bArr4 = c;
            sArr2[0] = (short) ((bArr4[sArr2[1]] & 15) | (bArr4[sArr2[0]] & 240));
            byte[] bArr5 = d;
            sArr2[1] = (short) ((bArr5[sArr2[3]] & 15) | (bArr5[sArr2[2]] & 240));
            byte[] bArr6 = e;
            sArr2[2] = (short) ((bArr6[sArr2[5]] & 15) | (bArr6[sArr2[4]] & 240));
            byte[] bArr7 = f;
            sArr2[3] = (short) ((bArr7[sArr2[7]] & 15) | (bArr7[sArr2[6]] & 240));
            a(sArr, 0, sArr2);
            a(6, sArr2, sArr, 0, a);
            a(sArr2, bArr2, i2 + 8, 8);
            byte[] bArr8 = c;
            sArr2[0] = (short) ((bArr8[sArr2[1]] & 15) | (bArr8[sArr2[0]] & 240));
            byte[] bArr9 = d;
            sArr2[1] = (short) ((bArr9[sArr2[3]] & 15) | (bArr9[sArr2[2]] & 240));
            byte[] bArr10 = e;
            sArr2[2] = (short) ((bArr10[sArr2[5]] & 15) | (bArr10[sArr2[4]] & 240));
            byte[] bArr11 = f;
            sArr2[3] = (short) ((bArr11[sArr2[7]] & 15) | (bArr11[sArr2[6]] & 240));
            a(sArr, 4, sArr2);
            if (i == 7 || i == 15) {
                a(sArr2, 0, sArr, 0, 4);
                a(sArr, 0, sArr, 4, 4);
                a(sArr, 4, sArr2, 0, 4);
            }
        }
        a(sArr, bArr3);
        return bArr3;
    }

    static byte[] b(byte[] bArr, byte[] bArr2) {
        if (bArr.length % 8 != 0) {
            return null;
        }
        byte[] bArr3 = new byte[bArr.length];
        byte[] bArr4 = new byte[8];
        byte[] bArrA = new byte[8];
        for (int i = 0; i < bArr.length; i += 8) {
            for (int i2 = 0; i2 < 8; i2++) {
                bArr4[i2] = (byte) (bArr[i + i2] ^ bArrA[i2]);
            }
            bArrA = a(bArr4, bArr2);
            for (int i3 = 0; i3 < 8; i3++) {
                bArr3[i + i3] = bArrA[i3];
            }
        }
        return bArr3;
    }

    private static void a(byte[] bArr, short[] sArr) {
        int i;
        char c2 = 7;
        int i2 = 7;
        while (true) {
            if (i2 < 0) {
                break;
            }
            short s = (short) (sArr[0] << 1);
            sArr[0] = s;
            short s2 = (short) (sArr[1] << 1);
            sArr[1] = s2;
            short s3 = (short) (sArr[2] << 1);
            sArr[2] = s3;
            short s4 = (short) (sArr[3] << 1);
            sArr[3] = s4;
            short s5 = (short) (sArr[4] << 1);
            sArr[4] = s5;
            short s6 = (short) (sArr[5] << 1);
            sArr[5] = s6;
            short s7 = (short) (sArr[6] << 1);
            sArr[6] = s7;
            char c3 = c2;
            short s8 = (short) (sArr[c2] << 1);
            sArr[c3] = s8;
            short s9 = (short) (bArr[i2] & 255);
            if ((s9 & 64) > 0) {
                sArr[0] = (short) (s + 1);
            }
            if ((s9 & 16) > 0) {
                sArr[1] = (short) (s2 + 1);
            }
            if ((s9 & 4) > 0) {
                sArr[2] = (short) (s3 + 1);
            }
            if ((s9 & 1) > 0) {
                sArr[3] = (short) (s4 + 1);
            }
            if ((s9 & OleAuto.VARIANT_USE_NLS) > 0) {
                sArr[4] = (short) (s5 + 1);
            }
            if ((s9 & 32) > 0) {
                sArr[5] = (short) (s6 + 1);
            }
            if ((s9 & 8) > 0) {
                sArr[6] = (short) (s7 + 1);
            }
            if ((s9 & 2) > 0) {
                sArr[c3] = (short) (s8 + 1);
            }
            i2--;
            c2 = c3;
        }
        for (i = 0; i < 8; i++) {
            sArr[i] = (short) (sArr[i] & 255);
        }
    }

    private static void a(short s, short[] sArr) {
        short s2 = (short) (sArr[0] << 1);
        sArr[0] = s2;
        short s3 = (short) (sArr[1] << 1);
        sArr[1] = s3;
        short s4 = (short) (sArr[2] << 1);
        sArr[2] = s4;
        short s5 = (short) (sArr[3] << 1);
        sArr[3] = s5;
        short s6 = (short) (sArr[4] << 1);
        sArr[4] = s6;
        short s7 = (short) (sArr[5] << 1);
        sArr[5] = s7;
        short s8 = (short) (sArr[6] << 1);
        sArr[6] = s8;
        short s9 = (short) (sArr[7] << 1);
        sArr[7] = s9;
        if ((s & 1) > 0) {
            sArr[0] = (short) (s2 + 1);
        }
        if ((s & 2) > 0) {
            sArr[1] = (short) (s3 + 1);
        }
        if ((s & 4) > 0) {
            sArr[2] = (short) (s4 + 1);
        }
        if ((s & 8) > 0) {
            sArr[3] = (short) (s5 + 1);
        }
        if ((s & 16) > 0) {
            sArr[4] = (short) (s6 + 1);
        }
        if ((s & 32) > 0) {
            sArr[5] = (short) (s7 + 1);
        }
        if ((s & 64) > 0) {
            sArr[6] = (short) (s8 + 1);
        }
        if ((s & OleAuto.VARIANT_USE_NLS) > 0) {
            sArr[7] = (short) (s9 + 1);
        }
    }

    private static void a(short[] sArr, byte[] bArr) {
        short[] sArr2 = new short[8];
        a(sArr[0], sArr2);
        a(sArr[4], sArr2);
        a(sArr[1], sArr2);
        a(sArr[5], sArr2);
        a(sArr[2], sArr2);
        a(sArr[6], sArr2);
        a(sArr[3], sArr2);
        a(sArr[7], sArr2);
        for (int i = 0; i < 8; i++) {
            bArr[i] = (byte) (sArr2[i] & 255);
        }
    }

    private static void a(int i, short[] sArr, short[] sArr2, int i2, byte[] bArr) {
        int i3 = 8;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i3 - 1;
            if (i3 <= 0) {
                return;
            }
            int i7 = i;
            short s = 0;
            while (true) {
                int i8 = i7 - 1;
                if (i7 > 0) {
                    s = (short) (s << 1);
                    int i9 = i4 + 1;
                    short s2 = (short) (bArr[i4] & 255);
                    short s3 = (short) (s2 & 15);
                    if ((s2 & OleAuto.VARIANT_USE_NLS) > 0) {
                        s3 = (short) (s3 << 4);
                    }
                    if ((sArr2[((short) (((short) (s2 >> 4)) & 7)) + i2] & s3) > 0) {
                        s = (short) (s + 1);
                    }
                    i4 = i9;
                    i7 = i8;
                }
            }
            sArr[i5] = (short) (s & 255);
            i5++;
            i3 = i6;
        }
    }

    private static void a(short[] sArr, int i, short[] sArr2) {
        int i2 = 0;
        for (int i3 = 0; i3 < 4; i3++) {
            int i4 = 0;
            short s = 0;
            while (i4 < 8) {
                s = (short) (s << 1);
                int i5 = i2 + 1;
                short s2 = b[i2];
                short s3 = (short) (s2 & 15);
                if ((s2 & OleAuto.VARIANT_USE_NLS) > 0) {
                    s3 = (short) (s3 << 4);
                }
                if ((sArr2[(short) (((short) (s2 >> 4)) & 7)] & s3) > 0) {
                    s = (short) (s + 1);
                }
                i4++;
                i2 = i5;
            }
            int i6 = i + i3;
            sArr[i6] = (short) (((short) (s & 255)) ^ sArr[i6]);
        }
    }

    private static void a(short[] sArr, byte[] bArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            sArr[i3] = (short) (sArr[i3] ^ ((short) (bArr[i + i3] & 255)));
        }
    }

    private static void a(short[] sArr, int i, short[] sArr2, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            sArr[i + i4] = sArr2[i2 + i4];
        }
    }
}
