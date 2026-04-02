package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.FormatException;

/* JADX INFO: loaded from: classes2.dex */
final class DecodedNumeric extends DecodedObject {
    public static final int FNC1 = 10;
    private final int firstDigit;
    private final int secondDigit;

    public DecodedNumeric(int i4, int i5, int i6) throws FormatException {
        super(i4);
        if (i5 < 0 || i5 > 10 || i6 < 0 || i6 > 10) {
            throw FormatException.getFormatInstance();
        }
        this.firstDigit = i5;
        this.secondDigit = i6;
    }

    public int getFirstDigit() {
        return this.firstDigit;
    }

    public int getSecondDigit() {
        return this.secondDigit;
    }

    public int getValue() {
        return (this.firstDigit * 10) + this.secondDigit;
    }

    public boolean isFirstDigitFNC1() {
        return this.firstDigit == 10;
    }

    public boolean isSecondDigitFNC1() {
        return this.secondDigit == 10;
    }
}
