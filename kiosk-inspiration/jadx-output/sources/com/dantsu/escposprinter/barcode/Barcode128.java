package com.dantsu.escposprinter.barcode;

import com.dantsu.escposprinter.EscPosPrinterSize;
import com.dantsu.escposprinter.exceptions.EscPosBarcodeException;

/* JADX INFO: loaded from: classes.dex */
public class Barcode128 extends Barcode {
    public Barcode128(EscPosPrinterSize escPosPrinterSize, String str, float f, float f2, int i) throws EscPosBarcodeException {
        super(escPosPrinterSize, 73, str, f, f2, i);
    }

    @Override // com.dantsu.escposprinter.barcode.Barcode
    public int getCodeLength() {
        return this.code.length();
    }

    @Override // com.dantsu.escposprinter.barcode.Barcode
    public int getColsCount() {
        return (getCodeLength() + 5) * 11;
    }
}
