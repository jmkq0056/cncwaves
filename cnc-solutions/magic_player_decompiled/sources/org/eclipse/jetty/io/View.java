package org.eclipse.jetty.io;

import org.eclipse.jetty.io.Buffer;

/* JADX INFO: loaded from: classes2.dex */
public class View extends AbstractBuffer {
    public Buffer _buffer;

    public static class CaseInsensitive extends View implements Buffer.CaseInsensitve {
        public CaseInsensitive() {
        }

        @Override // org.eclipse.jetty.io.View, org.eclipse.jetty.io.AbstractBuffer
        public boolean equals(Object obj) {
            return this == obj || ((obj instanceof Buffer) && ((Buffer) obj).equalsIgnoreCase(this)) || super.equals(obj);
        }

        public CaseInsensitive(Buffer buffer, int i4, int i5, int i6, int i7) {
            super(buffer, i4, i5, i6, i7);
        }

        public CaseInsensitive(Buffer buffer) {
            super(buffer);
        }
    }

    public View(Buffer buffer, int i4, int i5, int i6, int i7) {
        super(2, !buffer.isImmutable());
        this._buffer = buffer.buffer();
        setPutIndex(i6);
        setGetIndex(i5);
        setMarkIndex(i4);
        this._access = i7;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public byte[] array() {
        return this._buffer.array();
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public Buffer buffer() {
        return this._buffer.buffer();
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int capacity() {
        return this._buffer.capacity();
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public void clear() {
        setMarkIndex(-1);
        setGetIndex(0);
        setPutIndex(this._buffer.getIndex());
        setGetIndex(this._buffer.getIndex());
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public void compact() {
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer
    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof Buffer) && obj.equals(this)) || super.equals(obj);
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public boolean isReadOnly() {
        return this._buffer.isReadOnly();
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public boolean isVolatile() {
        return true;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public byte peek(int i4) {
        return this._buffer.peek(i4);
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public int poke(int i4, Buffer buffer) {
        return this._buffer.poke(i4, buffer);
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer
    public String toString() {
        return this._buffer == null ? "INVALID" : super.toString();
    }

    public void update(Buffer buffer) {
        this._access = 2;
        this._buffer = buffer.buffer();
        setGetIndex(0);
        setPutIndex(buffer.putIndex());
        setGetIndex(buffer.getIndex());
        setMarkIndex(buffer.markIndex());
        this._access = buffer.isReadOnly() ? 1 : 2;
    }

    @Override // org.eclipse.jetty.io.Buffer
    public int peek(int i4, byte[] bArr, int i5, int i6) {
        return this._buffer.peek(i4, bArr, i5, i6);
    }

    @Override // org.eclipse.jetty.io.Buffer
    public void poke(int i4, byte b4) {
        this._buffer.poke(i4, b4);
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public Buffer peek(int i4, int i5) {
        return this._buffer.peek(i4, i5);
    }

    @Override // org.eclipse.jetty.io.AbstractBuffer, org.eclipse.jetty.io.Buffer
    public int poke(int i4, byte[] bArr, int i5, int i6) {
        return this._buffer.poke(i4, bArr, i5, i6);
    }

    public View(Buffer buffer) {
        super(2, !buffer.isImmutable());
        this._buffer = buffer.buffer();
        setPutIndex(buffer.putIndex());
        setGetIndex(buffer.getIndex());
        setMarkIndex(buffer.markIndex());
        this._access = buffer.isReadOnly() ? 1 : 2;
    }

    public void update(int i4, int i5) {
        int i6 = this._access;
        this._access = 2;
        setGetIndex(0);
        setPutIndex(i5);
        setGetIndex(i4);
        setMarkIndex(-1);
        this._access = i6;
    }

    public View() {
        super(2, true);
    }
}
