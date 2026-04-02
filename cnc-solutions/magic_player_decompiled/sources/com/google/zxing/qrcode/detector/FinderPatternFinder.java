package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class FinderPatternFinder {
    private static final int CENTER_QUORUM = 2;
    public static final int MAX_MODULES = 97;
    public static final int MIN_SKIP = 3;
    private static final EstimatedModuleComparator moduleComparator = new EstimatedModuleComparator();
    private final int[] crossCheckStateCount;
    private boolean hasSkipped;
    private final BitMatrix image;
    private final List<FinderPattern> possibleCenters;
    private final ResultPointCallback resultPointCallback;

    public static final class EstimatedModuleComparator implements Serializable, Comparator<FinderPattern> {
        private EstimatedModuleComparator() {
        }

        @Override // java.util.Comparator
        public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
            return Float.compare(finderPattern.getEstimatedModuleSize(), finderPattern2.getEstimatedModuleSize());
        }
    }

    public FinderPatternFinder(BitMatrix bitMatrix) {
        this(bitMatrix, null);
    }

    private static float centerFromEnd(int[] iArr, int i4) {
        return ((i4 - iArr[4]) - iArr[3]) - (iArr[2] / 2.0f);
    }

    private boolean crossCheckDiagonal(int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int[] crossCheckStateCount = getCrossCheckStateCount();
        int i9 = 0;
        while (i4 >= i9 && i5 >= i9 && this.image.get(i5 - i9, i4 - i9)) {
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
            i9++;
        }
        if (crossCheckStateCount[2] == 0) {
            return false;
        }
        while (i4 >= i9 && i5 >= i9 && !this.image.get(i5 - i9, i4 - i9)) {
            crossCheckStateCount[1] = crossCheckStateCount[1] + 1;
            i9++;
        }
        if (crossCheckStateCount[1] == 0) {
            return false;
        }
        while (i4 >= i9 && i5 >= i9 && this.image.get(i5 - i9, i4 - i9)) {
            crossCheckStateCount[0] = crossCheckStateCount[0] + 1;
            i9++;
        }
        if (crossCheckStateCount[0] == 0) {
            return false;
        }
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int i10 = 1;
        while (true) {
            int i11 = i4 + i10;
            if (i11 >= height || (i8 = i5 + i10) >= width || !this.image.get(i8, i11)) {
                break;
            }
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
            i10++;
        }
        while (true) {
            int i12 = i4 + i10;
            if (i12 >= height || (i7 = i5 + i10) >= width || this.image.get(i7, i12)) {
                break;
            }
            crossCheckStateCount[3] = crossCheckStateCount[3] + 1;
            i10++;
        }
        if (crossCheckStateCount[3] == 0) {
            return false;
        }
        while (true) {
            int i13 = i4 + i10;
            if (i13 >= height || (i6 = i5 + i10) >= width || !this.image.get(i6, i13)) {
                break;
            }
            crossCheckStateCount[4] = crossCheckStateCount[4] + 1;
            i10++;
        }
        if (crossCheckStateCount[4] == 0) {
            return false;
        }
        return foundPatternDiagonal(crossCheckStateCount);
    }

    private float crossCheckHorizontal(int i4, int i5, int i6, int i7) {
        BitMatrix bitMatrix = this.image;
        int width = bitMatrix.getWidth();
        int[] crossCheckStateCount = getCrossCheckStateCount();
        int i8 = i4;
        while (i8 >= 0 && bitMatrix.get(i8, i5)) {
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
            i8--;
        }
        if (i8 < 0) {
            return Float.NaN;
        }
        while (i8 >= 0 && !bitMatrix.get(i8, i5) && crossCheckStateCount[1] <= i6) {
            crossCheckStateCount[1] = crossCheckStateCount[1] + 1;
            i8--;
        }
        if (i8 >= 0 && crossCheckStateCount[1] <= i6) {
            while (i8 >= 0 && bitMatrix.get(i8, i5) && crossCheckStateCount[0] <= i6) {
                crossCheckStateCount[0] = crossCheckStateCount[0] + 1;
                i8--;
            }
            if (crossCheckStateCount[0] > i6) {
                return Float.NaN;
            }
            int i9 = i4 + 1;
            while (i9 < width && bitMatrix.get(i9, i5)) {
                crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
                i9++;
            }
            if (i9 == width) {
                return Float.NaN;
            }
            while (i9 < width && !bitMatrix.get(i9, i5) && crossCheckStateCount[3] < i6) {
                crossCheckStateCount[3] = crossCheckStateCount[3] + 1;
                i9++;
            }
            if (i9 != width && crossCheckStateCount[3] < i6) {
                while (i9 < width && bitMatrix.get(i9, i5) && crossCheckStateCount[4] < i6) {
                    crossCheckStateCount[4] = crossCheckStateCount[4] + 1;
                    i9++;
                }
                if (crossCheckStateCount[4] < i6 && Math.abs(((((crossCheckStateCount[0] + crossCheckStateCount[1]) + crossCheckStateCount[2]) + crossCheckStateCount[3]) + crossCheckStateCount[4]) - i7) * 5 < i7 && foundPatternCross(crossCheckStateCount)) {
                    return centerFromEnd(crossCheckStateCount, i9);
                }
            }
        }
        return Float.NaN;
    }

    private float crossCheckVertical(int i4, int i5, int i6, int i7) {
        BitMatrix bitMatrix = this.image;
        int height = bitMatrix.getHeight();
        int[] crossCheckStateCount = getCrossCheckStateCount();
        int i8 = i4;
        while (i8 >= 0 && bitMatrix.get(i5, i8)) {
            crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
            i8--;
        }
        if (i8 < 0) {
            return Float.NaN;
        }
        while (i8 >= 0 && !bitMatrix.get(i5, i8) && crossCheckStateCount[1] <= i6) {
            crossCheckStateCount[1] = crossCheckStateCount[1] + 1;
            i8--;
        }
        if (i8 >= 0 && crossCheckStateCount[1] <= i6) {
            while (i8 >= 0 && bitMatrix.get(i5, i8) && crossCheckStateCount[0] <= i6) {
                crossCheckStateCount[0] = crossCheckStateCount[0] + 1;
                i8--;
            }
            if (crossCheckStateCount[0] > i6) {
                return Float.NaN;
            }
            int i9 = i4 + 1;
            while (i9 < height && bitMatrix.get(i5, i9)) {
                crossCheckStateCount[2] = crossCheckStateCount[2] + 1;
                i9++;
            }
            if (i9 == height) {
                return Float.NaN;
            }
            while (i9 < height && !bitMatrix.get(i5, i9) && crossCheckStateCount[3] < i6) {
                crossCheckStateCount[3] = crossCheckStateCount[3] + 1;
                i9++;
            }
            if (i9 != height && crossCheckStateCount[3] < i6) {
                while (i9 < height && bitMatrix.get(i5, i9) && crossCheckStateCount[4] < i6) {
                    crossCheckStateCount[4] = crossCheckStateCount[4] + 1;
                    i9++;
                }
                if (crossCheckStateCount[4] < i6 && Math.abs(((((crossCheckStateCount[0] + crossCheckStateCount[1]) + crossCheckStateCount[2]) + crossCheckStateCount[3]) + crossCheckStateCount[4]) - i7) * 5 < i7 * 2 && foundPatternCross(crossCheckStateCount)) {
                    return centerFromEnd(crossCheckStateCount, i9);
                }
            }
        }
        return Float.NaN;
    }

    public static void doClearCounts(int[] iArr) {
        Arrays.fill(iArr, 0);
    }

    public static void doShiftCounts2(int[] iArr) {
        iArr[0] = iArr[2];
        iArr[1] = iArr[3];
        iArr[2] = iArr[4];
        iArr[3] = 1;
        iArr[4] = 0;
    }

    private int findRowSkip() {
        if (this.possibleCenters.size() <= 1) {
            return 0;
        }
        FinderPattern finderPattern = null;
        for (FinderPattern finderPattern2 : this.possibleCenters) {
            if (finderPattern2.getCount() >= 2) {
                if (finderPattern != null) {
                    this.hasSkipped = true;
                    return ((int) (Math.abs(finderPattern.getX() - finderPattern2.getX()) - Math.abs(finderPattern.getY() - finderPattern2.getY()))) / 2;
                }
                finderPattern = finderPattern2;
            }
        }
        return 0;
    }

    public static boolean foundPatternCross(int[] iArr) {
        int i4 = 0;
        for (int i5 = 0; i5 < 5; i5++) {
            int i6 = iArr[i5];
            if (i6 == 0) {
                return false;
            }
            i4 += i6;
        }
        if (i4 < 7) {
            return false;
        }
        float f4 = i4 / 7.0f;
        float f5 = f4 / 2.0f;
        return Math.abs(f4 - ((float) iArr[0])) < f5 && Math.abs(f4 - ((float) iArr[1])) < f5 && Math.abs((f4 * 3.0f) - ((float) iArr[2])) < 3.0f * f5 && Math.abs(f4 - ((float) iArr[3])) < f5 && Math.abs(f4 - ((float) iArr[4])) < f5;
    }

    public static boolean foundPatternDiagonal(int[] iArr) {
        int i4 = 0;
        for (int i5 = 0; i5 < 5; i5++) {
            int i6 = iArr[i5];
            if (i6 == 0) {
                return false;
            }
            i4 += i6;
        }
        if (i4 < 7) {
            return false;
        }
        float f4 = i4 / 7.0f;
        float f5 = f4 / 1.333f;
        return Math.abs(f4 - ((float) iArr[0])) < f5 && Math.abs(f4 - ((float) iArr[1])) < f5 && Math.abs((f4 * 3.0f) - ((float) iArr[2])) < 3.0f * f5 && Math.abs(f4 - ((float) iArr[3])) < f5 && Math.abs(f4 - ((float) iArr[4])) < f5;
    }

    private int[] getCrossCheckStateCount() {
        doClearCounts(this.crossCheckStateCount);
        return this.crossCheckStateCount;
    }

    private boolean haveMultiplyConfirmedCenters() {
        int size = this.possibleCenters.size();
        float fAbs = 0.0f;
        int i4 = 0;
        float estimatedModuleSize = 0.0f;
        for (FinderPattern finderPattern : this.possibleCenters) {
            if (finderPattern.getCount() >= 2) {
                i4++;
                estimatedModuleSize += finderPattern.getEstimatedModuleSize();
            }
        }
        if (i4 < 3) {
            return false;
        }
        float f4 = estimatedModuleSize / size;
        Iterator<FinderPattern> it = this.possibleCenters.iterator();
        while (it.hasNext()) {
            fAbs += Math.abs(it.next().getEstimatedModuleSize() - f4);
        }
        return fAbs <= estimatedModuleSize * 0.05f;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.zxing.qrcode.detector.FinderPattern[] selectBestPatterns() throws com.google.zxing.NotFoundException {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.detector.FinderPatternFinder.selectBestPatterns():com.google.zxing.qrcode.detector.FinderPattern[]");
    }

    private static double squaredDistance(FinderPattern finderPattern, FinderPattern finderPattern2) {
        double x3 = finderPattern.getX() - finderPattern2.getX();
        double y3 = finderPattern.getY() - finderPattern2.getY();
        Double.isNaN(x3);
        Double.isNaN(x3);
        Double.isNaN(y3);
        Double.isNaN(y3);
        return (y3 * y3) + (x3 * x3);
    }

    @Deprecated
    public final void clearCounts(int[] iArr) {
        doClearCounts(iArr);
    }

    public final FinderPatternInfo find(Map<DecodeHintType, ?> map) throws NotFoundException {
        boolean z3 = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int i4 = (height * 3) / 388;
        if (i4 < 3 || z3) {
            i4 = 3;
        }
        int[] iArr = new int[5];
        int i5 = i4 - 1;
        boolean zHaveMultiplyConfirmedCenters = false;
        while (i5 < height && !zHaveMultiplyConfirmedCenters) {
            doClearCounts(iArr);
            int i6 = 0;
            int i7 = 0;
            while (i6 < width) {
                if (this.image.get(i6, i5)) {
                    if ((i7 & 1) == 1) {
                        i7++;
                    }
                    iArr[i7] = iArr[i7] + 1;
                } else if ((i7 & 1) != 0) {
                    iArr[i7] = iArr[i7] + 1;
                } else if (i7 != 4) {
                    i7++;
                    iArr[i7] = iArr[i7] + 1;
                } else if (foundPatternCross(iArr) && handlePossibleCenter(iArr, i5, i6)) {
                    if (this.hasSkipped) {
                        zHaveMultiplyConfirmedCenters = haveMultiplyConfirmedCenters();
                    } else {
                        int iFindRowSkip = findRowSkip();
                        if (iFindRowSkip > iArr[2]) {
                            i5 += (iFindRowSkip - iArr[2]) - 2;
                            i6 = width - 1;
                        }
                    }
                    doClearCounts(iArr);
                    i4 = 2;
                    i7 = 0;
                } else {
                    doShiftCounts2(iArr);
                    i7 = 3;
                }
                i6++;
            }
            if (foundPatternCross(iArr) && handlePossibleCenter(iArr, i5, width)) {
                i4 = iArr[0];
                if (this.hasSkipped) {
                    zHaveMultiplyConfirmedCenters = haveMultiplyConfirmedCenters();
                }
            }
            i5 += i4;
        }
        FinderPattern[] finderPatternArrSelectBestPatterns = selectBestPatterns();
        ResultPoint.orderBestPatterns(finderPatternArrSelectBestPatterns);
        return new FinderPatternInfo(finderPatternArrSelectBestPatterns);
    }

    public final BitMatrix getImage() {
        return this.image;
    }

    public final List<FinderPattern> getPossibleCenters() {
        return this.possibleCenters;
    }

    @Deprecated
    public final boolean handlePossibleCenter(int[] iArr, int i4, int i5, boolean z3) {
        return handlePossibleCenter(iArr, i4, i5);
    }

    @Deprecated
    public final void shiftCounts2(int[] iArr) {
        doShiftCounts2(iArr);
    }

    public FinderPatternFinder(BitMatrix bitMatrix, ResultPointCallback resultPointCallback) {
        this.image = bitMatrix;
        this.possibleCenters = new ArrayList();
        this.crossCheckStateCount = new int[5];
        this.resultPointCallback = resultPointCallback;
    }

    public final boolean handlePossibleCenter(int[] iArr, int i4, int i5) {
        boolean z3 = false;
        int i6 = iArr[0] + iArr[1] + iArr[2] + iArr[3] + iArr[4];
        int iCenterFromEnd = (int) centerFromEnd(iArr, i5);
        float fCrossCheckVertical = crossCheckVertical(i4, iCenterFromEnd, iArr[2], i6);
        if (!Float.isNaN(fCrossCheckVertical)) {
            int i7 = (int) fCrossCheckVertical;
            float fCrossCheckHorizontal = crossCheckHorizontal(iCenterFromEnd, i7, iArr[2], i6);
            if (!Float.isNaN(fCrossCheckHorizontal) && crossCheckDiagonal(i7, (int) fCrossCheckHorizontal)) {
                float f4 = i6 / 7.0f;
                int i8 = 0;
                while (true) {
                    if (i8 >= this.possibleCenters.size()) {
                        break;
                    }
                    FinderPattern finderPattern = this.possibleCenters.get(i8);
                    if (finderPattern.aboutEquals(f4, fCrossCheckVertical, fCrossCheckHorizontal)) {
                        this.possibleCenters.set(i8, finderPattern.combineEstimate(fCrossCheckVertical, fCrossCheckHorizontal, f4));
                        z3 = true;
                        break;
                    }
                    i8++;
                }
                if (!z3) {
                    FinderPattern finderPattern2 = new FinderPattern(fCrossCheckHorizontal, fCrossCheckVertical, f4);
                    this.possibleCenters.add(finderPattern2);
                    ResultPointCallback resultPointCallback = this.resultPointCallback;
                    if (resultPointCallback != null) {
                        resultPointCallback.foundPossibleResultPoint(finderPattern2);
                    }
                }
                return true;
            }
        }
        return false;
    }
}
