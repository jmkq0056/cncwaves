package org.eclipse.jetty.util.security;

import android.support.v4.media.f;
import java.io.PrintStream;
import java.lang.reflect.Array;
import org.eclipse.jetty.http.HttpTokens;
import org.eclipse.jetty.io.BufferUtil;
import org.xbill.DNS.Flags;

/* JADX INFO: loaded from: classes2.dex */
public class UnixCrypt {
    private static final byte[] IP = {HttpTokens.COLON, 50, 42, 34, 26, 18, 10, 2, 60, 52, 44, 36, 28, 20, 12, 4, 62, 54, 46, 38, 30, 22, 14, 6, 64, 56, 48, 40, 32, 24, 16, 8, 57, 49, 41, 33, 25, 17, 9, 1, HttpTokens.SEMI_COLON, 51, 43, 35, 27, 19, Flags.CD, 3, 61, 53, BufferUtil.MINUS, 37, 29, 21, 13, 5, 63, 55, 47, 39, 31, 23, 15, 7};
    private static final byte[] ExpandTr = {32, 1, 2, 3, 4, 5, 4, 5, 6, 7, 8, 9, 8, 9, 10, Flags.CD, 12, 13, 12, 13, 14, 15, 16, 17, 16, 17, 18, 19, 20, 21, 20, 21, 22, 23, 24, 25, 24, 25, 26, 27, 28, 29, 28, 29, 30, 31, 32, 1};
    private static final byte[] PC1 = {57, 49, 41, 33, 25, 17, 9, 1, HttpTokens.COLON, 50, 42, 34, 26, 18, 10, 2, HttpTokens.SEMI_COLON, 51, 43, 35, 27, 19, Flags.CD, 3, 60, 52, 44, 36, 63, 55, 47, 39, 31, 23, 15, 7, 62, 54, 46, 38, 30, 22, 14, 6, 61, 53, BufferUtil.MINUS, 37, 29, 21, 13, 5, 28, 20, 12, 4};
    private static final byte[] Rotates = {1, 1, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 1};
    private static final byte[] PC2 = {9, 18, 14, 17, Flags.CD, 24, 1, 5, 22, 25, 3, 28, 15, 6, 21, 10, 35, 38, 23, 19, 12, 4, 26, 8, 43, 54, 16, 7, 27, 20, 13, 2, 0, 0, 41, 52, 31, 37, 47, 55, 0, 0, 30, 40, 51, BufferUtil.MINUS, 33, 48, 0, 0, 44, 49, 39, 56, 34, 53, 0, 0, 46, 42, 50, 36, 29, 32};
    private static final byte[][] S = {new byte[]{14, 4, 13, 1, 2, 15, Flags.CD, 8, 3, 10, 6, 12, 5, 9, 0, 7, 0, 15, 7, 4, 14, 2, 13, 1, 10, 6, 12, Flags.CD, 9, 5, 3, 8, 4, 1, 14, 8, 13, 6, 2, Flags.CD, 15, 12, 9, 7, 3, 10, 5, 0, 15, 12, 8, 2, 4, 9, 1, 7, 5, Flags.CD, 3, 14, 10, 0, 6, 13}, new byte[]{15, 1, 8, 14, 6, Flags.CD, 3, 4, 9, 7, 2, 13, 12, 0, 5, 10, 3, 13, 4, 7, 15, 2, 8, 14, 12, 0, 1, 10, 6, 9, Flags.CD, 5, 0, 14, 7, Flags.CD, 10, 4, 13, 1, 5, 8, 12, 6, 9, 3, 2, 15, 13, 8, 10, 1, 3, 15, 4, 2, Flags.CD, 6, 7, 12, 0, 5, 14, 9}, new byte[]{10, 0, 9, 14, 6, 3, 15, 5, 1, 13, 12, 7, Flags.CD, 4, 2, 8, 13, 7, 0, 9, 3, 4, 6, 10, 2, 8, 5, 14, 12, Flags.CD, 15, 1, 13, 6, 4, 9, 8, 15, 3, 0, Flags.CD, 1, 2, 12, 5, 10, 14, 7, 1, 10, 13, 0, 6, 9, 8, 7, 4, 15, 14, 3, Flags.CD, 5, 2, 12}, new byte[]{7, 13, 14, 3, 0, 6, 9, 10, 1, 2, 8, 5, Flags.CD, 12, 4, 15, 13, 8, Flags.CD, 5, 6, 15, 0, 3, 4, 7, 2, 12, 1, 10, 14, 9, 10, 6, 9, 0, 12, Flags.CD, 7, 13, 15, 1, 3, 14, 5, 2, 8, 4, 3, 15, 0, 6, 10, 1, 13, 8, 9, 4, 5, Flags.CD, 12, 7, 2, 14}, new byte[]{2, 12, 4, 1, 7, 10, Flags.CD, 6, 8, 5, 3, 15, 13, 0, 14, 9, 14, Flags.CD, 2, 12, 4, 7, 13, 1, 5, 0, 15, 10, 3, 9, 8, 6, 4, 2, 1, Flags.CD, 10, 13, 7, 8, 15, 9, 12, 5, 6, 3, 0, 14, Flags.CD, 8, 12, 7, 1, 14, 2, 13, 6, 15, 0, 9, 10, 4, 5, 3}, new byte[]{12, 1, 10, 15, 9, 2, 6, 8, 0, 13, 3, 4, 14, 7, 5, Flags.CD, 10, 15, 4, 2, 7, 12, 9, 5, 6, 1, 13, 14, 0, Flags.CD, 3, 8, 9, 14, 15, 5, 2, 8, 12, 3, 7, 0, 4, 10, 1, 13, Flags.CD, 6, 4, 3, 2, 12, 9, 5, 15, 10, Flags.CD, 14, 1, 7, 6, 0, 8, 13}, new byte[]{4, Flags.CD, 2, 14, 15, 0, 8, 13, 3, 12, 9, 7, 5, 10, 6, 1, 13, 0, Flags.CD, 7, 4, 9, 1, 10, 14, 3, 5, 12, 2, 15, 8, 6, 1, 4, Flags.CD, 13, 12, 3, 7, 14, 10, 15, 6, 8, 0, 5, 9, 2, 6, Flags.CD, 13, 8, 1, 4, 10, 7, 9, 5, 0, 15, 14, 2, 3, 12}, new byte[]{13, 2, 8, 4, 6, 15, Flags.CD, 1, 10, 9, 3, 14, 5, 0, 12, 7, 1, 15, 13, 8, 10, 3, 7, 4, 12, 5, 6, Flags.CD, 0, 14, 9, 2, 7, Flags.CD, 4, 1, 9, 12, 14, 2, 0, 6, 10, 13, 15, 3, 5, 8, 2, 1, 14, 7, 4, 10, 8, 13, 15, 12, 9, 0, 3, 5, 6, Flags.CD}};
    private static final byte[] P32Tr = {16, 7, 20, 21, 29, 12, 28, 17, 1, 15, 23, 26, 5, 18, 31, 10, 2, 8, 24, 14, 32, 27, 3, 9, 19, 13, 30, 6, 22, Flags.CD, 4, 25};
    private static final byte[] CIFP = {1, 2, 3, 4, 17, 18, 19, 20, 5, 6, 7, 8, 21, 22, 23, 24, 9, 10, Flags.CD, 12, 25, 26, 27, 28, 13, 14, 15, 16, 29, 30, 31, 32, 33, 34, 35, 36, 49, 50, 51, 52, 37, 38, 39, 40, 53, 54, 55, 56, 41, 42, 43, 44, 57, HttpTokens.COLON, HttpTokens.SEMI_COLON, 60, BufferUtil.MINUS, 46, 47, 48, 61, 62, 63, 64};
    private static final byte[] ITOA64 = {46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122};
    private static final byte[] A64TOI = new byte[128];
    private static final long[][] PC1ROT = (long[][]) Array.newInstance((Class<?>) long.class, 16, 16);
    private static final long[][][] PC2ROT = (long[][][]) Array.newInstance((Class<?>) long.class, 2, 16, 16);
    private static final long[][] IE3264 = (long[][]) Array.newInstance((Class<?>) long.class, 8, 16);
    private static final long[][] SPE = (long[][]) Array.newInstance((Class<?>) long.class, 8, 64);
    private static final long[][] CF6464 = (long[][]) Array.newInstance((Class<?>) long.class, 16, 16);

