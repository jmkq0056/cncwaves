package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import org.xbill.DNS.WKSRecord;

/* JADX INFO: loaded from: classes2.dex */
public final class Code128Writer extends OneDimensionalCodeWriter {
    private static final int CODE_CODE_A = 101;
    private static final int CODE_CODE_B = 100;
    private static final int CODE_CODE_C = 99;
    private static final int CODE_FNC_1 = 102;
    private static final int CODE_FNC_2 = 97;
    private static final int CODE_FNC_3 = 96;
    private static final int CODE_FNC_4_A = 101;
    private static final int CODE_FNC_4_B = 100;
    private static final int CODE_START_A = 103;
    private static final int CODE_START_B = 104;
    private static final int CODE_START_C = 105;
    private static final int CODE_STOP = 106;
    private static final char ESCAPE_FNC_1 = 241;
    private static final char ESCAPE_FNC_2 = 242;
    private static final char ESCAPE_FNC_3 = 243;
    private static final char ESCAPE_FNC_4 = 244;

    public enum CType {
        UNCODABLE,
        ONE_DIGIT,
        TWO_DIGITS,
        FNC_1
    }

    private static int chooseCode(CharSequence charSequence, int i4, int i5) {
        CType cTypeFindCType;
        CType cTypeFindCType2;
        char cCharAt;
        CType cTypeFindCType3 = findCType(charSequence, i4);
        CType cType = CType.ONE_DIGIT;
        if (cTypeFindCType3 == cType) {
            return i5 == 101 ? 101 : 100;
        }
        CType cType2 = CType.UNCODABLE;
        if (cTypeFindCType3 == cType2) {
            return (i4 >= charSequence.length() || ((cCharAt = charSequence.charAt(i4)) >= ' ' && (i5 != 101 || (cCharAt >= '`' && (cCharAt < 241 || cCharAt > 244))))) ? 100 : 101;
        }
        if (i5 == 101 && cTypeFindCType3 == CType.FNC_1) {
            return 101;
        }
        if (i5 == 99) {
            return 99;
        }
        if (i5 != 100) {
            if (cTypeFindCType3 == CType.FNC_1) {
                cTypeFindCType3 = findCType(charSequence, i4 + 1);
            }
            return cTypeFindCType3 == CType.TWO_DIGITS ? 99 : 100;
        }
        CType cType3 = CType.FNC_1;
        if (cTypeFindCType3 == cType3 || (cTypeFindCType = findCType(charSequence, i4 + 2)) == cType2 || cTypeFindCType == cType) {
            return 100;
        }
        if (cTypeFindCType == cType3) {
            return findCType(charSequence, i4 + 3) == CType.TWO_DIGITS ? 99 : 100;
        }
        int i6 = i4 + 4;
        while (true) {
            cTypeFindCType2 = findCType(charSequence, i6);
            if (cTypeFindCType2 != CType.TWO_DIGITS) {
                break;
            }
            i6 += 2;
        }
        return cTypeFindCType2 == CType.ONE_DIGIT ? 100 : 99;
    }

    private static CType findCType(CharSequence charSequence, int i4) {
        int length = charSequence.length();
        if (i4 >= length) {
            return CType.UNCODABLE;
        }
        char cCharAt = charSequence.charAt(i4);
        if (cCharAt == 241) {
            return CType.FNC_1;
        }
        if (cCharAt < '0' || cCharAt > '9') {
            return CType.UNCODABLE;
        }
        int i5 = i4 + 1;
        if (i5 >= length) {
            return CType.ONE_DIGIT;
        }
        char cCharAt2 = charSequence.charAt(i5);
        return (cCharAt2 < '0' || cCharAt2 > '9') ? CType.ONE_DIGIT : CType.TWO_DIGITS;
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int length = str.length();
        if (length <= 0 || length > 80) {
            throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got ".concat(String.valueOf(length)));
        }
        int iAppendPattern = 0;
        for (int i4 = 0; i4 < length; i4++) {
            char cCharAt = str.charAt(i4);
            switch (cCharAt) {
                case 241:
                case 242:
                case WKSRecord.Service.SUR_MEAS /* 243 */:
                case 244:
                    break;
                default:
                    if (cCharAt > 127) {
                        throw new IllegalArgumentException("Bad character in input: ".concat(String.valueOf(cCharAt)));
                    }
                    break;
                    break;
            }
        }
        ArrayList<int[]> arrayList = new ArrayList();
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 1;
        while (true) {
            int i9 = 103;
            if (i5 >= length) {
                int[][] iArr = Code128Reader.CODE_PATTERNS;
                arrayList.add(iArr[i6 % 103]);
                arrayList.add(iArr[106]);
                int i10 = 0;
                for (int[] iArr2 : arrayList) {
                    for (int i11 : iArr2) {
                        i10 += i11;
                    }
                }
                boolean[] zArr = new boolean[i10];
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    iAppendPattern += OneDimensionalCodeWriter.appendPattern(zArr, iAppendPattern, (int[]) it.next(), true);
                }
                return zArr;
            }
            int iChooseCode = chooseCode(str, i5, i7);
            int iCharAt = 100;
            if (iChooseCode == i7) {
                switch (str.charAt(i5)) {
                    case 241:
                        iCharAt = 102;
                        break;
                    case 242:
                        iCharAt = 97;
                        break;
                    case WKSRecord.Service.SUR_MEAS /* 243 */:
                        iCharAt = 96;
                        break;
                    case 244:
                        if (i7 == 101) {
                            iCharAt = 101;
                        }
                        break;
                    default:
                        if (i7 == 100) {
                            iCharAt = str.charAt(i5) - ' ';
                        } else if (i7 != 101) {
                            iCharAt = Integer.parseInt(str.substring(i5, i5 + 2));
                            i5++;
                        } else {
                            iCharAt = str.charAt(i5) - ' ';
                            if (iCharAt < 0) {
                                iCharAt += 96;
                            }
                        }
                        break;
                }
                i5++;
            } else {
                if (i7 != 0) {
                    i9 = iChooseCode;
                } else if (iChooseCode == 100) {
                    i9 = 104;
                } else if (iChooseCode != 101) {
                    i9 = 105;
                }
                iCharAt = i9;
                i7 = iChooseCode;
            }
            arrayList.add(Code128Reader.CODE_PATTERNS[iCharAt]);
            i6 += iCharAt * i8;
            if (i5 != 0) {
                i8++;
            }
        }
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public Collection<BarcodeFormat> getSupportedWriteFormats() {
        return Collections.singleton(BarcodeFormat.CODE_128);
    }
}
