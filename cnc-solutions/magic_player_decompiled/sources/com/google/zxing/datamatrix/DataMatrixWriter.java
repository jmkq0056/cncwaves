package com.google.zxing.datamatrix;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Dimension;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.datamatrix.encoder.DefaultPlacement;
import com.google.zxing.datamatrix.encoder.ErrorCorrection;
import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import com.google.zxing.datamatrix.encoder.SymbolInfo;
import com.google.zxing.datamatrix.encoder.SymbolShapeHint;
import com.google.zxing.qrcode.encoder.ByteMatrix;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class DataMatrixWriter implements Writer {
    private static BitMatrix convertByteMatrixToBitMatrix(ByteMatrix byteMatrix, int i4, int i5) {
        BitMatrix bitMatrix;
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int iMax = Math.max(i4, width);
        int iMax2 = Math.max(i5, height);
        int iMin = Math.min(iMax / width, iMax2 / height);
        int i6 = (iMax - (width * iMin)) / 2;
        int i7 = (iMax2 - (height * iMin)) / 2;
        if (i5 < height || i4 < width) {
            bitMatrix = new BitMatrix(width, height);
            i6 = 0;
            i7 = 0;
        } else {
            bitMatrix = new BitMatrix(i4, i5);
        }
        bitMatrix.clear();
        int i8 = 0;
        while (i8 < height) {
            int i9 = i6;
            int i10 = 0;
            while (i10 < width) {
                if (byteMatrix.get(i10, i8) == 1) {
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

    private static BitMatrix encodeLowLevel(DefaultPlacement defaultPlacement, SymbolInfo symbolInfo, int i4, int i5) {
        int symbolDataWidth = symbolInfo.getSymbolDataWidth();
        int symbolDataHeight = symbolInfo.getSymbolDataHeight();
        ByteMatrix byteMatrix = new ByteMatrix(symbolInfo.getSymbolWidth(), symbolInfo.getSymbolHeight());
        int i6 = 0;
        for (int i7 = 0; i7 < symbolDataHeight; i7++) {
            if (i7 % symbolInfo.matrixHeight == 0) {
                int i8 = 0;
                for (int i9 = 0; i9 < symbolInfo.getSymbolWidth(); i9++) {
                    byteMatrix.set(i8, i6, i9 % 2 == 0);
                    i8++;
                }
                i6++;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < symbolDataWidth; i11++) {
                if (i11 % symbolInfo.matrixWidth == 0) {
                    byteMatrix.set(i10, i6, true);
                    i10++;
                }
                byteMatrix.set(i10, i6, defaultPlacement.getBit(i11, i7));
                i10++;
                int i12 = symbolInfo.matrixWidth;
                if (i11 % i12 == i12 - 1) {
                    byteMatrix.set(i10, i6, i7 % 2 == 0);
                    i10++;
                }
            }
            i6++;
            int i13 = symbolInfo.matrixHeight;
            if (i7 % i13 == i13 - 1) {
                int i14 = 0;
                for (int i15 = 0; i15 < symbolInfo.getSymbolWidth(); i15++) {
                    byteMatrix.set(i14, i6, true);
                    i14++;
                }
                i6++;
            }
        }
        return convertByteMatrixToBitMatrix(byteMatrix, i4, i5);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i4, int i5) {
        return encode(str, barcodeFormat, i4, i5, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i4, int i5, Map<EncodeHintType, ?> map) {
        Dimension dimension;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (barcodeFormat != BarcodeFormat.DATA_MATRIX) {
            throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got ".concat(String.valueOf(barcodeFormat)));
        }
        if (i4 < 0 || i5 < 0) {
            throw new IllegalArgumentException("Requested dimensions can't be negative: " + i4 + 'x' + i5);
        }
        SymbolShapeHint symbolShapeHint = SymbolShapeHint.FORCE_NONE;
        Dimension dimension2 = null;
        if (map != null) {
            SymbolShapeHint symbolShapeHint2 = (SymbolShapeHint) map.get(EncodeHintType.DATA_MATRIX_SHAPE);
            if (symbolShapeHint2 != null) {
                symbolShapeHint = symbolShapeHint2;
            }
            Dimension dimension3 = (Dimension) map.get(EncodeHintType.MIN_SIZE);
            if (dimension3 == null) {
                dimension3 = null;
            }
            dimension = (Dimension) map.get(EncodeHintType.MAX_SIZE);
            if (dimension == null) {
                dimension = null;
            }
            dimension2 = dimension3;
        } else {
            dimension = null;
        }
        String strEncodeHighLevel = HighLevelEncoder.encodeHighLevel(str, symbolShapeHint, dimension2, dimension);
        SymbolInfo symbolInfoLookup = SymbolInfo.lookup(strEncodeHighLevel.length(), symbolShapeHint, dimension2, dimension, true);
        DefaultPlacement defaultPlacement = new DefaultPlacement(ErrorCorrection.encodeECC200(strEncodeHighLevel, symbolInfoLookup), symbolInfoLookup.getSymbolDataWidth(), symbolInfoLookup.getSymbolDataHeight());
        defaultPlacement.place();
        return encodeLowLevel(defaultPlacement, symbolInfoLookup, i4, i5);
    }
}
