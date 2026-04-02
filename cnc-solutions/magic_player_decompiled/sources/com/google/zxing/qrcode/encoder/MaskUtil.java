package com.google.zxing.qrcode.encoder;

/* JADX INFO: loaded from: classes2.dex */
final class MaskUtil {
    private static final int N1 = 3;
    private static final int N2 = 3;
    private static final int N3 = 40;
    private static final int N4 = 10;

    private MaskUtil() {
    }

    public static int applyMaskPenaltyRule1(ByteMatrix byteMatrix) {
        return applyMaskPenaltyRule1Internal(byteMatrix, true) + applyMaskPenaltyRule1Internal(byteMatrix, false);
    }

    private static int applyMaskPenaltyRule1Internal(ByteMatrix byteMatrix, boolean z3) {
        int height = z3 ? byteMatrix.getHeight() : byteMatrix.getWidth();
        int width = z3 ? byteMatrix.getWidth() : byteMatrix.getHeight();
        byte[][] array = byteMatrix.getArray();
        int i4 = 0;
        for (int i5 = 0; i5 < height; i5++) {
            byte b4 = -1;
            int i6 = 0;
            for (int i7 = 0; i7 < width; i7++) {
                byte b5 = z3 ? array[i5][i7] : array[i7][i5];
                if (b5 == b4) {
                    i6++;
                } else {
                    if (i6 >= 5) {
                        i4 += (i6 - 5) + 3;
                    }
                    b4 = b5;
                    i6 = 1;
                }
            }
            if (i6 >= 5) {
                i4 = (i6 - 5) + 3 + i4;
            }
        }
        return i4;
    }

    public static int applyMaskPenaltyRule2(ByteMatrix byteMatrix) {
        byte[][] array = byteMatrix.getArray();
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int i4 = 0;
        for (int i5 = 0; i5 < height - 1; i5++) {
            byte[] bArr = array[i5];
            int i6 = 0;
            while (i6 < width - 1) {
                byte b4 = bArr[i6];
                int i7 = i6 + 1;
                if (b4 == bArr[i7]) {
                    int i8 = i5 + 1;
                    if (b4 == array[i8][i6] && b4 == array[i8][i7]) {
                        i4++;
                    }
                }
                i6 = i7;
            }
        }
        return i4 * 3;
    }

    public static int applyMaskPenaltyRule3(ByteMatrix byteMatrix) {
        byte[][] array = byteMatrix.getArray();
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int i4 = 0;
        for (int i5 = 0; i5 < height; i5++) {
            for (int i6 = 0; i6 < width; i6++) {
                byte[] bArr = array[i5];
                int i7 = i6 + 6;
                if (i7 < width && bArr[i6] == 1 && bArr[i6 + 1] == 0 && bArr[i6 + 2] == 1 && bArr[i6 + 3] == 1 && bArr[i6 + 4] == 1 && bArr[i6 + 5] == 0 && bArr[i7] == 1 && (isWhiteHorizontal(bArr, i6 - 4, i6) || isWhiteHorizontal(bArr, i6 + 7, i6 + 11))) {
                    i4++;
                }
                int i8 = i5 + 6;
                if (i8 < height && array[i5][i6] == 1 && array[i5 + 1][i6] == 0 && array[i5 + 2][i6] == 1 && array[i5 + 3][i6] == 1 && array[i5 + 4][i6] == 1 && array[i5 + 5][i6] == 0 && array[i8][i6] == 1 && (isWhiteVertical(array, i6, i5 - 4, i5) || isWhiteVertical(array, i6, i5 + 7, i5 + 11))) {
                    i4++;
                }
            }
        }
        return i4 * 40;
    }

    public static int applyMaskPenaltyRule4(ByteMatrix byteMatrix) {
        byte[][] array = byteMatrix.getArray();
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int i4 = 0;
        for (int i5 = 0; i5 < height; i5++) {
            byte[] bArr = array[i5];
            for (int i6 = 0; i6 < width; i6++) {
                if (bArr[i6] == 1) {
                    i4++;
                }
            }
        }
        int width2 = byteMatrix.getWidth() * byteMatrix.getHeight();
        return ((Math.abs((i4 << 1) - width2) * 10) / width2) * 10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0042 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean getDataMaskBit(int r1, int r2, int r3) {
        /*
            r0 = 1
            switch(r1) {
                case 0: goto L3d;
                case 1: goto L3e;
                case 2: goto L3a;
                case 3: goto L36;
                case 4: goto L2e;
                case 5: goto L26;
                case 6: goto L1e;
                case 7: goto L14;
                default: goto L4;
            }
        L4:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r3 = "Invalid mask pattern: "
            java.lang.String r1 = r3.concat(r1)
            r2.<init>(r1)
            throw r2
        L14:
            int r1 = r3 * r2
            int r1 = r1 % 3
            int r3 = r3 + r2
            r2 = r3 & 1
            int r1 = r1 + r2
            r1 = r1 & r0
            goto L40
        L1e:
            int r3 = r3 * r2
            r1 = r3 & 1
            int r3 = r3 % 3
            int r3 = r3 + r1
            goto L3e
        L26:
            int r3 = r3 * r2
            r1 = r3 & 1
            int r3 = r3 % 3
            int r1 = r1 + r3
            goto L40
        L2e:
            int r3 = r3 / 2
            int r2 = r2 / 3
            int r2 = r2 + r3
            r1 = r2 & 1
            goto L40
        L36:
            int r3 = r3 + r2
            int r1 = r3 % 3
            goto L40
        L3a:
            int r1 = r2 % 3
            goto L40
        L3d:
            int r3 = r3 + r2
        L3e:
            r1 = r3 & 1
        L40:
            if (r1 != 0) goto L43
            return r0
        L43:
            r1 = 0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.encoder.MaskUtil.getDataMaskBit(int, int, int):boolean");
    }

    private static boolean isWhiteHorizontal(byte[] bArr, int i4, int i5) {
        int iMin = Math.min(i5, bArr.length);
        for (int iMax = Math.max(i4, 0); iMax < iMin; iMax++) {
            if (bArr[iMax] == 1) {
                return false;
            }
        }
        return true;
    }

    private static boolean isWhiteVertical(byte[][] bArr, int i4, int i5, int i6) {
        int iMin = Math.min(i6, bArr.length);
        for (int iMax = Math.max(i5, 0); iMax < iMin; iMax++) {
            if (bArr[iMax][i4] == 1) {
                return false;
            }
        }
        return true;
    }
}
