package com.google.zxing.common.reedsolomon;

import org.eclipse.jetty.http.HttpStatus;

/* JADX INFO: loaded from: classes2.dex */
public final class GenericGF {
    public static final GenericGF AZTEC_DATA_6;
    public static final GenericGF AZTEC_DATA_8;
    public static final GenericGF AZTEC_PARAM;
    public static final GenericGF DATA_MATRIX_FIELD_256;
    public static final GenericGF MAXICODE_FIELD_64;
    public static final GenericGF QR_CODE_FIELD_256;
    private final int[] expTable;
    private final int generatorBase;
    private final int[] logTable;
    private final GenericGFPoly one;
    private final int primitive;
    private final int size;
    private final GenericGFPoly zero;
    public static final GenericGF AZTEC_DATA_12 = new GenericGF(4201, 4096, 1);
    public static final GenericGF AZTEC_DATA_10 = new GenericGF(1033, 1024, 1);

    static {
        GenericGF genericGF = new GenericGF(67, 64, 1);
        AZTEC_DATA_6 = genericGF;
        AZTEC_PARAM = new GenericGF(19, 16, 1);
        QR_CODE_FIELD_256 = new GenericGF(285, 256, 0);
        GenericGF genericGF2 = new GenericGF(HttpStatus.MOVED_PERMANENTLY_301, 256, 1);
        DATA_MATRIX_FIELD_256 = genericGF2;
        AZTEC_DATA_8 = genericGF2;
        MAXICODE_FIELD_64 = genericGF;
    }

    public GenericGF(int i4, int i5, int i6) {
        this.primitive = i4;
        this.size = i5;
        this.generatorBase = i6;
        this.expTable = new int[i5];
        this.logTable = new int[i5];
        int i7 = 1;
        for (int i8 = 0; i8 < i5; i8++) {
            this.expTable[i8] = i7;
            i7 <<= 1;
            if (i7 >= i5) {
                i7 = (i7 ^ i4) & (i5 - 1);
            }
        }
        for (int i9 = 0; i9 < i5 - 1; i9++) {
            this.logTable[this.expTable[i9]] = i9;
        }
        this.zero = new GenericGFPoly(this, new int[]{0});
        this.one = new GenericGFPoly(this, new int[]{1});
    }

    public static int addOrSubtract(int i4, int i5) {
        return i4 ^ i5;
    }

    public GenericGFPoly buildMonomial(int i4, int i5) {
        if (i4 < 0) {
            throw new IllegalArgumentException();
        }
        if (i5 == 0) {
            return this.zero;
        }
        int[] iArr = new int[i4 + 1];
        iArr[0] = i5;
        return new GenericGFPoly(this, iArr);
    }

    public int exp(int i4) {
        return this.expTable[i4];
    }

    public int getGeneratorBase() {
        return this.generatorBase;
    }

    public GenericGFPoly getOne() {
        return this.one;
    }

    public int getSize() {
        return this.size;
    }

    public GenericGFPoly getZero() {
        return this.zero;
    }

    public int inverse(int i4) {
        if (i4 != 0) {
            return this.expTable[(this.size - this.logTable[i4]) - 1];
        }
        throw new ArithmeticException();
    }

    public int log(int i4) {
        if (i4 != 0) {
            return this.logTable[i4];
        }
        throw new IllegalArgumentException();
    }

    public int multiply(int i4, int i5) {
        if (i4 == 0 || i5 == 0) {
            return 0;
        }
        int[] iArr = this.expTable;
        int[] iArr2 = this.logTable;
        return iArr[(iArr2[i4] + iArr2[i5]) % (this.size - 1)];
    }

    public String toString() {
        return "GF(0x" + Integer.toHexString(this.primitive) + ',' + this.size + ')';
    }
}
