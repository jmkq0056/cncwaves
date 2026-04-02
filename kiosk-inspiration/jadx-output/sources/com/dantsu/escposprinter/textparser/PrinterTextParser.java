package com.dantsu.escposprinter.textparser;

import com.dantsu.escposprinter.EscPosPrinter;
import com.dantsu.escposprinter.EscPosPrinterCommands;
import com.dantsu.escposprinter.exceptions.EscPosBarcodeException;
import com.dantsu.escposprinter.exceptions.EscPosEncodingException;
import com.dantsu.escposprinter.exceptions.EscPosParserException;
import com.google.firebase.sessions.settings.RemoteSettings;

/* JADX INFO: loaded from: classes.dex */
public class PrinterTextParser {
    public static final String ATTR_BARCODE_HEIGHT = "height";
    public static final String ATTR_BARCODE_TEXT_POSITION = "text";
    public static final String ATTR_BARCODE_TEXT_POSITION_ABOVE = "above";
    public static final String ATTR_BARCODE_TEXT_POSITION_BELOW = "below";
    public static final String ATTR_BARCODE_TEXT_POSITION_NONE = "none";
    public static final String ATTR_BARCODE_TYPE = "type";
    public static final String ATTR_BARCODE_TYPE_128 = "128";
    public static final String ATTR_BARCODE_TYPE_39 = "39";
    public static final String ATTR_BARCODE_TYPE_EAN13 = "ean13";
    public static final String ATTR_BARCODE_TYPE_EAN8 = "ean8";
    public static final String ATTR_BARCODE_TYPE_UPCA = "upca";
    public static final String ATTR_BARCODE_TYPE_UPCE = "upce";
    public static final String ATTR_BARCODE_WIDTH = "width";
    public static final String ATTR_FORMAT_TEXT_FONT_COLOR = "color";
    public static final String ATTR_FORMAT_TEXT_FONT_COLOR_BG_BLACK = "bg-black";
    public static final String ATTR_FORMAT_TEXT_FONT_COLOR_BG_RED = "bg-red";
    public static final String ATTR_FORMAT_TEXT_FONT_COLOR_BLACK = "black";
    public static final String ATTR_FORMAT_TEXT_FONT_COLOR_RED = "red";
    public static final String ATTR_FORMAT_TEXT_FONT_SIZE = "size";
    public static final String ATTR_FORMAT_TEXT_FONT_SIZE_BIG = "big";
    public static final String ATTR_FORMAT_TEXT_FONT_SIZE_BIG_2 = "big-2";
    public static final String ATTR_FORMAT_TEXT_FONT_SIZE_BIG_3 = "big-3";
    public static final String ATTR_FORMAT_TEXT_FONT_SIZE_BIG_4 = "big-4";
    public static final String ATTR_FORMAT_TEXT_FONT_SIZE_BIG_5 = "big-5";
    public static final String ATTR_FORMAT_TEXT_FONT_SIZE_BIG_6 = "big-6";
    public static final String ATTR_FORMAT_TEXT_FONT_SIZE_NORMAL = "normal";
    public static final String ATTR_FORMAT_TEXT_FONT_SIZE_TALL = "tall";
    public static final String ATTR_FORMAT_TEXT_FONT_SIZE_WIDE = "wide";
    public static final String ATTR_FORMAT_TEXT_UNDERLINE_TYPE = "type";
    public static final String ATTR_FORMAT_TEXT_UNDERLINE_TYPE_DOUBLE = "double";
    public static final String ATTR_FORMAT_TEXT_UNDERLINE_TYPE_NORMAL = "normal";
    public static final String ATTR_QRCODE_SIZE = "size";
    public static final String TAGS_BARCODE = "barcode";
    public static final String TAGS_IMAGE = "img";
    public static final String TAGS_QRCODE = "qrcode";
    private static String regexAlignTags;
    private EscPosPrinter printer;
    public static final String TAGS_ALIGN_LEFT = "L";
    public static final String TAGS_ALIGN_CENTER = "C";
    public static final String TAGS_ALIGN_RIGHT = "R";
    public static final String[] TAGS_ALIGN = {TAGS_ALIGN_LEFT, TAGS_ALIGN_CENTER, TAGS_ALIGN_RIGHT};
    public static final String TAGS_FORMAT_TEXT_FONT = "font";
    public static final String TAGS_FORMAT_TEXT_BOLD = "b";
    public static final String TAGS_FORMAT_TEXT_UNDERLINE = "u";
    public static final String[] TAGS_FORMAT_TEXT = {TAGS_FORMAT_TEXT_FONT, TAGS_FORMAT_TEXT_BOLD, TAGS_FORMAT_TEXT_UNDERLINE};
    private byte[][] textSize = {EscPosPrinterCommands.TEXT_SIZE_NORMAL};
    private byte[][] textColor = {EscPosPrinterCommands.TEXT_COLOR_BLACK};
    private byte[][] textReverseColor = {EscPosPrinterCommands.TEXT_COLOR_REVERSE_OFF};
    private byte[][] textBold = {EscPosPrinterCommands.TEXT_WEIGHT_NORMAL};
    private byte[][] textUnderline = {EscPosPrinterCommands.TEXT_UNDERLINE_OFF};
    private byte[][] textDoubleStrike = {EscPosPrinterCommands.TEXT_DOUBLE_STRIKE_OFF};
    private String text = "";