    static {
        long j4;
        int i4 = 64;
        int i5 = 2;
        int i6 = 3;
        byte[] bArr = new byte[64];
        byte[] bArr2 = new byte[64];
        for (int i7 = 0; i7 < 64; i7++) {
            A64TOI[ITOA64[i7]] = (byte) i7;
        }
        for (int i8 = 0; i8 < 64; i8++) {
            bArr[i8] = 0;
        }
        for (int i9 = 0; i9 < 64; i9++) {
            byte b4 = PC2[i9];
            if (b4 != 0) {
                byte[] bArr3 = Rotates;
                int i10 = (bArr3[0] - 1) + b4;
                if (i10 % 28 < bArr3[0]) {
                    i10 -= 28;
                }
                int i11 = PC1[i10];
                if (i11 > 0) {
                    int i12 = i11 - 1;
                    i11 = ((i12 | 7) - (i12 & 7)) + 1;
                }
                bArr[i9] = (byte) i11;
            }
        }
        init_perm(PC1ROT, bArr, 8);
        for (int i13 = 0; i13 < 2; i13++) {
            for (int i14 = 0; i14 < 64; i14++) {
                bArr2[i14] = 0;
                bArr[i14] = 0;
            }
            for (int i15 = 0; i15 < 64; i15++) {
                byte b5 = PC2[i15];
                if (b5 != 0) {
                    bArr2[b5 - 1] = (byte) (i15 + 1);
                }
            }
            for (int i16 = 0; i16 < 64; i16++) {
                byte b6 = PC2[i16];
                if (b6 != 0) {
                    int i17 = b6 + i13;
                    if (i17 % 28 <= i13) {
                        i17 -= 28;
                    }
                    bArr[i16] = bArr2[i17];
                }
            }
            init_perm(PC2ROT[i13], bArr, 8);
        }
        for (int i18 = 0; i18 < 8; i18++) {
            int i19 = 0;
            while (i19 < 8) {
                int i20 = i19 < 2 ? 0 : IP[ExpandTr[((i18 * 6) + i19) - 2] - 1];
                if (i20 > 32) {
                    i20 -= 32;
                } else if (i20 > 0) {
                    i20--;
                }
                if (i20 > 0) {
                    int i21 = i20 - 1;
                    i20 = ((i21 | 7) - (i21 & 7)) + 1;
                }
                bArr[(i18 * 8) + i19] = (byte) i20;
                i19++;
            }
        }
        init_perm(IE3264, bArr, 8);
        int i22 = 0;
        while (i22 < 64) {
            int i23 = IP[CIFP[i22] - 1];
            if (i23 > 0) {
                int i24 = i23 - 1;
                i23 = ((i24 | 7) - (i24 & 7)) + 1;
            }
            i22++;
            bArr[i23 - 1] = (byte) i22;
        }
        init_perm(CF6464, bArr, 8);
        for (int i25 = 0; i25 < 48; i25++) {
            bArr[i25] = P32Tr[ExpandTr[i25] - 1];
        }
        int i26 = 0;
        while (i26 < 8) {
            int i27 = 0;
            while (i27 < i4) {
                byte b7 = S[i26][(((i27 >> 0) & 1) << 5) | (((i27 >> 1) & 1) << i6) | (((i27 >> 2) & 1) << i5) | (((i27 >> 3) & 1) << 1) | (((i27 >> 4) & 1) << 0) | (((i27 >> 5) & 1) << 4)];
                int i28 = (((b7 >> 0) & 1) << i6) | (((b7 >> 3) & 1) << 0) | (((b7 >> 2) & 1) << 1) | (((b7 >> 1) & 1) << i5);
                for (int i29 = 0; i29 < 32; i29++) {
                    bArr2[i29] = 0;
                }
                for (int i30 = 0; i30 < 4; i30++) {
                    bArr2[(i26 * 4) + i30] = (byte) ((i28 >> i30) & 1);
                }
                int i31 = 24;
                while (true) {
                    i31--;
                    j4 = i31 >= 0 ? ((long) bArr2[bArr[i31 + 24] - 1]) | (((long) bArr2[bArr[i31] - 1]) << 32) | (j4 << 1) : 0L;
                }
                SPE[i26][i27] = to_six_bit(j4);
                i27++;
                i4 = 64;
                i5 = 2;
                i6 = 3;
            }
            i26++;
            i4 = 64;
            i5 = 2;
            i6 = 3;
        }
    }

