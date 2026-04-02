package com.google.zxing.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.qrcode.decoder.Decoder;
import com.google.zxing.qrcode.decoder.QRCodeDecoderMetaData;
import com.google.zxing.qrcode.detector.Detector;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class QRCodeReader implements Reader {
    private static final ResultPoint[] NO_POINTS = new ResultPoint[0];
    private final Decoder decoder = new Decoder();

    private static BitMatrix extractPureBits(BitMatrix bitMatrix) throws NotFoundException {
        int[] topLeftOnBit = bitMatrix.getTopLeftOnBit();
        int[] bottomRightOnBit = bitMatrix.getBottomRightOnBit();
        if (topLeftOnBit == null || bottomRightOnBit == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        float fModuleSize = moduleSize(topLeftOnBit, bitMatrix);
        int i4 = topLeftOnBit[1];
        int i5 = bottomRightOnBit[1];
        int i6 = topLeftOnBit[0];
        int i7 = bottomRightOnBit[0];
        if (i6 >= i7 || i4 >= i5) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i8 = i5 - i4;
        if (i8 != i7 - i6 && (i7 = i6 + i8) >= bitMatrix.getWidth()) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iRound = Math.round(((i7 - i6) + 1) / fModuleSize);
        int iRound2 = Math.round((i8 + 1) / fModuleSize);
        if (iRound <= 0 || iRound2 <= 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (iRound2 != iRound) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i9 = (int) (fModuleSize / 2.0f);
        int i10 = i4 + i9;
        int i11 = i6 + i9;
        int i12 = (((int) ((iRound - 1) * fModuleSize)) + i11) - i7;
        if (i12 > 0) {
            if (i12 > i9) {
                throw NotFoundException.getNotFoundInstance();
            }
            i11 -= i12;
        }
        int i13 = (((int) ((iRound2 - 1) * fModuleSize)) + i10) - i5;
        if (i13 > 0) {
            if (i13 > i9) {
                throw NotFoundException.getNotFoundInstance();
            }
            i10 -= i13;
        }
        BitMatrix bitMatrix2 = new BitMatrix(iRound, iRound2);
        for (int i14 = 0; i14 < iRound2; i14++) {
            int i15 = ((int) (i14 * fModuleSize)) + i10;
            for (int i16 = 0; i16 < iRound; i16++) {
                if (bitMatrix.get(((int) (i16 * fModuleSize)) + i11, i15)) {
                    bitMatrix2.set(i16, i14);
                }
            }
        }
        return bitMatrix2;
    }

    private static float moduleSize(int[] iArr, BitMatrix bitMatrix) throws NotFoundException {
        int height = bitMatrix.getHeight();
        int width = bitMatrix.getWidth();
        int i4 = iArr[0];
        boolean z3 = true;
        int i5 = iArr[1];
        int i6 = 0;
        while (i4 < width && i5 < height) {
            if (z3 != bitMatrix.get(i4, i5)) {
                i6++;
                if (i6 == 5) {
                    break;
                }
                z3 = !z3;
            }
            i4++;
            i5++;
        }
        if (i4 == width || i5 == height) {
            throw NotFoundException.getNotFoundInstance();
        }
        return (i4 - iArr[0]) / 7.0f;
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) {
        return decode(binaryBitmap, null);
    }

    public final Decoder getDecoder() {
        return this.decoder;
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public final Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        ResultPoint[] points;
        DecoderResult decoderResultDecode;
        if (map == null || !map.containsKey(DecodeHintType.PURE_BARCODE)) {
            DetectorResult detectorResultDetect = new Detector(binaryBitmap.getBlackMatrix()).detect(map);
            DecoderResult decoderResultDecode2 = this.decoder.decode(detectorResultDetect.getBits(), map);
            points = detectorResultDetect.getPoints();
            decoderResultDecode = decoderResultDecode2;
        } else {
            decoderResultDecode = this.decoder.decode(extractPureBits(binaryBitmap.getBlackMatrix()), map);
            points = NO_POINTS;
        }
        if (decoderResultDecode.getOther() instanceof QRCodeDecoderMetaData) {
            ((QRCodeDecoderMetaData) decoderResultDecode.getOther()).applyMirroredCorrection(points);
        }
        Result result = new Result(decoderResultDecode.getText(), decoderResultDecode.getRawBytes(), points, BarcodeFormat.QR_CODE);
        List<byte[]> byteSegments = decoderResultDecode.getByteSegments();
        if (byteSegments != null) {
            result.putMetadata(ResultMetadataType.BYTE_SEGMENTS, byteSegments);
        }
        String eCLevel = decoderResultDecode.getECLevel();
        if (eCLevel != null) {
            result.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, eCLevel);
        }
        if (decoderResultDecode.hasStructuredAppend()) {
            result.putMetadata(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(decoderResultDecode.getStructuredAppendSequenceNumber()));
            result.putMetadata(ResultMetadataType.STRUCTURED_APPEND_PARITY, Integer.valueOf(decoderResultDecode.getStructuredAppendParity()));
        }
        return result;
    }
}
