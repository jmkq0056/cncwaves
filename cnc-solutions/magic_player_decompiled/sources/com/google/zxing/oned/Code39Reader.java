package com.google.zxing.oned;

import androidx.appcompat.widget.ActivityChooserView;
import cn.huidu.lcd.render.model.enums.AnimationType;
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
import org.xbill.DNS.WKSRecord;

/* JADX INFO: loaded from: classes2.dex */
public final class Code39Reader extends OneDReader {
    public static final String ALPHABET_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%";
    public static final int ASTERISK_ENCODING = 148;
    public static final int[] CHARACTER_ENCODINGS = {52, 289, 97, 352, 49, HttpStatus.NOT_MODIFIED_304, 112, 37, 292, 100, 265, 73, 328, 25, 280, 88, 13, 268, 76, 28, 259, 67, 322, 19, 274, 82, 7, 262, 70, 22, 385, 193, 448, 145, HttpStatus.BAD_REQUEST_400, AnimationType.ROLL_OUT_TO_RIGHT, WKSRecord.Service.STATSRV, 388, 196, 168, 162, WKSRecord.Service.NETBIOS_DGM, 42};
    private final int[] counters;
    private final StringBuilder decodeRowResult;
    private final boolean extendedMode;
    private final boolean usingCheckDigit;

