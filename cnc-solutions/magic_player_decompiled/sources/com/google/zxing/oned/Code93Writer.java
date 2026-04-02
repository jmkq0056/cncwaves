package com.google.zxing.oned;

import android.support.v4.media.f;
import com.google.zxing.BarcodeFormat;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public class Code93Writer extends OneDimensionalCodeWriter {
    @Deprecated
    public static int appendPattern(boolean[] zArr, int i4, int[] iArr, boolean z3) {
        int length = iArr.length;
        int i5 = 0;
        while (i5 < length) {
            int i6 = i4 + 1;
            zArr[i4] = iArr[i5] != 0;
            i5++;
            i4 = i6;
        }
        return 9;
    }

    private static int computeChecksumIndex(String str, int i4) {
        int iIndexOf = 0;
        int i5 = 1;
        for (int length = str.length() - 1; length >= 0; length--) {
            iIndexOf += Code93Reader.ALPHABET_STRING.indexOf(str.charAt(length)) * i5;
            i5++;
            if (i5 > i4) {
                i5 = 1;
            }
        }
        return iIndexOf % 47;
    }

    public static String convertToExtended(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(length << 1);
        for (int i4 = 0; i4 < length; i4++) {
            char cCharAt = str.charAt(i4);
            if (cCharAt == 0) {
                sb.append("bU");
            } else if (cCharAt <= 26) {
                sb.append('a');
                sb.append((char) ((cCharAt + 'A') - 1));
            } else if (cCharAt <= 31) {
                sb.append('b');
                sb.append((char) ((cCharAt + 'A') - 27));
            } else if (cCharAt == ' ' || cCharAt == '$' || cCharAt == '%' || cCharAt == '+') {
                sb.append(cCharAt);
            } else if (cCharAt <= ',') {
                sb.append('c');
                sb.append((char) ((cCharAt + 'A') - 33));
            } else if (cCharAt <= '9') {
                sb.append(cCharAt);
            } else if (cCharAt == ':') {
                sb.append("cZ");
            } else if (cCharAt <= '?') {
                sb.append('b');
                sb.append((char) ((cCharAt + 'F') - 59));
            } else if (cCharAt == '@') {
                sb.append("bV");
            } else if (cCharAt <= 'Z') {
                sb.append(cCharAt);
            } else if (cCharAt <= '_') {
                sb.append('b');
                sb.append((char) ((cCharAt + 'K') - 91));
            } else if (cCharAt == '`') {
                sb.append("bW");
            } else if (cCharAt <= 'z') {
                sb.append('d');
                sb.append((char) ((cCharAt + 'A') - 97));
            } else {
                if (cCharAt > 127) {
                    throw new IllegalArgumentException("Requested content contains a non-encodable character: '" + cCharAt + "'");
                }
                sb.append('b');
                sb.append((char) ((cCharAt + 'P') - 123));
            }
        }
        return sb.toString();
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        String strConvertToExtended = convertToExtended(str);
        int length = strConvertToExtended.length();
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long after converting to extended encoding, but got ".concat(String.valueOf(length)));
        }
        boolean[] zArr = new boolean[((strConvertToExtended.length() + 2 + 2) * 9) + 1];
        int iAppendPattern = appendPattern(zArr, 0, Code93Reader.ASTERISK_ENCODING);
        for (int i4 = 0; i4 < length; i4++) {
            iAppendPattern += appendPattern(zArr, iAppendPattern, Code93Reader.CHARACTER_ENCODINGS[Code93Reader.ALPHABET_STRING.indexOf(strConvertToExtended.charAt(i4))]);
        }
        int iComputeChecksumIndex = computeChecksumIndex(strConvertToExtended, 20);
        int[] iArr = Code93Reader.CHARACTER_ENCODINGS;
        int iAppendPattern2 = iAppendPattern + appendPattern(zArr, iAppendPattern, iArr[iComputeChecksumIndex]);
        StringBuilder sbA = f.a(strConvertToExtended);
        sbA.append(Code93Reader.ALPHABET_STRING.charAt(iComputeChecksumIndex));
        int iAppendPattern3 = iAppendPattern2 + appendPattern(zArr, iAppendPattern2, iArr[computeChecksumIndex(sbA.toString(), 15)]);
        zArr[iAppendPattern3 + appendPattern(zArr, iAppendPattern3, Code93Reader.ASTERISK_ENCODING)] = true;
        return zArr;
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public Collection<BarcodeFormat> getSupportedWriteFormats() {
        return Collections.singleton(BarcodeFormat.CODE_93);
    }

    private static int appendPattern(boolean[] zArr, int i4, int i5) {
        for (int i6 = 0; i6 < 9; i6++) {
            boolean z3 = true;
            int i7 = i4 + i6;
            if (((1 << (8 - i6)) & i5) == 0) {
                z3 = false;
            }
            zArr[i7] = z3;
        }
        return 9;
    }
}
