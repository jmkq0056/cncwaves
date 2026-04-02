package com.google.zxing.qrcode.decoder;

import androidx.appcompat.widget.ActivityChooserView;

/* JADX INFO: loaded from: classes2.dex */
final class FormatInformation {
    private final byte dataMask;
    private final ErrorCorrectionLevel errorCorrectionLevel;
    private static final int FORMAT_INFO_MASK_QR = 21522;
    private static final int[][] FORMAT_INFO_DECODE_LOOKUP = {new int[]{FORMAT_INFO_MASK_QR, 0}, new int[]{20773, 1}, new int[]{24188, 2}, new int[]{23371, 3}, new int[]{17913, 4}, new int[]{16590, 5}, new int[]{20375, 6}, new int[]{19104, 7}, new int[]{30660, 8}, new int[]{29427, 9}, new int[]{32170, 10}, new int[]{30877, 11}, new int[]{26159, 12}, new int[]{25368, 13}, new int[]{27713, 14}, new int[]{26998, 15}, new int[]{5769, 16}, new int[]{5054, 17}, new int[]{7399, 18}, new int[]{6608, 19}, new int[]{1890, 20}, new int[]{597, 21}, new int[]{3340, 22}, new int[]{2107, 23}, new int[]{13663, 24}, new int[]{12392, 25}, new int[]{16177, 26}, new int[]{14854, 27}, new int[]{9396, 28}, new int[]{8579, 29}, new int[]{11994, 30}, new int[]{11245, 31}};

    private FormatInformation(int i4) {
        this.errorCorrectionLevel = ErrorCorrectionLevel.forBits((i4 >> 3) & 3);
        this.dataMask = (byte) (i4 & 7);
    }

    public static FormatInformation decodeFormatInformation(int i4, int i5) {
        FormatInformation formatInformationDoDecodeFormatInformation = doDecodeFormatInformation(i4, i5);
        return formatInformationDoDecodeFormatInformation != null ? formatInformationDoDecodeFormatInformation : doDecodeFormatInformation(i4 ^ FORMAT_INFO_MASK_QR, i5 ^ FORMAT_INFO_MASK_QR);
    }

    private static FormatInformation doDecodeFormatInformation(int i4, int i5) {
        int iNumBitsDiffering;
        int[][] iArr = FORMAT_INFO_DECODE_LOOKUP;
        int i6 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i7 = 0;
        for (int[] iArr2 : iArr) {
            int i8 = iArr2[0];
            if (i8 == i4 || i8 == i5) {
                return new FormatInformation(iArr2[1]);
            }
            int iNumBitsDiffering2 = numBitsDiffering(i4, i8);
            if (iNumBitsDiffering2 < i6) {
                i7 = iArr2[1];
                i6 = iNumBitsDiffering2;
            }
            if (i4 != i5 && (iNumBitsDiffering = numBitsDiffering(i5, i8)) < i6) {
                i7 = iArr2[1];
                i6 = iNumBitsDiffering;
            }
        }
        if (i6 <= 3) {
            return new FormatInformation(i7);
        }
        return null;
    }

    public static int numBitsDiffering(int i4, int i5) {
        return Integer.bitCount(i4 ^ i5);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FormatInformation)) {
            return false;
        }
        FormatInformation formatInformation = (FormatInformation) obj;
        return this.errorCorrectionLevel == formatInformation.errorCorrectionLevel && this.dataMask == formatInformation.dataMask;
    }

    public byte getDataMask() {
        return this.dataMask;
    }

    public ErrorCorrectionLevel getErrorCorrectionLevel() {
        return this.errorCorrectionLevel;
    }

    public int hashCode() {
        return (this.errorCorrectionLevel.ordinal() << 3) | this.dataMask;
    }
}
