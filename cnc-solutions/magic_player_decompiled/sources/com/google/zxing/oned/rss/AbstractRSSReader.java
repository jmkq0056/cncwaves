package com.google.zxing.oned.rss;

import androidx.appcompat.widget.ActivityChooserView;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.oned.OneDReader;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractRSSReader extends OneDReader {
    private static final float MAX_AVG_VARIANCE = 0.2f;
    private static final float MAX_FINDER_PATTERN_RATIO = 0.89285713f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.45f;
    private static final float MIN_FINDER_PATTERN_RATIO = 0.7916667f;
    private final int[] dataCharacterCounters;
    private final int[] evenCounts;
    private final int[] oddCounts;
    private final int[] decodeFinderCounters = new int[4];
    private final float[] oddRoundingErrors = new float[4];
    private final float[] evenRoundingErrors = new float[4];

    public AbstractRSSReader() {
        int[] iArr = new int[8];
        this.dataCharacterCounters = iArr;
        this.oddCounts = new int[iArr.length / 2];
        this.evenCounts = new int[iArr.length / 2];
    }

    @Deprecated
    public static int count(int[] iArr) {
        return MathUtils.sum(iArr);
    }

    public static void decrement(int[] iArr, float[] fArr) {
        int i4 = 0;
        float f4 = fArr[0];
        for (int i5 = 1; i5 < iArr.length; i5++) {
            if (fArr[i5] < f4) {
                f4 = fArr[i5];
                i4 = i5;
            }
        }
        iArr[i4] = iArr[i4] - 1;
    }

    public static void increment(int[] iArr, float[] fArr) {
        int i4 = 0;
        float f4 = fArr[0];
        for (int i5 = 1; i5 < iArr.length; i5++) {
            if (fArr[i5] > f4) {
                f4 = fArr[i5];
                i4 = i5;
            }
        }
        iArr[i4] = iArr[i4] + 1;
    }

    public static boolean isFinderPattern(int[] iArr) {
        float f4 = (iArr[0] + iArr[1]) / ((iArr[2] + r1) + iArr[3]);
        if (f4 >= MIN_FINDER_PATTERN_RATIO && f4 <= MAX_FINDER_PATTERN_RATIO) {
            int i4 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            int i5 = Integer.MIN_VALUE;
            for (int i6 : iArr) {
                if (i6 > i5) {
                    i5 = i6;
                }
                if (i6 < i4) {
                    i4 = i6;
                }
            }
            if (i5 < i4 * 10) {
                return true;
            }
        }
        return false;
    }

    public static int parseFinderValue(int[] iArr, int[][] iArr2) throws NotFoundException {
        for (int i4 = 0; i4 < iArr2.length; i4++) {
            if (OneDReader.patternMatchVariance(iArr, iArr2[i4], MAX_INDIVIDUAL_VARIANCE) < 0.2f) {
                return i4;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public final int[] getDataCharacterCounters() {
        return this.dataCharacterCounters;
    }

    public final int[] getDecodeFinderCounters() {
        return this.decodeFinderCounters;
    }

    public final int[] getEvenCounts() {
        return this.evenCounts;
    }

    public final float[] getEvenRoundingErrors() {
        return this.evenRoundingErrors;
    }

    public final int[] getOddCounts() {
        return this.oddCounts;
    }

    public final float[] getOddRoundingErrors() {
        return this.oddRoundingErrors;
    }
}
