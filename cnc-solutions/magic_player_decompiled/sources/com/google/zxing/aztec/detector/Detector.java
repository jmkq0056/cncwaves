package com.google.zxing.aztec.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.common.detector.WhiteRectangleDetector;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import org.xbill.DNS.WKSRecord;

/* JADX INFO: loaded from: classes2.dex */
public final class Detector {
    private static final int[] EXPECTED_CORNER_BITS = {3808, 476, 2107, 1799};
    private boolean compact;
    private final BitMatrix image;
    private int nbCenterLayers;
    private int nbDataBlocks;
    private int nbLayers;
    private int shift;

    public static final class Point {

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private final int f1389x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private final int f1390y;

        public Point(int i4, int i5) {
            this.f1389x = i4;
            this.f1390y = i5;
        }

        public int getX() {
            return this.f1389x;
        }

        public int getY() {
            return this.f1390y;
        }

        public ResultPoint toResultPoint() {
            return new ResultPoint(this.f1389x, this.f1390y);
        }

        public String toString() {
            return "<" + this.f1389x + ' ' + this.f1390y + '>';
        }
    }

    public Detector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    private static float distance(Point point, Point point2) {
        return MathUtils.distance(point.getX(), point.getY(), point2.getX(), point2.getY());
    }

    private static ResultPoint[] expandSquare(ResultPoint[] resultPointArr, int i4, int i5) {
        float f4 = i5 / (i4 * 2.0f);
        float x3 = resultPointArr[0].getX() - resultPointArr[2].getX();
        float y3 = resultPointArr[0].getY() - resultPointArr[2].getY();
        float x4 = (resultPointArr[2].getX() + resultPointArr[0].getX()) / 2.0f;
        float y4 = (resultPointArr[2].getY() + resultPointArr[0].getY()) / 2.0f;
        float f5 = x3 * f4;
        float f6 = y3 * f4;
        ResultPoint resultPoint = new ResultPoint(x4 + f5, y4 + f6);
        ResultPoint resultPoint2 = new ResultPoint(x4 - f5, y4 - f6);
        float x5 = resultPointArr[1].getX() - resultPointArr[3].getX();
        float y5 = resultPointArr[1].getY() - resultPointArr[3].getY();
        float x6 = (resultPointArr[3].getX() + resultPointArr[1].getX()) / 2.0f;
        float y6 = (resultPointArr[3].getY() + resultPointArr[1].getY()) / 2.0f;
        float f7 = x5 * f4;
        float f8 = f4 * y5;
        return new ResultPoint[]{resultPoint, new ResultPoint(x6 + f7, y6 + f8), resultPoint2, new ResultPoint(x6 - f7, y6 - f8)};
    }

    private void extractParameters(ResultPoint[] resultPointArr) throws NotFoundException {
        long j4;
        long j5;
        if (!isValid(resultPointArr[0]) || !isValid(resultPointArr[1]) || !isValid(resultPointArr[2]) || !isValid(resultPointArr[3])) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i4 = this.nbCenterLayers * 2;
        int[] iArr = {sampleLine(resultPointArr[0], resultPointArr[1], i4), sampleLine(resultPointArr[1], resultPointArr[2], i4), sampleLine(resultPointArr[2], resultPointArr[3], i4), sampleLine(resultPointArr[3], resultPointArr[0], i4)};
        this.shift = getRotation(iArr, i4);
        long j6 = 0;
        for (int i5 = 0; i5 < 4; i5++) {
            int i6 = iArr[(this.shift + i5) % 4];
            if (this.compact) {
                j4 = j6 << 7;
                j5 = (i6 >> 1) & WKSRecord.Service.LOCUS_CON;
            } else {
                j4 = j6 << 10;
                j5 = ((i6 >> 2) & 992) + ((i6 >> 1) & 31);
            }
            j6 = j4 + j5;
        }
        int correctedParameterData = getCorrectedParameterData(j6, this.compact);
        if (this.compact) {
            this.nbLayers = (correctedParameterData >> 6) + 1;
            this.nbDataBlocks = (correctedParameterData & 63) + 1;
        } else {
            this.nbLayers = (correctedParameterData >> 11) + 1;
            this.nbDataBlocks = (correctedParameterData & 2047) + 1;
        }
    }

