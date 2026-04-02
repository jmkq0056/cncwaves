package com.google.zxing.datamatrix.decoder;

import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.zxing.FormatException;
import org.xbill.DNS.WKSRecord;

/* JADX INFO: loaded from: classes2.dex */
public final class Version {
    private static final Version[] VERSIONS = buildVersions();
    private final int dataRegionSizeColumns;
    private final int dataRegionSizeRows;
    private final ECBlocks ecBlocks;
    private final int symbolSizeColumns;
    private final int symbolSizeRows;
    private final int totalCodewords;
    private final int versionNumber;

    public static final class ECB {
        private final int count;
        private final int dataCodewords;

        public int getCount() {
            return this.count;
        }

        public int getDataCodewords() {
            return this.dataCodewords;
        }

        private ECB(int i4, int i5) {
            this.count = i4;
            this.dataCodewords = i5;
        }
    }

    private Version(int i4, int i5, int i6, int i7, int i8, ECBlocks eCBlocks) {
        this.versionNumber = i4;
        this.symbolSizeRows = i5;
        this.symbolSizeColumns = i6;
        this.dataRegionSizeRows = i7;
        this.dataRegionSizeColumns = i8;
        this.ecBlocks = eCBlocks;
        int eCCodewords = eCBlocks.getECCodewords();
        int dataCodewords = 0;
        for (ECB ecb : eCBlocks.getECBlocks()) {
            dataCodewords += (ecb.getDataCodewords() + eCCodewords) * ecb.getCount();
        }
        this.totalCodewords = dataCodewords;
    }

    private static Version[] buildVersions() {
        int i4 = 1;
        int i5 = 5;
        int i6 = 8;
        Version version = new Version(3, 14, 14, 12, 12, new ECBlocks(10, new ECB(i4, i6)));
        int i7 = 2;
        int i8 = 12;
        int i9 = 18;
        Version version2 = new Version(7, 22, 22, 20, 20, new ECBlocks(20, new ECB(i4, 30)));
        int i10 = 6;
        int i11 = 36;
        int i12 = 62;
        int i13 = 56;
        int i14 = 68;
        ECB ecb = new ECB(i4, 5);
        ECB ecb2 = new ECB(i4, 10);
        ECB ecb3 = new ECB(i4, 16);
        return new Version[]{new Version(1, 10, 10, 8, 8, new ECBlocks(i5, new ECB(i4, 3))), new Version(2, 12, 12, 10, 10, new ECBlocks(7, new ECB(i4, i5))), version, new Version(4, 16, 16, 14, 14, new ECBlocks(i8, new ECB(i4, i8))), new Version(5, 18, 18, 16, 16, new ECBlocks(14, new ECB(i4, i9))), new Version(6, 20, 20, 18, 18, new ECBlocks(i9, new ECB(i4, 22))), version2, new Version(8, 24, 24, 22, 22, new ECBlocks(24, new ECB(i4, i11))), new Version(9, 26, 26, 24, 24, new ECBlocks(28, new ECB(i4, 44))), new Version(10, 32, 32, 14, 14, new ECBlocks(i11, new ECB(i4, i12))), new Version(11, 36, 36, 16, 16, new ECBlocks(42, new ECB(i4, 86))), new Version(12, 40, 40, 18, 18, new ECBlocks(48, new ECB(i4, 114))), new Version(13, 44, 44, 20, 20, new ECBlocks(i13, new ECB(i4, 144))), new Version(14, 48, 48, 22, 22, new ECBlocks(i14, new ECB(i4, 174))), new Version(15, 52, 52, 24, 24, new ECBlocks(42, new ECB(i7, 102))), new Version(16, 64, 64, 14, 14, new ECBlocks(i13, new ECB(i7, WKSRecord.Service.EMFIS_DATA))), new Version(17, 72, 72, 16, 16, new ECBlocks(i11, new ECB(4, 92))), new Version(18, 80, 80, 18, 18, new ECBlocks(48, new ECB(4, 114))), new Version(19, 88, 88, 20, 20, new ECBlocks(i13, new ECB(4, 144))), new Version(20, 96, 96, 22, 22, new ECBlocks(i14, new ECB(4, 174))), new Version(21, 104, 104, 24, 24, new ECBlocks(i13, new ECB(i10, WKSRecord.Service.PROFILE))), new Version(22, 120, 120, 18, 18, new ECBlocks(i14, new ECB(i10, HideBottomViewOnScrollBehavior.EXIT_ANIMATION_DURATION))), new Version(23, WKSRecord.Service.CISCO_SYS, WKSRecord.Service.CISCO_SYS, 20, 20, new ECBlocks(i12, new ECB(i6, 163))), new Version(24, 144, 144, 22, 22, new ECBlocks(i12, new ECB(i6, 156), new ECB(i7, 155))), new Version(25, 8, 18, 6, 16, new ECBlocks(7, ecb)), new Version(26, 8, 32, 6, 14, new ECBlocks(11, ecb2)), new Version(27, 12, 26, 10, 24, new ECBlocks(14, ecb3)), new Version(28, 12, 36, 10, 16, new ECBlocks(i9, new ECB(i4, 22))), new Version(29, 16, 36, 14, 16, new ECBlocks(24, new ECB(i4, 32))), new Version(30, 16, 48, 14, 22, new ECBlocks(28, new ECB(i4, 49)))};
    }

    public static Version getVersionForDimensions(int i4, int i5) throws FormatException {
        if ((i4 & 1) != 0 || (i5 & 1) != 0) {
            throw FormatException.getFormatInstance();
        }
        for (Version version : VERSIONS) {
            if (version.symbolSizeRows == i4 && version.symbolSizeColumns == i5) {
                return version;
            }
        }
        throw FormatException.getFormatInstance();
    }

    public int getDataRegionSizeColumns() {
        return this.dataRegionSizeColumns;
    }

    public int getDataRegionSizeRows() {
        return this.dataRegionSizeRows;
    }

    public ECBlocks getECBlocks() {
        return this.ecBlocks;
    }

    public int getSymbolSizeColumns() {
        return this.symbolSizeColumns;
    }

    public int getSymbolSizeRows() {
        return this.symbolSizeRows;
    }

    public int getTotalCodewords() {
        return this.totalCodewords;
    }

    public int getVersionNumber() {
        return this.versionNumber;
    }

    public String toString() {
        return String.valueOf(this.versionNumber);
    }

    public static final class ECBlocks {
        private final ECB[] ecBlocks;
        private final int ecCodewords;

        public ECB[] getECBlocks() {
            return this.ecBlocks;
        }

        public int getECCodewords() {
            return this.ecCodewords;
        }

        private ECBlocks(int i4, ECB ecb) {
            this.ecCodewords = i4;
            this.ecBlocks = new ECB[]{ecb};
        }

        private ECBlocks(int i4, ECB ecb, ECB ecb2) {
            this.ecCodewords = i4;
            this.ecBlocks = new ECB[]{ecb, ecb2};
        }
    }
}
