package com.dantsu.escposprinter.textparser;

import com.dantsu.escposprinter.exceptions.EscPosBarcodeException;
import com.dantsu.escposprinter.exceptions.EscPosParserException;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes.dex */
public class PrinterTextParserColumn {
    private IPrinterTextParserElement[] elements = new IPrinterTextParserElement[0];
    private PrinterTextParserLine textParserLine;

    private static String generateSpace(int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(" ");
        }
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:198:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PrinterTextParserColumn(com.dantsu.escposprinter.textparser.PrinterTextParserLine r22, java.lang.String r23) throws com.dantsu.escposprinter.exceptions.EscPosBarcodeException, com.dantsu.escposprinter.exceptions.EscPosEncodingException, com.dantsu.escposprinter.exceptions.EscPosParserException {
        /*
            Method dump skipped, instruction units count: 1278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dantsu.escposprinter.textparser.PrinterTextParserColumn.<init>(com.dantsu.escposprinter.textparser.PrinterTextParserLine, java.lang.String):void");
    }

    private PrinterTextParserColumn prependString(String str) {
        PrinterTextParser textParser = this.textParserLine.getTextParser();
        return prependString(str, textParser.getLastTextSize(), textParser.getLastTextColor(), textParser.getLastTextReverseColor(), textParser.getLastTextBold(), textParser.getLastTextUnderline(), textParser.getLastTextDoubleStrike());
    }

    private PrinterTextParserColumn prependString(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6) {
        return prependElement(new PrinterTextParserString(this, str, bArr, bArr2, bArr3, bArr4, bArr5, bArr6));
    }

    private PrinterTextParserColumn appendString(String str) {
        PrinterTextParser textParser = this.textParserLine.getTextParser();
        return appendString(str, textParser.getLastTextSize(), textParser.getLastTextColor(), textParser.getLastTextReverseColor(), textParser.getLastTextBold(), textParser.getLastTextUnderline(), textParser.getLastTextDoubleStrike());
    }

    private PrinterTextParserColumn appendString(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6) {
        this.textParserLine.getTextParser().getPrinter();
        return appendElement(new PrinterTextParserString(this, str, bArr, bArr2, bArr3, bArr4, bArr5, bArr6));
    }

    private PrinterTextParserColumn prependImage(String str, String str2) {
        return prependElement(new PrinterTextParserImg(this, str, str2));
    }

    private PrinterTextParserColumn appendImage(String str, String str2) {
        return appendElement(new PrinterTextParserImg(this, str, str2));
    }

    private PrinterTextParserColumn prependBarcode(String str, Hashtable<String, String> hashtable, String str2) throws EscPosBarcodeException, EscPosParserException {
        return prependElement(new PrinterTextParserBarcode(this, str, hashtable, str2));
    }

    private PrinterTextParserColumn appendBarcode(String str, Hashtable<String, String> hashtable, String str2) throws EscPosBarcodeException, EscPosParserException {
        return appendElement(new PrinterTextParserBarcode(this, str, hashtable, str2));
    }

    private PrinterTextParserColumn prependQRCode(String str, Hashtable<String, String> hashtable, String str2) throws EscPosBarcodeException, EscPosParserException {
        return prependElement(new PrinterTextParserBarcode(this, str, hashtable, str2));
    }

    private PrinterTextParserColumn appendQRCode(String str, Hashtable<String, String> hashtable, String str2) throws EscPosBarcodeException, EscPosParserException {
        return appendElement(new PrinterTextParserQRCode(this, str, hashtable, str2));
    }

    private PrinterTextParserColumn prependElement(IPrinterTextParserElement iPrinterTextParserElement) {
        IPrinterTextParserElement[] iPrinterTextParserElementArr = this.elements;
        IPrinterTextParserElement[] iPrinterTextParserElementArr2 = new IPrinterTextParserElement[iPrinterTextParserElementArr.length + 1];
        iPrinterTextParserElementArr2[0] = iPrinterTextParserElement;
        System.arraycopy(iPrinterTextParserElementArr, 0, iPrinterTextParserElementArr2, 1, iPrinterTextParserElementArr.length);
        this.elements = iPrinterTextParserElementArr2;
        return this;
    }

    private PrinterTextParserColumn appendElement(IPrinterTextParserElement iPrinterTextParserElement) {
        IPrinterTextParserElement[] iPrinterTextParserElementArr = this.elements;
        IPrinterTextParserElement[] iPrinterTextParserElementArr2 = new IPrinterTextParserElement[iPrinterTextParserElementArr.length + 1];
        System.arraycopy(iPrinterTextParserElementArr, 0, iPrinterTextParserElementArr2, 0, iPrinterTextParserElementArr.length);
        iPrinterTextParserElementArr2[this.elements.length] = iPrinterTextParserElement;
        this.elements = iPrinterTextParserElementArr2;
        return this;
    }

    public PrinterTextParserLine getLine() {
        return this.textParserLine;
    }

    public IPrinterTextParserElement[] getElements() {
        return this.elements;
    }
}