    private ResultPoint[] getBullsEyeCorners(Point point) throws NotFoundException {
        this.nbCenterLayers = 1;
        Point point2 = point;
        Point point3 = point2;
        Point point4 = point3;
        Point point5 = point4;
        boolean z3 = true;
        while (this.nbCenterLayers < 9) {
            Point firstDifferent = getFirstDifferent(point2, z3, 1, -1);
            Point firstDifferent2 = getFirstDifferent(point3, z3, 1, 1);
            Point firstDifferent3 = getFirstDifferent(point4, z3, -1, 1);
            Point firstDifferent4 = getFirstDifferent(point5, z3, -1, -1);
            if (this.nbCenterLayers > 2) {
                double dDistance = (distance(firstDifferent4, firstDifferent) * this.nbCenterLayers) / (distance(point5, point2) * (this.nbCenterLayers + 2));
                if (dDistance < 0.75d || dDistance > 1.25d || !isWhiteOrBlackRectangle(firstDifferent, firstDifferent2, firstDifferent3, firstDifferent4)) {
                    break;
                }
            }
            z3 = !z3;
            this.nbCenterLayers++;
            point5 = firstDifferent4;
            point2 = firstDifferent;
            point3 = firstDifferent2;
            point4 = firstDifferent3;
        }
        int i4 = this.nbCenterLayers;
        if (i4 != 5 && i4 != 7) {
            throw NotFoundException.getNotFoundInstance();
        }
        this.compact = i4 == 5;
        ResultPoint[] resultPointArr = {new ResultPoint(point2.getX() + 0.5f, point2.getY() - 0.5f), new ResultPoint(point3.getX() + 0.5f, point3.getY() + 0.5f), new ResultPoint(point4.getX() - 0.5f, point4.getY() + 0.5f), new ResultPoint(point5.getX() - 0.5f, point5.getY() - 0.5f)};
        int i5 = this.nbCenterLayers;
        return expandSquare(resultPointArr, (i5 * 2) - 3, i5 * 2);
    }

    private int getColor(Point point, Point point2) {
        float fDistance = distance(point, point2);
        float x3 = (point2.getX() - point.getX()) / fDistance;
        float y3 = (point2.getY() - point.getY()) / fDistance;
        float x4 = point.getX();
        float y4 = point.getY();
        boolean z3 = this.image.get(point.getX(), point.getY());
        int iCeil = (int) Math.ceil(fDistance);
        int i4 = 0;
        for (int i5 = 0; i5 < iCeil; i5++) {
            x4 += x3;
            y4 += y3;
            if (this.image.get(MathUtils.round(x4), MathUtils.round(y4)) != z3) {
                i4++;
            }
        }
        float f4 = i4 / fDistance;
        if (f4 <= 0.1f || f4 >= 0.9f) {
            return (f4 <= 0.1f) == z3 ? 1 : -1;
        }
        return 0;
    }

