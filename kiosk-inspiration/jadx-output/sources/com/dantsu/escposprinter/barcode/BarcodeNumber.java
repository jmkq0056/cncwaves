package com.dantsu.escposprinter.barcode;

import com.dantsu.escposprinter.EscPosPrinterSize;
import com.dantsu.escposprinter.exceptions.EscPosBarcodeException;
import com.sun.jna.platform.win32.COM.tlb.imp.TlbConst;

/* JADX INFO: loaded from: classes.dex */
public abstract class BarcodeNumber extends Barcode {
    public BarcodeNumber(EscPosPrinterSize escPosPrinterSize, int i, String str, float f, float f2, int i2) throws EscPosBarcodeException {
        super(escPosPrinterSize, i, str, f, f2, i2);
        checkCode();
    }

    @Override // com.dantsu.escposprinter.barcode.Barcode
    public int getColsCount() {
        return (getCodeLength() * 7) + 11;
    }

    private void checkCode() throws EscPosBarcodeException {
        int codeLength = getCodeLength();
        int i = codeLength - 1;
        if (this.code.length() < i) {
            throw new EscPosBarcodeException("Code is too short for the barcode type.");
        }
        try {
            String strSubstring = this.code.substring(0, i);
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                int i4 = (codeLength - 2) - i3;
                int i5 = Integer.parseInt(strSubstring.substring(i4, i4 + 1), 10);
                if (i3 % 2 == 0) {
                    i5 *= 3;
                }
                i2 += i5;
            }
            String strValueOf = String.valueOf(10 - (i2 % 10));
            if (strValueOf.length() == 2) {
                strValueOf = TlbConst.TYPELIB_MINOR_VERSION_SHELL;
            }
            this.code = strSubstring + strValueOf;
        } catch (NumberFormatException e) {
            e.printStackTrace();
            throw new EscPosBarcodeException("Invalid barcode number");
        }
    }
}
