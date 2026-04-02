package com.dantsu.escposprinter;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public abstract class EscPosPrinterSize {
    public static final float INCH_TO_MM = 25.4f;
    protected int printerCharSizeWidthPx;
    protected int printerDpi;
    protected int printerNbrCharactersPerLine;
    protected float printerWidthMM;
    protected int printerWidthPx;

    protected EscPosPrinterSize(int i, float f, int i2) {
        this.printerDpi = i;
        this.printerWidthMM = f;
        this.printerNbrCharactersPerLine = i2;
        int iMmToPx = mmToPx(f);
        this.printerWidthPx = (iMmToPx % 8) + iMmToPx;
        this.printerCharSizeWidthPx = iMmToPx / this.printerNbrCharactersPerLine;
    }

    public int getPrinterNbrCharactersPerLine() {
        return this.printerNbrCharactersPerLine;
    }

    public float getPrinterWidthMM() {
        return this.printerWidthMM;
    }

    public int getPrinterDpi() {
        return this.printerDpi;
    }

    public int getPrinterWidthPx() {
        return this.printerWidthPx;
    }

    public int getPrinterCharSizeWidthPx() {
        return this.printerCharSizeWidthPx;
    }

    public int mmToPx(float f) {
        return Math.round((f * this.printerDpi) / 25.4f);
    }

    public byte[] bitmapToBytes(Bitmap bitmap, boolean z) {
        boolean z2;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i = this.printerWidthPx;
        if (width > i) {
            height = Math.round((height * i) / width);
            width = i;
            z2 = true;
        } else {
            z2 = false;
        }
        if (height > 256) {
            width = Math.round((width * 256) / height);
            z2 = true;
            height = 256;
        }
        if (z2) {
            bitmap = Bitmap.createScaledBitmap(bitmap, width, height, true);
        }
        return EscPosPrinterCommands.bitmapToBytes(bitmap, z);
    }
}
