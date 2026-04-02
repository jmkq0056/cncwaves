package com.google.zxing.common.reedsolomon;

/* JADX INFO: loaded from: classes2.dex */
final class GenericGFPoly {
    private final int[] coefficients;
    private final GenericGF field;

    public GenericGFPoly(GenericGF genericGF, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.field = genericGF;
        int length = iArr.length;
        if (length <= 1 || iArr[0] != 0) {
            this.coefficients = iArr;
            return;
        }
        int i4 = 1;
        while (i4 < length && iArr[i4] == 0) {
            i4++;
        }
        if (i4 == length) {
            this.coefficients = new int[]{0};
            return;
        }
        int[] iArr2 = new int[length - i4];
        this.coefficients = iArr2;
        System.arraycopy(iArr, i4, iArr2, 0, iArr2.length);
    }

    public GenericGFPoly addOrSubtract(GenericGFPoly genericGFPoly) {
        if (!this.field.equals(genericGFPoly.field)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (isZero()) {
            return genericGFPoly;
        }
        if (genericGFPoly.isZero()) {
            return this;
        }
        int[] iArr = this.coefficients;
        int[] iArr2 = genericGFPoly.coefficients;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i4 = length; i4 < iArr.length; i4++) {
            iArr3[i4] = GenericGF.addOrSubtract(iArr2[i4 - length], iArr[i4]);
        }
        return new GenericGFPoly(this.field, iArr3);
    }

    public GenericGFPoly[] divide(GenericGFPoly genericGFPoly) {
        if (!this.field.equals(genericGFPoly.field)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (genericGFPoly.isZero()) {
            throw new IllegalArgumentException("Divide by 0");
        }
        GenericGFPoly zero = this.field.getZero();
        int iInverse = this.field.inverse(genericGFPoly.getCoefficient(genericGFPoly.getDegree()));
        GenericGFPoly genericGFPolyAddOrSubtract = this;
        while (genericGFPolyAddOrSubtract.getDegree() >= genericGFPoly.getDegree() && !genericGFPolyAddOrSubtract.isZero()) {
            int degree = genericGFPolyAddOrSubtract.getDegree() - genericGFPoly.getDegree();
            int iMultiply = this.field.multiply(genericGFPolyAddOrSubtract.getCoefficient(genericGFPolyAddOrSubtract.getDegree()), iInverse);
            GenericGFPoly genericGFPolyMultiplyByMonomial = genericGFPoly.multiplyByMonomial(degree, iMultiply);
            zero = zero.addOrSubtract(this.field.buildMonomial(degree, iMultiply));
            genericGFPolyAddOrSubtract = genericGFPolyAddOrSubtract.addOrSubtract(genericGFPolyMultiplyByMonomial);
        }
        return new GenericGFPoly[]{zero, genericGFPolyAddOrSubtract};
    }

    public int evaluateAt(int i4) {
        if (i4 == 0) {
            return getCoefficient(0);
        }
        if (i4 == 1) {
            int iAddOrSubtract = 0;
            for (int i5 : this.coefficients) {
                iAddOrSubtract = GenericGF.addOrSubtract(iAddOrSubtract, i5);
            }
            return iAddOrSubtract;
        }
        int[] iArr = this.coefficients;
        int iAddOrSubtract2 = iArr[0];
        int length = iArr.length;
        for (int i6 = 1; i6 < length; i6++) {
            iAddOrSubtract2 = GenericGF.addOrSubtract(this.field.multiply(i4, iAddOrSubtract2), this.coefficients[i6]);
        }
        return iAddOrSubtract2;
    }

    public int getCoefficient(int i4) {
        return this.coefficients[(r0.length - 1) - i4];
    }

    public int[] getCoefficients() {
        return this.coefficients;
    }

    public int getDegree() {
        return this.coefficients.length - 1;
    }

    public boolean isZero() {
        return this.coefficients[0] == 0;
    }

    public GenericGFPoly multiply(GenericGFPoly genericGFPoly) {
        if (!this.field.equals(genericGFPoly.field)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (isZero() || genericGFPoly.isZero()) {
            return this.field.getZero();
        }
        int[] iArr = this.coefficients;
        int length = iArr.length;
        int[] iArr2 = genericGFPoly.coefficients;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = iArr[i4];
            for (int i6 = 0; i6 < length2; i6++) {
                int i7 = i4 + i6;
                iArr3[i7] = GenericGF.addOrSubtract(iArr3[i7], this.field.multiply(i5, iArr2[i6]));
            }
        }
        return new GenericGFPoly(this.field, iArr3);
    }

    public GenericGFPoly multiplyByMonomial(int i4, int i5) {
        if (i4 < 0) {
            throw new IllegalArgumentException();
        }
        if (i5 == 0) {
            return this.field.getZero();
        }
        int length = this.coefficients.length;
        int[] iArr = new int[i4 + length];
        for (int i6 = 0; i6 < length; i6++) {
            iArr[i6] = this.field.multiply(this.coefficients[i6], i5);
        }
        return new GenericGFPoly(this.field, iArr);
    }

    public String toString() {
        if (isZero()) {
            return "0";
        }
        StringBuilder sb = new StringBuilder(getDegree() * 8);
        for (int degree = getDegree(); degree >= 0; degree--) {
            int coefficient = getCoefficient(degree);
            if (coefficient != 0) {
                if (coefficient < 0) {
                    if (degree == getDegree()) {
                        sb.append("-");
                    } else {
                        sb.append(" - ");
                    }
                    coefficient = -coefficient;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (degree == 0 || coefficient != 1) {
                    int iLog = this.field.log(coefficient);
                    if (iLog == 0) {
                        sb.append('1');
                    } else if (iLog == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(iLog);
                    }
                }
                if (degree != 0) {
                    if (degree == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(degree);
                    }
                }
            }
        }
        return sb.toString();
    }

    public GenericGFPoly multiply(int i4) {
        if (i4 == 0) {
            return this.field.getZero();
        }
        if (i4 == 1) {
            return this;
        }
        int length = this.coefficients.length;
        int[] iArr = new int[length];
        for (int i5 = 0; i5 < length; i5++) {
            iArr[i5] = this.field.multiply(this.coefficients[i5], i4);
        }
        return new GenericGFPoly(this.field, iArr);
    }
}
