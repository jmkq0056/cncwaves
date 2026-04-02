package com.google.zxing.multi;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class ByQuadrantReader implements Reader {
    private final Reader delegate;

    public ByQuadrantReader(Reader reader) {
        this.delegate = reader;
    }

    private static void makeAbsolute(ResultPoint[] resultPointArr, int i4, int i5) {
        if (resultPointArr != null) {
            for (int i6 = 0; i6 < resultPointArr.length; i6++) {
                ResultPoint resultPoint = resultPointArr[i6];
                if (resultPoint != null) {
                    resultPointArr[i6] = new ResultPoint(resultPoint.getX() + i4, resultPoint.getY() + i5);
                }
            }
        }
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) {
        return decode(binaryBitmap, null);
    }

    @Override // com.google.zxing.Reader
    public void reset() {
        this.delegate.reset();
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) {
        int width = binaryBitmap.getWidth() / 2;
        int height = binaryBitmap.getHeight() / 2;
        try {
            try {
                try {
                    try {
                        return this.delegate.decode(binaryBitmap.crop(0, 0, width, height), map);
                    } catch (NotFoundException unused) {
                        int i4 = width / 2;
                        int i5 = height / 2;
                        Result resultDecode = this.delegate.decode(binaryBitmap.crop(i4, i5, width, height), map);
                        makeAbsolute(resultDecode.getResultPoints(), i4, i5);
                        return resultDecode;
                    }
                } catch (NotFoundException unused2) {
                    Result resultDecode2 = this.delegate.decode(binaryBitmap.crop(width, height, width, height), map);
                    makeAbsolute(resultDecode2.getResultPoints(), width, height);
                    return resultDecode2;
                }
            } catch (NotFoundException unused3) {
                Result resultDecode3 = this.delegate.decode(binaryBitmap.crop(0, height, width, height), map);
                makeAbsolute(resultDecode3.getResultPoints(), 0, height);
                return resultDecode3;
            }
        } catch (NotFoundException unused4) {
            Result resultDecode4 = this.delegate.decode(binaryBitmap.crop(width, 0, width, height), map);
            makeAbsolute(resultDecode4.getResultPoints(), width, 0);
            return resultDecode4;
        }
    }
}
