package com.google.zxing.oned.rss;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.oned.OneDReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class RSS14Reader extends AbstractRSSReader {
    private final List<Pair> possibleLeftPairs = new ArrayList();
    private final List<Pair> possibleRightPairs = new ArrayList();
    private static final int[] OUTSIDE_EVEN_TOTAL_SUBSET = {1, 10, 34, 70, 126};
    private static final int[] INSIDE_ODD_TOTAL_SUBSET = {4, 20, 48, 81};
    private static final int[] OUTSIDE_GSUM = {0, 161, 961, 2015, 2715};
    private static final int[] INSIDE_GSUM = {0, 336, 1036, 1516};
    private static final int[] OUTSIDE_ODD_WIDEST = {8, 6, 4, 3, 1};
    private static final int[] INSIDE_ODD_WIDEST = {2, 4, 6, 8};
    private static final int[][] FINDER_PATTERNS = {new int[]{3, 8, 2, 1}, new int[]{3, 5, 5, 1}, new int[]{3, 3, 7, 1}, new int[]{3, 1, 9, 1}, new int[]{2, 7, 4, 1}, new int[]{2, 5, 6, 1}, new int[]{2, 3, 8, 1}, new int[]{1, 5, 7, 1}, new int[]{1, 3, 9, 1}};

    private static void addOrTally(Collection<Pair> collection, Pair pair) {
        if (pair == null) {
            return;
        }
        boolean z3 = false;
        Iterator<Pair> it = collection.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Pair next = it.next();
            if (next.getValue() == pair.getValue()) {
                next.incrementCount();
                z3 = true;
                break;
            }
        }
        if (z3) {
            return;
        }
        collection.add(pair);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x003f A[PHI: r6 r7
      0x003f: PHI (r6v6 boolean) = (r6v3 boolean), (r6v13 boolean) binds: [B:26:0x003d, B:13:0x0025] A[DONT_GENERATE, DONT_INLINE]
      0x003f: PHI (r7v4 boolean) = (r7v1 boolean), (r7v11 boolean) binds: [B:26:0x003d, B:13:0x0025] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0041 A[PHI: r6 r7
      0x0041: PHI (r6v9 boolean) = (r6v3 boolean), (r6v13 boolean) binds: [B:26:0x003d, B:13:0x0025] A[DONT_GENERATE, DONT_INLINE]
      0x0041: PHI (r7v9 boolean) = (r7v1 boolean), (r7v11 boolean) binds: [B:26:0x003d, B:13:0x0025] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void adjustOddEvenCounts(boolean r10, int r11) throws com.google.zxing.NotFoundException {
        /*
            Method dump skipped, instruction units count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.rss.RSS14Reader.adjustOddEvenCounts(boolean, int):void");
    }

    private static boolean checkChecksum(Pair pair, Pair pair2) {
        int checksumPortion = ((pair2.getChecksumPortion() * 16) + pair.getChecksumPortion()) % 79;
        int value = pair2.getFinderPattern().getValue() + (pair.getFinderPattern().getValue() * 9);
        if (value > 72) {
            value--;
        }
        if (value > 8) {
            value--;
        }
        return checksumPortion == value;
    }

    private static Result constructResult(Pair pair, Pair pair2) {
        String strValueOf = String.valueOf((((long) pair.getValue()) * 4537077) + ((long) pair2.getValue()));
        StringBuilder sb = new StringBuilder(14);
        for (int length = 13 - strValueOf.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(strValueOf);
        int i4 = 0;
        for (int i5 = 0; i5 < 13; i5++) {
            int iCharAt = sb.charAt(i5) - '0';
            if ((i5 & 1) == 0) {
                iCharAt *= 3;
            }
            i4 += iCharAt;
        }
        int i6 = 10 - (i4 % 10);
        if (i6 == 10) {
            i6 = 0;
        }
        sb.append(i6);
        ResultPoint[] resultPoints = pair.getFinderPattern().getResultPoints();
        ResultPoint[] resultPoints2 = pair2.getFinderPattern().getResultPoints();
        return new Result(sb.toString(), null, new ResultPoint[]{resultPoints[0], resultPoints[1], resultPoints2[0], resultPoints2[1]}, BarcodeFormat.RSS_14);
    }

    private DataCharacter decodeDataCharacter(BitArray bitArray, FinderPattern finderPattern, boolean z3) throws NotFoundException {
        int[] dataCharacterCounters = getDataCharacterCounters();
        Arrays.fill(dataCharacterCounters, 0);
        if (z3) {
            OneDReader.recordPatternInReverse(bitArray, finderPattern.getStartEnd()[0], dataCharacterCounters);
        } else {
            OneDReader.recordPattern(bitArray, finderPattern.getStartEnd()[1], dataCharacterCounters);
            int i4 = 0;
            for (int length = dataCharacterCounters.length - 1; i4 < length; length--) {
                int i5 = dataCharacterCounters[i4];
                dataCharacterCounters[i4] = dataCharacterCounters[length];
                dataCharacterCounters[length] = i5;
                i4++;
            }
        }
        int i6 = z3 ? 16 : 15;
        float fSum = MathUtils.sum(dataCharacterCounters) / i6;
        int[] oddCounts = getOddCounts();
        int[] evenCounts = getEvenCounts();
        float[] oddRoundingErrors = getOddRoundingErrors();
        float[] evenRoundingErrors = getEvenRoundingErrors();
        for (int i7 = 0; i7 < dataCharacterCounters.length; i7++) {
            float f4 = dataCharacterCounters[i7] / fSum;
            int i8 = (int) (0.5f + f4);
            if (i8 <= 0) {
                i8 = 1;
            } else if (i8 > 8) {
                i8 = 8;
            }
            int i9 = i7 / 2;
            if ((i7 & 1) == 0) {
                oddCounts[i9] = i8;
                oddRoundingErrors[i9] = f4 - i8;
            } else {
                evenCounts[i9] = i8;
                evenRoundingErrors[i9] = f4 - i8;
            }
        }
        adjustOddEvenCounts(z3, i6);
        int i10 = 0;
        int i11 = 0;
        for (int length2 = oddCounts.length - 1; length2 >= 0; length2--) {
            i10 = (i10 * 9) + oddCounts[length2];
            i11 += oddCounts[length2];
        }
        int i12 = 0;
        int i13 = 0;
        for (int length3 = evenCounts.length - 1; length3 >= 0; length3--) {
            i12 = (i12 * 9) + evenCounts[length3];
            i13 += evenCounts[length3];
        }
        int i14 = (i12 * 3) + i10;
        if (!z3) {
            if ((i13 & 1) != 0 || i13 > 10 || i13 < 4) {
                throw NotFoundException.getNotFoundInstance();
            }
            int i15 = (10 - i13) / 2;
            int i16 = INSIDE_ODD_WIDEST[i15];
            return new DataCharacter((RSSUtils.getRSSvalue(evenCounts, 9 - i16, false) * INSIDE_ODD_TOTAL_SUBSET[i15]) + RSSUtils.getRSSvalue(oddCounts, i16, true) + INSIDE_GSUM[i15], i14);
        }
        if ((i11 & 1) != 0 || i11 > 12 || i11 < 4) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i17 = (12 - i11) / 2;
        int i18 = OUTSIDE_ODD_WIDEST[i17];
        return new DataCharacter((RSSUtils.getRSSvalue(oddCounts, i18, false) * OUTSIDE_EVEN_TOTAL_SUBSET[i17]) + RSSUtils.getRSSvalue(evenCounts, 9 - i18, true) + OUTSIDE_GSUM[i17], i14);
    }

    private Pair decodePair(BitArray bitArray, boolean z3, int i4, Map<DecodeHintType, ?> map) {
        try {
            FinderPattern foundFinderPattern = parseFoundFinderPattern(bitArray, i4, z3, findFinderPattern(bitArray, z3));
            ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
            if (resultPointCallback != null) {
                int[] startEnd = foundFinderPattern.getStartEnd();
                float size = ((startEnd[0] + startEnd[1]) - 1) / 2.0f;
                if (z3) {
                    size = (bitArray.getSize() - 1) - size;
                }
                resultPointCallback.foundPossibleResultPoint(new ResultPoint(size, i4));
            }
            DataCharacter dataCharacterDecodeDataCharacter = decodeDataCharacter(bitArray, foundFinderPattern, true);
            DataCharacter dataCharacterDecodeDataCharacter2 = decodeDataCharacter(bitArray, foundFinderPattern, false);
            return new Pair((dataCharacterDecodeDataCharacter.getValue() * 1597) + dataCharacterDecodeDataCharacter2.getValue(), (dataCharacterDecodeDataCharacter2.getChecksumPortion() * 4) + dataCharacterDecodeDataCharacter.getChecksumPortion(), foundFinderPattern);
        } catch (NotFoundException unused) {
            return null;
        }
    }

    private int[] findFinderPattern(BitArray bitArray, boolean z3) throws NotFoundException {
        int[] decodeFinderCounters = getDecodeFinderCounters();
        decodeFinderCounters[0] = 0;
        decodeFinderCounters[1] = 0;
        decodeFinderCounters[2] = 0;
        decodeFinderCounters[3] = 0;
        int size = bitArray.getSize();
        int i4 = 0;
        boolean z4 = false;
        while (i4 < size) {
            z4 = !bitArray.get(i4);
            if (z3 == z4) {
                break;
            }
            i4++;
        }
        int i5 = i4;
        int i6 = 0;
        while (i4 < size) {
            if (bitArray.get(i4) != z4) {
                decodeFinderCounters[i6] = decodeFinderCounters[i6] + 1;
            } else {
                if (i6 != 3) {
                    i6++;
                } else {
                    if (AbstractRSSReader.isFinderPattern(decodeFinderCounters)) {
                        return new int[]{i5, i4};
                    }
                    i5 += decodeFinderCounters[0] + decodeFinderCounters[1];
                    decodeFinderCounters[0] = decodeFinderCounters[2];
                    decodeFinderCounters[1] = decodeFinderCounters[3];
                    decodeFinderCounters[2] = 0;
                    decodeFinderCounters[3] = 0;
                    i6--;
                }
                decodeFinderCounters[i6] = 1;
                z4 = !z4;
            }
            i4++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private FinderPattern parseFoundFinderPattern(BitArray bitArray, int i4, boolean z3, int[] iArr) throws NotFoundException {
        int size;
        int i5;
        boolean z4 = bitArray.get(iArr[0]);
        int i6 = iArr[0] - 1;
        while (i6 >= 0 && z4 != bitArray.get(i6)) {
            i6--;
        }
        int i7 = i6 + 1;
        int i8 = iArr[0] - i7;
        int[] decodeFinderCounters = getDecodeFinderCounters();
        System.arraycopy(decodeFinderCounters, 0, decodeFinderCounters, 1, decodeFinderCounters.length - 1);
        decodeFinderCounters[0] = i8;
        int finderValue = AbstractRSSReader.parseFinderValue(decodeFinderCounters, FINDER_PATTERNS);
        int i9 = iArr[1];
        if (z3) {
            int size2 = (bitArray.getSize() - 1) - i7;
            size = (bitArray.getSize() - 1) - i9;
            i5 = size2;
        } else {
            size = i9;
            i5 = i7;
        }
        return new FinderPattern(finderValue, new int[]{i7, iArr[1]}, i5, size, i4);
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i4, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException {
        addOrTally(this.possibleLeftPairs, decodePair(bitArray, false, i4, map));
        bitArray.reverse();
        addOrTally(this.possibleRightPairs, decodePair(bitArray, true, i4, map));
        bitArray.reverse();
        for (Pair pair : this.possibleLeftPairs) {
            if (pair.getCount() > 1) {
                for (Pair pair2 : this.possibleRightPairs) {
                    if (pair2.getCount() > 1 && checkChecksum(pair, pair2)) {
                        return constructResult(pair, pair2);
                    }
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.oned.OneDReader, com.google.zxing.Reader
    public void reset() {
        this.possibleLeftPairs.clear();
        this.possibleRightPairs.clear();
    }
}
