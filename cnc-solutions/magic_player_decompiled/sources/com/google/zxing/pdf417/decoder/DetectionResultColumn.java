package com.google.zxing.pdf417.decoder;

import java.util.Formatter;

/* JADX INFO: loaded from: classes2.dex */
class DetectionResultColumn {
    private static final int MAX_NEARBY_DISTANCE = 5;
    private final BoundingBox boundingBox;
    private final Codeword[] codewords;

    public DetectionResultColumn(BoundingBox boundingBox) {
        this.boundingBox = new BoundingBox(boundingBox);
        this.codewords = new Codeword[(boundingBox.getMaxY() - boundingBox.getMinY()) + 1];
    }

    public final BoundingBox getBoundingBox() {
        return this.boundingBox;
    }

    public final Codeword getCodeword(int i4) {
        return this.codewords[imageRowToCodewordIndex(i4)];
    }

    public final Codeword getCodewordNearby(int i4) {
        Codeword codeword;
        Codeword codeword2;
        Codeword codeword3 = getCodeword(i4);
        if (codeword3 != null) {
            return codeword3;
        }
        for (int i5 = 1; i5 < 5; i5++) {
            int iImageRowToCodewordIndex = imageRowToCodewordIndex(i4) - i5;
            if (iImageRowToCodewordIndex >= 0 && (codeword2 = this.codewords[iImageRowToCodewordIndex]) != null) {
                return codeword2;
            }
            int iImageRowToCodewordIndex2 = imageRowToCodewordIndex(i4) + i5;
            Codeword[] codewordArr = this.codewords;
            if (iImageRowToCodewordIndex2 < codewordArr.length && (codeword = codewordArr[iImageRowToCodewordIndex2]) != null) {
                return codeword;
            }
        }
        return null;
    }

    public final Codeword[] getCodewords() {
        return this.codewords;
    }

    public final int imageRowToCodewordIndex(int i4) {
        return i4 - this.boundingBox.getMinY();
    }

    public final void setCodeword(int i4, Codeword codeword) {
        this.codewords[imageRowToCodewordIndex(i4)] = codeword;
    }

    public String toString() {
        Formatter formatter = new Formatter();
        try {
            int i4 = 0;
            for (Codeword codeword : this.codewords) {
                if (codeword == null) {
                    formatter.format("%3d:    |   %n", Integer.valueOf(i4));
                    i4++;
                } else {
                    formatter.format("%3d: %3d|%3d%n", Integer.valueOf(i4), Integer.valueOf(codeword.getRowNumber()), Integer.valueOf(codeword.getValue()));
                    i4++;
                }
            }
            String string = formatter.toString();
            formatter.close();
            return string;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    formatter.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
