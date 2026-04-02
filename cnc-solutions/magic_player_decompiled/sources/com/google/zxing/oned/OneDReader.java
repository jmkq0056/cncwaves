package com.google.zxing.oned;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class OneDReader implements Reader {
    /* JADX WARN: Removed duplicated region for block: B:38:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.zxing.Result doDecode(com.google.zxing.BinaryBitmap r22, java.util.Map<com.google.zxing.DecodeHintType, ?> r23) throws com.google.zxing.NotFoundException {
        /*
            Method dump skipped, instruction units count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.OneDReader.doDecode(com.google.zxing.BinaryBitmap, java.util.Map):com.google.zxing.Result");
    }

    public static float patternMatchVariance(int[] iArr, int[] iArr2, float f4) {
        int length = iArr.length;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            i4 += iArr[i6];
            i5 += iArr2[i6];
        }
        if (i4 < i5) {
            return Float.POSITIVE_INFINITY;
        }
        float f5 = i4;
        float f6 = f5 / i5;
        float f7 = f4 * f6;
        float f8 = 0.0f;
        for (int i7 = 0; i7 < length; i7++) {
            float f9 = iArr2[i7] * f6;
            float f10 = iArr[i7];
            float f11 = f10 > f9 ? f10 - f9 : f9 - f10;
            if (f11 > f7) {
                return Float.POSITIVE_INFINITY;
            }
            f8 += f11;
        }
        return f8 / f5;
    }

    public static void recordPattern(BitArray bitArray, int i4, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int i5 = 0;
        Arrays.fill(iArr, 0, length, 0);
        int size = bitArray.getSize();
        if (i4 >= size) {
            throw NotFoundException.getNotFoundInstance();
        }
        boolean z3 = !bitArray.get(i4);
        while (i4 < size) {
            if (bitArray.get(i4) == z3) {
                i5++;
                if (i5 == length) {
                    break;
                }
                iArr[i5] = 1;
                z3 = !z3;
            } else {
                iArr[i5] = iArr[i5] + 1;
            }
            i4++;
        }
        if (i5 != length) {
            if (i5 != length - 1 || i4 != size) {
                throw NotFoundException.getNotFoundInstance();
            }
        }
    }

    public static void recordPatternInReverse(BitArray bitArray, int i4, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        boolean z3 = bitArray.get(i4);
        while (i4 > 0 && length >= 0) {
            i4--;
            if (bitArray.get(i4) != z3) {
                length--;
                z3 = !z3;
            }
        }
        if (length >= 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        recordPattern(bitArray, i4 + 1, iArr);
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) {
        return decode(binaryBitmap, null);
    }

    public abstract Result decodeRow(int i4, BitArray bitArray, Map<DecodeHintType, ?> map);

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException {
        try {
            return doDecode(binaryBitmap, map);
        } catch (NotFoundException e4) {
            if (!(map != null && map.containsKey(DecodeHintType.TRY_HARDER)) || !binaryBitmap.isRotateSupported()) {
                throw e4;
            }
            BinaryBitmap binaryBitmapRotateCounterClockwise = binaryBitmap.rotateCounterClockwise();
            Result resultDoDecode = doDecode(binaryBitmapRotateCounterClockwise, map);
            Map<ResultMetadataType, Object> resultMetadata = resultDoDecode.getResultMetadata();
            int iIntValue = 270;
            if (resultMetadata != null) {
                ResultMetadataType resultMetadataType = ResultMetadataType.ORIENTATION;
                if (resultMetadata.containsKey(resultMetadataType)) {
                    iIntValue = (((Integer) resultMetadata.get(resultMetadataType)).intValue() + 270) % 360;
                }
            }
            resultDoDecode.putMetadata(ResultMetadataType.ORIENTATION, Integer.valueOf(iIntValue));
            ResultPoint[] resultPoints = resultDoDecode.getResultPoints();
            if (resultPoints != null) {
                int height = binaryBitmapRotateCounterClockwise.getHeight();
                for (int i4 = 0; i4 < resultPoints.length; i4++) {
                    resultPoints[i4] = new ResultPoint((height - resultPoints[i4].getY()) - 1.0f, resultPoints[i4].getX());
                }
            }
            return resultDoDecode;
        }
    }
}
