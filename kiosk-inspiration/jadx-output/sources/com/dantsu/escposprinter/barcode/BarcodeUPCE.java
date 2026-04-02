package com.dantsu.escposprinter.barcode;

import com.dantsu.escposprinter.EscPosPrinterSize;
import com.dantsu.escposprinter.exceptions.EscPosBarcodeException;

/* JADX INFO: loaded from: classes.dex */
public class BarcodeUPCE extends Barcode {
    @Override // com.dantsu.escposprinter.barcode.Barcode
    public int getCodeLength() {
        return 6;
    }

    public BarcodeUPCE(EscPosPrinterSize escPosPrinterSize, String str, float f, float f2, int i) throws EscPosBarcodeException {
        super(escPosPrinterSize, 66, str, f, f2, i);
        checkCode();
    }

    @Override // com.dantsu.escposprinter.barcode.Barcode
    public int getColsCount() {
        return (getCodeLength() * 7) + 16;
    }

    private void checkCode() throws EscPosBarcodeException {
        int codeLength = getCodeLength();
        if (this.code.length() < codeLength) {
            throw new EscPosBarcodeException("Code is too short for the barcode type.");
        }
        try {
            int i = 0;
            this.code = this.code.substring(0, codeLength);
            while (i < codeLength) {
                int i2 = i + 1;
                Integer.parseInt(this.code.substring(i, i2), 10);
                i = i2;
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            throw new EscPosBarcodeException("Invalid barcode number");
        }
    }
}
