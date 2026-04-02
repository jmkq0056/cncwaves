package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonEncoder;

/* JADX INFO: loaded from: classes2.dex */
public final class Encoder {
    public static final int DEFAULT_AZTEC_LAYERS = 0;
    public static final int DEFAULT_EC_PERCENT = 33;
    private static final int MAX_NB_BITS = 32;
    private static final int MAX_NB_BITS_COMPACT = 4;
    private static final int[] WORD_SIZE = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    private Encoder() {
    }

    private static int[] bitsToWords(BitArray bitArray, int i4, int i5) {
        int[] iArr = new int[i5];
        int size = bitArray.getSize() / i4;
        for (int i6 = 0; i6 < size; i6++) {
            int i7 = 0;
            for (int i8 = 0; i8 < i4; i8++) {
                i7 |= bitArray.get((i6 * i4) + i8) ? 1 << ((i4 - i8) - 1) : 0;
            }
            iArr[i6] = i7;
        }
        return iArr;
    }

    private static void drawBullsEye(BitMatrix bitMatrix, int i4, int i5) {
        for (int i6 = 0; i6 < i5; i6 += 2) {
            int i7 = i4 - i6;
            int i8 = i7;
            while (true) {
                int i9 = i4 + i6;
                if (i8 <= i9) {
                    bitMatrix.set(i8, i7);
                    bitMatrix.set(i8, i9);
                    bitMatrix.set(i7, i8);
                    bitMatrix.set(i9, i8);
                    i8++;
                }
            }
        }
        int i10 = i4 - i5;
        bitMatrix.set(i10, i10);
        int i11 = i10 + 1;
        bitMatrix.set(i11, i10);
        bitMatrix.set(i10, i11);
        int i12 = i4 + i5;
        bitMatrix.set(i12, i10);
        bitMatrix.set(i12, i11);
        bitMatrix.set(i12, i12 - 1);
    }

    private static void drawModeMessage(BitMatrix bitMatrix, boolean z3, int i4, BitArray bitArray) {
        int i5 = i4 / 2;
        int i6 = 0;
        if (z3) {
            while (i6 < 7) {
                int i7 = (i5 - 3) + i6;
                if (bitArray.get(i6)) {
                    bitMatrix.set(i7, i5 - 5);
                }
                if (bitArray.get(i6 + 7)) {
                    bitMatrix.set(i5 + 5, i7);
                }
                if (bitArray.get(20 - i6)) {
                    bitMatrix.set(i7, i5 + 5);
                }
                if (bitArray.get(27 - i6)) {
                    bitMatrix.set(i5 - 5, i7);
                }
                i6++;
            }
            return;
        }
        while (i6 < 10) {
            int i8 = (i6 / 5) + (i5 - 5) + i6;
            if (bitArray.get(i6)) {
                bitMatrix.set(i8, i5 - 7);
            }
            if (bitArray.get(i6 + 10)) {
                bitMatrix.set(i5 + 7, i8);
            }
            if (bitArray.get(29 - i6)) {
                bitMatrix.set(i8, i5 + 7);
            }
            if (bitArray.get(39 - i6)) {
                bitMatrix.set(i5 - 7, i8);
            }
            i6++;
        }
    }

    public static AztecCode encode(byte[] bArr) {
        return encode(bArr, 33, 0);
    }

    private static BitArray generateCheckWords(BitArray bitArray, int i4, int i5) {
        int size = bitArray.getSize() / i5;
        ReedSolomonEncoder reedSolomonEncoder = new ReedSolomonEncoder(getGF(i5));
        int i6 = i4 / i5;
        int[] iArrBitsToWords = bitsToWords(bitArray, i5, i6);
        reedSolomonEncoder.encode(iArrBitsToWords, i6 - size);
        BitArray bitArray2 = new BitArray();
        bitArray2.appendBits(0, i4 % i5);
        for (int i7 : iArrBitsToWords) {
            bitArray2.appendBits(i7, i5);
        }
        return bitArray2;
    }

