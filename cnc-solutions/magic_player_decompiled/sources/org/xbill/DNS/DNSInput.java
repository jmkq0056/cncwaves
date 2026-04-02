package org.xbill.DNS;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class DNSInput {
    private ByteBuffer byteBuffer;
    private int saved_pos = -1;
    private int saved_end = -1;

    public DNSInput(byte[] bArr) {
        this.byteBuffer = ByteBuffer.wrap(bArr);
    }

    private void require(int i4) throws WireParseException {
        if (i4 > remaining()) {
            throw new WireParseException("end of input");
        }
    }

    public void clearActive() {
        ByteBuffer byteBuffer = this.byteBuffer;
        byteBuffer.limit(byteBuffer.capacity());
    }

    public int current() {
        return this.byteBuffer.position();
    }

    public void jump(int i4) {
        if (i4 >= this.byteBuffer.capacity()) {
            throw new IllegalArgumentException("cannot jump past end of input");
        }
        this.byteBuffer.position(i4);
        ByteBuffer byteBuffer = this.byteBuffer;
        byteBuffer.limit(byteBuffer.capacity());
    }

    public void readByteArray(byte[] bArr, int i4, int i5) throws WireParseException {
        require(i5);
        this.byteBuffer.get(bArr, i4, i5);
    }

    public byte[] readCountedString() {
        return readByteArray(readU8());
    }

    public int readU16() throws WireParseException {
        require(2);
        return this.byteBuffer.getShort() & 65535;
    }

    public long readU32() throws WireParseException {
        require(4);
        return ((long) this.byteBuffer.getInt()) & 4294967295L;
    }

    public int readU8() throws WireParseException {
        require(1);
        return this.byteBuffer.get() & 255;
    }

    public int remaining() {
        return this.byteBuffer.remaining();
    }

    public void restore() {
        int i4 = this.saved_pos;
        if (i4 < 0) {
            throw new IllegalStateException("no previous state");
        }
        this.byteBuffer.position(i4);
        this.byteBuffer.limit(this.saved_end);
        this.saved_pos = -1;
        this.saved_end = -1;
    }

    public void restoreActive(int i4) {
        if (i4 > this.byteBuffer.capacity()) {
            throw new IllegalArgumentException("cannot set active region past end of input");
        }
        ByteBuffer byteBuffer = this.byteBuffer;
        byteBuffer.limit(byteBuffer.position());
    }

    public void save() {
        this.saved_pos = this.byteBuffer.position();
        this.saved_end = this.byteBuffer.limit();
    }

    public int saveActive() {
        return this.byteBuffer.limit();
    }

    public void setActive(int i4) {
        if (i4 > this.byteBuffer.capacity() - this.byteBuffer.position()) {
            throw new IllegalArgumentException("cannot set active region past end of input");
        }
        ByteBuffer byteBuffer = this.byteBuffer;
        byteBuffer.limit(byteBuffer.position() + i4);
    }

    public byte[] readByteArray(int i4) throws WireParseException {
        require(i4);
        byte[] bArr = new byte[i4];
        this.byteBuffer.get(bArr, 0, i4);
        return bArr;
    }

    public DNSInput(ByteBuffer byteBuffer) {
        this.byteBuffer = byteBuffer;
    }

    public byte[] readByteArray() {
        int iRemaining = remaining();
        byte[] bArr = new byte[iRemaining];
        this.byteBuffer.get(bArr, 0, iRemaining);
        return bArr;
    }
}
