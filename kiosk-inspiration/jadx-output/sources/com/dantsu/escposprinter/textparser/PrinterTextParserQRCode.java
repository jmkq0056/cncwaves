package com.dantsu.escposprinter.textparser;

import com.dantsu.escposprinter.EscPosPrinter;
import com.dantsu.escposprinter.EscPosPrinterCommands;
import com.dantsu.escposprinter.exceptions.EscPosBarcodeException;
import com.dantsu.escposprinter.exceptions.EscPosParserException;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes.dex */
public class PrinterTextParserQRCode extends PrinterTextParserImg {
    private static byte[] initConstructor(PrinterTextParserColumn printerTextParserColumn, Hashtable<String, String> hashtable, String str) throws EscPosBarcodeException, EscPosParserException {
        EscPosPrinter printer = printerTextParserColumn.getLine().getTextParser().getPrinter();
        String strTrim = str.trim();
        int iMmToPx = printer.mmToPx(20.0f);
        if (hashtable.containsKey("size")) {
            String str2 = hashtable.get("size");
            if (str2 == null) {
                throw new EscPosParserException("Invalid QR code attribute : size");
            }
            try {
                iMmToPx = printer.mmToPx(Float.parseFloat(str2));
            } catch (NumberFormatException unused) {
                throw new EscPosParserException("Invalid QR code size value");
            }
        }
        return EscPosPrinterCommands.QRCodeDataToBytes(strTrim, iMmToPx);
    }

    public PrinterTextParserQRCode(PrinterTextParserColumn printerTextParserColumn, String str, Hashtable<String, String> hashtable, String str2) throws EscPosBarcodeException, EscPosParserException {
        super(printerTextParserColumn, str, initConstructor(printerTextParserColumn, hashtable, str2));
    }
}
