package com.google.zxing.pdf417.decoder;

/* JADX INFO: loaded from: classes2.dex */
final class BarcodeMetadata {
    private final int columnCount;
    private final int errorCorrectionLevel;
    private final int rowCount;
    private final int rowCountLowerPart;
    private final int rowCountUpperPart;

    public BarcodeMetadata(int i4, int i5, int i6, int i7) {
        this.columnCount = i4;
        this.errorCorrectionLevel = i7;
        this.rowCountUpperPart = i5;
        this.rowCountLowerPart = i6;
        this.rowCount = i5 + i6;
    }

    public int getColumnCount() {
        return this.columnCount;
    }

    public int getErrorCorrectionLevel() {
        return this.errorCorrectionLevel;
    }

    public int getRowCount() {
        return this.rowCount;
    }

    public int getRowCountLowerPart() {
        return this.rowCountLowerPart;
    }

    public int getRowCountUpperPart() {
        return this.rowCountUpperPart;
    }
}
