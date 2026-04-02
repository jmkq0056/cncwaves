package com.dantsu.escposprinter.textparser;

import com.dantsu.escposprinter.exceptions.EscPosBarcodeException;
import com.dantsu.escposprinter.exceptions.EscPosEncodingException;
import com.dantsu.escposprinter.exceptions.EscPosParserException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class PrinterTextParserLine {
    private PrinterTextParserColumn[] columns;
    private int nbrCharColumn;
    private int nbrCharColumnExceeded;
    private int nbrCharForgetted;
    private int nbrColumns;
    private PrinterTextParser textParser;

    public PrinterTextParserLine(PrinterTextParser printerTextParser, String str) throws EscPosBarcodeException, EscPosEncodingException, EscPosParserException {
        this.textParser = printerTextParser;
        int printerNbrCharactersPerLine = getTextParser().getPrinter().getPrinterNbrCharactersPerLine();
        Matcher matcher = Pattern.compile(PrinterTextParser.getRegexAlignTags()).matcher(str);
        ArrayList arrayList = new ArrayList();
        int i = 0;
        int i2 = 0;
        while (matcher.find()) {
            int iStart = matcher.start();
            if (iStart > 0) {
                arrayList.add(str.substring(i2, iStart));
            }
            i2 = iStart;
        }
        arrayList.add(str.substring(i2));
        this.nbrColumns = arrayList.size();
        int iFloor = (int) Math.floor(printerNbrCharactersPerLine / r7);
        this.nbrCharColumn = iFloor;
        int i3 = this.nbrColumns;
        this.nbrCharForgetted = printerNbrCharactersPerLine - (iFloor * i3);
        this.nbrCharColumnExceeded = 0;
        this.columns = new PrinterTextParserColumn[i3];
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.columns[i] = new PrinterTextParserColumn(this, (String) it.next());
            i++;
        }
    }

    public PrinterTextParser getTextParser() {
        return this.textParser;
    }

    public PrinterTextParserColumn[] getColumns() {
        return this.columns;
    }

    public int getNbrColumns() {
        return this.nbrColumns;
    }

    public PrinterTextParserLine setNbrCharColumn(int i) {
        this.nbrCharColumn = i;
        return this;
    }

    public int getNbrCharColumn() {
        return this.nbrCharColumn;
    }

    public PrinterTextParserLine setNbrCharForgetted(int i) {
        this.nbrCharForgetted = i;
        return this;
    }

    public int getNbrCharForgetted() {
        return this.nbrCharForgetted;
    }

    public PrinterTextParserLine setNbrCharColumnExceeded(int i) {
        this.nbrCharColumnExceeded = i;
        return this;
    }

    public int getNbrCharColumnExceeded() {
        return this.nbrCharColumnExceeded;
    }
}
