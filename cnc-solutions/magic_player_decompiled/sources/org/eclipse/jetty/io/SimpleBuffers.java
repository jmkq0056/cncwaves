package org.eclipse.jetty.io;

/* JADX INFO: loaded from: classes2.dex */
public class SimpleBuffers implements Buffers {
    public final Buffer _buffer;
    public boolean _bufferOut;
    public final Buffer _header;
    public boolean _headerOut;

    public SimpleBuffers(Buffer buffer, Buffer buffer2) {
        this._header = buffer;
        this._buffer = buffer2;
    }

    @Override // org.eclipse.jetty.io.Buffers
    public Buffer getBuffer() {
        Buffer buffer;
        synchronized (this) {
            Buffer buffer2 = this._buffer;
            if (buffer2 != null && !this._bufferOut) {
                this._bufferOut = true;
                return buffer2;
            }
            if (buffer2 == null || (buffer = this._header) == null || buffer.capacity() != this._buffer.capacity() || this._headerOut) {
                return this._buffer != null ? new ByteArrayBuffer(this._buffer.capacity()) : new ByteArrayBuffer(4096);
            }
            this._headerOut = true;
            return this._header;
        }
    }

    @Override // org.eclipse.jetty.io.Buffers
    public Buffer getHeader() {
        synchronized (this) {
            Buffer buffer = this._header;
            if (buffer != null && !this._headerOut) {
                this._headerOut = true;
                return buffer;
            }
            if (this._buffer != null && buffer != null && buffer.capacity() == this._buffer.capacity() && !this._bufferOut) {
                this._bufferOut = true;
                return this._buffer;
            }
            if (this._header != null) {
                return new ByteArrayBuffer(this._header.capacity());
            }
            return new ByteArrayBuffer(4096);
        }
    }

    @Override // org.eclipse.jetty.io.Buffers
    public void returnBuffer(Buffer buffer) {
        synchronized (this) {
            buffer.clear();
            if (buffer == this._header) {
                this._headerOut = false;
            }
            if (buffer == this._buffer) {
                this._bufferOut = false;
            }
        }
    }

    @Override // org.eclipse.jetty.io.Buffers
    public Buffer getBuffer(int i4) {
        synchronized (this) {
            Buffer buffer = this._header;
            if (buffer != null && buffer.capacity() == i4) {
                return getHeader();
            }
            Buffer buffer2 = this._buffer;
            if (buffer2 == null || buffer2.capacity() != i4) {
                return null;
            }
            return getBuffer();
        }
    }
}
