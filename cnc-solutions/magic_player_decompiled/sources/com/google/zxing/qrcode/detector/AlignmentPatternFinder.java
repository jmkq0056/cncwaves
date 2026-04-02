package com.google.zxing.qrcode.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class AlignmentPatternFinder {
    private final int height;
    private final BitMatrix image;
    private final float moduleSize;
    private final ResultPointCallback resultPointCallback;
    private final int startX;
    private final int startY;
    private final int width;
    private final List<AlignmentPattern> possibleCenters = new ArrayList(5);
    private final int[] crossCheckStateCount = new int[3];

    public AlignmentPatternFinder(BitMatrix bitMatrix, int i4, int i5, int i6, int i7, float f4, ResultPointCallback resultPointCallback) {
        this.image = bitMatrix;
        this.startX = i4;
        this.startY = i5;
        this.width = i6;
        this.height = i7;
        this.moduleSize = f4;
        this.resultPointCallback = resultPointCallback;
    }

    private static float centerFromEnd(int[] iArr, int i4) {
        return (i4 - iArr[2]) - (iArr[1] / 2.0f);
    }

    private float crossCheckVertical(int i4, int i5, int i6, int i7) {
        BitMatrix bitMatrix = this.image;
        int height = bitMatrix.getHeight();
        int[] iArr = this.crossCheckStateCount;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        int i8 = i4;
        while (i8 >= 0 && bitMatrix.get(i5, i8) && iArr[1] <= i6) {
            iArr[1] = iArr[1] + 1;
            i8--;
        }
        if (i8 >= 0 && iArr[1] <= i6) {
            while (i8 >= 0 && !bitMatrix.get(i5, i8) && iArr[0] <= i6) {
                iArr[0] = iArr[0] + 1;
                i8--;
            }
            if (iArr[0] > i6) {
                return Float.NaN;
            }
            int i9 = i4 + 1;
            while (i9 < height && bitMatrix.get(i5, i9) && iArr[1] <= i6) {
                iArr[1] = iArr[1] + 1;
                i9++;
            }
            if (i9 != height && iArr[1] <= i6) {
                while (i9 < height && !bitMatrix.get(i5, i9) && iArr[2] <= i6) {
                    iArr[2] = iArr[2] + 1;
                    i9++;
                }
                if (iArr[2] <= i6 && Math.abs(((iArr[0] + iArr[1]) + iArr[2]) - i7) * 5 < i7 * 2 && foundPatternCross(iArr)) {
                    return centerFromEnd(iArr, i9);
                }
            }
        }
        return Float.NaN;
    }

    private boolean foundPatternCross(int[] iArr) {
        float f4 = this.moduleSize;
        float f5 = f4 / 2.0f;
        for (int i4 = 0; i4 < 3; i4++) {
            if (Math.abs(f4 - iArr[i4]) >= f5) {
                return false;
            }
        }
        return true;
    }

    private AlignmentPattern handlePossibleCenter(int[] iArr, int i4, int i5) {
        int i6 = iArr[0] + iArr[1] + iArr[2];
        float fCenterFromEnd = centerFromEnd(iArr, i5);
        float fCrossCheckVertical = crossCheckVertical(i4, (int) fCenterFromEnd, iArr[1] * 2, i6);
        if (Float.isNaN(fCrossCheckVertical)) {
            return null;
        }
        float f4 = ((iArr[0] + iArr[1]) + iArr[2]) / 3.0f;
        for (AlignmentPattern alignmentPattern : this.possibleCenters) {
            if (alignmentPattern.aboutEquals(f4, fCrossCheckVertical, fCenterFromEnd)) {
                return alignmentPattern.combineEstimate(fCrossCheckVertical, fCenterFromEnd, f4);
            }
        }
        AlignmentPattern alignmentPattern2 = new AlignmentPattern(fCenterFromEnd, fCrossCheckVertical, f4);
        this.possibleCenters.add(alignmentPattern2);
        ResultPointCallback resultPointCallback = this.resultPointCallback;
        if (resultPointCallback == null) {
            return null;
        }
        resultPointCallback.foundPossibleResultPoint(alignmentPattern2);
        return null;
    }

    public AlignmentPattern find() throws NotFoundException {
        AlignmentPattern alignmentPatternHandlePossibleCenter;
        AlignmentPattern alignmentPatternHandlePossibleCenter2;
        int i4 = this.startX;
        int i5 = this.height;
        int i6 = this.width + i4;
        int i7 = (i5 / 2) + this.startY;
        int[] iArr = new int[3];
        for (int i8 = 0; i8 < i5; i8++) {
            int i9 = ((i8 & 1) == 0 ? (i8 + 1) / 2 : -((i8 + 1) / 2)) + i7;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            int i10 = i4;
            while (i10 < i6 && !this.image.get(i10, i9)) {
                i10++;
            }
            int i11 = 0;
            while (i10 < i6) {
                if (!this.image.get(i10, i9)) {
                    if (i11 == 1) {
                        i11++;
                    }
                    iArr[i11] = iArr[i11] + 1;
                } else if (i11 == 1) {
                    iArr[1] = iArr[1] + 1;
                } else if (i11 != 2) {
                    i11++;
                    iArr[i11] = iArr[i11] + 1;
                } else {
                    if (foundPatternCross(iArr) && (alignmentPatternHandlePossibleCenter2 = handlePossibleCenter(iArr, i9, i10)) != null) {
                        return alignmentPatternHandlePossibleCenter2;
                    }
                    iArr[0] = iArr[2];
                    iArr[1] = 1;
                    iArr[2] = 0;
                    i11 = 1;
                }
                i10++;
            }
            if (foundPatternCross(iArr) && (alignmentPatternHandlePossibleCenter = handlePossibleCenter(iArr, i9, i6)) != null) {
                return alignmentPatternHandlePossibleCenter;
            }
        }
        if (this.possibleCenters.isEmpty()) {
            throw NotFoundException.getNotFoundInstance();
        }
        return this.possibleCenters.get(0);
    }
}
