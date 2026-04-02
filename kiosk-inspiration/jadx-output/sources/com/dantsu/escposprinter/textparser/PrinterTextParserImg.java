package com.dantsu.escposprinter.textparser;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.dantsu.escposprinter.EscPosPrinter;
import com.dantsu.escposprinter.EscPosPrinterCommands;
import com.dantsu.escposprinter.EscPosPrinterSize;
import com.dantsu.escposprinter.exceptions.EscPosConnectionException;
import com.dantsu.escposprinter.exceptions.EscPosEncodingException;
import com.sun.jna.platform.win32.COM.tlb.imp.TlbConst;

/* JADX INFO: loaded from: classes.dex */
public class PrinterTextParserImg implements IPrinterTextParserElement {
    private byte[] image;
    private int length;

    public static String bitmapToHexadecimalString(EscPosPrinterSize escPosPrinterSize, Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return bitmapToHexadecimalString(escPosPrinterSize, (BitmapDrawable) drawable);
        }
        return "";
    }

    public static String bitmapToHexadecimalString(EscPosPrinterSize escPosPrinterSize, Drawable drawable, boolean z) {
        if (drawable instanceof BitmapDrawable) {
            return bitmapToHexadecimalString(escPosPrinterSize, (BitmapDrawable) drawable, z);
        }
        return "";
    }

    public static String bitmapToHexadecimalString(EscPosPrinterSize escPosPrinterSize, BitmapDrawable bitmapDrawable) {
        return bitmapToHexadecimalString(escPosPrinterSize, bitmapDrawable.getBitmap());
    }

    public static String bitmapToHexadecimalString(EscPosPrinterSize escPosPrinterSize, BitmapDrawable bitmapDrawable, boolean z) {
        return bitmapToHexadecimalString(escPosPrinterSize, bitmapDrawable.getBitmap(), z);
    }

    public static String bitmapToHexadecimalString(EscPosPrinterSize escPosPrinterSize, Bitmap bitmap) {
        return bitmapToHexadecimalString(escPosPrinterSize, bitmap, true);
    }

    public static String bitmapToHexadecimalString(EscPosPrinterSize escPosPrinterSize, Bitmap bitmap, boolean z) {
        return bytesToHexadecimalString(escPosPrinterSize.bitmapToBytes(bitmap, z));
    }

    public static String bytesToHexadecimalString(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                sb.append(TlbConst.TYPELIB_MINOR_VERSION_SHELL);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static byte[] hexadecimalStringToBytes(String str) throws NumberFormatException {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) Integer.parseInt(str.substring(i2, i2 + 2), 16);
        }
        return bArr;
    }

    public PrinterTextParserImg(PrinterTextParserColumn printerTextParserColumn, String str, String str2) {
        this(printerTextParserColumn, str, hexadecimalStringToBytes(str2));
    }

    public PrinterTextParserImg(PrinterTextParserColumn printerTextParserColumn, String str, byte[] bArr) {
        EscPosPrinter printer = printerTextParserColumn.getLine().getTextParser().getPrinter();
        int i = (bArr[4] & 255) + ((bArr[5] & 255) * 256);
        int i2 = (bArr[6] & 255) + ((bArr[7] & 255) * 256);
        int iFloor = (int) Math.floor((printer.getPrinterWidthPx() - (i * 8)) / 8.0f);
        str.hashCode();
        if (str.equals(PrinterTextParser.TAGS_ALIGN_CENTER)) {
            iFloor = Math.round(iFloor / 2.0f);
        } else if (!str.equals(PrinterTextParser.TAGS_ALIGN_RIGHT)) {
            iFloor = 0;
        }
        if (iFloor > 0) {
            int i3 = i + iFloor;
            byte[] bArrInitGSv0Command = EscPosPrinterCommands.initGSv0Command(i3, i2);
            for (int i4 = 0; i4 < i2; i4++) {
                System.arraycopy(bArr, (i * i4) + 8, bArrInitGSv0Command, (i3 * i4) + iFloor + 8, i);
            }
            bArr = bArrInitGSv0Command;
        }
        this.length = (int) Math.ceil((i * 8.0f) / printer.getPrinterCharSizeWidthPx());
        this.image = bArr;
    }

    @Override // com.dantsu.escposprinter.textparser.IPrinterTextParserElement
    public int length() throws EscPosEncodingException {
        return this.length;
    }

    @Override // com.dantsu.escposprinter.textparser.IPrinterTextParserElement
    public PrinterTextParserImg print(EscPosPrinterCommands escPosPrinterCommands) throws EscPosConnectionException {
        escPosPrinterCommands.printImage(this.image);
        return this;
    }
}
