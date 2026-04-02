package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;

/* JADX INFO: loaded from: classes2.dex */
public final class HybridBinarizer extends GlobalHistogramBinarizer {
    private static final int BLOCK_SIZE = 8;
    private static final int BLOCK_SIZE_MASK = 7;
    private static final int BLOCK_SIZE_POWER = 3;
    private static final int MINIMUM_DIMENSION = 40;
    private static final int MIN_DYNAMIC_RANGE = 24;
    private BitMatrix matrix;

    public HybridBinarizer(LuminanceSource luminanceSource) {
        super(luminanceSource);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x009e A[PHI: r5
      0x009e: PHI (r5v3 int) = (r5v2 int), (r5v6 int), (r5v6 int) binds: [B:31:0x007b, B:33:0x007f, B:34:0x0081] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int[][] calculateBlackPoints(byte[] r17, int r18, int r19, int r20, int r21) {
        /*
            r0 = r18
            r1 = r19
            r2 = 8
            int r3 = r21 + (-8)
            int r4 = r20 + (-8)
            r5 = 2
            int[] r6 = new int[r5]
            r7 = 1
            r6[r7] = r0
            r8 = 0
            r6[r8] = r1
            java.lang.Class<int> r9 = int.class
            java.lang.Object r6 = java.lang.reflect.Array.newInstance(r9, r6)
            int[][] r6 = (int[][]) r6
            r9 = 0
        L1c:
            if (r9 >= r1) goto Lb7
            int r10 = r9 << 3
            if (r10 <= r3) goto L23
            r10 = r3
        L23:
            r11 = 0
        L24:
            if (r11 >= r0) goto Lac
            int r12 = r11 << 3
            if (r12 <= r4) goto L2b
            r12 = r4
        L2b:
            int r13 = r10 * r20
            int r13 = r13 + r12
            r12 = 255(0xff, float:3.57E-43)
            r8 = 255(0xff, float:3.57E-43)
            r14 = 0
            r15 = 0
            r16 = 0
        L36:
            if (r14 >= r2) goto L74
            r7 = r16
            r5 = 0
        L3b:
            if (r5 >= r2) goto L4e
            int r16 = r13 + r5
            r2 = r17[r16]
            r2 = r2 & r12
            int r15 = r15 + r2
            if (r2 >= r8) goto L46
            r8 = r2
        L46:
            if (r2 <= r7) goto L49
            r7 = r2
        L49:
            int r5 = r5 + 1
            r2 = 8
            goto L3b
        L4e:
            int r2 = r7 - r8
            r5 = 24
            if (r2 <= r5) goto L6a
        L54:
            int r14 = r14 + 1
            int r13 = r13 + r20
            r2 = 8
            if (r14 >= r2) goto L6a
            r5 = 0
        L5d:
            if (r5 >= r2) goto L54
            int r16 = r13 + r5
            r2 = r17[r16]
            r2 = r2 & r12
            int r15 = r15 + r2
            int r5 = r5 + 1
            r2 = 8
            goto L5d
        L6a:
            r2 = 1
            int r14 = r14 + r2
            int r13 = r13 + r20
            r16 = r7
            r2 = 8
            r7 = 1
            goto L36
        L74:
            r2 = 1
            int r5 = r15 >> 6
            int r7 = r16 - r8
            r12 = 24
            if (r7 > r12) goto L9e
            int r5 = r8 / 2
            if (r9 <= 0) goto L9e
            if (r11 <= 0) goto L9e
            int r7 = r9 + (-1)
            r12 = r6[r7]
            r12 = r12[r11]
            r13 = r6[r9]
            int r14 = r11 + (-1)
            r13 = r13[r14]
            r15 = 2
            int r13 = r13 * 2
            int r13 = r13 + r12
            r7 = r6[r7]
            r7 = r7[r14]
            int r13 = r13 + r7
            int r7 = r13 / 4
            if (r8 >= r7) goto L9f
            r5 = r7
            goto L9f
        L9e:
            r15 = 2
        L9f:
            r7 = r6[r9]
            r7[r11] = r5
            int r11 = r11 + 1
            r2 = 8
            r5 = 2
            r7 = 1
            r8 = 0
            goto L24
        Lac:
            r2 = 1
            r15 = 2
            int r9 = r9 + 1
            r2 = 8
            r5 = 2
            r7 = 1
            r8 = 0
            goto L1c
        Lb7:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.common.HybridBinarizer.calculateBlackPoints(byte[], int, int, int, int):int[][]");
    }

    private static void calculateThresholdForBlock(byte[] bArr, int i4, int i5, int i6, int i7, int[][] iArr, BitMatrix bitMatrix) {
        int i8 = i7 - 8;
        int i9 = i6 - 8;
        for (int i10 = 0; i10 < i5; i10++) {
            int i11 = i10 << 3;
            int i12 = i11 > i8 ? i8 : i11;
            int iCap = cap(i10, i5 - 3);
            for (int i13 = 0; i13 < i4; i13++) {
                int i14 = i13 << 3;
                int i15 = i14 > i9 ? i9 : i14;
                int iCap2 = cap(i13, i4 - 3);
                int i16 = 0;
                for (int i17 = -2; i17 <= 2; i17++) {
                    int[] iArr2 = iArr[iCap + i17];
                    i16 += iArr2[iCap2 - 2] + iArr2[iCap2 - 1] + iArr2[iCap2] + iArr2[iCap2 + 1] + iArr2[2 + iCap2];
                }
                thresholdBlock(bArr, i15, i12, i16 / 25, i6, bitMatrix);
            }
        }
    }

    private static int cap(int i4, int i5) {
        if (i4 < 2) {
            return 2;
        }
        return Math.min(i4, i5);
    }

    private static void thresholdBlock(byte[] bArr, int i4, int i5, int i6, int i7, BitMatrix bitMatrix) {
        int i8 = (i5 * i7) + i4;
        int i9 = 0;
        while (i9 < 8) {
            for (int i10 = 0; i10 < 8; i10++) {
                if ((bArr[i8 + i10] & 255) <= i6) {
                    bitMatrix.set(i4 + i10, i5 + i9);
                }
            }
            i9++;
            i8 += i7;
        }
    }

    @Override // com.google.zxing.common.GlobalHistogramBinarizer, com.google.zxing.Binarizer
    public Binarizer createBinarizer(LuminanceSource luminanceSource) {
        return new HybridBinarizer(luminanceSource);
    }

    @Override // com.google.zxing.common.GlobalHistogramBinarizer, com.google.zxing.Binarizer
    public BitMatrix getBlackMatrix() {
        BitMatrix bitMatrix = this.matrix;
        if (bitMatrix != null) {
            return bitMatrix;
        }
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        int height = luminanceSource.getHeight();
        if (width < 40 || height < 40) {
            this.matrix = super.getBlackMatrix();
        } else {
            byte[] matrix = luminanceSource.getMatrix();
            int i4 = width >> 3;
            if ((width & 7) != 0) {
                i4++;
            }
            int i5 = i4;
            int i6 = height >> 3;
            if ((height & 7) != 0) {
                i6++;
            }
            int i7 = i6;
            int[][] iArrCalculateBlackPoints = calculateBlackPoints(matrix, i5, i7, width, height);
            BitMatrix bitMatrix2 = new BitMatrix(width, height);
            calculateThresholdForBlock(matrix, i5, i7, width, height, iArrCalculateBlackPoints, bitMatrix2);
            this.matrix = bitMatrix2;
        }
        return this.matrix;
    }
}
