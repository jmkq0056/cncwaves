package com.dantsu.escposprinter.barcode;

import com.dantsu.escposprinter.EscPosPrinterSize;
import com.dantsu.escposprinter.exceptions.EscPosBarcodeException;

/* JADX INFO: loaded from: classes.dex */
public abstract class Barcode {
    protected int barcodeType;
    protected String code;
    protected int colWidth;
    protected int height;
    protected int textPosition;

    public abstract int getCodeLength();

    public abstract int getColsCount();

    Barcode(EscPosPrinterSize escPosPrinterSize, int i, String str, float f, float f2, int i2) throws EscPosBarcodeException {
        this.barcodeType = i;
        this.code = str;
        this.height = escPosPrinterSize.mmToPx(f2);
        this.textPosition = i2;
        f = f == 0.0f ? escPosPrinterSize.getPrinterWidthMM() * 0.7f : f;
        int iRound = (int) Math.round(((double) (f > escPosPrinterSize.getPrinterWidthMM() ? escPosPrinterSize.getPrinterWidthPx() : escPosPrinterSize.mmToPx(f))) / ((double) getColsCount()));
        iRound = getColsCount() * iRound > escPosPrinterSize.getPrinterWidthPx() ? iRound - 1 : iRound;
        if (iRound == 0) {
            throw new EscPosBarcodeException("Barcode is too long for the paper size.");
        }
        this.colWidth = iRound;
    }

    public int getBarcodeType() {
        return this.barcodeType;
    }

    public String getCode() {
        return this.code;
    }

    public int getHeight() {
        return this.height;
    }

    public int getTextPosition() {
        return this.textPosition;
    }

    public int getColWidth() {
        return this.colWidth;
    }
}
