package com.stripe.bbpos.bbdevice;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.lang.reflect.Array;
import kotlin.io.encoding.Base64;
import okio.Utf8;
import org.kamranzafar.jtar.TarHeader;

/* JADX INFO: loaded from: classes3.dex */
class ccc043zz {
    static int aaa000 = 0;
    static int aaa001 = 1;
    static int aaa002 = 0;
    static int aaa003 = 1;
    static int aaa004 = 24;
    static byte[] aaa005 = {58, TarHeader.LF_SYMLINK, 42, 34, Ascii.SUB, Ascii.DC2, 10, 2, 60, TarHeader.LF_BLK, 44, 36, Ascii.FS, Ascii.DC4, 12, 4, 62, TarHeader.LF_FIFO, 46, 38, Ascii.RS, Ascii.SYN, 14, 6, SignedBytes.MAX_POWER_OF_TWO, 56, TarHeader.LF_NORMAL, 40, 32, Ascii.CAN, 16, 8, 57, TarHeader.LF_LINK, 41, 33, Ascii.EM, 17, 9, 1, 59, TarHeader.LF_CHR, 43, 35, Ascii.ESC, 19, 11, 3, Base64.padSymbol, TarHeader.LF_DIR, 45, 37, Ascii.GS, Ascii.NAK, 13, 5, Utf8.REPLACEMENT_BYTE, TarHeader.LF_CONTIG, 47, 39, 31, Ascii.ETB, 15, 7};
    static byte[] aaa006 = {40, 8, TarHeader.LF_NORMAL, 16, 56, Ascii.CAN, SignedBytes.MAX_POWER_OF_TWO, 32, 39, 7, 47, 15, TarHeader.LF_CONTIG, Ascii.ETB, Utf8.REPLACEMENT_BYTE, 31, 38, 6, 46, 14, TarHeader.LF_FIFO, Ascii.SYN, 62, Ascii.RS, 37, 5, 45, 13, TarHeader.LF_DIR, Ascii.NAK, Base64.padSymbol, Ascii.GS, 36, 4, 44, 12, TarHeader.LF_BLK, Ascii.DC4, 60, Ascii.FS, 35, 3, 43, 11, TarHeader.LF_CHR, 19, 59, Ascii.ESC, 34, 2, 42, 10, TarHeader.LF_SYMLINK, Ascii.DC2, 58, Ascii.SUB, 33, 1, 41, 9, TarHeader.LF_LINK, 17, 57, Ascii.EM};
    static byte[] aaa007 = {32, 1, 2, 3, 4, 5, 4, 5, 6, 7, 8, 9, 8, 9, 10, 11, 12, 13, 12, 13, 14, 15, 16, 17, 16, 17, Ascii.DC2, 19, Ascii.DC4, Ascii.NAK, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.EM, Ascii.CAN, Ascii.EM, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.GS, Ascii.FS, Ascii.GS, Ascii.RS, 31, 32, 1};
    static byte[] aaa008 = {16, 7, Ascii.DC4, Ascii.NAK, Ascii.GS, 12, Ascii.FS, 17, 1, 15, Ascii.ETB, Ascii.SUB, 5, Ascii.DC2, 31, 10, 2, 8, Ascii.CAN, 14, 32, Ascii.ESC, 3, 9, 19, 13, Ascii.RS, 6, Ascii.SYN, 11, 4, Ascii.EM};
    static byte[] aaa009 = {57, TarHeader.LF_LINK, 41, 33, Ascii.EM, 17, 9, 1, 58, TarHeader.LF_SYMLINK, 42, 34, Ascii.SUB, Ascii.DC2, 10, 2, 59, TarHeader.LF_CHR, 43, 35, Ascii.ESC, 19, 11, 3, 60, TarHeader.LF_BLK, 44, 36, Utf8.REPLACEMENT_BYTE, TarHeader.LF_CONTIG, 47, 39, 31, Ascii.ETB, 15, 7, 62, TarHeader.LF_FIFO, 46, 38, Ascii.RS, Ascii.SYN, 14, 6, Base64.padSymbol, TarHeader.LF_DIR, 45, 37, Ascii.GS, Ascii.NAK, 13, 5, Ascii.FS, Ascii.DC4, 12, 4};
    static byte[] aaa010 = {14, 17, 11, Ascii.CAN, 1, 5, 3, Ascii.FS, 15, 6, Ascii.NAK, 10, Ascii.ETB, 19, 12, 4, Ascii.SUB, 8, 16, 7, Ascii.ESC, Ascii.DC4, 13, 2, 41, TarHeader.LF_BLK, 31, 37, 47, TarHeader.LF_CONTIG, Ascii.RS, 40, TarHeader.LF_CHR, 45, 33, TarHeader.LF_NORMAL, 44, TarHeader.LF_LINK, 39, 56, 34, TarHeader.LF_DIR, 46, 42, TarHeader.LF_SYMLINK, 36, Ascii.GS, 32};
    static byte[] aaa011 = {1, 1, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 1};
    static byte[][][] aaa012 = {new byte[][]{new byte[]{14, 4, 13, 1, 2, 15, 11, 8, 3, 10, 6, 12, 5, 9, 0, 7}, new byte[]{0, 15, 7, 4, 14, 2, 13, 1, 10, 6, 12, 11, 9, 5, 3, 8}, new byte[]{4, 1, 14, 8, 13, 6, 2, 11, 15, 12, 9, 7, 3, 10, 5, 0}, new byte[]{15, 12, 8, 2, 4, 9, 1, 7, 5, 11, 3, 14, 10, 0, 6, 13}}, new byte[][]{new byte[]{15, 1, 8, 14, 6, 11, 3, 4, 9, 7, 2, 13, 12, 0, 5, 10}, new byte[]{3, 13, 4, 7, 15, 2, 8, 14, 12, 0, 1, 10, 6, 9, 11, 5}, new byte[]{0, 14, 7, 11, 10, 4, 13, 1, 5, 8, 12, 6, 9, 3, 2, 15}, new byte[]{13, 8, 10, 1, 3, 15, 4, 2, 11, 6, 7, 12, 0, 5, 14, 9}}, new byte[][]{new byte[]{10, 0, 9, 14, 6, 3, 15, 5, 1, 13, 12, 7, 11, 4, 2, 8}, new byte[]{13, 7, 0, 9, 3, 4, 6, 10, 2, 8, 5, 14, 12, 11, 15, 1}, new byte[]{13, 6, 4, 9, 8, 15, 3, 0, 11, 1, 2, 12, 5, 10, 14, 7}, new byte[]{1, 10, 13, 0, 6, 9, 8, 7, 4, 15, 14, 3, 11, 5, 2, 12}}, new byte[][]{new byte[]{7, 13, 14, 3, 0, 6, 9, 10, 1, 2, 8, 5, 11, 12, 4, 15}, new byte[]{13, 8, 11, 5, 6, 15, 0, 3, 4, 7, 2, 12, 1, 10, 14, 9}, new byte[]{10, 6, 9, 0, 12, 11, 7, 13, 15, 1, 3, 14, 5, 2, 8, 4}, new byte[]{3, 15, 0, 6, 10, 1, 13, 8, 9, 4, 5, 11, 12, 7, 2, 14}}, new byte[][]{new byte[]{2, 12, 4, 1, 7, 10, 11, 6, 8, 5, 3, 15, 13, 0, 14, 9}, new byte[]{14, 11, 2, 12, 4, 7, 13, 1, 5, 0, 15, 10, 3, 9, 8, 6}, new byte[]{4, 2, 1, 11, 10, 13, 7, 8, 15, 9, 12, 5, 6, 3, 0, 14}, new byte[]{11, 8, 12, 7, 1, 14, 2, 13, 6, 15, 0, 9, 10, 4, 5, 3}}, new byte[][]{new byte[]{12, 1, 10, 15, 9, 2, 6, 8, 0, 13, 3, 4, 14, 7, 5, 11}, new byte[]{10, 15, 4, 2, 7, 12, 9, 5, 6, 1, 13, 14, 0, 11, 3, 8}, new byte[]{9, 14, 15, 5, 2, 8, 12, 3, 7, 0, 4, 10, 1, 13, 11, 6}, new byte[]{4, 3, 2, 12, 9, 5, 15, 10, 11, 14, 1, 7, 6, 0, 8, 13}}, new byte[][]{new byte[]{4, 11, 2, 14, 15, 0, 8, 13, 3, 12, 9, 7, 5, 10, 6, 1}, new byte[]{13, 0, 11, 7, 4, 9, 1, 10, 14, 3, 5, 12, 2, 15, 8, 6}, new byte[]{1, 4, 11, 13, 12, 3, 7, 14, 10, 15, 6, 8, 0, 5, 9, 2}, new byte[]{6, 11, 13, 8, 1, 4, 10, 7, 9, 5, 0, 15, 14, 2, 3, 12}}, new byte[][]{new byte[]{13, 2, 8, 4, 6, 15, 11, 1, 10, 9, 3, 14, 5, 0, 12, 7}, new byte[]{1, 15, 13, 8, 10, 3, 7, 4, 12, 5, 6, 11, 0, 14, 9, 2}, new byte[]{7, 11, 4, 1, 9, 12, 14, 2, 0, 6, 10, 13, 15, 3, 5, 8}, new byte[]{2, 1, 14, 7, 4, 10, 8, 13, 15, 12, 9, 0, 3, 5, 6, 11}}};

