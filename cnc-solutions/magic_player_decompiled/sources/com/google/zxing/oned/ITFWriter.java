package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public final class ITFWriter extends OneDimensionalCodeWriter {
    private static final int N = 1;
    private static final int W = 3;
    private static final int[] START_PATTERN = {1, 1, 1, 1};
    private static final int[] END_PATTERN = {3, 1, 1};
    private static final int[][] PATTERNS = {new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public boolean[] encode(String str) {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("The length of the input should be even");
        }
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got ".concat(String.valueOf(length)));
        }
        OneDimensionalCodeWriter.checkNumeric(str);
        boolean[] zArr = new boolean[(length * 9) + 9];
        int iAppendPattern = OneDimensionalCodeWriter.appendPattern(zArr, 0, START_PATTERN, true);
        for (int i4 = 0; i4 < length; i4 += 2) {
            int iDigit = Character.digit(str.charAt(i4), 10);
            int iDigit2 = Character.digit(str.charAt(i4 + 1), 10);
            int[] iArr = new int[10];
            for (int i5 = 0; i5 < 5; i5++) {
                int i6 = i5 * 2;
                int[][] iArr2 = PATTERNS;
                iArr[i6] = iArr2[iDigit][i5];
                iArr[i6 + 1] = iArr2[iDigit2][i5];
            }
            iAppendPattern += OneDimensionalCodeWriter.appendPattern(zArr, iAppendPattern, iArr, true);
        }
        OneDimensionalCodeWriter.appendPattern(zArr, iAppendPattern, END_PATTERN, true);
        return zArr;
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public Collection<BarcodeFormat> getSupportedWriteFormats() {
        return Collections.singleton(BarcodeFormat.ITF);
    }
}
