package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class ITFReader extends OneDReader {
    private static final float MAX_AVG_VARIANCE = 0.38f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.5f;
    private static final int N = 1;
    private static final int W = 3;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f1392w = 2;
    private int narrowLineWidth = -1;
    private static final int[] DEFAULT_ALLOWED_LENGTHS = {6, 8, 10, 12, 14};
    private static final int[] START_PATTERN = {1, 1, 1, 1};
    private static final int[][] END_PATTERN_REVERSED = {new int[]{1, 1, 2}, new int[]{1, 1, 3}};
    private static final int[][] PATTERNS = {new int[]{1, 1, 2, 2, 1}, new int[]{2, 1, 1, 1, 2}, new int[]{1, 2, 1, 1, 2}, new int[]{2, 2, 1, 1, 1}, new int[]{1, 1, 2, 1, 2}, new int[]{2, 1, 2, 1, 1}, new int[]{1, 2, 2, 1, 1}, new int[]{1, 1, 1, 2, 2}, new int[]{2, 1, 1, 2, 1}, new int[]{1, 2, 1, 2, 1}, new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    private static int decodeDigit(int[] iArr) throws NotFoundException {
        int length = PATTERNS.length;
        float f4 = 0.38f;
        int i4 = -1;
        for (int i5 = 0; i5 < length; i5++) {
            float fPatternMatchVariance = OneDReader.patternMatchVariance(iArr, PATTERNS[i5], 0.5f);
            if (fPatternMatchVariance < f4) {
                i4 = i5;
                f4 = fPatternMatchVariance;
            } else if (fPatternMatchVariance == f4) {
                i4 = -1;
            }
        }
        if (i4 >= 0) {
            return i4 % 10;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private int[] decodeEnd(BitArray bitArray) {
        int[] iArrFindGuardPattern;
        bitArray.reverse();
        try {
            int iSkipWhiteSpace = skipWhiteSpace(bitArray);
            try {
                iArrFindGuardPattern = findGuardPattern(bitArray, iSkipWhiteSpace, END_PATTERN_REVERSED[0]);
            } catch (NotFoundException unused) {
                iArrFindGuardPattern = findGuardPattern(bitArray, iSkipWhiteSpace, END_PATTERN_REVERSED[1]);
            }
            validateQuietZone(bitArray, iArrFindGuardPattern[0]);
            int i4 = iArrFindGuardPattern[0];
            iArrFindGuardPattern[0] = bitArray.getSize() - iArrFindGuardPattern[1];
            iArrFindGuardPattern[1] = bitArray.getSize() - i4;
            return iArrFindGuardPattern;
        } finally {
            bitArray.reverse();
        }
    }

    private static void decodeMiddle(BitArray bitArray, int i4, int i5, StringBuilder sb) throws NotFoundException {
        int[] iArr = new int[10];
        int[] iArr2 = new int[5];
        int[] iArr3 = new int[5];
        while (i4 < i5) {
            OneDReader.recordPattern(bitArray, i4, iArr);
            for (int i6 = 0; i6 < 5; i6++) {
                int i7 = i6 * 2;
                iArr2[i6] = iArr[i7];
                iArr3[i6] = iArr[i7 + 1];
            }
            sb.append((char) (decodeDigit(iArr2) + 48));
            sb.append((char) (decodeDigit(iArr3) + 48));
            for (int i8 = 0; i8 < 10; i8++) {
                i4 += iArr[i8];
            }
        }
    }

    private int[] decodeStart(BitArray bitArray) throws NotFoundException {
        int[] iArrFindGuardPattern = findGuardPattern(bitArray, skipWhiteSpace(bitArray), START_PATTERN);
        this.narrowLineWidth = (iArrFindGuardPattern[1] - iArrFindGuardPattern[0]) / 4;
        validateQuietZone(bitArray, iArrFindGuardPattern[0]);
        return iArrFindGuardPattern;
    }

    private static int[] findGuardPattern(BitArray bitArray, int i4, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int size = bitArray.getSize();
        int i5 = i4;
        boolean z3 = false;
        int i6 = 0;
        while (i4 < size) {
            if (bitArray.get(i4) != z3) {
                iArr2[i6] = iArr2[i6] + 1;
            } else {
                if (i6 != length - 1) {
                    i6++;
                } else {
                    if (OneDReader.patternMatchVariance(iArr2, iArr, 0.5f) < 0.38f) {
                        return new int[]{i5, i4};
                    }
                    i5 += iArr2[0] + iArr2[1];
                    int i7 = i6 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i7);
                    iArr2[i7] = 0;
                    iArr2[i6] = 0;
                    i6--;
                }
                iArr2[i6] = 1;
                z3 = !z3;
            }
            i4++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int skipWhiteSpace(BitArray bitArray) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        if (nextSet != size) {
            return nextSet;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private void validateQuietZone(BitArray bitArray, int i4) throws NotFoundException {
        int iMin = Math.min(this.narrowLineWidth * 10, i4);
        for (int i5 = i4 - 1; iMin > 0 && i5 >= 0 && !bitArray.get(i5); i5--) {
            iMin--;
        }
        if (iMin != 0) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i4, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        boolean z3;
        int[] iArrDecodeStart = decodeStart(bitArray);
        int[] iArrDecodeEnd = decodeEnd(bitArray);
        StringBuilder sb = new StringBuilder(20);
        decodeMiddle(bitArray, iArrDecodeStart[1], iArrDecodeEnd[0], sb);
        String string = sb.toString();
        int[] iArr = map != null ? (int[]) map.get(DecodeHintType.ALLOWED_LENGTHS) : null;
        if (iArr == null) {
            iArr = DEFAULT_ALLOWED_LENGTHS;
        }
        int length = string.length();
        int length2 = iArr.length;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (i5 >= length2) {
                z3 = false;
                break;
            }
            int i7 = iArr[i5];
            if (length == i7) {
                z3 = true;
                break;
            }
            if (i7 > i6) {
                i6 = i7;
            }
            i5++;
        }
        if (!z3 && length > i6) {
            z3 = true;
        }
        if (!z3) {
            throw FormatException.getFormatInstance();
        }
        float f4 = i4;
        return new Result(string, null, new ResultPoint[]{new ResultPoint(iArrDecodeStart[1], f4), new ResultPoint(iArrDecodeEnd[0], f4)}, BarcodeFormat.ITF);
    }
}
