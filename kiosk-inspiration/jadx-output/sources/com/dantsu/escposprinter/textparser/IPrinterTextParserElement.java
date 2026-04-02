package com.dantsu.escposprinter.textparser;

import com.dantsu.escposprinter.EscPosPrinterCommands;
import com.dantsu.escposprinter.exceptions.EscPosConnectionException;
import com.dantsu.escposprinter.exceptions.EscPosEncodingException;

/* JADX INFO: loaded from: classes.dex */
public interface IPrinterTextParserElement {
    int length() throws EscPosEncodingException;

    IPrinterTextParserElement print(EscPosPrinterCommands escPosPrinterCommands) throws EscPosEncodingException, EscPosConnectionException;
}