    private static int getCorrectedParameterData(long j4, boolean z3) throws NotFoundException {
        int i4;
        int i5;
        if (z3) {
            i4 = 7;
            i5 = 2;
        } else {
            i4 = 10;
            i5 = 4;
        }
        int i6 = i4 - i5;
        int[] iArr = new int[i4];
        for (int i7 = i4 - 1; i7 >= 0; i7--) {
            iArr[i7] = ((int) j4) & 15;
            j4 >>= 4;
        }
        try {
            new ReedSolomonDecoder(GenericGF.AZTEC_PARAM).decode(iArr, i6);
            int i8 = 0;
            for (int i9 = 0; i9 < i5; i9++) {
                i8 = (i8 << 4) + iArr[i9];
            }
            return i8;
        } catch (ReedSolomonException unused) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    private int getDimension() {
        if (this.compact) {
            return (this.nbLayers * 4) + 11;
        }
        int i4 = this.nbLayers;
        if (i4 <= 4) {
            return (i4 * 4) + 15;
        }
        return ((((i4 - 4) / 8) + 1) * 2) + (i4 * 4) + 15;
    }

    private Point getFirstDifferent(Point point, boolean z3, int i4, int i5) {
        int x3 = point.getX() + i4;
        int y3 = point.getY();
        while (true) {
            y3 += i5;
            if (!isValid(x3, y3) || this.image.get(x3, y3) != z3) {
                break;
            }
            x3 += i4;
        }
        int i6 = x3 - i4;
        int i7 = y3 - i5;
        while (isValid(i6, i7) && this.image.get(i6, i7) == z3) {
            i6 += i4;
        }
        int i8 = i6 - i4;
        while (isValid(i8, i7) && this.image.get(i8, i7) == z3) {
            i7 += i5;
        }
        return new Point(i8, i7 - i5);
    }

    private Point getMatrixCenter() {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        ResultPoint resultPoint4;
        ResultPoint resultPoint5;
        ResultPoint resultPoint6;
        ResultPoint resultPoint7;
        ResultPoint resultPoint8;
        try {
            ResultPoint[] resultPointArrDetect = new WhiteRectangleDetector(this.image).detect();
            resultPoint3 = resultPointArrDetect[0];
            resultPoint4 = resultPointArrDetect[1];
            resultPoint2 = resultPointArrDetect[2];
            resultPoint = resultPointArrDetect[3];
        } catch (NotFoundException unused) {
            int width = this.image.getWidth() / 2;
            int height = this.image.getHeight() / 2;
            int i4 = width + 7;
            int i5 = height - 7;
            ResultPoint resultPoint9 = getFirstDifferent(new Point(i4, i5), false, 1, -1).toResultPoint();
            int i6 = height + 7;
            ResultPoint resultPoint10 = getFirstDifferent(new Point(i4, i6), false, 1, 1).toResultPoint();
            int i7 = width - 7;
            ResultPoint resultPoint11 = getFirstDifferent(new Point(i7, i6), false, -1, 1).toResultPoint();
            resultPoint = getFirstDifferent(new Point(i7, i5), false, -1, -1).toResultPoint();
            resultPoint2 = resultPoint11;
            resultPoint3 = resultPoint9;
            resultPoint4 = resultPoint10;
        }
        int iRound = MathUtils.round((resultPoint2.getX() + (resultPoint4.getX() + (resultPoint.getX() + resultPoint3.getX()))) / 4.0f);
        int iRound2 = MathUtils.round((resultPoint2.getY() + (resultPoint4.getY() + (resultPoint.getY() + resultPoint3.getY()))) / 4.0f);
        try {
            ResultPoint[] resultPointArrDetect2 = new WhiteRectangleDetector(this.image, 15, iRound, iRound2).detect();
            resultPoint5 = resultPointArrDetect2[0];
            resultPoint6 = resultPointArrDetect2[1];
            resultPoint7 = resultPointArrDetect2[2];
            resultPoint8 = resultPointArrDetect2[3];
        } catch (NotFoundException unused2) {
            int i8 = iRound + 7;
            int i9 = iRound2 - 7;
            resultPoint5 = getFirstDifferent(new Point(i8, i9), false, 1, -1).toResultPoint();
            int i10 = iRound2 + 7;
            resultPoint6 = getFirstDifferent(new Point(i8, i10), false, 1, 1).toResultPoint();
            int i11 = iRound - 7;
            resultPoint7 = getFirstDifferent(new Point(i11, i10), false, -1, 1).toResultPoint();
            resultPoint8 = getFirstDifferent(new Point(i11, i9), false, -1, -1).toResultPoint();
        }
        return new Point(MathUtils.round((resultPoint7.getX() + (resultPoint6.getX() + (resultPoint8.getX() + resultPoint5.getX()))) / 4.0f), MathUtils.round((resultPoint7.getY() + (resultPoint6.getY() + (resultPoint8.getY() + resultPoint5.getY()))) / 4.0f));
    }

    private ResultPoint[] getMatrixCornerPoints(ResultPoint[] resultPointArr) {
        return expandSquare(resultPointArr, this.nbCenterLayers * 2, getDimension());
    }

    private static int getRotation(int[] iArr, int i4) throws NotFoundException {
        int i5 = 0;
        for (int i6 : iArr) {
            i5 = (i5 << 3) + ((i6 >> (i4 - 2)) << 1) + (i6 & 1);
        }
        int i7 = ((i5 & 1) << 11) + (i5 >> 1);
        for (int i8 = 0; i8 < 4; i8++) {
            if (Integer.bitCount(EXPECTED_CORNER_BITS[i8] ^ i7) <= 2) {
                return i8;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private boolean isValid(int i4, int i5) {
        return i4 >= 0 && i4 < this.image.getWidth() && i5 > 0 && i5 < this.image.getHeight();
    }

    private boolean isWhiteOrBlackRectangle(Point point, Point point2, Point point3, Point point4) {
        Point point5 = new Point(point.getX() - 3, point.getY() + 3);
        Point point6 = new Point(point2.getX() - 3, point2.getY() - 3);
        Point point7 = new Point(point3.getX() + 3, point3.getY() - 3);
        Point point8 = new Point(point4.getX() + 3, point4.getY() + 3);
        int color = getColor(point8, point5);
        return color != 0 && getColor(point5, point6) == color && getColor(point6, point7) == color && getColor(point7, point8) == color;
    }

    private BitMatrix sampleGrid(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4) {
        GridSampler gridSampler = GridSampler.getInstance();
        int dimension = getDimension();
        float f4 = dimension / 2.0f;
        int i4 = this.nbCenterLayers;
        float f5 = f4 - i4;
        float f6 = f4 + i4;
        return gridSampler.sampleGrid(bitMatrix, dimension, dimension, f5, f5, f6, f5, f6, f6, f5, f6, resultPoint.getX(), resultPoint.getY(), resultPoint2.getX(), resultPoint2.getY(), resultPoint3.getX(), resultPoint3.getY(), resultPoint4.getX(), resultPoint4.getY());
    }

    private int sampleLine(ResultPoint resultPoint, ResultPoint resultPoint2, int i4) {
        float fDistance = distance(resultPoint, resultPoint2);
        float f4 = fDistance / i4;
        float x3 = resultPoint.getX();
        float y3 = resultPoint.getY();
        float x4 = ((resultPoint2.getX() - resultPoint.getX()) * f4) / fDistance;
        float y4 = ((resultPoint2.getY() - resultPoint.getY()) * f4) / fDistance;
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6++) {
            float f5 = i6;
            if (this.image.get(MathUtils.round((f5 * x4) + x3), MathUtils.round((f5 * y4) + y3))) {
                i5 |= 1 << ((i4 - i6) - 1);
            }
        }
        return i5;
    }

    public AztecDetectorResult detect() {
        return detect(false);
    }

    private static float distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.distance(resultPoint.getX(), resultPoint.getY(), resultPoint2.getX(), resultPoint2.getY());
    }

    private boolean isValid(ResultPoint resultPoint) {
        return isValid(MathUtils.round(resultPoint.getX()), MathUtils.round(resultPoint.getY()));
    }

    public AztecDetectorResult detect(boolean z3) throws NotFoundException {
        ResultPoint[] bullsEyeCorners = getBullsEyeCorners(getMatrixCenter());
        if (z3) {
            ResultPoint resultPoint = bullsEyeCorners[0];
            bullsEyeCorners[0] = bullsEyeCorners[2];
            bullsEyeCorners[2] = resultPoint;
        }
        extractParameters(bullsEyeCorners);
        BitMatrix bitMatrix = this.image;
        int i4 = this.shift;
        return new AztecDetectorResult(sampleGrid(bitMatrix, bullsEyeCorners[i4 % 4], bullsEyeCorners[(i4 + 1) % 4], bullsEyeCorners[(i4 + 2) % 4], bullsEyeCorners[(i4 + 3) % 4]), getMatrixCornerPoints(bullsEyeCorners), this.compact, this.nbDataBlocks, this.nbLayers);
    }
}
