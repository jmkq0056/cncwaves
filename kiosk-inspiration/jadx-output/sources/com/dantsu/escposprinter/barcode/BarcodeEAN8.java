package com.dantsu.escposprinter.barcode;

import com.dantsu.escposprinter.EscPosPrinterSize;
import com.dantsu.escposprinter.exceptions.EscPosBarcodeException;

/* JADX INFO: loaded from: classes.dex */
public class BarcodeEAN8 extends BarcodeNumber {
    @Override // com.dantsu.escposprinter.barcode.Barcode
    public int getCodeLength() {
        return 8;
    }

    public BarcodeEAN8(EscPosPrinterSize escPosPrinterSize, String str, float f, float f2, int i) throws EscPosBarcodeException {
        super(escPosPrinterSize, 68, str, f, f2, i);
    }
}
