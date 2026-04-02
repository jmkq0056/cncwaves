package com.dantsu.escposprinter.barcode;

import com.dantsu.escposprinter.EscPosPrinterSize;
import com.dantsu.escposprinter.exceptions.EscPosBarcodeException;

/* JADX INFO: loaded from: classes.dex */
public class BarcodeEAN13 extends BarcodeNumber {
    @Override // com.dantsu.escposprinter.barcode.Barcode
    public int getCodeLength() {
        return 13;
    }

    public BarcodeEAN13(EscPosPrinterSize escPosPrinterSize, String str, float f, float f2, int i) throws EscPosBarcodeException {
        super(escPosPrinterSize, 67, str, f, f2, i);
    }
}