    private UnixCrypt() {
    }

    public static String crypt(String str, String str2) {
        byte[] bArr = new byte[13];
        if (str == null || str2 == null) {
            return "*";
        }
        int length = str.length();
        long jCharAt = 0;
        int i4 = 0;
        while (i4 < 8) {
            jCharAt = (jCharAt << 8) | ((long) (i4 < length ? str.charAt(i4) * 2 : 0));
            i4++;
        }
        long[] jArrDes_setkey = des_setkey(jCharAt);
        int i5 = 2;
        int i6 = 0;
        while (true) {
            i5--;
            if (i5 < 0) {
                break;
            }
            char cCharAt = i5 < str2.length() ? str2.charAt(i5) : '.';
            bArr[i5] = (byte) cCharAt;
            i6 = (i6 << 6) | (A64TOI[cCharAt] & 255);
        }
        long jDes_cipher = des_cipher(0L, i6, 25, jArrDes_setkey);
        int i7 = 12;
        bArr[12] = ITOA64[(((int) jDes_cipher) << 2) & 63];
        char c4 = 4;
        while (true) {
            jDes_cipher >>= c4;
            i7--;
            if (i7 < 2) {
                return new String(bArr, 0, 13);
            }
            bArr[i7] = ITOA64[((int) jDes_cipher) & 63];
            c4 = 6;
        }
    }

