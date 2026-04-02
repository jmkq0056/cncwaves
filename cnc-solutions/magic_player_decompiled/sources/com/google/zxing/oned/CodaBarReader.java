package com.google.zxing.oned;

import androidx.appcompat.widget.ActivityChooserView;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class CodaBarReader extends OneDReader {
    private static final float MAX_ACCEPTABLE = 2.0f;
    private static final int MIN_CHARACTER_LENGTH = 3;
    private static final float PADDING = 1.5f;
    private static final String ALPHABET_STRING = "0123456789-$:/.+ABCD";
    public static final char[] ALPHABET = ALPHABET_STRING.toCharArray();
    public static final int[] CHARACTER_ENCODINGS = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};
    private static final char[] STARTEND_ENCODING = {'A', 'B', 'C', 'D'};
    private final StringBuilder decodeRowResult = new StringBuilder(20);
    private int[] counters = new int[80];
    private int counterLength = 0;

    public static boolean arrayContains(char[] cArr, char c4) {
        if (cArr != null) {
            for (char c5 : cArr) {
                if (c5 == c4) {
                    return true;
                }
            }
        }
        return false;
    }

    private void counterAppend(int i4) {
        int[] iArr = this.counters;
        int i5 = this.counterLength;
        iArr[i5] = i4;
        int i6 = i5 + 1;
        this.counterLength = i6;
        if (i6 >= iArr.length) {
            int[] iArr2 = new int[i6 << 1];
            System.arraycopy(iArr, 0, iArr2, 0, i6);
            this.counters = iArr2;
        }
    }

    private int findStartPattern() throws NotFoundException {
        for (int i4 = 1; i4 < this.counterLength; i4 += 2) {
            int narrowWidePattern = toNarrowWidePattern(i4);
            if (narrowWidePattern != -1 && arrayContains(STARTEND_ENCODING, ALPHABET[narrowWidePattern])) {
                int i5 = 0;
                for (int i6 = i4; i6 < i4 + 7; i6++) {
                    i5 += this.counters[i6];
                }
                if (i4 == 1 || this.counters[i4 - 1] >= i5 / 2) {
                    return i4;
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private void setCounters(BitArray bitArray) throws NotFoundException {
        int i4 = 0;
        this.counterLength = 0;
        int nextUnset = bitArray.getNextUnset(0);
        int size = bitArray.getSize();
        if (nextUnset >= size) {
            throw NotFoundException.getNotFoundInstance();
        }
        boolean z3 = true;
        while (nextUnset < size) {
            if (bitArray.get(nextUnset) != z3) {
                i4++;
            } else {
                counterAppend(i4);
                z3 = !z3;
                i4 = 1;
            }
            nextUnset++;
        }
        counterAppend(i4);
    }

    private int toNarrowWidePattern(int i4) {
        int i5 = i4 + 7;
        if (i5 >= this.counterLength) {
            return -1;
        }
        int[] iArr = this.counters;
        int i6 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i7 = 0;
        int i8 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i9 = 0;
        for (int i10 = i4; i10 < i5; i10 += 2) {
            int i11 = iArr[i10];
            if (i11 < i8) {
                i8 = i11;
            }
            if (i11 > i9) {
                i9 = i11;
            }
        }
        int i12 = (i8 + i9) / 2;
        int i13 = 0;
        for (int i14 = i4 + 1; i14 < i5; i14 += 2) {
            int i15 = iArr[i14];
            if (i15 < i6) {
                i6 = i15;
            }
            if (i15 > i13) {
                i13 = i15;
            }
        }
        int i16 = (i6 + i13) / 2;
        int i17 = 128;
        int i18 = 0;
        for (int i19 = 0; i19 < 7; i19++) {
            i17 >>= 1;
            if (iArr[i4 + i19] > ((i19 & 1) == 0 ? i12 : i16)) {
                i18 |= i17;
            }
        }
        while (true) {
            int[] iArr2 = CHARACTER_ENCODINGS;
            if (i7 >= iArr2.length) {
                return -1;
            }
            if (iArr2[i7] == i18) {
                return i7;
            }
            i7++;
        }
    }

    private void validatePattern(int i4) throws NotFoundException {
        int[] iArr = {0, 0, 0, 0};
        int[] iArr2 = {0, 0, 0, 0};
        int length = this.decodeRowResult.length() - 1;
        int i5 = 0;
        int i6 = i4;
        int i7 = 0;
        while (true) {
            int i8 = CHARACTER_ENCODINGS[this.decodeRowResult.charAt(i7)];
            for (int i9 = 6; i9 >= 0; i9--) {
                int i10 = (i9 & 1) + ((i8 & 1) << 1);
                iArr[i10] = iArr[i10] + this.counters[i6 + i9];
                iArr2[i10] = iArr2[i10] + 1;
                i8 >>= 1;
            }
            if (i7 >= length) {
                break;
            }
            i6 += 8;
            i7++;
        }
        float[] fArr = new float[4];
        float[] fArr2 = new float[4];
        for (int i11 = 0; i11 < 2; i11++) {
            fArr2[i11] = 0.0f;
            int i12 = i11 + 2;
            fArr2[i12] = ((iArr[i12] / iArr2[i12]) + (iArr[i11] / iArr2[i11])) / MAX_ACCEPTABLE;
            fArr[i11] = fArr2[i12];
            fArr[i12] = ((iArr[i12] * MAX_ACCEPTABLE) + 1.5f) / iArr2[i12];
        }
        loop3: while (true) {
            int i13 = CHARACTER_ENCODINGS[this.decodeRowResult.charAt(i5)];
            for (int i14 = 6; i14 >= 0; i14--) {
                int i15 = (i14 & 1) + ((i13 & 1) << 1);
                float f4 = this.counters[i4 + i14];
                if (f4 < fArr2[i15] || f4 > fArr[i15]) {
                    break loop3;
                }
                i13 >>= 1;
            }
            if (i5 >= length) {
                return;
            }
            i4 += 8;
            i5++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i4, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException {
        Arrays.fill(this.counters, 0);
        setCounters(bitArray);
        int iFindStartPattern = findStartPattern();
        this.decodeRowResult.setLength(0);
        int i5 = iFindStartPattern;
        do {
            int narrowWidePattern = toNarrowWidePattern(i5);
            if (narrowWidePattern == -1) {
                throw NotFoundException.getNotFoundInstance();
            }
            this.decodeRowResult.append((char) narrowWidePattern);
            i5 += 8;
            if (this.decodeRowResult.length() > 1 && arrayContains(STARTEND_ENCODING, ALPHABET[narrowWidePattern])) {
                break;
            }
        } while (i5 < this.counterLength);
        int i6 = i5 - 1;
        int i7 = this.counters[i6];
        int i8 = 0;
        for (int i9 = -8; i9 < -1; i9++) {
            i8 += this.counters[i5 + i9];
        }
        if (i5 < this.counterLength && i7 < i8 / 2) {
            throw NotFoundException.getNotFoundInstance();
        }
        validatePattern(iFindStartPattern);
        for (int i10 = 0; i10 < this.decodeRowResult.length(); i10++) {
            StringBuilder sb = this.decodeRowResult;
            sb.setCharAt(i10, ALPHABET[sb.charAt(i10)]);
        }
        char cCharAt = this.decodeRowResult.charAt(0);
        char[] cArr = STARTEND_ENCODING;
        if (!arrayContains(cArr, cCharAt)) {
            throw NotFoundException.getNotFoundInstance();
        }
        StringBuilder sb2 = this.decodeRowResult;
        if (!arrayContains(cArr, sb2.charAt(sb2.length() - 1))) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (this.decodeRowResult.length() <= 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (map == null || !map.containsKey(DecodeHintType.RETURN_CODABAR_START_END)) {
            StringBuilder sb3 = this.decodeRowResult;
            sb3.deleteCharAt(sb3.length() - 1);
            this.decodeRowResult.deleteCharAt(0);
        }
        int i11 = 0;
        for (int i12 = 0; i12 < iFindStartPattern; i12++) {
            i11 += this.counters[i12];
        }
        float f4 = i11;
        while (iFindStartPattern < i6) {
            i11 += this.counters[iFindStartPattern];
            iFindStartPattern++;
        }
        float f5 = i4;
        return new Result(this.decodeRowResult.toString(), null, new ResultPoint[]{new ResultPoint(f4, f5), new ResultPoint(i11, f5)}, BarcodeFormat.CODABAR);
    }
}
