package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.common.BitMatrix;
import java.util.Collection;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public abstract class OneDimensionalCodeWriter implements Writer {
    private static final Pattern NUMERIC = Pattern.compile("[0-9]+");

    public static int appendPattern(boolean[] zArr, int i4, int[] iArr, boolean z3) {
        int i5 = 0;
        for (int i6 : iArr) {
            int i7 = 0;
            while (i7 < i6) {
                zArr[i4] = z3;
                i7++;
                i4++;
            }
            i5 += i6;
            z3 = !z3;
        }
        return i5;
    }

    public static void checkNumeric(String str) {
        if (!NUMERIC.matcher(str).matches()) {
            throw new IllegalArgumentException("Input should only contain digits 0-9");
        }
    }

    private static BitMatrix renderResult(boolean[] zArr, int i4, int i5, int i6) {
        int length = zArr.length;
        int i7 = i6 + length;
        int iMax = Math.max(i4, i7);
        int iMax2 = Math.max(1, i5);
        int i8 = iMax / i7;
        int i9 = (iMax - (length * i8)) / 2;
        BitMatrix bitMatrix = new BitMatrix(iMax, iMax2);
        int i10 = 0;
        while (i10 < length) {
            if (zArr[i10]) {
                bitMatrix.setRegion(i9, 0, i8, iMax2);
            }
            i10++;
            i9 += i8;
        }
        return bitMatrix;
    }

    @Override // com.google.zxing.Writer
    public final BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i4, int i5) {
        return encode(str, barcodeFormat, i4, i5, null);
    }

    public abstract boolean[] encode(String str);

    public int getDefaultMargin() {
        return 10;
    }

    public Collection<BarcodeFormat> getSupportedWriteFormats() {
        return null;
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i4, int i5, Map<EncodeHintType, ?> map) {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (i4 < 0 || i5 < 0) {
            throw new IllegalArgumentException("Negative size is not allowed. Input: " + i4 + 'x' + i5);
        }
        Collection<BarcodeFormat> supportedWriteFormats = getSupportedWriteFormats();
        if (supportedWriteFormats != null && !supportedWriteFormats.contains(barcodeFormat)) {
            throw new IllegalArgumentException("Can only encode " + supportedWriteFormats + ", but got " + barcodeFormat);
        }
        int defaultMargin = getDefaultMargin();
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.MARGIN;
            if (map.containsKey(encodeHintType)) {
                defaultMargin = Integer.parseInt(map.get(encodeHintType).toString());
            }
        }
        return renderResult(encode(str), i4, i5, defaultMargin);
    }
}