    public static BitArray generateModeMessage(boolean z3, int i4, int i5) {
        BitArray bitArray = new BitArray();
        if (z3) {
            bitArray.appendBits(i4 - 1, 2);
            bitArray.appendBits(i5 - 1, 6);
            return generateCheckWords(bitArray, 28, 4);
        }
        bitArray.appendBits(i4 - 1, 5);
        bitArray.appendBits(i5 - 1, 11);
        return generateCheckWords(bitArray, 40, 4);
    }

    private static GenericGF getGF(int i4) {
        if (i4 == 4) {
            return GenericGF.AZTEC_PARAM;
        }
        if (i4 == 6) {
            return GenericGF.AZTEC_DATA_6;
        }
        if (i4 == 8) {
            return GenericGF.AZTEC_DATA_8;
        }
        if (i4 == 10) {
            return GenericGF.AZTEC_DATA_10;
        }
        if (i4 == 12) {
            return GenericGF.AZTEC_DATA_12;
        }
        throw new IllegalArgumentException("Unsupported word size ".concat(String.valueOf(i4)));
    }

    public static BitArray stuffBits(BitArray bitArray, int i4) {
        BitArray bitArray2 = new BitArray();
        int size = bitArray.getSize();
        int i5 = (1 << i4) - 2;
        int i6 = 0;
        while (i6 < size) {
            int i7 = 0;
            for (int i8 = 0; i8 < i4; i8++) {
                int i9 = i6 + i8;
                if (i9 >= size || bitArray.get(i9)) {
                    i7 |= 1 << ((i4 - 1) - i8);
                }
            }
            int i10 = i7 & i5;
            if (i10 == i5) {
                bitArray2.appendBits(i10, i4);
            } else if (i10 == 0) {
                bitArray2.appendBits(i7 | 1, i4);
            } else {
                bitArray2.appendBits(i7, i4);
                i6 += i4;
            }
            i6--;
            i6 += i4;
        }
        return bitArray2;
    }

    private static int totalBitsInLayer(int i4, boolean z3) {
        return ((z3 ? 88 : 112) + (i4 << 4)) * i4;
    }

