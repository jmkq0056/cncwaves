package com.google.zxing.qrcode.encoder;

import androidx.appcompat.widget.ActivityChooserView;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitArray;
import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonEncoder;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.Version;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class Encoder {
    private static final int[] ALPHANUMERIC_TABLE = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};
    public static final String DEFAULT_BYTE_MODE_ENCODING = "ISO-8859-1";

    /* JADX INFO: renamed from: com.google.zxing.qrcode.encoder.Encoder$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$zxing$qrcode$decoder$Mode;

        static {
            int[] iArr = new int[Mode.values().length];
            $SwitchMap$com$google$zxing$qrcode$decoder$Mode = iArr;
            try {
                iArr[Mode.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[Mode.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private Encoder() {
    }

    public static void append8BitBytes(String str, BitArray bitArray, String str2) throws WriterException {
        try {
            for (byte b4 : str.getBytes(str2)) {
                bitArray.appendBits(b4, 8);
            }
        } catch (UnsupportedEncodingException e4) {
            throw new WriterException(e4);
        }
    }

    public static void appendAlphanumericBytes(CharSequence charSequence, BitArray bitArray) throws WriterException {
        int length = charSequence.length();
        int i4 = 0;
        while (i4 < length) {
            int alphanumericCode = getAlphanumericCode(charSequence.charAt(i4));
            if (alphanumericCode == -1) {
                throw new WriterException();
            }
            int i5 = i4 + 1;
            if (i5 < length) {
                int alphanumericCode2 = getAlphanumericCode(charSequence.charAt(i5));
                if (alphanumericCode2 == -1) {
                    throw new WriterException();
                }
                bitArray.appendBits((alphanumericCode * 45) + alphanumericCode2, 11);
                i4 += 2;
            } else {
                bitArray.appendBits(alphanumericCode, 6);
                i4 = i5;
            }
        }
    }

    public static void appendBytes(String str, Mode mode, BitArray bitArray, String str2) throws WriterException {
        int i4 = AnonymousClass1.$SwitchMap$com$google$zxing$qrcode$decoder$Mode[mode.ordinal()];
        if (i4 == 1) {
            appendNumericBytes(str, bitArray);
            return;
        }
        if (i4 == 2) {
            appendAlphanumericBytes(str, bitArray);
        } else if (i4 == 3) {
            append8BitBytes(str, bitArray, str2);
        } else {
            if (i4 != 4) {
                throw new WriterException("Invalid mode: ".concat(String.valueOf(mode)));
            }
            appendKanjiBytes(str, bitArray);
        }
    }

    private static void appendECI(CharacterSetECI characterSetECI, BitArray bitArray) {
        bitArray.appendBits(Mode.ECI.getBits(), 4);
        bitArray.appendBits(characterSetECI.getValue(), 8);
    }

    public static void appendKanjiBytes(String str, BitArray bitArray) throws WriterException {
        int i4;
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            if (bytes.length % 2 != 0) {
                throw new WriterException("Kanji byte size not even");
            }
            int length = bytes.length - 1;
            for (int i5 = 0; i5 < length; i5 += 2) {
                int i6 = ((bytes[i5] & 255) << 8) | (bytes[i5 + 1] & 255);
                int i7 = 33088;
                if (i6 >= 33088 && i6 <= 40956) {
                    i4 = i6 - i7;
                } else if (i6 < 57408 || i6 > 60351) {
                    i4 = -1;
                } else {
                    i7 = 49472;
                    i4 = i6 - i7;
                }
                if (i4 == -1) {
                    throw new WriterException("Invalid byte sequence");
                }
                bitArray.appendBits(((i4 >> 8) * 192) + (i4 & 255), 13);
            }
        } catch (UnsupportedEncodingException e4) {
            throw new WriterException(e4);
        }
    }

    public static void appendLengthInfo(int i4, Version version, Mode mode, BitArray bitArray) throws WriterException {
        int characterCountBits = mode.getCharacterCountBits(version);
        int i5 = 1 << characterCountBits;
        if (i4 < i5) {
            bitArray.appendBits(i4, characterCountBits);
            return;
        }
        throw new WriterException(i4 + " is bigger than " + (i5 - 1));
    }

    public static void appendModeInfo(Mode mode, BitArray bitArray) {
        bitArray.appendBits(mode.getBits(), 4);
    }

    public static void appendNumericBytes(CharSequence charSequence, BitArray bitArray) {
        int length = charSequence.length();
        int i4 = 0;
        while (i4 < length) {
            int iCharAt = charSequence.charAt(i4) - '0';
            int i5 = i4 + 2;
            if (i5 < length) {
                bitArray.appendBits(((charSequence.charAt(i4 + 1) - '0') * 10) + (iCharAt * 100) + (charSequence.charAt(i5) - '0'), 10);
                i4 += 3;
            } else {
                i4++;
                if (i4 < length) {
                    bitArray.appendBits((iCharAt * 10) + (charSequence.charAt(i4) - '0'), 7);
                    i4 = i5;
                } else {
                    bitArray.appendBits(iCharAt, 4);
                }
            }
        }
    }

    private static int calculateBitsNeeded(Mode mode, BitArray bitArray, BitArray bitArray2, Version version) {
        return bitArray2.getSize() + mode.getCharacterCountBits(version) + bitArray.getSize();
    }

    private static int calculateMaskPenalty(ByteMatrix byteMatrix) {
        return MaskUtil.applyMaskPenaltyRule1(byteMatrix) + MaskUtil.applyMaskPenaltyRule2(byteMatrix) + MaskUtil.applyMaskPenaltyRule3(byteMatrix) + MaskUtil.applyMaskPenaltyRule4(byteMatrix);
    }

    private static int chooseMaskPattern(BitArray bitArray, ErrorCorrectionLevel errorCorrectionLevel, Version version, ByteMatrix byteMatrix) throws WriterException {
        int i4 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i5 = -1;
        for (int i6 = 0; i6 < 8; i6++) {
            MatrixUtil.buildMatrix(bitArray, errorCorrectionLevel, version, i6, byteMatrix);
            int iCalculateMaskPenalty = calculateMaskPenalty(byteMatrix);
            if (iCalculateMaskPenalty < i4) {
                i5 = i6;
                i4 = iCalculateMaskPenalty;
            }
        }
        return i5;
    }

    public static Mode chooseMode(String str) {
        return chooseMode(str, null);
    }

    private static Version chooseVersion(int i4, ErrorCorrectionLevel errorCorrectionLevel) throws WriterException {
        for (int i5 = 1; i5 <= 40; i5++) {
            Version versionForNumber = Version.getVersionForNumber(i5);
            if (willFit(i4, versionForNumber, errorCorrectionLevel)) {
                return versionForNumber;
            }
        }
        throw new WriterException("Data too big");
    }

    public static QRCode encode(String str, ErrorCorrectionLevel errorCorrectionLevel) {
        return encode(str, errorCorrectionLevel, null);
    }

    public static byte[] generateECBytes(byte[] bArr, int i4) {
        int length = bArr.length;
        int[] iArr = new int[length + i4];
        for (int i5 = 0; i5 < length; i5++) {
            iArr[i5] = bArr[i5] & 255;
        }
        new ReedSolomonEncoder(GenericGF.QR_CODE_FIELD_256).encode(iArr, i4);
        byte[] bArr2 = new byte[i4];
        for (int i6 = 0; i6 < i4; i6++) {
            bArr2[i6] = (byte) iArr[length + i6];
        }
        return bArr2;
    }

    public static int getAlphanumericCode(int i4) {
        int[] iArr = ALPHANUMERIC_TABLE;
        if (i4 < iArr.length) {
            return iArr[i4];
        }
        return -1;
    }

    public static void getNumDataBytesAndNumECBytesForBlockID(int i4, int i5, int i6, int i7, int[] iArr, int[] iArr2) throws WriterException {
        if (i7 >= i6) {
            throw new WriterException("Block ID too large");
        }
        int i8 = i4 % i6;
        int i9 = i6 - i8;
        int i10 = i4 / i6;
        int i11 = i10 + 1;
        int i12 = i5 / i6;
        int i13 = i12 + 1;
        int i14 = i10 - i12;
        int i15 = i11 - i13;
        if (i14 != i15) {
            throw new WriterException("EC bytes mismatch");
        }
        if (i6 != i9 + i8) {
            throw new WriterException("RS blocks mismatch");
        }
        if (i4 != ((i13 + i15) * i8) + ((i12 + i14) * i9)) {
            throw new WriterException("Total bytes mismatch");
        }
        if (i7 < i9) {
            iArr[0] = i12;
            iArr2[0] = i14;
        } else {
            iArr[0] = i13;
            iArr2[0] = i15;
        }
    }

    public static BitArray interleaveWithECBytes(BitArray bitArray, int i4, int i5, int i6) throws WriterException {
        if (bitArray.getSizeInBytes() != i5) {
            throw new WriterException("Number of bits and data bytes does not match");
        }
        ArrayList arrayList = new ArrayList(i6);
        int i7 = 0;
        int iMax = 0;
        int iMax2 = 0;
        for (int i8 = 0; i8 < i6; i8++) {
            int[] iArr = new int[1];
            int[] iArr2 = new int[1];
            getNumDataBytesAndNumECBytesForBlockID(i4, i5, i6, i8, iArr, iArr2);
            int i9 = iArr[0];
            byte[] bArr = new byte[i9];
            bitArray.toBytes(i7 << 3, bArr, 0, i9);
            byte[] bArrGenerateECBytes = generateECBytes(bArr, iArr2[0]);
            arrayList.add(new BlockPair(bArr, bArrGenerateECBytes));
            iMax = Math.max(iMax, i9);
            iMax2 = Math.max(iMax2, bArrGenerateECBytes.length);
            i7 += iArr[0];
        }
        if (i5 != i7) {
            throw new WriterException("Data bytes does not match offset");
        }
        BitArray bitArray2 = new BitArray();
        for (int i10 = 0; i10 < iMax; i10++) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                byte[] dataBytes = ((BlockPair) it.next()).getDataBytes();
                if (i10 < dataBytes.length) {
                    bitArray2.appendBits(dataBytes[i10], 8);
                }
            }
        }
        for (int i11 = 0; i11 < iMax2; i11++) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                byte[] errorCorrectionBytes = ((BlockPair) it2.next()).getErrorCorrectionBytes();
                if (i11 < errorCorrectionBytes.length) {
                    bitArray2.appendBits(errorCorrectionBytes[i11], 8);
                }
            }
        }
        if (i4 == bitArray2.getSizeInBytes()) {
            return bitArray2;
        }
        throw new WriterException("Interleaving error: " + i4 + " and " + bitArray2.getSizeInBytes() + " differ.");
    }

    private static boolean isOnlyDoubleByteKanji(String str) {
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            if (length % 2 != 0) {
                return false;
            }
            for (int i4 = 0; i4 < length; i4 += 2) {
                int i5 = bytes[i4] & 255;
                if ((i5 < 129 || i5 > 159) && (i5 < 224 || i5 > 235)) {
                    return false;
                }
            }
            return true;
        } catch (UnsupportedEncodingException unused) {
            return false;
        }
    }

    private static Version recommendVersion(ErrorCorrectionLevel errorCorrectionLevel, Mode mode, BitArray bitArray, BitArray bitArray2) {
        return chooseVersion(calculateBitsNeeded(mode, bitArray, bitArray2, chooseVersion(calculateBitsNeeded(mode, bitArray, bitArray2, Version.getVersionForNumber(1)), errorCorrectionLevel)), errorCorrectionLevel);
    }

    public static void terminateBits(int i4, BitArray bitArray) throws WriterException {
        int i5 = i4 << 3;
        if (bitArray.getSize() > i5) {
            throw new WriterException("data bits cannot fit in the QR Code" + bitArray.getSize() + " > " + i5);
        }
        for (int i6 = 0; i6 < 4 && bitArray.getSize() < i5; i6++) {
            bitArray.appendBit(false);
        }
        int size = bitArray.getSize() & 7;
        if (size > 0) {
            while (size < 8) {
                bitArray.appendBit(false);
                size++;
            }
        }
        int sizeInBytes = i4 - bitArray.getSizeInBytes();
        for (int i7 = 0; i7 < sizeInBytes; i7++) {
            bitArray.appendBits((i7 & 1) == 0 ? 236 : 17, 8);
        }
        if (bitArray.getSize() != i5) {
            throw new WriterException("Bits size does not equal capacity");
        }
    }

    private static boolean willFit(int i4, Version version, ErrorCorrectionLevel errorCorrectionLevel) {
        return version.getTotalCodewords() - version.getECBlocksForLevel(errorCorrectionLevel).getTotalECCodewords() >= (i4 + 7) / 8;
    }

    private static Mode chooseMode(String str, String str2) {
        if ("Shift_JIS".equals(str2) && isOnlyDoubleByteKanji(str)) {
            return Mode.KANJI;
        }
        boolean z3 = false;
        boolean z4 = false;
        for (int i4 = 0; i4 < str.length(); i4++) {
            char cCharAt = str.charAt(i4);
            if (cCharAt >= '0' && cCharAt <= '9') {
                z4 = true;
            } else {
                if (getAlphanumericCode(cCharAt) == -1) {
                    return Mode.BYTE;
                }
                z3 = true;
            }
        }
        return z3 ? Mode.ALPHANUMERIC : z4 ? Mode.NUMERIC : Mode.BYTE;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.zxing.qrcode.encoder.QRCode encode(java.lang.String r7, com.google.zxing.qrcode.decoder.ErrorCorrectionLevel r8, java.util.Map<com.google.zxing.EncodeHintType, ?> r9) throws com.google.zxing.WriterException {
        /*
            Method dump skipped, instruction units count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.encoder.Encoder.encode(java.lang.String, com.google.zxing.qrcode.decoder.ErrorCorrectionLevel, java.util.Map):com.google.zxing.qrcode.encoder.QRCode");
    }
}
