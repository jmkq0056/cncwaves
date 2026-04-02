package com.google.zxing.common;

/* JADX INFO: loaded from: classes2.dex */
public final class BitSource {
    private int bitOffset;
    private int byteOffset;
    private final byte[] bytes;

    public BitSource(byte[] bArr) {
        this.bytes = bArr;
    }

    public int available() {
        return ((this.bytes.length - this.byteOffset) * 8) - this.bitOffset;
    }

    public int getBitOffset() {
        return this.bitOffset;
    }

    public int getByteOffset() {
        return this.byteOffset;
    }

    public int readBits(int i4) {
        if (i4 <= 0 || i4 > 32 || i4 > available()) {
            throw new IllegalArgumentException(String.valueOf(i4));
        }
        int i5 = this.bitOffset;
        int i6 = 0;
        if (i5 > 0) {
            int i7 = 8 - i5;
            int iMin = Math.min(i4, i7);
            int i8 = i7 - iMin;
            byte[] bArr = this.bytes;
            int i9 = this.byteOffset;
            int i10 = (((255 >> (8 - iMin)) << i8) & bArr[i9]) >> i8;
            i4 -= iMin;
            int i11 = this.bitOffset + iMin;
            this.bitOffset = i11;
            if (i11 == 8) {
                this.bitOffset = 0;
                this.byteOffset = i9 + 1;
            }
            i6 = i10;
        }
        if (i4 <= 0) {
            return i6;
        }
        while (i4 >= 8) {
            int i12 = i6 << 8;
            byte[] bArr2 = this.bytes;
            int i13 = this.byteOffset;
            i6 = (bArr2[i13] & 255) | i12;
            this.byteOffset = i13 + 1;
            i4 -= 8;
        }
        if (i4 <= 0) {
            return i6;
        }
        int i14 = 8 - i4;
        int i15 = (i6 << i4) | ((((255 >> i14) << i14) & this.bytes[this.byteOffset]) >> i14);
        this.bitOffset += i4;
        return i15;
    }
}
