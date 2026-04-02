package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;
import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes2.dex */
public final class Code93Reader extends OneDReader {
    public static final int ASTERISK_ENCODING;
    public static final int[] CHARACTER_ENCODINGS;
    public static final String ALPHABET_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*";
    private static final char[] ALPHABET = ALPHABET_STRING.toCharArray();
    private final StringBuilder decodeRowResult = new StringBuilder(20);
    private final int[] counters = new int[6];

    static {
        int[] iArr = {276, 328, 324, 322, 296, 292, 290, 336, 274, 266, HttpStatus.FAILED_DEPENDENCY_424, 420, 418, HttpStatus.NOT_FOUND_404, HttpStatus.PAYMENT_REQUIRED_402, 394, 360, 356, 354, 308, 282, 344, 332, 326, HttpStatus.MULTIPLE_CHOICES_300, 278, 436, 434, 428, HttpStatus.UNPROCESSABLE_ENTITY_422, HttpStatus.NOT_ACCEPTABLE_406, HttpStatus.GONE_410, 364, 358, 310, 314, 302, 468, 466, 458, 366, 374, 430, 294, 474, 470, 306, 350};
        CHARACTER_ENCODINGS = iArr;
        ASTERISK_ENCODING = iArr[47];
    }

    private static void checkChecksums(CharSequence charSequence) throws ChecksumException {
        int length = charSequence.length();
        checkOneChecksum(charSequence, length - 2, 20);
        checkOneChecksum(charSequence, length - 1, 15);
    }

