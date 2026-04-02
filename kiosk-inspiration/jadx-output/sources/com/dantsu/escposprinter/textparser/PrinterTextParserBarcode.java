package com.dantsu.escposprinter.textparser;

import com.dantsu.escposprinter.EscPosPrinterCommands;
import com.dantsu.escposprinter.barcode.Barcode;
import com.dantsu.escposprinter.exceptions.EscPosEncodingException;

/* JADX INFO: loaded from: classes.dex */
public class PrinterTextParserBarcode implements IPrinterTextParserElement {
    private byte[] align;
    private Barcode barcode;
    private int length;

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PrinterTextParserBarcode(com.dantsu.escposprinter.textparser.PrinterTextParserColumn r10, java.lang.String r11, java.util.Hashtable<java.lang.String, java.lang.String> r12, java.lang.String r13) throws com.dantsu.escposprinter.exceptions.EscPosBarcodeException, com.dantsu.escposprinter.exceptions.EscPosParserException {
        /*
            Method dump skipped, instruction units count: 392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dantsu.escposprinter.textparser.PrinterTextParserBarcode.<init>(com.dantsu.escposprinter.textparser.PrinterTextParserColumn, java.lang.String, java.util.Hashtable, java.lang.String):void");
    }

    @Override // com.dantsu.escposprinter.textparser.IPrinterTextParserElement
    public int length() throws EscPosEncodingException {
        return this.length;
    }

    @Override // com.dantsu.escposprinter.textparser.IPrinterTextParserElement
    public PrinterTextParserBarcode print(EscPosPrinterCommands escPosPrinterCommands) {
        escPosPrinterCommands.setAlign(this.align).printBarcode(this.barcode);
        return this;
    }
}