    private static long des_cipher(long j4, int i4, int i5, long[] jArr) {
        int i6 = to_six_bit(i4);
        long j5 = j4 & 6148914691236517205L;
        long j6 = (j4 & (-6148914694099828736L)) | ((j4 >> 1) & 1431655765);
        char c4 = ' ';
        long j7 = 4294967295L;
        int i7 = (int) (((((j5 << 32) | (j5 << 1)) & (-4294967296L)) | ((j6 | (j6 >> 32)) & 4294967295L)) >> 32);
        long[][] jArr2 = IE3264;
        long jPerm3264 = perm3264(i7, jArr2);
        long jPerm32642 = perm3264((int) (jPerm3264 & (-1)), jArr2);
        int i8 = i5;
        while (true) {
            i8--;
            if (i8 < 0) {
                return perm6464((((((jPerm3264 & (-1)) << 1) & 4042322160L) | ((jPerm3264 >> 35) & 252645135)) << 32) | (4042322160L & ((jPerm32642 & (-1)) << 1)) | ((jPerm32642 >> 35) & 252645135), CF6464);
            }
            int i9 = 0;
            while (i9 < 8) {
                int i10 = i9 << 1;
                long j8 = i6;
                long j9 = ((jPerm32642 >> c4) ^ jPerm32642) & j8 & j7;
                long j10 = ((j9 | (j9 << c4)) ^ jPerm32642) ^ jArr[i10];
                long[][] jArr3 = SPE;
                long j11 = jPerm32642;
                jPerm3264 ^= ((((((jArr3[0][(int) ((j10 >> 58) & 63)] ^ jArr3[1][(int) ((j10 >> 50) & 63)]) ^ jArr3[2][(int) ((j10 >> 42) & 63)]) ^ jArr3[3][(int) ((j10 >> 34) & 63)]) ^ jArr3[4][(int) ((j10 >> 26) & 63)]) ^ jArr3[5][(int) ((j10 >> 18) & 63)]) ^ jArr3[6][(int) ((j10 >> 10) & 63)]) ^ jArr3[7][(int) ((j10 >> 2) & 63)];
                long j12 = ((jPerm3264 >> 32) ^ jPerm3264) & j8 & 4294967295L;
                long j13 = jArr[i10 + 1] ^ ((j12 | (j12 << 32)) ^ jPerm3264);
                jPerm32642 = j11 ^ (jArr3[7][(int) ((j13 >> 2) & 63)] ^ ((((((jArr3[0][(int) ((j13 >> 58) & 63)] ^ jArr3[1][(int) ((j13 >> 50) & 63)]) ^ jArr3[2][(int) ((j13 >> 42) & 63)]) ^ jArr3[3][(int) ((j13 >> 34) & 63)]) ^ jArr3[4][(int) ((j13 >> 26) & 63)]) ^ jArr3[5][(int) ((j13 >> 18) & 63)]) ^ jArr3[6][(int) ((j13 >> 10) & 63)]));
                i9++;
                j7 = 4294967295L;
                c4 = ' ';
            }
            long j14 = jPerm32642;
            long j15 = jPerm3264 ^ j14;
            jPerm32642 = j14 ^ j15;
            jPerm3264 = j15 ^ jPerm32642;
            j7 = 4294967295L;
            c4 = ' ';
        }
    }

