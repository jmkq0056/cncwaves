package com.google.zxing.datamatrix.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.WhiteRectangleDetector;

/* JADX INFO: loaded from: classes2.dex */
public final class Detector {
    private final BitMatrix image;
    private final WhiteRectangleDetector rectangleDetector;

    public Detector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
        this.rectangleDetector = new WhiteRectangleDetector(bitMatrix);
    }

    private ResultPoint correctTopRight(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint = resultPointArr[0];
        ResultPoint resultPoint2 = resultPointArr[1];
        ResultPoint resultPoint3 = resultPointArr[2];
        ResultPoint resultPoint4 = resultPointArr[3];
        int iTransitionsBetween = transitionsBetween(resultPoint, resultPoint4);
        ResultPoint resultPointShiftPoint = shiftPoint(resultPoint, resultPoint2, (transitionsBetween(resultPoint2, resultPoint4) + 1) << 2);
        ResultPoint resultPointShiftPoint2 = shiftPoint(resultPoint3, resultPoint2, (iTransitionsBetween + 1) << 2);
        int iTransitionsBetween2 = transitionsBetween(resultPointShiftPoint, resultPoint4);
        int iTransitionsBetween3 = transitionsBetween(resultPointShiftPoint2, resultPoint4);
        float f4 = iTransitionsBetween2 + 1;
        ResultPoint resultPoint5 = new ResultPoint(((resultPoint3.getX() - resultPoint2.getX()) / f4) + resultPoint4.getX(), ((resultPoint3.getY() - resultPoint2.getY()) / f4) + resultPoint4.getY());
        float f5 = iTransitionsBetween3 + 1;
        ResultPoint resultPoint6 = new ResultPoint(((resultPoint.getX() - resultPoint2.getX()) / f5) + resultPoint4.getX(), ((resultPoint.getY() - resultPoint2.getY()) / f5) + resultPoint4.getY());
        if (isValid(resultPoint5)) {
            return (isValid(resultPoint6) && transitionsBetween(resultPointShiftPoint, resultPoint5) + transitionsBetween(resultPointShiftPoint2, resultPoint5) <= transitionsBetween(resultPointShiftPoint, resultPoint6) + transitionsBetween(resultPointShiftPoint2, resultPoint6)) ? resultPoint6 : resultPoint5;
        }
        if (isValid(resultPoint6)) {
            return resultPoint6;
        }
        return null;
    }

    private ResultPoint[] detectSolid1(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint = resultPointArr[0];
        ResultPoint resultPoint2 = resultPointArr[1];
        ResultPoint resultPoint3 = resultPointArr[3];
        ResultPoint resultPoint4 = resultPointArr[2];
        int iTransitionsBetween = transitionsBetween(resultPoint, resultPoint2);
        int iTransitionsBetween2 = transitionsBetween(resultPoint2, resultPoint3);
        int iTransitionsBetween3 = transitionsBetween(resultPoint3, resultPoint4);
        int iTransitionsBetween4 = transitionsBetween(resultPoint4, resultPoint);
        ResultPoint[] resultPointArr2 = {resultPoint4, resultPoint, resultPoint2, resultPoint3};
        if (iTransitionsBetween > iTransitionsBetween2) {
            resultPointArr2[0] = resultPoint;
            resultPointArr2[1] = resultPoint2;
            resultPointArr2[2] = resultPoint3;
            resultPointArr2[3] = resultPoint4;
            iTransitionsBetween = iTransitionsBetween2;
        }
        if (iTransitionsBetween > iTransitionsBetween3) {
            resultPointArr2[0] = resultPoint2;
            resultPointArr2[1] = resultPoint3;
            resultPointArr2[2] = resultPoint4;
            resultPointArr2[3] = resultPoint;
        } else {
            iTransitionsBetween3 = iTransitionsBetween;
        }
        if (iTransitionsBetween3 > iTransitionsBetween4) {
            resultPointArr2[0] = resultPoint3;
            resultPointArr2[1] = resultPoint4;
            resultPointArr2[2] = resultPoint;
            resultPointArr2[3] = resultPoint2;
        }
        return resultPointArr2;
    }

    private ResultPoint[] detectSolid2(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint = resultPointArr[0];
        ResultPoint resultPoint2 = resultPointArr[1];
        ResultPoint resultPoint3 = resultPointArr[2];
        ResultPoint resultPoint4 = resultPointArr[3];
        int iTransitionsBetween = (transitionsBetween(resultPoint, resultPoint4) + 1) << 2;
        if (transitionsBetween(shiftPoint(resultPoint2, resultPoint3, iTransitionsBetween), resultPoint) < transitionsBetween(shiftPoint(resultPoint3, resultPoint2, iTransitionsBetween), resultPoint4)) {
            resultPointArr[0] = resultPoint;
            resultPointArr[1] = resultPoint2;
            resultPointArr[2] = resultPoint3;
            resultPointArr[3] = resultPoint4;
        } else {
            resultPointArr[0] = resultPoint2;
            resultPointArr[1] = resultPoint3;
            resultPointArr[2] = resultPoint4;
            resultPointArr[3] = resultPoint;
        }
        return resultPointArr;
    }

    private boolean isValid(ResultPoint resultPoint) {
        return resultPoint.getX() >= 0.0f && resultPoint.getX() < ((float) this.image.getWidth()) && resultPoint.getY() > 0.0f && resultPoint.getY() < ((float) this.image.getHeight());
    }

    private static ResultPoint moveAway(ResultPoint resultPoint, float f4, float f5) {
        float x3 = resultPoint.getX();
        float y3 = resultPoint.getY();
        return new ResultPoint(x3 < f4 ? x3 - 1.0f : x3 + 1.0f, y3 < f5 ? y3 - 1.0f : y3 + 1.0f);
    }

    private static BitMatrix sampleGrid(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i4, int i5) {
        float f4 = i4 - 0.5f;
        float f5 = i5 - 0.5f;
        return GridSampler.getInstance().sampleGrid(bitMatrix, i4, i5, 0.5f, 0.5f, f4, 0.5f, f4, f5, 0.5f, f5, resultPoint.getX(), resultPoint.getY(), resultPoint4.getX(), resultPoint4.getY(), resultPoint3.getX(), resultPoint3.getY(), resultPoint2.getX(), resultPoint2.getY());
    }

    private static ResultPoint shiftPoint(ResultPoint resultPoint, ResultPoint resultPoint2, int i4) {
        float f4 = i4 + 1;
        return new ResultPoint(resultPoint.getX() + ((resultPoint2.getX() - resultPoint.getX()) / f4), resultPoint.getY() + ((resultPoint2.getY() - resultPoint.getY()) / f4));
    }

    private ResultPoint[] shiftToModuleCenter(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint = resultPointArr[0];
        ResultPoint resultPoint2 = resultPointArr[1];
        ResultPoint resultPoint3 = resultPointArr[2];
        ResultPoint resultPoint4 = resultPointArr[3];
        int iTransitionsBetween = transitionsBetween(resultPoint, resultPoint4) + 1;
        ResultPoint resultPointShiftPoint = shiftPoint(resultPoint, resultPoint2, (transitionsBetween(resultPoint3, resultPoint4) + 1) << 2);
        ResultPoint resultPointShiftPoint2 = shiftPoint(resultPoint3, resultPoint2, iTransitionsBetween << 2);
        int iTransitionsBetween2 = transitionsBetween(resultPointShiftPoint, resultPoint4) + 1;
        int iTransitionsBetween3 = transitionsBetween(resultPointShiftPoint2, resultPoint4) + 1;
        if ((iTransitionsBetween2 & 1) == 1) {
            iTransitionsBetween2++;
        }
        if ((iTransitionsBetween3 & 1) == 1) {
            iTransitionsBetween3++;
        }
        float x3 = (resultPoint4.getX() + (resultPoint3.getX() + (resultPoint2.getX() + resultPoint.getX()))) / 4.0f;
        float y3 = (resultPoint4.getY() + (resultPoint3.getY() + (resultPoint2.getY() + resultPoint.getY()))) / 4.0f;
        ResultPoint resultPointMoveAway = moveAway(resultPoint, x3, y3);
        ResultPoint resultPointMoveAway2 = moveAway(resultPoint2, x3, y3);
        ResultPoint resultPointMoveAway3 = moveAway(resultPoint3, x3, y3);
        ResultPoint resultPointMoveAway4 = moveAway(resultPoint4, x3, y3);
        int i4 = iTransitionsBetween3 << 2;
        int i5 = iTransitionsBetween2 << 2;
        return new ResultPoint[]{shiftPoint(shiftPoint(resultPointMoveAway, resultPointMoveAway2, i4), resultPointMoveAway4, i5), shiftPoint(shiftPoint(resultPointMoveAway2, resultPointMoveAway, i4), resultPointMoveAway3, i5), shiftPoint(shiftPoint(resultPointMoveAway3, resultPointMoveAway4, i4), resultPointMoveAway2, i5), shiftPoint(shiftPoint(resultPointMoveAway4, resultPointMoveAway3, i4), resultPointMoveAway, i5)};
    }

    private int transitionsBetween(ResultPoint resultPoint, ResultPoint resultPoint2) {
        int x3 = (int) resultPoint.getX();
        int y3 = (int) resultPoint.getY();
        int x4 = (int) resultPoint2.getX();
        int y4 = (int) resultPoint2.getY();
        int i4 = 0;
        boolean z3 = Math.abs(y4 - y3) > Math.abs(x4 - x3);
        if (z3) {
            y3 = x3;
            x3 = y3;
            y4 = x4;
            x4 = y4;
        }
        int iAbs = Math.abs(x4 - x3);
        int iAbs2 = Math.abs(y4 - y3);
        int i5 = (-iAbs) / 2;
        int i6 = y3 < y4 ? 1 : -1;
        int i7 = x3 >= x4 ? -1 : 1;
        boolean z4 = this.image.get(z3 ? y3 : x3, z3 ? x3 : y3);
        while (x3 != x4) {
            boolean z5 = this.image.get(z3 ? y3 : x3, z3 ? x3 : y3);
            if (z5 != z4) {
                i4++;
                z4 = z5;
            }
            i5 += iAbs2;
            if (i5 > 0) {
                if (y3 == y4) {
                    break;
                }
                y3 += i6;
                i5 -= iAbs;
            }
            x3 += i7;
        }
        return i4;
    }

    public DetectorResult detect() throws NotFoundException {
        int iMax;
        int i4;
        ResultPoint[] resultPointArrDetectSolid2 = detectSolid2(detectSolid1(this.rectangleDetector.detect()));
        resultPointArrDetectSolid2[3] = correctTopRight(resultPointArrDetectSolid2);
        if (resultPointArrDetectSolid2[3] == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        ResultPoint[] resultPointArrShiftToModuleCenter = shiftToModuleCenter(resultPointArrDetectSolid2);
        ResultPoint resultPoint = resultPointArrShiftToModuleCenter[0];
        ResultPoint resultPoint2 = resultPointArrShiftToModuleCenter[1];
        ResultPoint resultPoint3 = resultPointArrShiftToModuleCenter[2];
        ResultPoint resultPoint4 = resultPointArrShiftToModuleCenter[3];
        int iTransitionsBetween = transitionsBetween(resultPoint, resultPoint4) + 1;
        int iTransitionsBetween2 = transitionsBetween(resultPoint3, resultPoint4) + 1;
        if ((iTransitionsBetween & 1) == 1) {
            iTransitionsBetween++;
        }
        if ((iTransitionsBetween2 & 1) == 1) {
            iTransitionsBetween2++;
        }
        if (iTransitionsBetween * 4 >= iTransitionsBetween2 * 7 || iTransitionsBetween2 * 4 >= iTransitionsBetween * 7) {
            iMax = iTransitionsBetween;
            i4 = iTransitionsBetween2;
        } else {
            iMax = Math.max(iTransitionsBetween, iTransitionsBetween2);
            i4 = iMax;
        }
        return new DetectorResult(sampleGrid(this.image, resultPoint, resultPoint2, resultPoint3, resultPoint4, iMax, i4), new ResultPoint[]{resultPoint, resultPoint2, resultPoint3, resultPoint4});
    }
}
