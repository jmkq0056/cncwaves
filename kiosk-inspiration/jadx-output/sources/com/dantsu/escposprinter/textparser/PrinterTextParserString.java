package com.dantsu.escposprinter.textparser;

import com.dantsu.escposprinter.EscPosCharsetEncoding;
import com.dantsu.escposprinter.EscPosPrinter;
import com.dantsu.escposprinter.EscPosPrinterCommands;
import com.dantsu.escposprinter.exceptions.EscPosEncodingException;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class PrinterTextParserString implements IPrinterTextParserElement {
    private EscPosPrinter printer;
    private String text;
    private byte[] textBold;
    private byte[] textColor;
    private byte[] textDoubleStrike;
    private byte[] textReverseColor;
    private byte[] textSize;
    private byte[] textUnderline;

    public PrinterTextParserString(PrinterTextParserColumn printerTextParserColumn, String str, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6) {
        this.printer = printerTextParserColumn.getLine().getTextParser().getPrinter();
        this.text = str;
        this.textSize = bArr;
        this.textColor = bArr2;
        this.textReverseColor = bArr3;
        this.textBold = bArr4;
        this.textUnderline = bArr5;
        this.textDoubleStrike = bArr6;
    }

    @Override // com.dantsu.escposprinter.textparser.IPrinterTextParserElement
    public int length() throws EscPosEncodingException {
        int i;
        EscPosCharsetEncoding encoding = this.printer.getEncoding();
        if (Arrays.equals(this.textSize, EscPosPrinterCommands.TEXT_SIZE_DOUBLE_WIDTH) || Arrays.equals(this.textSize, EscPosPrinterCommands.TEXT_SIZE_BIG)) {
            i = 2;
        } else if (Arrays.equals(this.textSize, EscPosPrinterCommands.TEXT_SIZE_BIG_2)) {
            i = 3;
        } else if (Arrays.equals(this.textSize, EscPosPrinterCommands.TEXT_SIZE_BIG_3)) {
            i = 4;
        } else if (Arrays.equals(this.textSize, EscPosPrinterCommands.TEXT_SIZE_BIG_4)) {
            i = 5;
        } else if (Arrays.equals(this.textSize, EscPosPrinterCommands.TEXT_SIZE_BIG_5)) {
            i = 6;
        } else {
            i = Arrays.equals(this.textSize, EscPosPrinterCommands.TEXT_SIZE_BIG_6) ? 7 : 1;
        }
        if (encoding != null) {
            try {
                return this.text.getBytes(encoding.getName()).length * i;
            } catch (UnsupportedEncodingException e) {
                throw new EscPosEncodingException(e.getMessage());
            }
        }
        return this.text.length() * i;
    }

    @Override // com.dantsu.escposprinter.textparser.IPrinterTextParserElement
    public PrinterTextParserString print(EscPosPrinterCommands escPosPrinterCommands) throws EscPosEncodingException {
        escPosPrinterCommands.printText(this.text, this.textSize, this.textColor, this.textReverseColor, this.textBold, this.textUnderline, this.textDoubleStrike);
        return this;
    }
}
