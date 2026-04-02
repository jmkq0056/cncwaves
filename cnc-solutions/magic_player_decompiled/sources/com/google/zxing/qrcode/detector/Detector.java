package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.PerspectiveTransform;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.qrcode.decoder.Version;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Detector {
    private final BitMatrix image;
    private ResultPointCallback resultPointCallback;

    public Detector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    private float calculateModuleSizeOneWay(ResultPoint resultPoint, ResultPoint resultPoint2) {
        float fSizeOfBlackWhiteBlackRunBothWays = sizeOfBlackWhiteBlackRunBothWays((int) resultPoint.getX(), (int) resultPoint.getY(), (int) resultPoint2.getX(), (int) resultPoint2.getY());
        float fSizeOfBlackWhiteBlackRunBothWays2 = sizeOfBlackWhiteBlackRunBothWays((int) resultPoint2.getX(), (int) resultPoint2.getY(), (int) resultPoint.getX(), (int) resultPoint.getY());
        return Float.isNaN(fSizeOfBlackWhiteBlackRunBothWays) ? fSizeOfBlackWhiteBlackRunBothWays2 / 7.0f : Float.isNaN(fSizeOfBlackWhiteBlackRunBothWays2) ? fSizeOfBlackWhiteBlackRunBothWays / 7.0f : (fSizeOfBlackWhiteBlackRunBothWays + fSizeOfBlackWhiteBlackRunBothWays2) / 14.0f;
    }

    private static int computeDimension(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, float f4) throws NotFoundException {
        int iRound = ((MathUtils.round(ResultPoint.distance(resultPoint, resultPoint3) / f4) + MathUtils.round(ResultPoint.distance(resultPoint, resultPoint2) / f4)) / 2) + 7;
        int i4 = iRound & 3;
        if (i4 == 0) {
            return iRound + 1;
        }
        if (i4 == 2) {
            return iRound - 1;
        }
        if (i4 != 3) {
            return iRound;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static PerspectiveTransform createTransform(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i4) {
        float x3;
        float y3;
        float f4;
        float f5 = i4 - 3.5f;
        if (resultPoint4 != null) {
            x3 = resultPoint4.getX();
            y3 = resultPoint4.getY();
            f4 = f5 - 3.0f;
        } else {
            x3 = resultPoint3.getX() + (resultPoint2.getX() - resultPoint.getX());
            y3 = resultPoint3.getY() + (resultPoint2.getY() - resultPoint.getY());
            f4 = f5;
        }
        return PerspectiveTransform.quadrilateralToQuadrilateral(3.5f, 3.5f, f5, 3.5f, f4, f4, 3.5f, f5, resultPoint.getX(), resultPoint.getY(), resultPoint2.getX(), resultPoint2.getY(), x3, y3, resultPoint3.getX(), resultPoint3.getY());
    }

    private static BitMatrix sampleGrid(BitMatrix bitMatrix, PerspectiveTransform perspectiveTransform, int i4) {
        return GridSampler.getInstance().sampleGrid(bitMatrix, i4, i4, perspectiveTransform);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0084, code lost:
    
        if (r15 != 2) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x008c, code lost:
    
        return com.google.zxing.common.detector.MathUtils.distance(r19, r6, r1, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008d, code lost:
    
        return Float.NaN;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private float sizeOfBlackWhiteBlackRun(int r18, int r19, int r20, int r21) {
        /*
            r17 = this;
            int r0 = r21 - r19
            int r0 = java.lang.Math.abs(r0)
            int r1 = r20 - r18
            int r1 = java.lang.Math.abs(r1)
            r3 = 1
            if (r0 <= r1) goto L11
            r0 = 1
            goto L12
        L11:
            r0 = 0
        L12:
            if (r0 == 0) goto L1d
            r4 = r18
            r1 = r19
            r6 = r20
            r5 = r21
            goto L25
        L1d:
            r1 = r18
            r4 = r19
            r5 = r20
            r6 = r21
        L25:
            int r7 = r5 - r1
            int r7 = java.lang.Math.abs(r7)
            int r8 = r6 - r4
            int r8 = java.lang.Math.abs(r8)
            int r9 = -r7
            r10 = 2
            int r9 = r9 / r10
            r11 = -1
            if (r1 >= r5) goto L39
            r12 = 1
            goto L3a
        L39:
            r12 = -1
        L3a:
            if (r4 >= r6) goto L3d
            r11 = 1
        L3d:
            int r5 = r5 + r12
            r13 = r1
            r14 = r4
            r15 = 0
        L41:
            if (r13 == r5) goto L7f
            if (r0 == 0) goto L47
            r2 = r14
            goto L48
        L47:
            r2 = r13
        L48:
            if (r0 == 0) goto L4c
            r10 = r13
            goto L4d
        L4c:
            r10 = r14
        L4d:
            if (r15 != r3) goto L57
            r3 = r17
            r16 = r0
            r19 = r5
            r0 = 1
            goto L5e
        L57:
            r3 = r17
            r16 = r0
            r19 = r5
            r0 = 0
        L5e:
            com.google.zxing.common.BitMatrix r5 = r3.image
            boolean r2 = r5.get(r2, r10)
            if (r0 != r2) goto L70
            r0 = 2
            if (r15 != r0) goto L6e
            float r0 = com.google.zxing.common.detector.MathUtils.distance(r13, r14, r1, r4)
            return r0
        L6e:
            int r15 = r15 + 1
        L70:
            int r9 = r9 + r8
            if (r9 <= 0) goto L77
            if (r14 == r6) goto L83
            int r14 = r14 + r11
            int r9 = r9 - r7
        L77:
            int r13 = r13 + r12
            r5 = r19
            r0 = r16
            r3 = 1
            r10 = 2
            goto L41
        L7f:
            r3 = r17
            r19 = r5
        L83:
            r0 = 2
            if (r15 != r0) goto L8d
            r5 = r19
            float r0 = com.google.zxing.common.detector.MathUtils.distance(r5, r6, r1, r4)
            return r0
        L8d:
            r0 = 2143289344(0x7fc00000, float:NaN)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.detector.Detector.sizeOfBlackWhiteBlackRun(int, int, int, int):float");
    }

    private float sizeOfBlackWhiteBlackRunBothWays(int i4, int i5, int i6, int i7) {
        float width;
        float height;
        float fSizeOfBlackWhiteBlackRun = sizeOfBlackWhiteBlackRun(i4, i5, i6, i7);
        int width2 = i4 - (i6 - i4);
        int height2 = 0;
        if (width2 < 0) {
            width = i4 / (i4 - width2);
            width2 = 0;
        } else if (width2 >= this.image.getWidth()) {
            width = ((this.image.getWidth() - 1) - i4) / (width2 - i4);
            width2 = this.image.getWidth() - 1;
        } else {
            width = 1.0f;
        }
        float f4 = i5;
        int i8 = (int) (f4 - ((i7 - i5) * width));
        if (i8 < 0) {
            height = f4 / (i5 - i8);
        } else if (i8 >= this.image.getHeight()) {
            height = ((this.image.getHeight() - 1) - i5) / (i8 - i5);
            height2 = this.image.getHeight() - 1;
        } else {
            height2 = i8;
            height = 1.0f;
        }
        return (fSizeOfBlackWhiteBlackRun + sizeOfBlackWhiteBlackRun(i4, i5, (int) (((width2 - i4) * height) + i4), height2)) - 1.0f;
    }

    public final float calculateModuleSize(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        return (calculateModuleSizeOneWay(resultPoint, resultPoint2) + calculateModuleSizeOneWay(resultPoint, resultPoint3)) / 2.0f;
    }

    public DetectorResult detect() {
        return detect(null);
    }

    public final AlignmentPattern findAlignmentInRegion(float f4, int i4, int i5, float f5) throws NotFoundException {
        int i6 = (int) (f5 * f4);
        int iMax = Math.max(0, i4 - i6);
        int iMin = Math.min(this.image.getWidth() - 1, i4 + i6) - iMax;
        float f6 = 3.0f * f4;
        if (iMin < f6) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iMax2 = Math.max(0, i5 - i6);
        int iMin2 = Math.min(this.image.getHeight() - 1, i5 + i6) - iMax2;
        if (iMin2 >= f6) {
            return new AlignmentPatternFinder(this.image, iMax, iMax2, iMin, iMin2, f4, this.resultPointCallback).find();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public final BitMatrix getImage() {
        return this.image;
    }

    public final ResultPointCallback getResultPointCallback() {
        return this.resultPointCallback;
    }

    public final DetectorResult processFinderPatternInfo(FinderPatternInfo finderPatternInfo) throws NotFoundException, FormatException {
        FinderPattern topLeft = finderPatternInfo.getTopLeft();
        FinderPattern topRight = finderPatternInfo.getTopRight();
        FinderPattern bottomLeft = finderPatternInfo.getBottomLeft();
        float fCalculateModuleSize = calculateModuleSize(topLeft, topRight, bottomLeft);
        if (fCalculateModuleSize < 1.0f) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iComputeDimension = computeDimension(topLeft, topRight, bottomLeft, fCalculateModuleSize);
        Version provisionalVersionForDimension = Version.getProvisionalVersionForDimension(iComputeDimension);
        int dimensionForVersion = provisionalVersionForDimension.getDimensionForVersion() - 7;
        AlignmentPattern alignmentPatternFindAlignmentInRegion = null;
        if (provisionalVersionForDimension.getAlignmentPatternCenters().length > 0) {
            float x3 = bottomLeft.getX() + (topRight.getX() - topLeft.getX());
            float y3 = bottomLeft.getY() + (topRight.getY() - topLeft.getY());
            float f4 = 1.0f - (3.0f / dimensionForVersion);
            int x4 = (int) (((x3 - topLeft.getX()) * f4) + topLeft.getX());
            int y4 = (int) (((y3 - topLeft.getY()) * f4) + topLeft.getY());
            for (int i4 = 4; i4 <= 16; i4 <<= 1) {
                try {
                    alignmentPatternFindAlignmentInRegion = findAlignmentInRegion(fCalculateModuleSize, x4, y4, i4);
                    break;
                } catch (NotFoundException unused) {
                }
            }
        }
        return new DetectorResult(sampleGrid(this.image, createTransform(topLeft, topRight, bottomLeft, alignmentPatternFindAlignmentInRegion, iComputeDimension), iComputeDimension), alignmentPatternFindAlignmentInRegion == null ? new ResultPoint[]{bottomLeft, topLeft, topRight} : new ResultPoint[]{bottomLeft, topLeft, topRight, alignmentPatternFindAlignmentInRegion});
    }

    public final DetectorResult detect(Map<DecodeHintType, ?> map) {
        this.resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        return processFinderPatternInfo(new FinderPatternFinder(this.image, this.resultPointCallback).find(map));
    }
}
