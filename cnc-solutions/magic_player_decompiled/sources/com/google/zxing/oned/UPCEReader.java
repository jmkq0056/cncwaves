package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

/* JADX INFO: loaded from: classes2.dex */
public final class UPCEReader extends UPCEANReader {
    private static final int[] MIDDLE_END_PATTERN = {1, 1, 1, 1, 1, 1};
    public static final int[][] NUMSYS_AND_CHECK_DIGIT_PATTERNS = {new int[]{56, 52, 50, 49, 44, 38, 35, 42, 41, 37}, new int[]{7, 11, 13, 14, 19, 25, 28, 21, 22, 26}};
    private final int[] decodeMiddleCounters = new int[4];

    public static String convertUPCEtoUPCA(String str) {
        char[] cArr = new char[6];
        str.getChars(1, 7, cArr, 0);
        StringBuilder sb = new StringBuilder(12);
        sb.append(str.charAt(0));
        char c4 = cArr[5];
        switch (c4) {
            case '0':
            case '1':
            case '2':
                sb.append(cArr, 0, 2);
                sb.append(c4);
                sb.append("0000");
                sb.append(cArr, 2, 3);
                break;
            case '3':
                sb.append(cArr, 0, 3);
                sb.append("00000");
                sb.append(cArr, 3, 2);
                break;
            case '4':
                sb.append(cArr, 0, 4);
                sb.append("00000");
                sb.append(cArr[4]);
                break;
            default:
                sb.append(cArr, 0, 5);
                sb.append("0000");
                sb.append(c4);
                break;
        }
        if (str.length() >= 8) {
            sb.append(str.charAt(7));
        }
        return sb.toString();
    }

    private static void determineNumSysAndCheckDigit(StringBuilder sb, int i4) throws NotFoundException {
        for (int i5 = 0; i5 <= 1; i5++) {
            for (int i6 = 0; i6 < 10; i6++) {
                if (i4 == NUMSYS_AND_CHECK_DIGIT_PATTERNS[i5][i6]) {
                    sb.insert(0, (char) (i5 + 48));
                    sb.append((char) (i6 + 48));
                    return;
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.UPCEANReader
    public boolean checkChecksum(String str) {
        return super.checkChecksum(convertUPCEtoUPCA(str));
    }

    @Override // com.google.zxing.oned.UPCEANReader
    public int[] decodeEnd(BitArray bitArray, int i4) {
        return UPCEANReader.findGuardPattern(bitArray, i4, true, MIDDLE_END_PATTERN);
    }

    @Override // com.google.zxing.oned.UPCEANReader
    public int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb) throws NotFoundException {
        int[] iArr2 = this.decodeMiddleCounters;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = bitArray.getSize();
        int i4 = iArr[1];
        int i5 = 0;
        for (int i6 = 0; i6 < 6 && i4 < size; i6++) {
            int iDecodeDigit = UPCEANReader.decodeDigit(bitArray, iArr2, i4, UPCEANReader.L_AND_G_PATTERNS);
            sb.append((char) ((iDecodeDigit % 10) + 48));
            for (int i7 : iArr2) {
                i4 += i7;
            }
            if (iDecodeDigit >= 10) {
                i5 |= 1 << (5 - i6);
            }
        }
        determineNumSysAndCheckDigit(sb, i5);
        return i4;
    }

    @Override // com.google.zxing.oned.UPCEANReader
    public BarcodeFormat getBarcodeFormat() {
        return BarcodeFormat.UPC_E;
    }
}