    static void aaa000(byte[] bArr, byte[] bArr2, int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            bArr[i3 - i] = bArr2[i3];
        }
    }

    static void aaa001(byte[] bArr, byte[] bArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) ((bArr2[i2 >> 3] >> ((byte) (7 - (i2 & 7)))) & 1);
        }
    }

    static void aaa002(byte[] bArr, byte[] bArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = bArr2[i2];
        }
    }

    static void aaa003(byte[] bArr, byte[] bArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) (bArr[i2] ^ bArr2[i2]);
        }
    }

    static void aaa000(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            bArr[(i4 - i2) + i] = bArr2[i4];
        }
    }

    static void aaa001(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < 8; i++) {
            int i2 = i * 6;
            int i3 = (bArr2[i2] << 1) + bArr2[i2 + 5];
            int i4 = (bArr2[i2 + 1] << 3) + (bArr2[i2 + 2] << 2) + (bArr2[i2 + 3] << 1) + bArr2[i2 + 4];
            for (int i5 = 0; i5 < 4; i5++) {
                bArr[(i * 4) + i5] = (byte) ((aaa012[i][i3][i4] >> ((byte) (3 - i5))) & 1);
            }
        }
    }

    static void aaa000(byte[] bArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = 0;
        }
    }

    static void aaa000(byte[] bArr, byte[] bArr2, int i) {
        aaa000(bArr, i >> 3);
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = i2 >> 3;
            bArr[i3] = (byte) (bArr[i3] | (bArr2[i2] << ((7 - i2) & 7)));
        }
    }

    static void aaa000(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[256];
        if (i < 256 && i2 != 0 && i2 < 256) {
            aaa000(bArr2, 256);
            aaa002(bArr2, bArr, i2);
            int i3 = i - i2;
            aaa000(bArr, bArr, i2, i3);
            aaa000(bArr, i3, bArr2, 0, i2);
        }
    }

    static void aaa000(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) {
        byte[] bArr4 = new byte[256];
        if (bArr.length == 0 || bArr2.length == 0 || bArr3.length == 0 || i >= 256) {
            return;
        }
        aaa000(bArr4, 256);
        for (int i2 = 0; i2 < i; i2++) {
            bArr4[i2] = bArr2[bArr3[i2] - 1];
        }
        aaa002(bArr, bArr4, i);
    }

    static void aaa000(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[48];
        aaa000(bArr3, 48);
        aaa000(bArr3, bArr, aaa007, 48);
        aaa003(bArr3, bArr2, 48);
        aaa001(bArr, bArr3);
        aaa000(bArr, bArr, aaa008, 32);
    }

    static void aaa000(byte[][] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[64];
        byte[] bArr4 = new byte[28];
        byte[] bArr5 = new byte[28];
        aaa001(bArr3, bArr2, 64);
        aaa000(bArr3, bArr3, aaa009, 56);
        aaa000(bArr4, bArr3, 0, 28);
        aaa000(bArr5, bArr3, 28, 28);
        for (int i = 0; i < 16; i++) {
            aaa000(bArr4, 28, aaa011[i]);
            aaa000(bArr5, 28, aaa011[i]);
            aaa000(bArr3, bArr4, 0, 28);
            aaa000(bArr3, 28, bArr5, 0, 28);
            aaa000(bArr[i], bArr3, aaa010, 48);
        }
    }

    static void aaa000(byte[] bArr, byte[] bArr2, byte[][] bArr3, int i) {
        byte[] bArr4 = new byte[64];
        byte[] bArr5 = new byte[32];
        byte[] bArr6 = new byte[32];
        byte[] bArr7 = new byte[32];
        aaa001(bArr4, bArr2, 64);
        aaa000(bArr4, bArr4, aaa005, 64);
        aaa002(bArr5, bArr4, 32);
        aaa000(bArr6, bArr4, 32, 32);
        if (i == aaa000) {
            for (int i2 = 0; i2 < 16; i2++) {
                aaa002(bArr7, bArr6, 32);
                aaa000(bArr6, bArr3[i2]);
                aaa003(bArr6, bArr5, 32);
                aaa002(bArr5, bArr7, 32);
            }
        } else {
            for (int i3 = 15; i3 >= 0; i3--) {
                aaa002(bArr7, bArr6, 32);
                aaa000(bArr6, bArr3[i3]);
                aaa003(bArr6, bArr5, 32);
                aaa002(bArr5, bArr7, 32);
            }
        }
        aaa002(bArr4, bArr5, 32);
        aaa000(bArr4, 32, bArr6, 0, 32);
        aaa000(bArr4, 64, 32);
        aaa000(bArr4, bArr4, aaa006, 64);
        aaa000(bArr, bArr4, 64);
    }

    public static int aaa000(int i, int i2, byte[] bArr, int i3, byte[] bArr2, int i4, byte[] bArr3, int i5) {
        int i6 = 3;
        int i7 = 16;
        byte[][][] bArr4 = (byte[][][]) Array.newInstance((Class<?>) Byte.TYPE, 3, 16, 48);
        byte[] bArr5 = new byte[8];
        byte[] bArr6 = new byte[8];
        int i8 = 0;
        byte[] bArr7 = new byte[8];
        if (bArr.length == 0 || bArr2.length == 0 || bArr3.length == 0) {
            return 0;
        }
        if ((((byte) i3) & 7) > 0 || (((byte) i4) & 7) > 0 || i5 < i3) {
            return 0;
        }
        int i9 = i4 >> 3;
        if (i9 > 3) {
            i9 = 3;
        }
        int i10 = 0;
        while (i10 < i6) {
            int i11 = i6;
            int i12 = 0;
            while (i12 < i7) {
                aaa000(bArr4[i10][i12], 48);
                i12++;
                i7 = 16;
            }
            i10++;
            i6 = i11;
            i7 = 16;
        }
        int i13 = i6;
        for (int i14 = 0; i14 < i9; i14++) {
            aaa000(bArr5, bArr2, i14 << 3, 8);
            aaa000(bArr4[i14], bArr5);
        }
        if (i2 != aaa002) {
            return i2 == aaa003 ? 1 : 0;
        }
        if (i9 == 1) {
            int i15 = i3 >> 3;
            int i16 = 0;
            while (i16 < i15) {
                int i17 = i16 * 8;
                aaa000(bArr6, bArr3, i17, 8);
                aaa000(bArr7, bArr, i17, 8);
                aaa000(bArr6, bArr7, bArr4[i8], i);
                aaa000(bArr3, i17, bArr6, i8, 8);
                i16++;
                i8 = 0;
            }
            return 1;
        }
        if (i9 == 2) {
            int i18 = i3 >> 3;
            for (int i19 = 0; i19 < i18; i19++) {
                int i20 = i19 * 8;
                aaa000(bArr6, bArr3, i20, 8);
                aaa000(bArr7, bArr, i20, 8);
                aaa000(bArr6, bArr7, bArr4[0], i);
                byte[][] bArr8 = bArr4[1];
                int i21 = aaa000;
                if (i == i21) {
                    i21 = aaa001;
                }
                aaa000(bArr6, bArr6, bArr8, i21);
                aaa000(bArr6, bArr6, bArr4[0], i);
                aaa000(bArr3, i20, bArr6, 0, 8);
            }
            return 1;
        }
        if (i9 != i13) {
            return 0;
        }
        int i22 = i3 >> i13;
        for (int i23 = 0; i23 < i22; i23++) {
            int i24 = i23 * 8;
            aaa000(bArr6, bArr3, i24, 8);
            aaa000(bArr7, bArr, i24, 8);
            aaa000(bArr6, bArr7, bArr4[i == aaa001 ? (char) 2 : (char) 0], i);
            byte[][] bArr9 = bArr4[1];
            int i25 = aaa000;
            if (i == i25) {
                i25 = aaa001;
            }
            aaa000(bArr6, bArr6, bArr9, i25);
            aaa000(bArr6, bArr6, bArr4[i == aaa001 ? (char) 0 : (char) 2], i);
            aaa000(bArr3, i24, bArr6, 0, 8);
        }
        return 1;
    }
}
