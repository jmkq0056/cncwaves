package com.google.zxing.oned.rss.expanded.decoders;

import android.support.v4.media.f;
import com.google.zxing.common.BitArray;

/* JADX INFO: loaded from: classes2.dex */
final class AI01AndOtherAIs extends AI01decoder {
    private static final int HEADER_SIZE = 4;

    public AI01AndOtherAIs(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AbstractExpandedDecoder
    public String parseInformation() {
        StringBuilder sbA = f.a("(01)");
        int length = sbA.length();
        sbA.append(getGeneralDecoder().extractNumericValueFromBitArray(4, 4));
        encodeCompressedGtinWithoutAI(sbA, 8, length);
        return getGeneralDecoder().decodeAllCodes(sbA, 48);
    }
}
