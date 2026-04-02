package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class UPCEANReader extends OneDReader {
    public static final int[][] L_AND_G_PATTERNS;
    public static final int[][] L_PATTERNS;
    private static final float MAX_AVG_VARIANCE = 0.48f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.7f;
    public static final int[] START_END_PATTERN = {1, 1, 1};
    public static final int[] MIDDLE_PATTERN = {1, 1, 1, 1, 1};
    public static final int[] END_PATTERN = {1, 1, 1, 1, 1, 1};
    private final StringBuilder decodeRowStringBuffer = new StringBuilder(20);
    private final UPCEANExtensionSupport extensionReader = new UPCEANExtensionSupport();
    private final EANManufacturerOrgSupport eanManSupport = new EANManufacturerOrgSupport();

    static {
        int[][] iArr = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};
        L_PATTERNS = iArr;
        int[][] iArr2 = new int[20][];
        L_AND_G_PATTERNS = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, 10);
        for (int i4 = 10; i4 < 20; i4++) {
            int[] iArr3 = L_PATTERNS[i4 - 10];
            int[] iArr4 = new int[iArr3.length];
            for (int i5 = 0; i5 < iArr3.length; i5++) {
                iArr4[i5] = iArr3[(iArr3.length - i5) - 1];
            }
            L_AND_G_PATTERNS[i4] = iArr4;
        }
    }

    public static boolean checkStandardUPCEANChecksum(CharSequence charSequence) {
        int length = charSequence.length();
        if (length == 0) {
            return false;
        }
        int i4 = length - 1;
        return getStandardUPCEANChecksum(charSequence.subSequence(0, i4)) == Character.digit(charSequence.charAt(i4), 10);
    }

    public static int decodeDigit(BitArray bitArray, int[] iArr, int i4, int[][] iArr2) throws NotFoundException {
        OneDReader.recordPattern(bitArray, i4, iArr);
        int length = iArr2.length;
        float f4 = MAX_AVG_VARIANCE;
        int i5 = -1;
        for (int i6 = 0; i6 < length; i6++) {
            float fPatternMatchVariance = OneDReader.patternMatchVariance(iArr, iArr2[i6], MAX_INDIVIDUAL_VARIANCE);
            if (fPatternMatchVariance < f4) {
                i5 = i6;
                f4 = fPatternMatchVariance;
            }
        }
        if (i5 >= 0) {
            return i5;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public static int[] findGuardPattern(BitArray bitArray, int i4, boolean z3, int[] iArr) {
        return findGuardPattern(bitArray, i4, z3, iArr, new int[iArr.length]);
    }

    public static int[] findStartGuardPattern(BitArray bitArray) throws NotFoundException {
        int[] iArr = new int[START_END_PATTERN.length];
        int[] iArrFindGuardPattern = null;
        boolean zIsRange = false;
        int i4 = 0;
        while (!zIsRange) {
            int[] iArr2 = START_END_PATTERN;
            Arrays.fill(iArr, 0, iArr2.length, 0);
            iArrFindGuardPattern = findGuardPattern(bitArray, i4, false, iArr2, iArr);
            int i5 = iArrFindGuardPattern[0];
            int i6 = iArrFindGuardPattern[1];
            int i7 = i5 - (i6 - i5);
            if (i7 >= 0) {
                zIsRange = bitArray.isRange(i7, i5, false);
            }
            i4 = i6;
        }
        return iArrFindGuardPattern;
    }

    public static int getStandardUPCEANChecksum(CharSequence charSequence) throws FormatException {
        int length = charSequence.length();
        int i4 = 0;
        for (int i5 = length - 1; i5 >= 0; i5 -= 2) {
            int iCharAt = charSequence.charAt(i5) - '0';
            if (iCharAt < 0 || iCharAt > 9) {
                throw FormatException.getFormatInstance();
            }
            i4 += iCharAt;
        }
        int i6 = i4 * 3;
        for (int i7 = length - 2; i7 >= 0; i7 -= 2) {
            int iCharAt2 = charSequence.charAt(i7) - '0';
            if (iCharAt2 < 0 || iCharAt2 > 9) {
                throw FormatException.getFormatInstance();
            }
            i6 += iCharAt2;
        }
        return (1000 - i6) % 10;
    }

    public boolean checkChecksum(String str) {
        return checkStandardUPCEANChecksum(str);
    }

    public int[] decodeEnd(BitArray bitArray, int i4) {
        return findGuardPattern(bitArray, i4, false, START_END_PATTERN);
    }

    public abstract int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb);

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i4, BitArray bitArray, Map<DecodeHintType, ?> map) {
        return decodeRow(i4, bitArray, findStartGuardPattern(bitArray), map);
    }

    public abstract BarcodeFormat getBarcodeFormat();

    private static int[] findGuardPattern(BitArray bitArray, int i4, boolean z3, int[] iArr, int[] iArr2) throws NotFoundException {
        int size = bitArray.getSize();
        int nextUnset = z3 ? bitArray.getNextUnset(i4) : bitArray.getNextSet(i4);
        int length = iArr.length;
        boolean z4 = z3;
        int i5 = 0;
        int i6 = nextUnset;
        while (nextUnset < size) {
            if (bitArray.get(nextUnset) != z4) {
                iArr2[i5] = iArr2[i5] + 1;
            } else {
                if (i5 != length - 1) {
                    i5++;
                } else {
                    if (OneDReader.patternMatchVariance(iArr2, iArr, MAX_INDIVIDUAL_VARIANCE) < MAX_AVG_VARIANCE) {
                        return new int[]{i6, nextUnset};
                    }
                    i6 += iArr2[0] + iArr2[1];
                    int i7 = i5 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i7);
                    iArr2[i7] = 0;
                    iArr2[i5] = 0;
                    i5--;
                }
                iArr2[i5] = 1;
                z4 = !z4;
            }
            nextUnset++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public Result decodeRow(int i4, BitArray bitArray, int[] iArr, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        int length;
        String strLookupCountryIdentifier;
        ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        boolean z3 = true;
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new ResultPoint((iArr[0] + iArr[1]) / 2.0f, i4));
        }
        StringBuilder sb = this.decodeRowStringBuffer;
        sb.setLength(0);
        int iDecodeMiddle = decodeMiddle(bitArray, iArr, sb);
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new ResultPoint(iDecodeMiddle, i4));
        }
        int[] iArrDecodeEnd = decodeEnd(bitArray, iDecodeMiddle);
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new ResultPoint((iArrDecodeEnd[0] + iArrDecodeEnd[1]) / 2.0f, i4));
        }
        int i5 = iArrDecodeEnd[1];
        int i6 = (i5 - iArrDecodeEnd[0]) + i5;
        if (i6 >= bitArray.getSize() || !bitArray.isRange(i5, i6, false)) {
            throw NotFoundException.getNotFoundInstance();
        }
        String string = sb.toString();
        if (string.length() < 8) {
            throw FormatException.getFormatInstance();
        }
        if (!checkChecksum(string)) {
            throw ChecksumException.getChecksumInstance();
        }
        BarcodeFormat barcodeFormat = getBarcodeFormat();
        float f4 = i4;
        Result result = new Result(string, null, new ResultPoint[]{new ResultPoint((iArr[1] + iArr[0]) / 2.0f, f4), new ResultPoint((iArrDecodeEnd[1] + iArrDecodeEnd[0]) / 2.0f, f4)}, barcodeFormat);
        try {
            Result resultDecodeRow = this.extensionReader.decodeRow(i4, bitArray, iArrDecodeEnd[1]);
            result.putMetadata(ResultMetadataType.UPC_EAN_EXTENSION, resultDecodeRow.getText());
            result.putAllMetadata(resultDecodeRow.getResultMetadata());
            result.addResultPoints(resultDecodeRow.getResultPoints());
            length = resultDecodeRow.getText().length();
        } catch (ReaderException unused) {
            length = 0;
        }
        int[] iArr2 = map != null ? (int[]) map.get(DecodeHintType.ALLOWED_EAN_EXTENSIONS) : null;
        if (iArr2 != null) {
            int length2 = iArr2.length;
            int i7 = 0;
            while (true) {
                if (i7 >= length2) {
                    z3 = false;
                    break;
                }
                if (length == iArr2[i7]) {
                    break;
                }
                i7++;
            }
            if (!z3) {
                throw NotFoundException.getNotFoundInstance();
            }
        }
        if ((barcodeFormat == BarcodeFormat.EAN_13 || barcodeFormat == BarcodeFormat.UPC_A) && (strLookupCountryIdentifier = this.eanManSupport.lookupCountryIdentifier(string)) != null) {
            result.putMetadata(ResultMetadataType.POSSIBLE_COUNTRY, strLookupCountryIdentifier);
        }
        return result;
    }
}