    private static void checkOneChecksum(CharSequence charSequence, int i4, int i5) throws ChecksumException {
        int iIndexOf = 0;
        int i6 = 1;
        for (int i7 = i4 - 1; i7 >= 0; i7--) {
            iIndexOf += ALPHABET_STRING.indexOf(charSequence.charAt(i7)) * i6;
            i6++;
            if (i6 > i5) {
                i6 = 1;
            }
        }
        if (charSequence.charAt(i4) != ALPHABET[iIndexOf % 47]) {
            throw ChecksumException.getChecksumInstance();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String decodeExtended(java.lang.CharSequence r9) throws com.google.zxing.FormatException {
        /*
            int r0 = r9.length()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r0)
            r2 = 0
            r3 = 0
        Lb:
            if (r3 >= r0) goto Lb3
            char r4 = r9.charAt(r3)
            r5 = 97
            if (r4 < r5) goto Lac
            r5 = 100
            if (r4 > r5) goto Lac
            int r5 = r0 + (-1)
            if (r3 >= r5) goto La7
            int r3 = r3 + 1
            char r5 = r9.charAt(r3)
            r6 = 79
            r7 = 90
            r8 = 65
            switch(r4) {
                case 97: goto L96;
                case 98: goto L4d;
                case 99: goto L3c;
                case 100: goto L2f;
                default: goto L2c;
            }
        L2c:
            r4 = 0
            goto La3
        L2f:
            if (r5 < r8) goto L37
            if (r5 > r7) goto L37
            int r5 = r5 + 32
            goto L9c
        L37:
            com.google.zxing.FormatException r9 = com.google.zxing.FormatException.getFormatInstance()
            throw r9
        L3c:
            if (r5 < r8) goto L43
            if (r5 > r6) goto L43
            int r5 = r5 + (-32)
            goto L9c
        L43:
            if (r5 != r7) goto L48
            r4 = 58
            goto La3
        L48:
            com.google.zxing.FormatException r9 = com.google.zxing.FormatException.getFormatInstance()
            throw r9
        L4d:
            if (r5 < r8) goto L56
            r4 = 69
            if (r5 > r4) goto L56
            int r5 = r5 + (-38)
            goto L9c
        L56:
            r4 = 70
            if (r5 < r4) goto L61
            r4 = 74
            if (r5 > r4) goto L61
            int r5 = r5 + (-11)
            goto L9c
        L61:
            r4 = 75
            if (r5 < r4) goto L6a
            if (r5 > r6) goto L6a
            int r5 = r5 + 16
            goto L9c
        L6a:
            r4 = 80
            if (r5 < r4) goto L75
            r4 = 84
            if (r5 > r4) goto L75
            int r5 = r5 + 43
            goto L9c
        L75:
            r4 = 85
            if (r5 != r4) goto L7a
            goto L2c
        L7a:
            r4 = 86
            if (r5 != r4) goto L81
            r4 = 64
            goto La3
        L81:
            r4 = 87
            if (r5 != r4) goto L88
            r4 = 96
            goto La3
        L88:
            r4 = 88
            if (r5 < r4) goto L91
            if (r5 > r7) goto L91
            r4 = 127(0x7f, float:1.78E-43)
            goto La3
        L91:
            com.google.zxing.FormatException r9 = com.google.zxing.FormatException.getFormatInstance()
            throw r9
        L96:
            if (r5 < r8) goto L9e
            if (r5 > r7) goto L9e
            int r5 = r5 + (-64)
        L9c:
            char r4 = (char) r5
            goto La3
        L9e:
            com.google.zxing.FormatException r9 = com.google.zxing.FormatException.getFormatInstance()
            throw r9
        La3:
            r1.append(r4)
            goto Laf
        La7:
            com.google.zxing.FormatException r9 = com.google.zxing.FormatException.getFormatInstance()
            throw r9
        Lac:
            r1.append(r4)
        Laf:
            int r3 = r3 + 1
            goto Lb
        Lb3:
            java.lang.String r9 = r1.toString()
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.Code93Reader.decodeExtended(java.lang.CharSequence):java.lang.String");
    }

    private int[] findAsteriskPattern(BitArray bitArray) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        Arrays.fill(this.counters, 0);
        int[] iArr = this.counters;
        int length = iArr.length;
        int i4 = nextSet;
        boolean z3 = false;
        int i5 = 0;
        while (nextSet < size) {
            if (bitArray.get(nextSet) != z3) {
                iArr[i5] = iArr[i5] + 1;
            } else {
                if (i5 != length - 1) {
                    i5++;
                } else {
                    if (toPattern(iArr) == ASTERISK_ENCODING) {
                        return new int[]{i4, nextSet};
                    }
                    i4 += iArr[0] + iArr[1];
                    int i6 = i5 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i6);
                    iArr[i6] = 0;
                    iArr[i5] = 0;
                    i5--;
                }
                iArr[i5] = 1;
                z3 = !z3;
            }
            nextSet++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static char patternToChar(int i4) throws NotFoundException {
        int i5 = 0;
        while (true) {
            int[] iArr = CHARACTER_ENCODINGS;
            if (i5 >= iArr.length) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (iArr[i5] == i4) {
                return ALPHABET[i5];
            }
            i5++;
        }
    }

    private static int toPattern(int[] iArr) {
        int i4 = 0;
        for (int i5 : iArr) {
            i4 += i5;
        }
        int length = iArr.length;
        int i6 = 0;
        for (int i7 = 0; i7 < length; i7++) {
            int iRound = Math.round((iArr[i7] * 9.0f) / i4);
            if (iRound <= 0 || iRound > 4) {
                return -1;
            }
            if ((i7 & 1) == 0) {
                for (int i8 = 0; i8 < iRound; i8++) {
                    i6 = (i6 << 1) | 1;
                }
            } else {
                i6 <<= iRound;
            }
        }
        return i6;
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i4, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException {
        int nextSet = bitArray.getNextSet(findAsteriskPattern(bitArray)[1]);
        int size = bitArray.getSize();
        int[] iArr = this.counters;
        Arrays.fill(iArr, 0);
        StringBuilder sb = this.decodeRowResult;
        sb.setLength(0);
        while (true) {
            OneDReader.recordPattern(bitArray, nextSet, iArr);
            int pattern = toPattern(iArr);
            if (pattern < 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            char cPatternToChar = patternToChar(pattern);
            sb.append(cPatternToChar);
            int i5 = nextSet;
            for (int i6 : iArr) {
                i5 += i6;
            }
            int nextSet2 = bitArray.getNextSet(i5);
            if (cPatternToChar == '*') {
                sb.deleteCharAt(sb.length() - 1);
                int i7 = 0;
                for (int i8 : iArr) {
                    i7 += i8;
                }
                if (nextSet2 == size || !bitArray.get(nextSet2)) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (sb.length() < 2) {
                    throw NotFoundException.getNotFoundInstance();
                }
                checkChecksums(sb);
                sb.setLength(sb.length() - 2);
                float f4 = i4;
                return new Result(decodeExtended(sb), null, new ResultPoint[]{new ResultPoint((r14[1] + r14[0]) / 2.0f, f4), new ResultPoint((i7 / 2.0f) + nextSet, f4)}, BarcodeFormat.CODE_93);
            }
            nextSet = nextSet2;
        }
    }
}
