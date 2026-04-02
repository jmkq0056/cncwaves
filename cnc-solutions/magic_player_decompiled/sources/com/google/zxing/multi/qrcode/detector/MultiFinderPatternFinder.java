package com.google.zxing.multi.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.detector.FinderPattern;
import com.google.zxing.qrcode.detector.FinderPatternFinder;
import com.google.zxing.qrcode.detector.FinderPatternInfo;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class MultiFinderPatternFinder extends FinderPatternFinder {
    private static final float DIFF_MODSIZE_CUTOFF = 0.5f;
    private static final float DIFF_MODSIZE_CUTOFF_PERCENT = 0.05f;
    private static final float MAX_MODULE_COUNT_PER_EDGE = 180.0f;
    private static final float MIN_MODULE_COUNT_PER_EDGE = 9.0f;
    private static final FinderPatternInfo[] EMPTY_RESULT_ARRAY = new FinderPatternInfo[0];
    private static final FinderPattern[] EMPTY_FP_ARRAY = new FinderPattern[0];
    private static final FinderPattern[][] EMPTY_FP_2D_ARRAY = new FinderPattern[0][];

    public static final class ModuleSizeComparator implements Serializable, Comparator<FinderPattern> {
        private ModuleSizeComparator() {
        }

        @Override // java.util.Comparator
        public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
            double estimatedModuleSize = finderPattern2.getEstimatedModuleSize() - finderPattern.getEstimatedModuleSize();
            if (estimatedModuleSize < 0.0d) {
                return -1;
            }
            return estimatedModuleSize > 0.0d ? 1 : 0;
        }
    }

    public MultiFinderPatternFinder(BitMatrix bitMatrix, ResultPointCallback resultPointCallback) {
        super(bitMatrix, resultPointCallback);
    }

    private FinderPattern[][] selectMultipleBestPatterns() throws NotFoundException {
        List<FinderPattern> possibleCenters = getPossibleCenters();
        int size = possibleCenters.size();
        int i4 = 3;
        if (size < 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        char c4 = 0;
        if (size == 3) {
            return new FinderPattern[][]{(FinderPattern[]) possibleCenters.toArray(EMPTY_FP_ARRAY)};
        }
        Collections.sort(possibleCenters, new ModuleSizeComparator());
        ArrayList arrayList = new ArrayList();
        int i5 = 0;
        while (i5 < size - 2) {
            FinderPattern finderPattern = possibleCenters.get(i5);
            if (finderPattern != null) {
                int i6 = i5 + 1;
                while (i6 < size - 1) {
                    FinderPattern finderPattern2 = possibleCenters.get(i6);
                    if (finderPattern2 != null) {
                        float estimatedModuleSize = (finderPattern.getEstimatedModuleSize() - finderPattern2.getEstimatedModuleSize()) / Math.min(finderPattern.getEstimatedModuleSize(), finderPattern2.getEstimatedModuleSize());
                        float fAbs = Math.abs(finderPattern.getEstimatedModuleSize() - finderPattern2.getEstimatedModuleSize());
                        float f4 = DIFF_MODSIZE_CUTOFF_PERCENT;
                        float f5 = 0.5f;
                        if (fAbs <= 0.5f || estimatedModuleSize < DIFF_MODSIZE_CUTOFF_PERCENT) {
                            int i7 = i6 + 1;
                            while (i7 < size) {
                                FinderPattern finderPattern3 = possibleCenters.get(i7);
                                if (finderPattern3 != null) {
                                    float estimatedModuleSize2 = (finderPattern2.getEstimatedModuleSize() - finderPattern3.getEstimatedModuleSize()) / Math.min(finderPattern2.getEstimatedModuleSize(), finderPattern3.getEstimatedModuleSize());
                                    if (Math.abs(finderPattern2.getEstimatedModuleSize() - finderPattern3.getEstimatedModuleSize()) <= f5 || estimatedModuleSize2 < f4) {
                                        FinderPattern[] finderPatternArr = new FinderPattern[i4];
                                        finderPatternArr[c4] = finderPattern;
                                        finderPatternArr[1] = finderPattern2;
                                        finderPatternArr[2] = finderPattern3;
                                        ResultPoint.orderBestPatterns(finderPatternArr);
                                        FinderPatternInfo finderPatternInfo = new FinderPatternInfo(finderPatternArr);
                                        float fDistance = ResultPoint.distance(finderPatternInfo.getTopLeft(), finderPatternInfo.getBottomLeft());
                                        float fDistance2 = ResultPoint.distance(finderPatternInfo.getTopRight(), finderPatternInfo.getBottomLeft());
                                        float fDistance3 = ResultPoint.distance(finderPatternInfo.getTopLeft(), finderPatternInfo.getTopRight());
                                        float estimatedModuleSize3 = (fDistance + fDistance3) / (finderPattern.getEstimatedModuleSize() * 2.0f);
                                        if (estimatedModuleSize3 <= 180.0f && estimatedModuleSize3 >= MIN_MODULE_COUNT_PER_EDGE && Math.abs((fDistance - fDistance3) / Math.min(fDistance, fDistance3)) < 0.1f) {
                                            double d4 = fDistance;
                                            Double.isNaN(d4);
                                            Double.isNaN(d4);
                                            double d5 = fDistance3;
                                            Double.isNaN(d5);
                                            Double.isNaN(d5);
                                            float fSqrt = (float) Math.sqrt((d5 * d5) + (d4 * d4));
                                            if (Math.abs((fDistance2 - fSqrt) / Math.min(fDistance2, fSqrt)) < 0.1f) {
                                                arrayList.add(finderPatternArr);
                                            }
                                        }
                                    }
                                }
                                i7++;
                                i4 = 3;
                                c4 = 0;
                                f4 = DIFF_MODSIZE_CUTOFF_PERCENT;
                                f5 = 0.5f;
                            }
                        }
                    }
                    i6++;
                    i4 = 3;
                    c4 = 0;
                }
            }
            i5++;
            i4 = 3;
            c4 = 0;
        }
        if (arrayList.isEmpty()) {
            throw NotFoundException.getNotFoundInstance();
        }
        return (FinderPattern[][]) arrayList.toArray(EMPTY_FP_2D_ARRAY);
    }

    public FinderPatternInfo[] findMulti(Map<DecodeHintType, ?> map) throws NotFoundException {
        boolean z3 = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        BitMatrix image = getImage();
        int height = image.getHeight();
        int width = image.getWidth();
        int i4 = (height * 3) / 388;
        if (i4 < 3 || z3) {
            i4 = 3;
        }
        int[] iArr = new int[5];
        for (int i5 = i4 - 1; i5 < height; i5 += i4) {
            FinderPatternFinder.doClearCounts(iArr);
            int i6 = 0;
            for (int i7 = 0; i7 < width; i7++) {
                if (image.get(i7, i5)) {
                    if ((i6 & 1) == 1) {
                        i6++;
                    }
                    iArr[i6] = iArr[i6] + 1;
                } else if ((i6 & 1) != 0) {
                    iArr[i6] = iArr[i6] + 1;
                } else if (i6 != 4) {
                    i6++;
                    iArr[i6] = iArr[i6] + 1;
                } else if (FinderPatternFinder.foundPatternCross(iArr) && handlePossibleCenter(iArr, i5, i7)) {
                    FinderPatternFinder.doClearCounts(iArr);
                    i6 = 0;
                } else {
                    FinderPatternFinder.doShiftCounts2(iArr);
                    i6 = 3;
                }
            }
            if (FinderPatternFinder.foundPatternCross(iArr)) {
                handlePossibleCenter(iArr, i5, width);
            }
        }
        FinderPattern[][] finderPatternArrSelectMultipleBestPatterns = selectMultipleBestPatterns();
        ArrayList arrayList = new ArrayList();
        for (FinderPattern[] finderPatternArr : finderPatternArrSelectMultipleBestPatterns) {
            ResultPoint.orderBestPatterns(finderPatternArr);
            arrayList.add(new FinderPatternInfo(finderPatternArr));
        }
        return arrayList.isEmpty() ? EMPTY_RESULT_ARRAY : (FinderPatternInfo[]) arrayList.toArray(EMPTY_RESULT_ARRAY);
    }
}
