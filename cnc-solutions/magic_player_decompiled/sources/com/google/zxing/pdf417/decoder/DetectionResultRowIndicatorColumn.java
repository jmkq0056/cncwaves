package com.google.zxing.pdf417.decoder;

import com.google.zxing.ResultPoint;

/* JADX INFO: loaded from: classes2.dex */
final class DetectionResultRowIndicatorColumn extends DetectionResultColumn {
    private final boolean isLeft;

    public DetectionResultRowIndicatorColumn(BoundingBox boundingBox, boolean z3) {
        super(boundingBox);
        this.isLeft = z3;
    }

    private void adjustIncompleteIndicatorColumnRowNumbers(BarcodeMetadata barcodeMetadata) {
        BoundingBox boundingBox = getBoundingBox();
        ResultPoint topLeft = this.isLeft ? boundingBox.getTopLeft() : boundingBox.getTopRight();
        ResultPoint bottomLeft = this.isLeft ? boundingBox.getBottomLeft() : boundingBox.getBottomRight();
        int iImageRowToCodewordIndex = imageRowToCodewordIndex((int) bottomLeft.getY());
        Codeword[] codewords = getCodewords();
        int rowNumber = -1;
        int i4 = 0;
        int iMax = 1;
        for (int iImageRowToCodewordIndex2 = imageRowToCodewordIndex((int) topLeft.getY()); iImageRowToCodewordIndex2 < iImageRowToCodewordIndex; iImageRowToCodewordIndex2++) {
            if (codewords[iImageRowToCodewordIndex2] != null) {
                Codeword codeword = codewords[iImageRowToCodewordIndex2];
                codeword.setRowNumberAsRowIndicatorColumn();
                int rowNumber2 = codeword.getRowNumber() - rowNumber;
                if (rowNumber2 == 0) {
                    i4++;
                } else {
                    if (rowNumber2 == 1) {
                        iMax = Math.max(iMax, i4);
                        rowNumber = codeword.getRowNumber();
                    } else if (codeword.getRowNumber() >= barcodeMetadata.getRowCount()) {
                        codewords[iImageRowToCodewordIndex2] = null;
                    } else {
                        rowNumber = codeword.getRowNumber();
                    }
                    i4 = 1;
                }
            }
        }
    }

    private void removeIncorrectCodewords(Codeword[] codewordArr, BarcodeMetadata barcodeMetadata) {
        for (int i4 = 0; i4 < codewordArr.length; i4++) {
            Codeword codeword = codewordArr[i4];
            if (codewordArr[i4] != null) {
                int value = codeword.getValue() % 30;
                int rowNumber = codeword.getRowNumber();
                if (rowNumber > barcodeMetadata.getRowCount()) {
                    codewordArr[i4] = null;
                } else {
                    if (!this.isLeft) {
                        rowNumber += 2;
                    }
                    int i5 = rowNumber % 3;
                    if (i5 != 0) {
                        if (i5 != 1) {
                            if (i5 == 2 && value + 1 != barcodeMetadata.getColumnCount()) {
                                codewordArr[i4] = null;
                            }
                        } else if (value / 3 != barcodeMetadata.getErrorCorrectionLevel() || value % 3 != barcodeMetadata.getRowCountLowerPart()) {
                            codewordArr[i4] = null;
                        }
                    } else if ((value * 3) + 1 != barcodeMetadata.getRowCountUpperPart()) {
                        codewordArr[i4] = null;
                    }
                }
            }
        }
    }

    private void setRowNumbers() {
        for (Codeword codeword : getCodewords()) {
            if (codeword != null) {
                codeword.setRowNumberAsRowIndicatorColumn();
            }
        }
    }

