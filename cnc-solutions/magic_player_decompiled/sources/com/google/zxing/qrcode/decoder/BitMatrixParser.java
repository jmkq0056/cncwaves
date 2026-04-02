package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;

/* JADX INFO: loaded from: classes2.dex */
final class BitMatrixParser {
    private final BitMatrix bitMatrix;
    private boolean mirror;
    private FormatInformation parsedFormatInfo;
    private Version parsedVersion;

    public BitMatrixParser(BitMatrix bitMatrix) throws FormatException {
        int height = bitMatrix.getHeight();
        if (height < 21 || (height & 3) != 1) {
            throw FormatException.getFormatInstance();
        }
        this.bitMatrix = bitMatrix;
    }

    private int copyBit(int i4, int i5, int i6) {
        return this.mirror ? this.bitMatrix.get(i5, i4) : this.bitMatrix.get(i4, i5) ? (i6 << 1) | 1 : i6 << 1;
    }

    public void mirror() {
        int i4 = 0;
        while (i4 < this.bitMatrix.getWidth()) {
            int i5 = i4 + 1;
            for (int i6 = i5; i6 < this.bitMatrix.getHeight(); i6++) {
                if (this.bitMatrix.get(i4, i6) != this.bitMatrix.get(i6, i4)) {
                    this.bitMatrix.flip(i6, i4);
                    this.bitMatrix.flip(i4, i6);
                }
            }
            i4 = i5;
        }
    }

    public byte[] readCodewords() throws FormatException {
        FormatInformation formatInformation = readFormatInformation();
        Version version = readVersion();
        DataMask dataMask = DataMask.values()[formatInformation.getDataMask()];
        int height = this.bitMatrix.getHeight();
        dataMask.unmaskBitMatrix(this.bitMatrix, height);
        BitMatrix bitMatrixBuildFunctionPattern = version.buildFunctionPattern();
        byte[] bArr = new byte[version.getTotalCodewords()];
        int i4 = height - 1;
        boolean z3 = true;
        int i5 = i4;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i5 > 0) {
            if (i5 == 6) {
                i5--;
            }
            for (int i9 = 0; i9 < height; i9++) {
                int i10 = z3 ? i4 - i9 : i9;
                for (int i11 = 0; i11 < 2; i11++) {
                    int i12 = i5 - i11;
                    if (!bitMatrixBuildFunctionPattern.get(i12, i10)) {
                        i7++;
                        i8 <<= 1;
                        if (this.bitMatrix.get(i12, i10)) {
                            i8 |= 1;
                        }
                        if (i7 == 8) {
                            bArr[i6] = (byte) i8;
                            i6++;
                            i7 = 0;
                            i8 = 0;
                        }
                    }
                }
            }
            z3 = !z3;
            i5 -= 2;
        }
        if (i6 == version.getTotalCodewords()) {
            return bArr;
        }
        throw FormatException.getFormatInstance();
    }

    public FormatInformation readFormatInformation() throws FormatException {
        FormatInformation formatInformation = this.parsedFormatInfo;
        if (formatInformation != null) {
            return formatInformation;
        }
        int iCopyBit = 0;
        int iCopyBit2 = 0;
        for (int i4 = 0; i4 < 6; i4++) {
            iCopyBit2 = copyBit(i4, 8, iCopyBit2);
        }
        int iCopyBit3 = copyBit(8, 7, copyBit(8, 8, copyBit(7, 8, iCopyBit2)));
        for (int i5 = 5; i5 >= 0; i5--) {
            iCopyBit3 = copyBit(8, i5, iCopyBit3);
        }
        int height = this.bitMatrix.getHeight();
        int i6 = height - 7;
        for (int i7 = height - 1; i7 >= i6; i7--) {
            iCopyBit = copyBit(8, i7, iCopyBit);
        }
        for (int i8 = height - 8; i8 < height; i8++) {
            iCopyBit = copyBit(i8, 8, iCopyBit);
        }
        FormatInformation formatInformationDecodeFormatInformation = FormatInformation.decodeFormatInformation(iCopyBit3, iCopyBit);
        this.parsedFormatInfo = formatInformationDecodeFormatInformation;
        if (formatInformationDecodeFormatInformation != null) {
            return formatInformationDecodeFormatInformation;
        }
        throw FormatException.getFormatInstance();
    }

    public Version readVersion() throws FormatException {
        Version version = this.parsedVersion;
        if (version != null) {
            return version;
        }
        int height = this.bitMatrix.getHeight();
        int i4 = (height - 17) / 4;
        if (i4 <= 6) {
            return Version.getVersionForNumber(i4);
        }
        int i5 = height - 11;
        int iCopyBit = 0;
        int iCopyBit2 = 0;
        for (int i6 = 5; i6 >= 0; i6--) {
            for (int i7 = height - 9; i7 >= i5; i7--) {
                iCopyBit2 = copyBit(i7, i6, iCopyBit2);
            }
        }
        Version versionDecodeVersionInformation = Version.decodeVersionInformation(iCopyBit2);
        if (versionDecodeVersionInformation != null && versionDecodeVersionInformation.getDimensionForVersion() == height) {
            this.parsedVersion = versionDecodeVersionInformation;
            return versionDecodeVersionInformation;
        }
        for (int i8 = 5; i8 >= 0; i8--) {
            for (int i9 = height - 9; i9 >= i5; i9--) {
                iCopyBit = copyBit(i8, i9, iCopyBit);
            }
        }
        Version versionDecodeVersionInformation2 = Version.decodeVersionInformation(iCopyBit);
        if (versionDecodeVersionInformation2 == null || versionDecodeVersionInformation2.getDimensionForVersion() != height) {
            throw FormatException.getFormatInstance();
        }
        this.parsedVersion = versionDecodeVersionInformation2;
        return versionDecodeVersionInformation2;
    }

    public void remask() {
        if (this.parsedFormatInfo == null) {
            return;
        }
        DataMask.values()[this.parsedFormatInfo.getDataMask()].unmaskBitMatrix(this.bitMatrix, this.bitMatrix.getHeight());
    }

    public void setMirror(boolean z3) {
        this.parsedVersion = null;
        this.parsedFormatInfo = null;
        this.mirror = z3;
    }
}
