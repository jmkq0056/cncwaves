package com.google.zxing.multi;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class GenericMultipleBarcodeReader implements MultipleBarcodeReader {
    public static final Result[] EMPTY_RESULT_ARRAY = new Result[0];
    private static final int MAX_DEPTH = 4;
    private static final int MIN_DIMENSION_TO_RECUR = 100;
    private final Reader delegate;

    public GenericMultipleBarcodeReader(Reader reader) {
        this.delegate = reader;
    }

    private void doDecodeMultiple(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map, List<Result> list, int i4, int i5, int i6) {
        boolean z3;
        float f4;
        float f5;
        int i7;
        int i8;
        if (i6 > 4) {
            return;
        }
        try {
            Result resultDecode = this.delegate.decode(binaryBitmap, map);
            Iterator<Result> it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().getText().equals(resultDecode.getText())) {
                        z3 = true;
                        break;
                    }
                } else {
                    z3 = false;
                    break;
                }
            }
            if (!z3) {
                list.add(translateResultPoints(resultDecode, i4, i5));
            }
            ResultPoint[] resultPoints = resultDecode.getResultPoints();
            if (resultPoints == null || resultPoints.length == 0) {
                return;
            }
            int width = binaryBitmap.getWidth();
            int height = binaryBitmap.getHeight();
            float f6 = width;
            float f7 = height;
            float f8 = 0.0f;
            float f9 = 0.0f;
            for (ResultPoint resultPoint : resultPoints) {
                if (resultPoint != null) {
                    float x3 = resultPoint.getX();
                    float y3 = resultPoint.getY();
                    if (x3 < f6) {
                        f6 = x3;
                    }
                    if (y3 < f7) {
                        f7 = y3;
                    }
                    if (x3 > f8) {
                        f8 = x3;
                    }
                    if (y3 > f9) {
                        f9 = y3;
                    }
                }
            }
            if (f6 > 100.0f) {
                f4 = f8;
                f5 = f7;
                i7 = height;
                i8 = width;
                doDecodeMultiple(binaryBitmap.crop(0, 0, (int) f6, height), map, list, i4, i5, i6 + 1);
            } else {
                f4 = f8;
                f5 = f7;
                i7 = height;
                i8 = width;
            }
            if (f5 > 100.0f) {
                doDecodeMultiple(binaryBitmap.crop(0, 0, i8, (int) f5), map, list, i4, i5, i6 + 1);
            }
            float f10 = f4;
            if (f10 < i8 - 100) {
                int i9 = (int) f10;
                doDecodeMultiple(binaryBitmap.crop(i9, 0, i8 - i9, i7), map, list, i4 + i9, i5, i6 + 1);
            }
            if (f9 < i7 - 100) {
                int i10 = (int) f9;
                doDecodeMultiple(binaryBitmap.crop(0, i10, i8, i7 - i10), map, list, i4, i5 + i10, i6 + 1);
            }
        } catch (ReaderException unused) {
        }
    }

    private static Result translateResultPoints(Result result, int i4, int i5) {
        ResultPoint[] resultPoints = result.getResultPoints();
        if (resultPoints == null) {
            return result;
        }
        ResultPoint[] resultPointArr = new ResultPoint[resultPoints.length];
        for (int i6 = 0; i6 < resultPoints.length; i6++) {
            ResultPoint resultPoint = resultPoints[i6];
            if (resultPoint != null) {
                resultPointArr[i6] = new ResultPoint(resultPoint.getX() + i4, resultPoint.getY() + i5);
            }
        }
        Result result2 = new Result(result.getText(), result.getRawBytes(), result.getNumBits(), resultPointArr, result.getBarcodeFormat(), result.getTimestamp());
        result2.putAllMetadata(result.getResultMetadata());
        return result2;
    }

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public Result[] decodeMultiple(BinaryBitmap binaryBitmap) {
        return decodeMultiple(binaryBitmap, null);
    }

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public Result[] decodeMultiple(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException {
        ArrayList arrayList = new ArrayList();
        doDecodeMultiple(binaryBitmap, map, arrayList, 0, 0, 0);
        if (arrayList.isEmpty()) {
            throw NotFoundException.getNotFoundInstance();
        }
        return (Result[]) arrayList.toArray(EMPTY_RESULT_ARRAY);
    }
}
