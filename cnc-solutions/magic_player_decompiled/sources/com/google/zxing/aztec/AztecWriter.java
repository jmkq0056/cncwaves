package com.google.zxing.aztec;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.aztec.encoder.AztecCode;
import com.google.zxing.aztec.encoder.Encoder;
import com.google.zxing.common.BitMatrix;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class AztecWriter implements Writer {
    private static BitMatrix renderResult(AztecCode aztecCode, int i4, int i5) {
        BitMatrix matrix = aztecCode.getMatrix();
        if (matrix == null) {
            throw new IllegalStateException();
        }
        int width = matrix.getWidth();
        int height = matrix.getHeight();
        int iMax = Math.max(i4, width);
        int iMax2 = Math.max(i5, height);
        int iMin = Math.min(iMax / width, iMax2 / height);
        int i6 = (iMax - (width * iMin)) / 2;
        int i7 = (iMax2 - (height * iMin)) / 2;
        BitMatrix bitMatrix = new BitMatrix(iMax, iMax2);
        int i8 = 0;
        while (i8 < height) {
            int i9 = i6;
            int i10 = 0;
            while (i10 < width) {
                if (matrix.get(i10, i8)) {
                    bitMatrix.setRegion(i9, i7, iMin, iMin);
                }
                i10++;
                i9 += iMin;
            }
            i8++;
            i7 += iMin;
        }
        return bitMatrix;
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i4, int i5) {
        return encode(str, barcodeFormat, i4, i5, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i4, int i5, Map<EncodeHintType, ?> map) {
        Charset charset;
        int i6;
        int i7;
        Charset charsetForName = StandardCharsets.ISO_8859_1;
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.CHARACTER_SET;
            if (map.containsKey(encodeHintType)) {
                charsetForName = Charset.forName(map.get(encodeHintType).toString());
            }
            EncodeHintType encodeHintType2 = EncodeHintType.ERROR_CORRECTION;
            int i8 = map.containsKey(encodeHintType2) ? Integer.parseInt(map.get(encodeHintType2).toString()) : 33;
            EncodeHintType encodeHintType3 = EncodeHintType.AZTEC_LAYERS;
            if (map.containsKey(encodeHintType3)) {
                charset = charsetForName;
                i6 = i8;
                i7 = Integer.parseInt(map.get(encodeHintType3).toString());
                return encode(str, barcodeFormat, i4, i5, charset, i6, i7);
            }
            charset = charsetForName;
            i6 = i8;
        } else {
            charset = charsetForName;
            i6 = 33;
        }
        i7 = 0;
        return encode(str, barcodeFormat, i4, i5, charset, i6, i7);
    }

    private static BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i4, int i5, Charset charset, int i6, int i7) {
        if (barcodeFormat == BarcodeFormat.AZTEC) {
            return renderResult(Encoder.encode(str.getBytes(charset), i6, i7), i4, i5);
        }
        throw new IllegalArgumentException("Can only encode AZTEC, but got ".concat(String.valueOf(barcodeFormat)));
    }
}
