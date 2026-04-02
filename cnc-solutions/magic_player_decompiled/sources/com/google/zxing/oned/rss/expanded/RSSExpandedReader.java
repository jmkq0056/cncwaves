package com.google.zxing.oned.rss.expanded;

import cn.huidu.lcd.render.model.enums.AnimationType;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.oned.Code39Reader;
import com.google.zxing.oned.OneDReader;
import com.google.zxing.oned.rss.AbstractRSSReader;
import com.google.zxing.oned.rss.DataCharacter;
import com.google.zxing.oned.rss.FinderPattern;
import com.google.zxing.oned.rss.RSSUtils;
import com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.xbill.DNS.WKSRecord;

/* JADX INFO: loaded from: classes2.dex */
public final class RSSExpandedReader extends AbstractRSSReader {
    private static final int FINDER_PAT_A = 0;
    private static final int FINDER_PAT_B = 1;
    private static final int FINDER_PAT_C = 2;
    private static final int FINDER_PAT_D = 3;
    private static final int FINDER_PAT_E = 4;
    private static final int FINDER_PAT_F = 5;
    private static final int MAX_PAIRS = 11;
    private final List<ExpandedPair> pairs = new ArrayList(11);
    private final List<ExpandedRow> rows = new ArrayList();
    private final int[] startEnd = new int[2];
    private boolean startFromEven;
    private static final int[] SYMBOL_WIDEST = {7, 5, 4, 3, 1};
    private static final int[] EVEN_TOTAL_SUBSET = {4, 20, 52, 104, 204};
    private static final int[] GSUM = {0, 348, 1388, 2948, 3988};
    private static final int[][] FINDER_PATTERNS = {new int[]{1, 8, 4, 1}, new int[]{3, 6, 4, 1}, new int[]{3, 4, 6, 1}, new int[]{3, 2, 8, 1}, new int[]{2, 6, 5, 1}, new int[]{2, 2, 9, 1}};
    private static final int[][] WEIGHTS = {new int[]{1, 3, 9, 27, 81, 32, 96, 77}, new int[]{20, 60, BaseTransientBottomBar.ANIMATION_FADE_DURATION, 118, 143, 7, 21, 63}, new int[]{189, 145, 13, 39, 117, WKSRecord.Service.EMFIS_DATA, 209, 205}, new int[]{193, 157, 49, 147, 19, 57, 171, 91}, new int[]{62, 186, WKSRecord.Service.PROFILE, 197, 169, 85, 44, WKSRecord.Service.CISCO_SYS}, new int[]{185, WKSRecord.Service.STATSRV, 188, WKSRecord.Service.BL_IDM, 4, 12, 36, 108}, new int[]{113, 128, 173, 97, 80, 29, 87, 50}, new int[]{150, 28, 84, 41, 123, 158, 52, 156}, new int[]{46, WKSRecord.Service.NETBIOS_DGM, 203, 187, WKSRecord.Service.NETBIOS_SSN, 206, 196, 166}, new int[]{76, 17, 51, 153, 37, 111, 122, 155}, new int[]{43, WKSRecord.Service.PWDGEN, 176, 106, 107, 110, 119, 146}, new int[]{16, 48, 144, 10, 30, 90, 59, 177}, new int[]{109, 116, WKSRecord.Service.NETBIOS_NS, 200, 178, 112, WKSRecord.Service.LOCUS_MAP, 164}, new int[]{70, 210, AnimationType.ROLL_OUT_TO_RIGHT, 202, 184, WKSRecord.Service.CISCO_FNA, 179, 115}, new int[]{WKSRecord.Service.INGRES_NET, 191, 151, 31, 93, 68, 204, 190}, new int[]{Code39Reader.ASTERISK_ENCODING, 22, 66, 198, 172, 94, 71, 2}, new int[]{6, 18, 54, 162, 64, 192, 154, 40}, new int[]{120, 149, 25, 75, 14, 42, 126, 167}, new int[]{79, 26, 78, 23, 69, 207, 199, HideBottomViewOnScrollBehavior.EXIT_ANIMATION_DURATION}, new int[]{103, 98, 83, 38, 114, WKSRecord.Service.CISCO_TNA, 182, 124}, new int[]{161, 61, 183, WKSRecord.Service.LOCUS_CON, 170, 88, 53, 159}, new int[]{55, 165, 73, 8, 24, 72, 5, 15}, new int[]{45, WKSRecord.Service.LOC_SRV, 194, 160, 58, 174, 100, 89}};
    private static final int[][] FINDER_PATTERN_SEQUENCES = {new int[]{0, 0}, new int[]{0, 1, 1}, new int[]{0, 2, 1, 3}, new int[]{0, 4, 1, 3, 2}, new int[]{0, 4, 1, 3, 3, 5}, new int[]{0, 4, 1, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 2, 3, 3}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 4}, new int[]{0, 0, 1, 1, 2, 2, 3, 4, 5, 5}, new int[]{0, 0, 1, 1, 2, 3, 3, 4, 4, 5, 5}};

    private void adjustOddEvenCounts(int i4) throws NotFoundException {
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int iSum = MathUtils.sum(getOddCounts());
        int iSum2 = MathUtils.sum(getEvenCounts());
        boolean z7 = true;
        if (iSum > 13) {
            z3 = false;
            z4 = true;
        } else {
            z3 = iSum < 4;
            z4 = false;
        }
        if (iSum2 > 13) {
            z5 = false;
            z6 = true;
        } else {
            z5 = iSum2 < 4;
            z6 = false;
        }
        int i5 = (iSum + iSum2) - i4;
        boolean z8 = (iSum & 1) == 1;
        boolean z9 = (iSum2 & 1) == 0;
        if (i5 != -1) {
            if (i5 != 0) {
                if (i5 != 1) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (z8) {
                    if (z9) {
                        throw NotFoundException.getNotFoundInstance();
                    }
                    z7 = z3;
                    z4 = true;
                } else {
                    if (!z9) {
                        throw NotFoundException.getNotFoundInstance();
                    }
                    z7 = z3;
                    z6 = true;
                }
            } else if (z8) {
                if (!z9) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (iSum >= iSum2) {
                    z7 = z3;
                    z5 = true;
                    z4 = true;
                }
                z6 = true;
            } else {
                if (z9) {
                    throw NotFoundException.getNotFoundInstance();
                }
                z7 = z3;
            }
        } else if (z8) {
            if (z9) {
                throw NotFoundException.getNotFoundInstance();
            }
        } else {
            if (!z9) {
                throw NotFoundException.getNotFoundInstance();
            }
            z7 = z3;
            z5 = true;
        }
        if (z7) {
            if (z4) {
                throw NotFoundException.getNotFoundInstance();
            }
            AbstractRSSReader.increment(getOddCounts(), getOddRoundingErrors());
        }
        if (z4) {
            AbstractRSSReader.decrement(getOddCounts(), getOddRoundingErrors());
        }
        if (z5) {
            if (z6) {
                throw NotFoundException.getNotFoundInstance();
            }
            AbstractRSSReader.increment(getEvenCounts(), getOddRoundingErrors());
        }
        if (z6) {
            AbstractRSSReader.decrement(getEvenCounts(), getEvenRoundingErrors());
        }
    }

    private boolean checkChecksum() {
        ExpandedPair expandedPair = this.pairs.get(0);
        DataCharacter leftChar = expandedPair.getLeftChar();
        DataCharacter rightChar = expandedPair.getRightChar();
        if (rightChar == null) {
            return false;
        }
        int checksumPortion = rightChar.getChecksumPortion();
        int i4 = 2;
        for (int i5 = 1; i5 < this.pairs.size(); i5++) {
            ExpandedPair expandedPair2 = this.pairs.get(i5);
            int checksumPortion2 = expandedPair2.getLeftChar().getChecksumPortion() + checksumPortion;
            i4++;
            DataCharacter rightChar2 = expandedPair2.getRightChar();
            if (rightChar2 != null) {
                checksumPortion = rightChar2.getChecksumPortion() + checksumPortion2;
                i4++;
            } else {
                checksumPortion = checksumPortion2;
            }
        }
        return ((i4 + (-4)) * 211) + (checksumPortion % 211) == leftChar.getValue();
    }

    private List<ExpandedPair> checkRows(boolean z3) {
        List<ExpandedPair> listCheckRows = null;
        if (this.rows.size() > 25) {
            this.rows.clear();
            return null;
        }
        this.pairs.clear();
        if (z3) {
            Collections.reverse(this.rows);
        }
        try {
            listCheckRows = checkRows(new ArrayList(), 0);
        } catch (NotFoundException unused) {
        }
        if (z3) {
            Collections.reverse(this.rows);
        }
        return listCheckRows;
    }

    public static Result constructResult(List<ExpandedPair> list) {
        String information = AbstractExpandedDecoder.createDecoder(BitArrayBuilder.buildBitArray(list)).parseInformation();
        ResultPoint[] resultPoints = list.get(0).getFinderPattern().getResultPoints();
        ResultPoint[] resultPoints2 = list.get(list.size() - 1).getFinderPattern().getResultPoints();
        return new Result(information, null, new ResultPoint[]{resultPoints[0], resultPoints[1], resultPoints2[0], resultPoints2[1]}, BarcodeFormat.RSS_EXPANDED);
    }

    private void findNextPair(BitArray bitArray, List<ExpandedPair> list, int i4) throws NotFoundException {
        int[] decodeFinderCounters = getDecodeFinderCounters();
        decodeFinderCounters[0] = 0;
        decodeFinderCounters[1] = 0;
        decodeFinderCounters[2] = 0;
        decodeFinderCounters[3] = 0;
        int size = bitArray.getSize();
        if (i4 < 0) {
            i4 = list.isEmpty() ? 0 : list.get(list.size() - 1).getFinderPattern().getStartEnd()[1];
        }
        boolean z3 = list.size() % 2 != 0;
        if (this.startFromEven) {
            z3 = !z3;
        }
        boolean z4 = false;
        while (i4 < size) {
            z4 = !bitArray.get(i4);
            if (!z4) {
                break;
            } else {
                i4++;
            }
        }
        boolean z5 = z4;
        int i5 = 0;
        int i6 = i4;
        while (i4 < size) {
            if (bitArray.get(i4) != z5) {
                decodeFinderCounters[i5] = decodeFinderCounters[i5] + 1;
            } else {
                if (i5 == 3) {
                    if (z3) {
                        reverseCounters(decodeFinderCounters);
                    }
                    if (AbstractRSSReader.isFinderPattern(decodeFinderCounters)) {
                        int[] iArr = this.startEnd;
                        iArr[0] = i6;
                        iArr[1] = i4;
                        return;
                    }
                    if (z3) {
                        reverseCounters(decodeFinderCounters);
                    }
                    i6 += decodeFinderCounters[0] + decodeFinderCounters[1];
                    decodeFinderCounters[0] = decodeFinderCounters[2];
                    decodeFinderCounters[1] = decodeFinderCounters[3];
                    decodeFinderCounters[2] = 0;
                    decodeFinderCounters[3] = 0;
                    i5--;
                } else {
                    i5++;
                }
                decodeFinderCounters[i5] = 1;
                z5 = !z5;
            }
            i4++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int getNextSecondBar(BitArray bitArray, int i4) {
        return bitArray.get(i4) ? bitArray.getNextSet(bitArray.getNextUnset(i4)) : bitArray.getNextUnset(bitArray.getNextSet(i4));
    }

    private static boolean isNotA1left(FinderPattern finderPattern, boolean z3, boolean z4) {
        return (finderPattern.getValue() == 0 && z3 && z4) ? false : true;
    }

    private static boolean isPartialRow(Iterable<ExpandedPair> iterable, Iterable<ExpandedRow> iterable2) {
        boolean z3;
        boolean z4;
        Iterator<ExpandedRow> it = iterable2.iterator();
        do {
            z3 = false;
            if (!it.hasNext()) {
                return false;
            }
            ExpandedRow next = it.next();
            Iterator<ExpandedPair> it2 = iterable.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z3 = true;
                    break;
                }
                ExpandedPair next2 = it2.next();
                Iterator<ExpandedPair> it3 = next.getPairs().iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        z4 = false;
                        break;
                    }
                    if (next2.equals(it3.next())) {
                        z4 = true;
                        break;
                    }
                }
                if (!z4) {
                    break;
                }
            }
        } while (!z3);
        return true;
    }

    private static boolean isValidSequence(List<ExpandedPair> list) {
        boolean z3;
        for (int[] iArr : FINDER_PATTERN_SEQUENCES) {
            if (list.size() <= iArr.length) {
                int i4 = 0;
                while (true) {
                    if (i4 >= list.size()) {
                        z3 = true;
                        break;
                    }
                    if (list.get(i4).getFinderPattern().getValue() != iArr[i4]) {
                        z3 = false;
                        break;
                    }
                    i4++;
                }
                if (z3) {
                    return true;
                }
            }
        }
        return false;
    }

    private FinderPattern parseFoundFinderPattern(BitArray bitArray, int i4, boolean z3) {
        int i5;
        int i6;
        int i7;
        if (z3) {
            int i8 = this.startEnd[0] - 1;
            while (i8 >= 0 && !bitArray.get(i8)) {
                i8--;
            }
            int i9 = i8 + 1;
            int[] iArr = this.startEnd;
            i7 = iArr[0] - i9;
            i5 = iArr[1];
            i6 = i9;
        } else {
            int[] iArr2 = this.startEnd;
            int i10 = iArr2[0];
            int nextUnset = bitArray.getNextUnset(iArr2[1] + 1);
            i5 = nextUnset;
            i6 = i10;
            i7 = nextUnset - this.startEnd[1];
        }
        int[] decodeFinderCounters = getDecodeFinderCounters();
        System.arraycopy(decodeFinderCounters, 0, decodeFinderCounters, 1, decodeFinderCounters.length - 1);
        decodeFinderCounters[0] = i7;
        try {
            return new FinderPattern(AbstractRSSReader.parseFinderValue(decodeFinderCounters, FINDER_PATTERNS), new int[]{i6, i5}, i6, i5, i4);
        } catch (NotFoundException unused) {
            return null;
        }
    }

    private static void removePartialRows(Collection<ExpandedPair> collection, Collection<ExpandedRow> collection2) {
        Iterator<ExpandedRow> it = collection2.iterator();
        while (it.hasNext()) {
            ExpandedRow next = it.next();
            if (next.getPairs().size() != collection.size()) {
                boolean z3 = true;
                Iterator<ExpandedPair> it2 = next.getPairs().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    } else if (!collection.contains(it2.next())) {
                        z3 = false;
                        break;
                    }
                }
                if (z3) {
                    it.remove();
                }
            }
        }
    }

    private static void reverseCounters(int[] iArr) {
        int length = iArr.length;
        for (int i4 = 0; i4 < length / 2; i4++) {
            int i5 = iArr[i4];
            int i6 = (length - i4) - 1;
            iArr[i4] = iArr[i6];
            iArr[i6] = i5;
        }
    }

    private void storeRow(int i4) {
        boolean zIsEquivalent;
        int i5 = 0;
        boolean zIsEquivalent2 = false;
        while (true) {
            if (i5 >= this.rows.size()) {
                zIsEquivalent = false;
                break;
            }
            ExpandedRow expandedRow = this.rows.get(i5);
            if (expandedRow.getRowNumber() > i4) {
                zIsEquivalent = expandedRow.isEquivalent(this.pairs);
                break;
            } else {
                zIsEquivalent2 = expandedRow.isEquivalent(this.pairs);
                i5++;
            }
        }
        if (zIsEquivalent || zIsEquivalent2 || isPartialRow(this.pairs, this.rows)) {
            return;
        }
        this.rows.add(i5, new ExpandedRow(this.pairs, i4, false));
        removePartialRows(this.pairs, this.rows);
    }

    public DataCharacter decodeDataCharacter(BitArray bitArray, FinderPattern finderPattern, boolean z3, boolean z4) throws NotFoundException {
        int[] dataCharacterCounters = getDataCharacterCounters();
        Arrays.fill(dataCharacterCounters, 0);
        if (z4) {
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
        float fSum = MathUtils.sum(dataCharacterCounters) / 17.0f;
        float f4 = (finderPattern.getStartEnd()[1] - finderPattern.getStartEnd()[0]) / 15.0f;
        if (Math.abs(fSum - f4) / f4 > 0.3f) {
            throw NotFoundException.getNotFoundInstance();
        }
        int[] oddCounts = getOddCounts();
        int[] evenCounts = getEvenCounts();
        float[] oddRoundingErrors = getOddRoundingErrors();
        float[] evenRoundingErrors = getEvenRoundingErrors();
        for (int i6 = 0; i6 < dataCharacterCounters.length; i6++) {
            float f5 = (dataCharacterCounters[i6] * 1.0f) / fSum;
            int i7 = (int) (0.5f + f5);
            if (i7 <= 0) {
                if (f5 < 0.3f) {
                    throw NotFoundException.getNotFoundInstance();
                }
                i7 = 1;
            } else if (i7 > 8) {
                if (f5 > 8.7f) {
                    throw NotFoundException.getNotFoundInstance();
                }
                i7 = 8;
            }
            int i8 = i6 / 2;
            if ((i6 & 1) == 0) {
                oddCounts[i8] = i7;
                oddRoundingErrors[i8] = f5 - i7;
            } else {
                evenCounts[i8] = i7;
                evenRoundingErrors[i8] = f5 - i7;
            }
        }
        adjustOddEvenCounts(17);
        int value = (((finderPattern.getValue() * 4) + (z3 ? 0 : 2)) + (!z4 ? 1 : 0)) - 1;
        int i9 = 0;
        int i10 = 0;
        for (int length2 = oddCounts.length - 1; length2 >= 0; length2--) {
            if (isNotA1left(finderPattern, z3, z4)) {
                i9 += oddCounts[length2] * WEIGHTS[value][length2 * 2];
            }
            i10 += oddCounts[length2];
        }
        int i11 = 0;
        for (int length3 = evenCounts.length - 1; length3 >= 0; length3--) {
            if (isNotA1left(finderPattern, z3, z4)) {
                i11 += evenCounts[length3] * WEIGHTS[value][(length3 * 2) + 1];
            }
        }
        int i12 = i9 + i11;
        if ((i10 & 1) != 0 || i10 > 13 || i10 < 4) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i13 = (13 - i10) / 2;
        int i14 = SYMBOL_WIDEST[i13];
        return new DataCharacter((RSSUtils.getRSSvalue(oddCounts, i14, true) * EVEN_TOTAL_SUBSET[i13]) + RSSUtils.getRSSvalue(evenCounts, 9 - i14, false) + GSUM[i13], i12);
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i4, BitArray bitArray, Map<DecodeHintType, ?> map) {
        this.pairs.clear();
        this.startFromEven = false;
        try {
            return constructResult(decodeRow2pairs(i4, bitArray));
        } catch (NotFoundException unused) {
            this.pairs.clear();
            this.startFromEven = true;
            return constructResult(decodeRow2pairs(i4, bitArray));
        }
    }

    public List<ExpandedPair> decodeRow2pairs(int i4, BitArray bitArray) throws NotFoundException {
        boolean z3 = false;
        while (!z3) {
            try {
                List<ExpandedPair> list = this.pairs;
                list.add(retrieveNextPair(bitArray, list, i4));
            } catch (NotFoundException e4) {
                if (this.pairs.isEmpty()) {
                    throw e4;
                }
                z3 = true;
            }
        }
        if (checkChecksum()) {
            return this.pairs;
        }
        boolean z4 = !this.rows.isEmpty();
        storeRow(i4);
        if (z4) {
            List<ExpandedPair> listCheckRows = checkRows(false);
            if (listCheckRows != null) {
                return listCheckRows;
            }
            List<ExpandedPair> listCheckRows2 = checkRows(true);
            if (listCheckRows2 != null) {
                return listCheckRows2;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public List<ExpandedRow> getRows() {
        return this.rows;
    }

    @Override // com.google.zxing.oned.OneDReader, com.google.zxing.Reader
    public void reset() {
        this.pairs.clear();
        this.rows.clear();
    }

    public ExpandedPair retrieveNextPair(BitArray bitArray, List<ExpandedPair> list, int i4) throws NotFoundException {
        FinderPattern foundFinderPattern;
        DataCharacter dataCharacterDecodeDataCharacter;
        boolean z3 = list.size() % 2 == 0;
        if (this.startFromEven) {
            z3 = !z3;
        }
        int nextSecondBar = -1;
        boolean z4 = true;
        do {
            findNextPair(bitArray, list, nextSecondBar);
            foundFinderPattern = parseFoundFinderPattern(bitArray, i4, z3);
            if (foundFinderPattern == null) {
                nextSecondBar = getNextSecondBar(bitArray, this.startEnd[0]);
            } else {
                z4 = false;
            }
        } while (z4);
        DataCharacter dataCharacterDecodeDataCharacter2 = decodeDataCharacter(bitArray, foundFinderPattern, z3, true);
        if (!list.isEmpty() && list.get(list.size() - 1).mustBeLast()) {
            throw NotFoundException.getNotFoundInstance();
        }
        try {
            dataCharacterDecodeDataCharacter = decodeDataCharacter(bitArray, foundFinderPattern, z3, false);
        } catch (NotFoundException unused) {
            dataCharacterDecodeDataCharacter = null;
        }
        return new ExpandedPair(dataCharacterDecodeDataCharacter2, dataCharacterDecodeDataCharacter, foundFinderPattern);
    }

    private List<ExpandedPair> checkRows(List<ExpandedRow> list, int i4) throws NotFoundException {
        while (i4 < this.rows.size()) {
            ExpandedRow expandedRow = this.rows.get(i4);
            this.pairs.clear();
            Iterator<ExpandedRow> it = list.iterator();
            while (it.hasNext()) {
                this.pairs.addAll(it.next().getPairs());
            }
            this.pairs.addAll(expandedRow.getPairs());
            if (isValidSequence(this.pairs)) {
                if (checkChecksum()) {
                    return this.pairs;
                }
                ArrayList arrayList = new ArrayList(list);
                arrayList.add(expandedRow);
                try {
                    return checkRows(arrayList, i4 + 1);
                } catch (NotFoundException unused) {
                    continue;
                }
            }
            i4++;
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
