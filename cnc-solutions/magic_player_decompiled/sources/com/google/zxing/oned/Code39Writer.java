package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public final class Code39Writer extends OneDimensionalCodeWriter {
    private static void toIntArray(int i4, int[] iArr) {
        for (int i5 = 0; i5 < 9; i5++) {
            int i6 = 1;
            if (((1 << (8 - i5)) & i4) != 0) {
                i6 = 2;
            }
            iArr[i5] = i6;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String tryToConvertToExtendedMode(java.lang.String r7) {
        /*
            Method dump skipped, instruction units count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.Code39Writer.tryToConvertToExtendedMode(java.lang.String):java.lang.String");
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int length = str.length();
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                break;
            }
            if (Code39Reader.ALPHABET_STRING.indexOf(str.charAt(i4)) < 0) {
                str = tryToConvertToExtendedMode(str);
                length = str.length();
                if (length > 80) {
                    throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length + " (extended full ASCII mode)");
                }
            } else {
                i4++;
            }
        }
        int[] iArr = new int[9];
        boolean[] zArr = new boolean[(length * 13) + 25];
        toIntArray(Code39Reader.ASTERISK_ENCODING, iArr);
        int iAppendPattern = OneDimensionalCodeWriter.appendPattern(zArr, 0, iArr, true);
        int[] iArr2 = {1};
        int iAppendPattern2 = OneDimensionalCodeWriter.appendPattern(zArr, iAppendPattern, iArr2, false) + iAppendPattern;
        for (int i5 = 0; i5 < length; i5++) {
            toIntArray(Code39Reader.CHARACTER_ENCODINGS[Code39Reader.ALPHABET_STRING.indexOf(str.charAt(i5))], iArr);
            int iAppendPattern3 = OneDimensionalCodeWriter.appendPattern(zArr, iAppendPattern2, iArr, true) + iAppendPattern2;
            iAppendPattern2 = OneDimensionalCodeWriter.appendPattern(zArr, iAppendPattern3, iArr2, false) + iAppendPattern3;
        }
        toIntArray(Code39Reader.ASTERISK_ENCODING, iArr);
        OneDimensionalCodeWriter.appendPattern(zArr, iAppendPattern2, iArr, true);
        return zArr;
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public Collection<BarcodeFormat> getSupportedWriteFormats() {
        return Collections.singleton(BarcodeFormat.CODE_39);
    }
}