    private static long[] des_setkey(long j4) {
        long jPerm6464 = perm6464(j4, PC1ROT);
        long[] jArr = new long[16];
        jArr[0] = jPerm6464 & (-217020518463700993L);
        for (int i4 = 1; i4 < 16; i4++) {
            jArr[i4] = jPerm6464;
            jPerm6464 = perm6464(jPerm6464, PC2ROT[Rotates[i4] - 1]);
            jArr[i4] = jPerm6464 & (-217020518463700993L);
        }
        return jArr;
    }

    private static void init_perm(long[][] jArr, byte[] bArr, int i4) {
        for (int i5 = 0; i5 < i4 * 8; i5++) {
            int i6 = bArr[i5] - 1;
            if (i6 >= 0) {
                int i7 = i6 >> 2;
                int i8 = 1 << (i6 & 3);
                for (int i9 = 0; i9 < 16; i9++) {
                    int i10 = (i5 & 7) + ((7 - (i5 >> 3)) << 3);
                    if ((i9 & i8) != 0) {
                        long[] jArr2 = jArr[i7];
                        jArr2[i9] = jArr2[i9] | (1 << i10);
                    }
                }
            }
        }
    }

    public static void main(String[] strArr) {
        if (strArr.length != 2) {
            System.err.println("Usage - java org.eclipse.util.UnixCrypt <key> <salt>");
            System.exit(1);
        }
        PrintStream printStream = System.err;
        StringBuilder sbA = f.a("Crypt=");
        sbA.append(crypt(strArr[0], strArr[1]));
        printStream.println(sbA.toString());
    }

    private static long perm3264(int i4, long[][] jArr) {
        long j4 = 0;
        int i5 = 4;
        while (true) {
            i5--;
            if (i5 < 0) {
                return j4;
            }
            int i6 = i4 & 255;
            i4 >>= 8;
            int i7 = i5 << 1;
            j4 = j4 | jArr[i7][i6 & 15] | jArr[i7 + 1][i6 >> 4];
        }
    }

    private static long perm6464(long j4, long[][] jArr) {
        long j5 = 0;
        int i4 = 8;
        while (true) {
            i4--;
            if (i4 < 0) {
                return j5;
            }
            int i5 = (int) (255 & j4);
            j4 >>= 8;
            int i6 = i4 << 1;
            j5 = j5 | jArr[i6][i5 & 15] | jArr[i6 + 1][i5 >> 4];
        }
    }

    private static int to_six_bit(int i4) {
        return ((i4 >> 16) & 252) | ((i4 << 26) & (-67108864)) | ((i4 << 12) & 16515072) | ((i4 >> 2) & 64512);
    }

    private static long to_six_bit(long j4) {
        return ((j4 >> 16) & 1082331758844L) | ((j4 << 26) & (-288230371923853312L)) | ((j4 << 12) & 70931694147600384L) | ((j4 >> 2) & 277076930264064L);
    }
}
