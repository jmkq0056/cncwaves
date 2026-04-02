package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;
import org.eclipse.jetty.util.B64Code;
import org.xbill.DNS.Type;
import org.xbill.DNS.WKSRecord;

/* JADX INFO: loaded from: classes2.dex */
final class GeneralAppIdDecoder {
    private final BitArray information;
    private final CurrentParsingState current = new CurrentParsingState();
    private final StringBuilder buffer = new StringBuilder();

    public GeneralAppIdDecoder(BitArray bitArray) {
        this.information = bitArray;
    }

    private DecodedChar decodeAlphanumeric(int i4) {
        char c4;
        int iExtractNumericValueFromBitArray = extractNumericValueFromBitArray(i4, 5);
        if (iExtractNumericValueFromBitArray == 15) {
            return new DecodedChar(i4 + 5, DecodedChar.FNC1);
        }
        if (iExtractNumericValueFromBitArray >= 5 && iExtractNumericValueFromBitArray < 15) {
            return new DecodedChar(i4 + 5, (char) ((iExtractNumericValueFromBitArray + 48) - 5));
        }
        int iExtractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i4, 6);
        if (iExtractNumericValueFromBitArray2 >= 32 && iExtractNumericValueFromBitArray2 < 58) {
            return new DecodedChar(i4 + 6, (char) (iExtractNumericValueFromBitArray2 + 33));
        }
        switch (iExtractNumericValueFromBitArray2) {
            case 58:
                c4 = '*';
                break;
            case 59:
                c4 = ',';
                break;
            case 60:
                c4 = '-';
                break;
            case 61:
                c4 = '.';
                break;
            case 62:
                c4 = '/';
                break;
            default:
                throw new IllegalStateException("Decoding invalid alphanumeric value: ".concat(String.valueOf(iExtractNumericValueFromBitArray2)));
        }
        return new DecodedChar(i4 + 6, c4);
    }

    private DecodedChar decodeIsoIec646(int i4) throws FormatException {
        char c4;
        int iExtractNumericValueFromBitArray = extractNumericValueFromBitArray(i4, 5);
        if (iExtractNumericValueFromBitArray == 15) {
            return new DecodedChar(i4 + 5, DecodedChar.FNC1);
        }
        if (iExtractNumericValueFromBitArray >= 5 && iExtractNumericValueFromBitArray < 15) {
            return new DecodedChar(i4 + 5, (char) ((iExtractNumericValueFromBitArray + 48) - 5));
        }
        int iExtractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i4, 7);
        if (iExtractNumericValueFromBitArray2 >= 64 && iExtractNumericValueFromBitArray2 < 90) {
            return new DecodedChar(i4 + 7, (char) (iExtractNumericValueFromBitArray2 + 1));
        }
        if (iExtractNumericValueFromBitArray2 >= 90 && iExtractNumericValueFromBitArray2 < 116) {
            return new DecodedChar(i4 + 7, (char) (iExtractNumericValueFromBitArray2 + 7));
        }
        switch (extractNumericValueFromBitArray(i4, 8)) {
            case 232:
                c4 = '!';
                break;
            case 233:
                c4 = '\"';
                break;
            case 234:
                c4 = '%';
                break;
            case 235:
                c4 = '&';
                break;
            case 236:
                c4 = '\'';
                break;
            case 237:
                c4 = '(';
                break;
            case 238:
                c4 = ')';
                break;
            case 239:
                c4 = '*';
                break;
            case 240:
                c4 = '+';
                break;
            case 241:
                c4 = ',';
                break;
            case 242:
                c4 = '-';
                break;
            case WKSRecord.Service.SUR_MEAS /* 243 */:
                c4 = '.';
                break;
            case 244:
                c4 = '/';
                break;
            case WKSRecord.Service.LINK /* 245 */:
                c4 = ':';
                break;
            case 246:
                c4 = ';';
                break;
            case 247:
                c4 = '<';
                break;
            case 248:
                c4 = B64Code.__pad;
                break;
            case Type.TKEY /* 249 */:
                c4 = '>';
                break;
            case 250:
                c4 = '?';
                break;
            case Type.IXFR /* 251 */:
                c4 = '_';
                break;
            case 252:
                c4 = ' ';
                break;
            default:
                throw FormatException.getFormatInstance();
        }
        return new DecodedChar(i4 + 8, c4);
    }

    private DecodedNumeric decodeNumeric(int i4) {
        int i5 = i4 + 7;
        if (i5 > this.information.getSize()) {
            int iExtractNumericValueFromBitArray = extractNumericValueFromBitArray(i4, 4);
            return iExtractNumericValueFromBitArray == 0 ? new DecodedNumeric(this.information.getSize(), 10, 10) : new DecodedNumeric(this.information.getSize(), iExtractNumericValueFromBitArray - 1, 10);
        }
        int iExtractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i4, 7) - 8;
        return new DecodedNumeric(i5, iExtractNumericValueFromBitArray2 / 11, iExtractNumericValueFromBitArray2 % 11);
    }

    private boolean isAlphaOr646ToNumericLatch(int i4) {
        int i5 = i4 + 3;
        if (i5 > this.information.getSize()) {
            return false;
        }
        while (i4 < i5) {
            if (this.information.get(i4)) {
                return false;
            }
            i4++;
        }
        return true;
    }

    private boolean isAlphaTo646ToAlphaLatch(int i4) {
        int i5;
        if (i4 + 1 > this.information.getSize()) {
            return false;
        }
        for (int i6 = 0; i6 < 5 && (i5 = i6 + i4) < this.information.getSize(); i6++) {
            if (i6 == 2) {
                if (!this.information.get(i4 + 2)) {
                    return false;
                }
            } else if (this.information.get(i5)) {
                return false;
            }
        }
        return true;
    }

    private boolean isNumericToAlphaNumericLatch(int i4) {
        int i5;
        if (i4 + 1 > this.information.getSize()) {
            return false;
        }
        for (int i6 = 0; i6 < 4 && (i5 = i6 + i4) < this.information.getSize(); i6++) {
            if (this.information.get(i5)) {
                return false;
            }
        }
        return true;
    }

    private boolean isStillAlpha(int i4) {
        int iExtractNumericValueFromBitArray;
        if (i4 + 5 > this.information.getSize()) {
            return false;
        }
        int iExtractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i4, 5);
        if (iExtractNumericValueFromBitArray2 < 5 || iExtractNumericValueFromBitArray2 >= 16) {
            return i4 + 6 <= this.information.getSize() && (iExtractNumericValueFromBitArray = extractNumericValueFromBitArray(i4, 6)) >= 16 && iExtractNumericValueFromBitArray < 63;
        }
        return true;
    }

    private boolean isStillIsoIec646(int i4) {
        int iExtractNumericValueFromBitArray;
        if (i4 + 5 > this.information.getSize()) {
            return false;
        }
        int iExtractNumericValueFromBitArray2 = extractNumericValueFromBitArray(i4, 5);
        if (iExtractNumericValueFromBitArray2 >= 5 && iExtractNumericValueFromBitArray2 < 16) {
            return true;
        }
        if (i4 + 7 > this.information.getSize()) {
            return false;
        }
        int iExtractNumericValueFromBitArray3 = extractNumericValueFromBitArray(i4, 7);
        if (iExtractNumericValueFromBitArray3 < 64 || iExtractNumericValueFromBitArray3 >= 116) {
            return i4 + 8 <= this.information.getSize() && (iExtractNumericValueFromBitArray = extractNumericValueFromBitArray(i4, 8)) >= 232 && iExtractNumericValueFromBitArray < 253;
        }
        return true;
    }

    private boolean isStillNumeric(int i4) {
        if (i4 + 7 > this.information.getSize()) {
            return i4 + 4 <= this.information.getSize();
        }
        int i5 = i4;
        while (true) {
            int i6 = i4 + 3;
            if (i5 >= i6) {
                return this.information.get(i6);
            }
            if (this.information.get(i5)) {
                return true;
            }
            i5++;
        }
    }

    private BlockParsedResult parseAlphaBlock() {
        while (isStillAlpha(this.current.getPosition())) {
            DecodedChar decodedCharDecodeAlphanumeric = decodeAlphanumeric(this.current.getPosition());
            this.current.setPosition(decodedCharDecodeAlphanumeric.getNewPosition());
            if (decodedCharDecodeAlphanumeric.isFNC1()) {
                return new BlockParsedResult(new DecodedInformation(this.current.getPosition(), this.buffer.toString()), true);
            }
            this.buffer.append(decodedCharDecodeAlphanumeric.getValue());
        }
        if (isAlphaOr646ToNumericLatch(this.current.getPosition())) {
            this.current.incrementPosition(3);
            this.current.setNumeric();
        } else if (isAlphaTo646ToAlphaLatch(this.current.getPosition())) {
            if (this.current.getPosition() + 5 < this.information.getSize()) {
                this.current.incrementPosition(5);
            } else {
                this.current.setPosition(this.information.getSize());
            }
            this.current.setIsoIec646();
        }
        return new BlockParsedResult(false);
    }

    private DecodedInformation parseBlocks() throws FormatException {
        BlockParsedResult numericBlock;
        boolean zIsFinished;
        do {
            int position = this.current.getPosition();
            if (this.current.isAlpha()) {
                numericBlock = parseAlphaBlock();
                zIsFinished = numericBlock.isFinished();
            } else if (this.current.isIsoIec646()) {
                numericBlock = parseIsoIec646Block();
                zIsFinished = numericBlock.isFinished();
            } else {
                numericBlock = parseNumericBlock();
                zIsFinished = numericBlock.isFinished();
            }
            if (!(position != this.current.getPosition()) && !zIsFinished) {
                break;
            }
        } while (!zIsFinished);
        return numericBlock.getDecodedInformation();
    }

    private BlockParsedResult parseIsoIec646Block() throws FormatException {
        while (isStillIsoIec646(this.current.getPosition())) {
            DecodedChar decodedCharDecodeIsoIec646 = decodeIsoIec646(this.current.getPosition());
            this.current.setPosition(decodedCharDecodeIsoIec646.getNewPosition());
            if (decodedCharDecodeIsoIec646.isFNC1()) {
                return new BlockParsedResult(new DecodedInformation(this.current.getPosition(), this.buffer.toString()), true);
            }
            this.buffer.append(decodedCharDecodeIsoIec646.getValue());
        }
        if (isAlphaOr646ToNumericLatch(this.current.getPosition())) {
            this.current.incrementPosition(3);
            this.current.setNumeric();
        } else if (isAlphaTo646ToAlphaLatch(this.current.getPosition())) {
            if (this.current.getPosition() + 5 < this.information.getSize()) {
                this.current.incrementPosition(5);
            } else {
                this.current.setPosition(this.information.getSize());
            }
            this.current.setAlpha();
        }
        return new BlockParsedResult(false);
    }

    private BlockParsedResult parseNumericBlock() {
        while (isStillNumeric(this.current.getPosition())) {
            DecodedNumeric decodedNumericDecodeNumeric = decodeNumeric(this.current.getPosition());
            this.current.setPosition(decodedNumericDecodeNumeric.getNewPosition());
            if (decodedNumericDecodeNumeric.isFirstDigitFNC1()) {
                return new BlockParsedResult(decodedNumericDecodeNumeric.isSecondDigitFNC1() ? new DecodedInformation(this.current.getPosition(), this.buffer.toString()) : new DecodedInformation(this.current.getPosition(), this.buffer.toString(), decodedNumericDecodeNumeric.getSecondDigit()), true);
            }
            this.buffer.append(decodedNumericDecodeNumeric.getFirstDigit());
            if (decodedNumericDecodeNumeric.isSecondDigitFNC1()) {
                return new BlockParsedResult(new DecodedInformation(this.current.getPosition(), this.buffer.toString()), true);
            }
            this.buffer.append(decodedNumericDecodeNumeric.getSecondDigit());
        }
        if (isNumericToAlphaNumericLatch(this.current.getPosition())) {
            this.current.setAlpha();
            this.current.incrementPosition(4);
        }
        return new BlockParsedResult(false);
    }

    public String decodeAllCodes(StringBuilder sb, int i4) throws NotFoundException, FormatException {
        String str = null;
        while (true) {
            DecodedInformation decodedInformationDecodeGeneralPurposeField = decodeGeneralPurposeField(i4, str);
            String fieldsInGeneralPurpose = FieldParser.parseFieldsInGeneralPurpose(decodedInformationDecodeGeneralPurposeField.getNewString());
            if (fieldsInGeneralPurpose != null) {
                sb.append(fieldsInGeneralPurpose);
            }
            String strValueOf = decodedInformationDecodeGeneralPurposeField.isRemaining() ? String.valueOf(decodedInformationDecodeGeneralPurposeField.getRemainingValue()) : null;
            if (i4 == decodedInformationDecodeGeneralPurposeField.getNewPosition()) {
                return sb.toString();
            }
            i4 = decodedInformationDecodeGeneralPurposeField.getNewPosition();
            str = strValueOf;
        }
    }

    public DecodedInformation decodeGeneralPurposeField(int i4, String str) throws FormatException {
        this.buffer.setLength(0);
        if (str != null) {
            this.buffer.append(str);
        }
        this.current.setPosition(i4);
        DecodedInformation blocks = parseBlocks();
        return (blocks == null || !blocks.isRemaining()) ? new DecodedInformation(this.current.getPosition(), this.buffer.toString()) : new DecodedInformation(this.current.getPosition(), this.buffer.toString(), blocks.getRemainingValue());
    }

    public int extractNumericValueFromBitArray(int i4, int i5) {
        return extractNumericValueFromBitArray(this.information, i4, i5);
    }

    public static int extractNumericValueFromBitArray(BitArray bitArray, int i4, int i5) {
        int i6 = 0;
        for (int i7 = 0; i7 < i5; i7++) {
            if (bitArray.get(i4 + i7)) {
                i6 |= 1 << ((i5 - i7) - 1);
            }
        }
        return i6;
    }
}