    public static AztecCode encode(byte[] bArr, int i4, int i5) {
        BitArray bitArrayStuffBits;
        int i6;
        boolean z3;
        int iAbs;
        int i7;
        int i8;
        BitArray bitArrayEncode = new HighLevelEncoder(bArr).encode();
        int size = ((bitArrayEncode.getSize() * i4) / 100) + 11;
        int size2 = bitArrayEncode.getSize() + size;
        int i9 = 0;
        int i10 = 1;
        if (i5 == 0) {
            BitArray bitArrayStuffBits2 = null;
            int i11 = 0;
            int i12 = 0;
            while (i11 <= 32) {
                boolean z4 = i11 <= 3;
                int i13 = z4 ? i11 + 1 : i11;
                int i14 = totalBitsInLayer(i13, z4);
                if (size2 <= i14) {
                    if (bitArrayStuffBits2 == null || i12 != WORD_SIZE[i13]) {
                        int i15 = WORD_SIZE[i13];
                        i12 = i15;
                        bitArrayStuffBits2 = stuffBits(bitArrayEncode, i15);
                    }
                    int i16 = i14 - (i14 % i12);
                    if ((!z4 || bitArrayStuffBits2.getSize() <= (i12 << 6)) && bitArrayStuffBits2.getSize() + size <= i16) {
                        bitArrayStuffBits = bitArrayStuffBits2;
                        i6 = i12;
                        z3 = z4;
                        iAbs = i13;
                        i7 = i14;
                    }
                }
                i11++;
                i9 = 0;
                i10 = 1;
            }
            throw new IllegalArgumentException("Data too large for an Aztec code");
        }
        z3 = i5 < 0;
        iAbs = Math.abs(i5);
        if (iAbs > (z3 ? 4 : 32)) {
            throw new IllegalArgumentException(String.format("Illegal value %s for layers", Integer.valueOf(i5)));
        }
        i7 = totalBitsInLayer(iAbs, z3);
        i6 = WORD_SIZE[iAbs];
        int i17 = i7 - (i7 % i6);
        bitArrayStuffBits = stuffBits(bitArrayEncode, i6);
        if (bitArrayStuffBits.getSize() + size > i17) {
            throw new IllegalArgumentException("Data to large for user specified layer");
        }
        if (z3 && bitArrayStuffBits.getSize() > (i6 << 6)) {
            throw new IllegalArgumentException("Data to large for user specified layer");
        }
        BitArray bitArrayGenerateCheckWords = generateCheckWords(bitArrayStuffBits, i7, i6);
        int size3 = bitArrayStuffBits.getSize() / i6;
        BitArray bitArrayGenerateModeMessage = generateModeMessage(z3, iAbs, size3);
        int i18 = (z3 ? 11 : 14) + (iAbs << 2);
        int[] iArr = new int[i18];
        int i19 = 2;
        if (z3) {
            for (int i20 = 0; i20 < i18; i20++) {
                iArr[i20] = i20;
            }
            i8 = i18;
        } else {
            int i21 = i18 / 2;
            i8 = (((i21 - 1) / 15) * 2) + i18 + 1;
            int i22 = i8 / 2;
            for (int i23 = 0; i23 < i21; i23++) {
                iArr[(i21 - i23) - i10] = (i22 - r14) - 1;
                iArr[i21 + i23] = (i23 / 15) + i23 + i22 + i10;
            }
        }
        BitMatrix bitMatrix = new BitMatrix(i8);
        int i24 = 0;
        int i25 = 0;
        while (i24 < iAbs) {
            int i26 = ((iAbs - i24) << i19) + (z3 ? 9 : 12);
            int i27 = 0;
            while (i27 < i26) {
                int i28 = i27 << 1;
                while (i9 < i19) {
                    if (bitArrayGenerateCheckWords.get(i25 + i28 + i9)) {
                        int i29 = i24 << 1;
                        bitMatrix.set(iArr[i29 + i9], iArr[i29 + i27]);
                    }
                    if (bitArrayGenerateCheckWords.get((i26 << 1) + i25 + i28 + i9)) {
                        int i30 = i24 << 1;
                        bitMatrix.set(iArr[i30 + i27], iArr[((i18 - 1) - i30) - i9]);
                    }
                    if (bitArrayGenerateCheckWords.get((i26 << 2) + i25 + i28 + i9)) {
                        int i31 = (i18 - 1) - (i24 << 1);
                        bitMatrix.set(iArr[i31 - i9], iArr[i31 - i27]);
                    }
                    if (bitArrayGenerateCheckWords.get((i26 * 6) + i25 + i28 + i9)) {
                        int i32 = i24 << 1;
                        bitMatrix.set(iArr[((i18 - 1) - i32) - i27], iArr[i32 + i9]);
                    }
                    i9++;
                    i19 = 2;
                }
                i27++;
                i9 = 0;
                i19 = 2;
            }
            i25 += i26 << 3;
            i24++;
            i9 = 0;
            i19 = 2;
        }
        drawModeMessage(bitMatrix, z3, i8, bitArrayGenerateModeMessage);
        if (z3) {
            drawBullsEye(bitMatrix, i8 / 2, 5);
        } else {
            int i33 = i8 / 2;
            drawBullsEye(bitMatrix, i33, 7);
            int i34 = 0;
            int i35 = 0;
            while (i35 < (i18 / 2) - 1) {
                for (int i36 = i33 & 1; i36 < i8; i36 += 2) {
                    int i37 = i33 - i34;
                    bitMatrix.set(i37, i36);
                    int i38 = i33 + i34;
                    bitMatrix.set(i38, i36);
                    bitMatrix.set(i36, i37);
                    bitMatrix.set(i36, i38);
                }
                i35 += 15;
                i34 += 16;
            }
        }
        AztecCode aztecCode = new AztecCode();
        aztecCode.setCompact(z3);
        aztecCode.setSize(i8);
        aztecCode.setLayers(iAbs);
        aztecCode.setCodeWords(size3);
        aztecCode.setMatrix(bitMatrix);
        return aztecCode;
    }
}