    public Code39Reader() {
        this(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String decodeExtended(java.lang.CharSequence r12) throws com.google.zxing.FormatException {
        /*
            int r0 = r12.length()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r0)
            r2 = 0
            r3 = 0
        Lb:
            if (r3 >= r0) goto Lbe
            char r4 = r12.charAt(r3)
            r5 = 47
            r6 = 37
            r7 = 36
            r8 = 43
            if (r4 == r8) goto L27
            if (r4 == r7) goto L27
            if (r4 == r6) goto L27
            if (r4 != r5) goto L22
            goto L27
        L22:
            r1.append(r4)
            goto Lb5
        L27:
            int r3 = r3 + 1
            char r9 = r12.charAt(r3)
            r10 = 90
            r11 = 65
            if (r4 == r7) goto Lab
            r7 = 79
            if (r4 == r6) goto L5d
            if (r4 == r8) goto L51
            if (r4 == r5) goto L3e
        L3b:
            r4 = 0
            goto Lb2
        L3e:
            if (r9 < r11) goto L46
            if (r9 > r7) goto L46
            int r9 = r9 + (-32)
            goto Lb1
        L46:
            if (r9 != r10) goto L4c
            r4 = 58
            goto Lb2
        L4c:
            com.google.zxing.FormatException r12 = com.google.zxing.FormatException.getFormatInstance()
            throw r12
        L51:
            if (r9 < r11) goto L58
            if (r9 > r10) goto L58
            int r9 = r9 + 32
            goto Lb1
        L58:
            com.google.zxing.FormatException r12 = com.google.zxing.FormatException.getFormatInstance()
            throw r12
        L5d:
            if (r9 < r11) goto L66
            r4 = 69
            if (r9 > r4) goto L66
            int r9 = r9 + (-38)
            goto Lb1
        L66:
            r4 = 70
            if (r9 < r4) goto L71
            r4 = 74
            if (r9 > r4) goto L71
            int r9 = r9 + (-11)
            goto Lb1
        L71:
            r4 = 75
            if (r9 < r4) goto L7a
            if (r9 > r7) goto L7a
            int r9 = r9 + 16
            goto Lb1
        L7a:
            r4 = 80
            if (r9 < r4) goto L85
            r4 = 84
            if (r9 > r4) goto L85
            int r9 = r9 + 43
            goto Lb1
        L85:
            r4 = 85
            if (r9 != r4) goto L8a
            goto L3b
        L8a:
            r4 = 86
            if (r9 != r4) goto L91
            r4 = 64
            goto Lb2
        L91:
            r4 = 87
            if (r9 != r4) goto L98
            r4 = 96
            goto Lb2
        L98:
            r4 = 88
            if (r9 == r4) goto La8
            r4 = 89
            if (r9 == r4) goto La8
            if (r9 != r10) goto La3
            goto La8
        La3:
            com.google.zxing.FormatException r12 = com.google.zxing.FormatException.getFormatInstance()
            throw r12
        La8:
            r4 = 127(0x7f, float:1.78E-43)
            goto Lb2
        Lab:
            if (r9 < r11) goto Lb9
            if (r9 > r10) goto Lb9
            int r9 = r9 + (-64)
        Lb1:
            char r4 = (char) r9
        Lb2:
            r1.append(r4)
        Lb5:
            int r3 = r3 + 1
            goto Lb
        Lb9:
            com.google.zxing.FormatException r12 = com.google.zxing.FormatException.getFormatInstance()
            throw r12
        Lbe:
            java.lang.String r12 = r1.toString()
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.Code39Reader.decodeExtended(java.lang.CharSequence):java.lang.String");
    }

    private static int[] findAsteriskPattern(BitArray bitArray, int[] iArr) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
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
                    if (toNarrowWidePattern(iArr) == 148 && bitArray.isRange(Math.max(0, i4 - ((nextSet - i4) / 2)), i4, false)) {
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
                if (i4 == 148) {
                    return '*';
                }
                throw NotFoundException.getNotFoundInstance();
            }
            if (iArr[i5] == i4) {
                return ALPHABET_STRING.charAt(i5);
            }
            i5++;
        }
    }

    private static int toNarrowWidePattern(int[] iArr) {
        int length = iArr.length;
        int i4 = 0;
        while (true) {
            int i5 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            for (int i6 : iArr) {
                if (i6 < i5 && i6 > i4) {
                    i5 = i6;
                }
            }
            int i7 = 0;
            int i8 = 0;
            int i9 = 0;
            for (int i10 = 0; i10 < length; i10++) {
                int i11 = iArr[i10];
                if (i11 > i5) {
                    i8 |= 1 << ((length - 1) - i10);
                    i7++;
                    i9 += i11;
                }
            }
            if (i7 == 3) {
                for (int i12 = 0; i12 < length && i7 > 0; i12++) {
                    int i13 = iArr[i12];
                    if (i13 > i5) {
                        i7--;
                        if ((i13 << 1) >= i9) {
                            return -1;
                        }
                    }
                }
                return i8;
            }
            if (i7 <= 3) {
                return -1;
            }
            i4 = i5;
        }
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i4, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException {
        int[] iArr = this.counters;
        Arrays.fill(iArr, 0);
        StringBuilder sb = this.decodeRowResult;
        sb.setLength(0);
        int nextSet = bitArray.getNextSet(findAsteriskPattern(bitArray, iArr)[1]);
        int size = bitArray.getSize();
        while (true) {
            OneDReader.recordPattern(bitArray, nextSet, iArr);
            int narrowWidePattern = toNarrowWidePattern(iArr);
            if (narrowWidePattern < 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            char cPatternToChar = patternToChar(narrowWidePattern);
            sb.append(cPatternToChar);
            int i5 = nextSet;
            for (int i6 : iArr) {
                i5 += i6;
            }
            int nextSet2 = bitArray.getNextSet(i5);
            if (cPatternToChar == '*') {
                sb.setLength(sb.length() - 1);
                int i7 = 0;
                for (int i8 : iArr) {
                    i7 += i8;
                }
                int i9 = (nextSet2 - nextSet) - i7;
                if (nextSet2 != size && (i9 << 1) < i7) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (this.usingCheckDigit) {
                    int length = sb.length() - 1;
                    int iIndexOf = 0;
                    for (int i10 = 0; i10 < length; i10++) {
                        iIndexOf += ALPHABET_STRING.indexOf(this.decodeRowResult.charAt(i10));
                    }
                    if (sb.charAt(length) != ALPHABET_STRING.charAt(iIndexOf % 43)) {
                        throw ChecksumException.getChecksumInstance();
                    }
                    sb.setLength(length);
                }
                if (sb.length() == 0) {
                    throw NotFoundException.getNotFoundInstance();
                }
                float f4 = i4;
                return new Result(this.extendedMode ? decodeExtended(sb) : sb.toString(), null, new ResultPoint[]{new ResultPoint((r2[1] + r2[0]) / 2.0f, f4), new ResultPoint((i7 / 2.0f) + nextSet, f4)}, BarcodeFormat.CODE_39);
            }
            nextSet = nextSet2;
        }
    }

    public Code39Reader(boolean z3) {
        this(z3, false);
    }

    public Code39Reader(boolean z3, boolean z4) {
        this.usingCheckDigit = z3;
        this.extendedMode = z4;
        this.decodeRowResult = new StringBuilder(20);
        this.counters = new int[9];
    }
}
