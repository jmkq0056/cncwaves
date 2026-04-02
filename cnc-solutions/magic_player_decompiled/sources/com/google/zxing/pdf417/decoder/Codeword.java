package com.google.zxing.pdf417.decoder;

/* JADX INFO: loaded from: classes2.dex */
final class Codeword {
    private static final int BARCODE_ROW_UNKNOWN = -1;
    private final int bucket;
    private final int endX;
    private int rowNumber = -1;
    private final int startX;
    private final int value;

    public Codeword(int i4, int i5, int i6, int i7) {
        this.startX = i4;
        this.endX = i5;
        this.bucket = i6;
        this.value = i7;
    }

    public int getBucket() {
        return this.bucket;
    }

    public int getEndX() {
        return this.endX;
    }

    public int getRowNumber() {
        return this.rowNumber;
    }

    public int getStartX() {
        return this.startX;
    }

    public int getValue() {
        return this.value;
    }

    public int getWidth() {
        return this.endX - this.startX;
    }

    public boolean hasValidRowNumber() {
        return isValidRowNumber(this.rowNumber);
    }

    public boolean isValidRowNumber(int i4) {
        return i4 != -1 && this.bucket == (i4 % 3) * 3;
    }

    public void setRowNumber(int i4) {
        this.rowNumber = i4;
    }

    public void setRowNumberAsRowIndicatorColumn() {
        this.rowNumber = (this.bucket / 3) + ((this.value / 30) * 3);
    }

    public String toString() {
        return this.rowNumber + "|" + this.value;
    }
}
