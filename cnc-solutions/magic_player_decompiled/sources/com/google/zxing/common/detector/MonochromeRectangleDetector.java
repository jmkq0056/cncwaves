package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class MonochromeRectangleDetector {
    private static final int MAX_MODULES = 32;
    private final BitMatrix image;

    public MonochromeRectangleDetector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0031 A[EDGE_INSN: B:70:0x0031->B:22:0x0031 BREAK  A[LOOP:1: B:13:0x001c->B:73:0x001c], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0067 A[EDGE_INSN: B:86:0x0067->B:47:0x0067 BREAK  A[LOOP:3: B:38:0x0053->B:91:0x0053], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int[] blackWhiteRange(int r6, int r7, int r8, int r9, boolean r10) {
        /*
            r5 = this;
            int r0 = r8 + r9
            r1 = 2
            int r0 = r0 / r1
            r2 = r0
        L5:
            if (r2 < r8) goto L3a
            com.google.zxing.common.BitMatrix r3 = r5.image
            if (r10 == 0) goto L12
            boolean r3 = r3.get(r2, r6)
            if (r3 == 0) goto L1b
            goto L18
        L12:
            boolean r3 = r3.get(r6, r2)
            if (r3 == 0) goto L1b
        L18:
            int r2 = r2 + (-1)
            goto L5
        L1b:
            r3 = r2
        L1c:
            int r3 = r3 + (-1)
            if (r3 < r8) goto L31
            com.google.zxing.common.BitMatrix r4 = r5.image
            if (r10 == 0) goto L2b
            boolean r4 = r4.get(r3, r6)
            if (r4 == 0) goto L1c
            goto L31
        L2b:
            boolean r4 = r4.get(r6, r3)
            if (r4 == 0) goto L1c
        L31:
            int r4 = r2 - r3
            if (r3 < r8) goto L3a
            if (r4 <= r7) goto L38
            goto L3a
        L38:
            r2 = r3
            goto L5
        L3a:
            r8 = 1
            int r2 = r2 + r8
        L3c:
            if (r0 >= r9) goto L70
            com.google.zxing.common.BitMatrix r3 = r5.image
            if (r10 == 0) goto L49
            boolean r3 = r3.get(r0, r6)
            if (r3 == 0) goto L52
            goto L4f
        L49:
            boolean r3 = r3.get(r6, r0)
            if (r3 == 0) goto L52
        L4f:
            int r0 = r0 + 1
            goto L3c
        L52:
            r3 = r0
        L53:
            int r3 = r3 + r8
            if (r3 >= r9) goto L67
            com.google.zxing.common.BitMatrix r4 = r5.image
            if (r10 == 0) goto L61
            boolean r4 = r4.get(r3, r6)
            if (r4 == 0) goto L53
            goto L67
        L61:
            boolean r4 = r4.get(r6, r3)
            if (r4 == 0) goto L53
        L67:
            int r4 = r3 - r0
            if (r3 >= r9) goto L70
            if (r4 <= r7) goto L6e
            goto L70
        L6e:
            r0 = r3
            goto L3c
        L70:
            int r0 = r0 + (-1)
            if (r0 <= r2) goto L7c
            int[] r6 = new int[r1]
            r7 = 0
            r6[r7] = r2
            r6[r8] = r0
            return r6
        L7c:
            r6 = 0
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.common.detector.MonochromeRectangleDetector.blackWhiteRange(int, int, int, int, boolean):int[]");
    }

    private ResultPoint findCornerFromCenter(int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12) throws NotFoundException {
        int[] iArr = null;
        int i13 = i4;
        int i14 = i8;
        while (i14 < i11 && i14 >= i10 && i13 < i7 && i13 >= i6) {
            int[] iArrBlackWhiteRange = i5 == 0 ? blackWhiteRange(i14, i12, i6, i7, true) : blackWhiteRange(i13, i12, i10, i11, false);
            if (iArrBlackWhiteRange == null) {
                if (iArr == null) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (i5 == 0) {
                    int i15 = i14 - i9;
                    if (iArr[0] >= i4) {
                        return new ResultPoint(iArr[1], i15);
                    }
                    if (iArr[1] > i4) {
                        return new ResultPoint(iArr[i9 > 0 ? (char) 0 : (char) 1], i15);
                    }
                    return new ResultPoint(iArr[0], i15);
                }
                int i16 = i13 - i5;
                if (iArr[0] >= i8) {
                    return new ResultPoint(i16, iArr[1]);
                }
                if (iArr[1] > i8) {
                    return new ResultPoint(i16, iArr[i5 < 0 ? (char) 0 : (char) 1]);
                }
                return new ResultPoint(i16, iArr[0]);
            }
            i14 += i9;
            i13 += i5;
            iArr = iArrBlackWhiteRange;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public ResultPoint[] detect() throws NotFoundException {
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int i4 = height / 2;
        int i5 = width / 2;
        int iMax = Math.max(1, height / 256);
        int iMax2 = Math.max(1, width / 256);
        int i6 = -iMax;
        int i7 = i5 / 2;
        int y3 = ((int) findCornerFromCenter(i5, 0, 0, width, i4, i6, 0, height, i7).getY()) - 1;
        int i8 = i4 / 2;
        ResultPoint resultPointFindCornerFromCenter = findCornerFromCenter(i5, -iMax2, 0, width, i4, 0, y3, height, i8);
        int x3 = ((int) resultPointFindCornerFromCenter.getX()) - 1;
        ResultPoint resultPointFindCornerFromCenter2 = findCornerFromCenter(i5, iMax2, x3, width, i4, 0, y3, height, i8);
        int x4 = ((int) resultPointFindCornerFromCenter2.getX()) + 1;
        ResultPoint resultPointFindCornerFromCenter3 = findCornerFromCenter(i5, 0, x3, x4, i4, iMax, y3, height, i7);
        return new ResultPoint[]{findCornerFromCenter(i5, 0, x3, x4, i4, i6, y3, ((int) resultPointFindCornerFromCenter3.getY()) + 1, i5 / 4), resultPointFindCornerFromCenter, resultPointFindCornerFromCenter2, resultPointFindCornerFromCenter3};
    }
}
