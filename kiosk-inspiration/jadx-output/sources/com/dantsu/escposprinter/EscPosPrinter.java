package com.dantsu.escposprinter;

import com.dantsu.escposprinter.connection.DeviceConnection;
import com.dantsu.escposprinter.exceptions.EscPosBarcodeException;
import com.dantsu.escposprinter.exceptions.EscPosConnectionException;
import com.dantsu.escposprinter.exceptions.EscPosEncodingException;
import com.dantsu.escposprinter.exceptions.EscPosParserException;
import com.dantsu.escposprinter.textparser.IPrinterTextParserElement;
import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.dantsu.escposprinter.textparser.PrinterTextParserColumn;
import com.dantsu.escposprinter.textparser.PrinterTextParserLine;
import com.dantsu.escposprinter.textparser.PrinterTextParserString;

/* JADX INFO: loaded from: classes.dex */
public class EscPosPrinter extends EscPosPrinterSize {
    private EscPosPrinterCommands printer;

    public EscPosPrinter(DeviceConnection deviceConnection, int i, float f, int i2) throws EscPosConnectionException {
        this(deviceConnection != null ? new EscPosPrinterCommands(deviceConnection) : null, i, f, i2);
    }

    public EscPosPrinter(DeviceConnection deviceConnection, int i, float f, int i2, EscPosCharsetEncoding escPosCharsetEncoding) throws EscPosConnectionException {
        this(deviceConnection != null ? new EscPosPrinterCommands(deviceConnection, escPosCharsetEncoding) : null, i, f, i2);
    }

    public EscPosPrinter(EscPosPrinterCommands escPosPrinterCommands, int i, float f, int i2) throws EscPosConnectionException {
        super(i, f, i2);
        this.printer = null;
        if (escPosPrinterCommands != null) {
            this.printer = escPosPrinterCommands.connect();
        }
    }

    public EscPosPrinter disconnectPrinter() {
        EscPosPrinterCommands escPosPrinterCommands = this.printer;
        if (escPosPrinterCommands != null) {
            escPosPrinterCommands.disconnect();
            this.printer = null;
        }
        return this;
    }

    public EscPosPrinter useEscAsteriskCommand(boolean z) {
        this.printer.useEscAsteriskCommand(z);
        return this;
    }

    public EscPosPrinter printFormattedText(String str) throws EscPosBarcodeException, EscPosEncodingException, EscPosParserException, EscPosConnectionException {
        return printFormattedText(str, 20.0f);
    }

    public EscPosPrinter printFormattedText(String str, float f) throws EscPosBarcodeException, EscPosEncodingException, EscPosParserException, EscPosConnectionException {
        return printFormattedText(str, mmToPx(f));
    }

    public EscPosPrinter printFormattedText(String str, int i) throws EscPosBarcodeException, EscPosEncodingException, EscPosParserException, EscPosConnectionException {
        if (this.printer != null && this.printerNbrCharactersPerLine != 0) {
            PrinterTextParserLine[] printerTextParserLineArr = new PrinterTextParser(this).setFormattedText(str).parse();
            this.printer.reset();
            for (PrinterTextParserLine printerTextParserLine : printerTextParserLineArr) {
                iPrinterTextParserElement = null;
                for (PrinterTextParserColumn printerTextParserColumn : printerTextParserLine.getColumns()) {
                    for (IPrinterTextParserElement iPrinterTextParserElement : printerTextParserColumn.getElements()) {
                        iPrinterTextParserElement.print(this.printer);
                    }
                }
                if (iPrinterTextParserElement instanceof PrinterTextParserString) {
                    this.printer.newLine();
                }
            }
            this.printer.feedPaper(i);
        }
        return this;
    }

    public EscPosPrinter printFormattedTextAndCut(String str) throws EscPosBarcodeException, EscPosEncodingException, EscPosParserException, EscPosConnectionException {
        return printFormattedTextAndCut(str, 20.0f);
    }

    public EscPosPrinter printFormattedTextAndCut(String str, float f) throws EscPosBarcodeException, EscPosEncodingException, EscPosParserException, EscPosConnectionException {
        return printFormattedTextAndCut(str, mmToPx(f));
    }

    public EscPosPrinter printFormattedTextAndCut(String str, int i) throws EscPosBarcodeException, EscPosEncodingException, EscPosParserException, EscPosConnectionException {
        if (this.printer != null && this.printerNbrCharactersPerLine != 0) {
            printFormattedText(str, i);
            this.printer.cutPaper();
        }
        return this;
    }

    public EscPosPrinter printFormattedTextAndOpenCashBox(String str, float f) throws EscPosBarcodeException, EscPosEncodingException, EscPosParserException, EscPosConnectionException {
        return printFormattedTextAndOpenCashBox(str, mmToPx(f));
    }

    public EscPosPrinter printFormattedTextAndOpenCashBox(String str, int i) throws EscPosBarcodeException, EscPosEncodingException, EscPosParserException, EscPosConnectionException {
        if (this.printer != null && this.printerNbrCharactersPerLine != 0) {
            printFormattedTextAndCut(str, i);
            this.printer.openCashBox();
        }
        return this;
    }

    public EscPosCharsetEncoding getEncoding() {
        return this.printer.getCharsetEncoding();
    }

    public EscPosPrinter printAllCharsetsEncodingCharacters() {
        this.printer.printAllCharsetsEncodingCharacters();
        return this;
    }

    public EscPosPrinter printCharsetsEncodingCharacters(int[] iArr) {
        this.printer.printCharsetsEncodingCharacters(iArr);
        return this;
    }

    public EscPosPrinter printCharsetEncodingCharacters(int i) {
        this.printer.printCharsetEncodingCharacters(i);
        return this;
    }
}