    public void adjustCompleteIndicatorColumnRowNumbers(BarcodeMetadata barcodeMetadata) {
        Codeword[] codewords = getCodewords();
        setRowNumbers();
        removeIncorrectCodewords(codewords, barcodeMetadata);
        BoundingBox boundingBox = getBoundingBox();
        ResultPoint topLeft = this.isLeft ? boundingBox.getTopLeft() : boundingBox.getTopRight();
        ResultPoint bottomLeft = this.isLeft ? boundingBox.getBottomLeft() : boundingBox.getBottomRight();
        int iImageRowToCodewordIndex = imageRowToCodewordIndex((int) topLeft.getY());
        int iImageRowToCodewordIndex2 = imageRowToCodewordIndex((int) bottomLeft.getY());
        int rowNumber = -1;
        int i4 = 0;
        int iMax = 1;
        while (iImageRowToCodewordIndex < iImageRowToCodewordIndex2) {
            if (codewords[iImageRowToCodewordIndex] != null) {
                Codeword codeword = codewords[iImageRowToCodewordIndex];
                int rowNumber2 = codeword.getRowNumber() - rowNumber;
                if (rowNumber2 == 0) {
                    i4++;
                } else {
                    if (rowNumber2 == 1) {
                        iMax = Math.max(iMax, i4);
                        rowNumber = codeword.getRowNumber();
                    } else if (rowNumber2 < 0 || codeword.getRowNumber() >= barcodeMetadata.getRowCount() || rowNumber2 > iImageRowToCodewordIndex) {
                        codewords[iImageRowToCodewordIndex] = null;
                    } else {
                        if (iMax > 2) {
                            rowNumber2 *= iMax - 2;
                        }
                        boolean z3 = rowNumber2 >= iImageRowToCodewordIndex;
                        for (int i5 = 1; i5 <= rowNumber2 && !z3; i5++) {
                            z3 = codewords[iImageRowToCodewordIndex - i5] != null;
                        }
                        if (z3) {
                            codewords[iImageRowToCodewordIndex] = null;
                        } else {
                            rowNumber = codeword.getRowNumber();
                        }
                    }
                    i4 = 1;
                }
            }
            iImageRowToCodewordIndex++;
        }
    }

    public BarcodeMetadata getBarcodeMetadata() {
        Codeword[] codewords = getCodewords();
        BarcodeValue barcodeValue = new BarcodeValue();
        BarcodeValue barcodeValue2 = new BarcodeValue();
        BarcodeValue barcodeValue3 = new BarcodeValue();
        BarcodeValue barcodeValue4 = new BarcodeValue();
        for (Codeword codeword : codewords) {
            if (codeword != null) {
                codeword.setRowNumberAsRowIndicatorColumn();
                int value = codeword.getValue() % 30;
                int rowNumber = codeword.getRowNumber();
                if (!this.isLeft) {
                    rowNumber += 2;
                }
                int i4 = rowNumber % 3;
                if (i4 == 0) {
                    barcodeValue2.setValue((value * 3) + 1);
                } else if (i4 == 1) {
                    barcodeValue4.setValue(value / 3);
                    barcodeValue3.setValue(value % 3);
                } else if (i4 == 2) {
                    barcodeValue.setValue(value + 1);
                }
            }
        }
        if (barcodeValue.getValue().length == 0 || barcodeValue2.getValue().length == 0 || barcodeValue3.getValue().length == 0 || barcodeValue4.getValue().length == 0 || barcodeValue.getValue()[0] <= 0 || barcodeValue2.getValue()[0] + barcodeValue3.getValue()[0] < 3 || barcodeValue2.getValue()[0] + barcodeValue3.getValue()[0] > 90) {
            return null;
        }
        BarcodeMetadata barcodeMetadata = new BarcodeMetadata(barcodeValue.getValue()[0], barcodeValue2.getValue()[0], barcodeValue3.getValue()[0], barcodeValue4.getValue()[0]);
        removeIncorrectCodewords(codewords, barcodeMetadata);
        return barcodeMetadata;
    }

    public int[] getRowHeights() {
        int rowNumber;
        BarcodeMetadata barcodeMetadata = getBarcodeMetadata();
        if (barcodeMetadata == null) {
            return null;
        }
        adjustIncompleteIndicatorColumnRowNumbers(barcodeMetadata);
        int rowCount = barcodeMetadata.getRowCount();
        int[] iArr = new int[rowCount];
        for (Codeword codeword : getCodewords()) {
            if (codeword != null && (rowNumber = codeword.getRowNumber()) < rowCount) {
                iArr[rowNumber] = iArr[rowNumber] + 1;
            }
        }
        return iArr;
    }

    public boolean isLeft() {
        return this.isLeft;
    }

    @Override // com.google.zxing.pdf417.decoder.DetectionResultColumn
    public String toString() {
        return "IsLeft: " + this.isLeft + '\n' + super.toString();
    }
}
