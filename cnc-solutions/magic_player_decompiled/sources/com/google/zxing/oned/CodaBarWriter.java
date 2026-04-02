package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public final class CodaBarWriter extends OneDimensionalCodeWriter {
    private static final char[] ALT_START_END_CHARS = {'T', 'N', '*', 'E'};
    private static final char[] CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED = {'/', ':', '+', '.'};
    private static final char DEFAULT_GUARD;
    private static final char[] START_END_CHARS;

    static {
        char[] cArr = {'A', 'B', 'C', 'D'};
        START_END_CHARS = cArr;
        DEFAULT_GUARD = cArr[0];
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int i4;
        if (str.length() < 2) {
            StringBuilder sb = new StringBuilder();
            char c4 = DEFAULT_GUARD;
            sb.append(c4);
            sb.append(str);
            sb.append(c4);
            str = sb.toString();
        } else {
            char upperCase = Character.toUpperCase(str.charAt(0));
            char upperCase2 = Character.toUpperCase(str.charAt(str.length() - 1));
            char[] cArr = START_END_CHARS;
            boolean zArrayContains = CodaBarReader.arrayContains(cArr, upperCase);
            boolean zArrayContains2 = CodaBarReader.arrayContains(cArr, upperCase2);
            char[] cArr2 = ALT_START_END_CHARS;
            boolean zArrayContains3 = CodaBarReader.arrayContains(cArr2, upperCase);
            boolean zArrayContains4 = CodaBarReader.arrayContains(cArr2, upperCase2);
            if (zArrayContains) {
                if (!zArrayContains2) {
                    throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
                }
            } else if (!zArrayContains3) {
                if (zArrayContains2 || zArrayContains4) {
                    throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
                }
                StringBuilder sb2 = new StringBuilder();
                char c5 = DEFAULT_GUARD;
                sb2.append(c5);
                sb2.append(str);
                sb2.append(c5);
                str = sb2.toString();
            } else if (!zArrayContains4) {
                throw new IllegalArgumentException("Invalid start/end guards: ".concat(str));
            }
        }
        int i5 = 20;
        for (int i6 = 1; i6 < str.length() - 1; i6++) {
            if (Character.isDigit(str.charAt(i6)) || str.charAt(i6) == '-' || str.charAt(i6) == '$') {
                i5 += 9;
            } else {
                if (!CodaBarReader.arrayContains(CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED, str.charAt(i6))) {
                    throw new IllegalArgumentException("Cannot encode : '" + str.charAt(i6) + '\'');
                }
                i5 += 10;
            }
        }
        boolean[] zArr = new boolean[(str.length() - 1) + i5];
        int i7 = 0;
        for (int i8 = 0; i8 < str.length(); i8++) {
            char upperCase3 = Character.toUpperCase(str.charAt(i8));
            if (i8 == 0 || i8 == str.length() - 1) {
                if (upperCase3 == '*') {
                    upperCase3 = 'C';
                } else if (upperCase3 == 'E') {
                    upperCase3 = 'D';
                } else if (upperCase3 == 'N') {
                    upperCase3 = 'B';
                } else if (upperCase3 == 'T') {
                    upperCase3 = 'A';
                }
            }
            int i9 = 0;
            while (true) {
                char[] cArr3 = CodaBarReader.ALPHABET;
                if (i9 >= cArr3.length) {
                    i4 = 0;
                    break;
                }
                if (upperCase3 == cArr3[i9]) {
                    i4 = CodaBarReader.CHARACTER_ENCODINGS[i9];
                    break;
                }
                i9++;
            }
            int i10 = 0;
            boolean z3 = true;
            while (true) {
                int i11 = 0;
                while (i10 < 7) {
                    zArr[i7] = z3;
                    i7++;
                    if (((i4 >> (6 - i10)) & 1) == 0 || i11 == 1) {
                        break;
                    }
                    i11++;
                }
                z3 = !z3;
                i10++;
            }
            if (i8 < str.length() - 1) {
                zArr[i7] = false;
                i7++;
            }
        }
        return zArr;
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public Collection<BarcodeFormat> getSupportedWriteFormats() {
        return Collections.singleton(BarcodeFormat.CODABAR);
    }
}
