package com.dantsu.escposprinter.barcode;

import com.dantsu.escposprinter.EscPosPrinterSize;
import com.dantsu.escposprinter.exceptions.EscPosBarcodeException;

/* JADX INFO: loaded from: classes.dex */
public class BarcodeUPCA extends BarcodeNumber {
    @Override // com.dantsu.escposprinter.barcode.Barcode
    public int getCodeLength() {
        return 12;
    }

    public BarcodeUPCA(EscPosPrinterSize escPosPrinterSize, String str, float f, float f2, int i) throws EscPosBarcodeException {
        super(escPosPrinterSize, 65, str, f, f2, i);
    }
}
