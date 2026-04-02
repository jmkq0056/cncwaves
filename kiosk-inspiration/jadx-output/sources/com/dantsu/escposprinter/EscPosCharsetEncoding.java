package com.dantsu.escposprinter;

import com.google.common.base.Ascii;

/* JADX INFO: loaded from: classes.dex */
public class EscPosCharsetEncoding {
    private byte[] charsetCommand;
    private String charsetName;

    public EscPosCharsetEncoding(String str, int i) {
        this.charsetName = str;
        this.charsetCommand = new byte[]{Ascii.ESC, 116, (byte) i};
    }

    public byte[] getCommand() {
        return this.charsetCommand;
    }

    public String getName() {
        return this.charsetName;
    }
}