    public static String getRegexAlignTags() {
        if (regexAlignTags == null) {
            StringBuilder sb = new StringBuilder();
            int i = 0;
            while (true) {
                String[] strArr = TAGS_ALIGN;
                if (i >= strArr.length) {
                    break;
                }
                sb.append("|\\[").append(strArr[i]).append("\\]");
                i++;
            }
            regexAlignTags = sb.toString().substring(1);
        }
        return regexAlignTags;
    }

    public static boolean isTagTextFormat(String str) {
        if (str.substring(0, 1).equals(RemoteSettings.FORWARD_SLASH_STRING)) {
            str = str.substring(1);
        }
        for (String str2 : TAGS_FORMAT_TEXT) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static byte[][] arrayByteDropLast(byte[][] bArr) {
        if (bArr.length == 0) {
            return bArr;
        }
        int length = bArr.length - 1;
        byte[][] bArr2 = new byte[length][];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    public static byte[][] arrayBytePush(byte[][] bArr, byte[] bArr2) {
        byte[][] bArr3 = new byte[bArr.length + 1][];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        bArr3[bArr.length] = bArr2;
        return bArr3;
    }

    public PrinterTextParser(EscPosPrinter escPosPrinter) {
        this.printer = escPosPrinter;
    }

    public EscPosPrinter getPrinter() {
        return this.printer;
    }

    public PrinterTextParser setFormattedText(String str) {
        this.text = str;
        return this;
    }

    public byte[] getLastTextSize() {
        return this.textSize[r0.length - 1];
    }

    public PrinterTextParser addTextSize(byte[] bArr) {
        this.textSize = arrayBytePush(this.textSize, bArr);
        return this;
    }

    public PrinterTextParser dropLastTextSize() {
        byte[][] bArr = this.textSize;
        if (bArr.length > 1) {
            this.textSize = arrayByteDropLast(bArr);
        }
        return this;
    }

    public byte[] getLastTextColor() {
        return this.textColor[r0.length - 1];
    }

    public PrinterTextParser addTextColor(byte[] bArr) {
        this.textColor = arrayBytePush(this.textColor, bArr);
        return this;
    }

    public PrinterTextParser dropLastTextColor() {
        byte[][] bArr = this.textColor;
        if (bArr.length > 1) {
            this.textColor = arrayByteDropLast(bArr);
        }
        return this;
    }

    public byte[] getLastTextReverseColor() {
        return this.textReverseColor[r0.length - 1];
    }

    public PrinterTextParser addTextReverseColor(byte[] bArr) {
        this.textReverseColor = arrayBytePush(this.textReverseColor, bArr);
        return this;
    }

    public PrinterTextParser dropLastTextReverseColor() {
        byte[][] bArr = this.textReverseColor;
        if (bArr.length > 1) {
            this.textReverseColor = arrayByteDropLast(bArr);
        }
        return this;
    }

    public byte[] getLastTextBold() {
        return this.textBold[r0.length - 1];
    }

    public PrinterTextParser addTextBold(byte[] bArr) {
        this.textBold = arrayBytePush(this.textBold, bArr);
        return this;
    }

    public PrinterTextParser dropTextBold() {
        byte[][] bArr = this.textBold;
        if (bArr.length > 1) {
            this.textBold = arrayByteDropLast(bArr);
        }
        return this;
    }

    public byte[] getLastTextUnderline() {
        return this.textUnderline[r0.length - 1];
    }

    public PrinterTextParser addTextUnderline(byte[] bArr) {
        this.textUnderline = arrayBytePush(this.textUnderline, bArr);
        return this;
    }

    public PrinterTextParser dropLastTextUnderline() {
        byte[][] bArr = this.textUnderline;
        if (bArr.length > 1) {
            this.textUnderline = arrayByteDropLast(bArr);
        }
        return this;
    }

    public byte[] getLastTextDoubleStrike() {
        return this.textDoubleStrike[r0.length - 1];
    }

    public PrinterTextParser addTextDoubleStrike(byte[] bArr) {
        this.textDoubleStrike = arrayBytePush(this.textDoubleStrike, bArr);
        return this;
    }

    public PrinterTextParser dropLastTextDoubleStrike() {
        byte[][] bArr = this.textDoubleStrike;
        if (bArr.length > 1) {
            this.textDoubleStrike = arrayByteDropLast(bArr);
        }
        return this;
    }

    public PrinterTextParserLine[] parse() throws EscPosBarcodeException, EscPosEncodingException, EscPosParserException {
        String[] strArrSplit = this.text.split("\n|\r\n");
        PrinterTextParserLine[] printerTextParserLineArr = new PrinterTextParserLine[strArrSplit.length];
        int length = strArrSplit.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            printerTextParserLineArr[i2] = new PrinterTextParserLine(this, strArrSplit[i]);
            i++;
            i2++;
        }
        return printerTextParserLineArr;
    }
}
