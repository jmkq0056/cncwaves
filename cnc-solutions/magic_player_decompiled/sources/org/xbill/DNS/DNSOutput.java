package org.xbill.DNS;

/* JADX INFO: loaded from: classes2.dex */
public class DNSOutput {
    private byte[] array;
    private int pos;
    private int saved_pos;

    public DNSOutput(int i4) {
        this.array = new byte[i4];
        this.pos = 0;
        this.saved_pos = -1;
    }

    private void check(long j4, int i4) {
        long j5 = 1 << i4;
        if (j4 < 0 || j4 > j5) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(j4);
            stringBuffer.append(" out of range for ");
            stringBuffer.append(i4);
            stringBuffer.append(" bit value");
            throw new IllegalArgumentException(stringBuffer.toString());
        }
    }

    private void need(int i4) {
        byte[] bArr = this.array;
        int length = bArr.length;
        int i5 = this.pos;
        if (length - i5 >= i4) {
            return;
        }
        int length2 = bArr.length * 2;
        if (length2 < i5 + i4) {
            length2 = i5 + i4;
        }
        byte[] bArr2 = new byte[length2];
        System.arraycopy(bArr, 0, bArr2, 0, i5);
        this.array = bArr2;
    }

    public int current() {
        return this.pos;
    }

    public void jump(int i4) {
        if (i4 > this.pos) {
            throw new IllegalArgumentException("cannot jump past end of data");
        }
        this.pos = i4;
    }

    public void restore() {
        int i4 = this.saved_pos;
        if (i4 < 0) {
            throw new IllegalStateException("no previous state");
        }
        this.pos = i4;
        this.saved_pos = -1;
    }

    public void save() {
        this.saved_pos = this.pos;
    }

    public byte[] toByteArray() {
        int i4 = this.pos;
        byte[] bArr = new byte[i4];
        System.arraycopy(this.array, 0, bArr, 0, i4);
        return bArr;
    }

    public void writeByteArray(byte[] bArr, int i4, int i5) {
        need(i5);
        System.arraycopy(bArr, i4, this.array, this.pos, i5);
        this.pos += i5;
    }

    public void writeCountedString(byte[] bArr) {
        if (bArr.length > 255) {
            throw new IllegalArgumentException("Invalid counted string");
        }
        need(bArr.length + 1);
        byte[] bArr2 = this.array;
        int i4 = this.pos;
        this.pos = i4 + 1;
        bArr2[i4] = (byte) (255 & bArr.length);
        writeByteArray(bArr, 0, bArr.length);
    }

    public void writeU16(int i4) {
        check(i4, 16);
        need(2);
        byte[] bArr = this.array;
        int i5 = this.pos;
        int i6 = i5 + 1;
        this.pos = i6;
        bArr[i5] = (byte) ((i4 >>> 8) & 255);
        this.pos = i6 + 1;
        bArr[i6] = (byte) (i4 & 255);
    }

    public void writeU16At(int i4, int i5) {
        check(i4, 16);
        if (i5 > this.pos - 2) {
            throw new IllegalArgumentException("cannot write past end of data");
        }
        byte[] bArr = this.array;
        bArr[i5] = (byte) ((i4 >>> 8) & 255);
        bArr[i5 + 1] = (byte) (i4 & 255);
    }

    public void writeU32(long j4) {
        check(j4, 32);
        need(4);
        byte[] bArr = this.array;
        int i4 = this.pos;
        int i5 = i4 + 1;
        this.pos = i5;
        bArr[i4] = (byte) ((j4 >>> 24) & 255);
        int i6 = i5 + 1;
        this.pos = i6;
        bArr[i5] = (byte) ((j4 >>> 16) & 255);
        int i7 = i6 + 1;
        this.pos = i7;
        bArr[i6] = (byte) ((j4 >>> 8) & 255);
        this.pos = i7 + 1;
        bArr[i7] = (byte) (j4 & 255);
    }

    public void writeU8(int i4) {
        check(i4, 8);
        need(1);
        byte[] bArr = this.array;
        int i5 = this.pos;
        this.pos = i5 + 1;
        bArr[i5] = (byte) (i4 & 255);
    }

    public void writeByteArray(byte[] bArr) {
        writeByteArray(bArr, 0, bArr.length);
    }

    public DNSOutput() {
        this(32);
    }
}
