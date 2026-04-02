package org.eclipse.jetty.server;

import g2.w;
import java.io.IOException;
import java.io.Writer;
import org.eclipse.jetty.http.AbstractGenerator;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.io.EofException;
import org.eclipse.jetty.util.ByteArrayOutputStream2;

/* JADX INFO: loaded from: classes2.dex */
public class HttpOutput extends w {
    public ByteArrayOutputStream2 _bytes;
    public String _characterEncoding;
    public char[] _chars;
    private boolean _closed;
    public final AbstractHttpConnection _connection;
    public Writer _converter;
    public final AbstractGenerator _generator;
    private ByteArrayBuffer _onebyte;

    public HttpOutput(AbstractHttpConnection abstractHttpConnection) {
        this._connection = abstractHttpConnection;
        this._generator = (AbstractGenerator) abstractHttpConnection.getGenerator();
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this._closed = true;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        this._generator.flush(getMaxIdleTime());
    }

    public int getMaxIdleTime() {
        return this._connection.getMaxIdleTime();
    }

    public boolean isClosed() {
        return this._closed;
    }

    public boolean isWritten() {
        return this._generator.getContentWritten() > 0;
    }

    @Override // g2.w
    public void print(String str) throws IOException {
        write(str.getBytes());
    }

    public void reopen() {
        this._closed = false;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i4, int i5) throws IOException {
        write(new ByteArrayBuffer(bArr, i4, i5));
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(new ByteArrayBuffer(bArr));
    }

    @Override // java.io.OutputStream
    public void write(int i4) throws IOException {
        ByteArrayBuffer byteArrayBuffer = this._onebyte;
        if (byteArrayBuffer == null) {
            this._onebyte = new ByteArrayBuffer(1);
        } else {
            byteArrayBuffer.clear();
        }
        this._onebyte.put((byte) i4);
        write(this._onebyte);
    }

    private void write(Buffer buffer) throws IOException {
        if (!this._closed) {
            if (this._generator.isOpen()) {
                while (this._generator.isBufferFull()) {
                    this._generator.blockForOutput(getMaxIdleTime());
                    if (!this._closed) {
                        if (!this._generator.isOpen()) {
                            throw new EofException();
                        }
                    } else {
                        throw new IOException("Closed");
                    }
                }
                this._generator.addContent(buffer, false);
                if (this._generator.isAllContentWritten()) {
                    flush();
                    close();
                } else if (this._generator.isBufferFull()) {
                    this._connection.commitResponse(false);
                }
                while (buffer.length() > 0 && this._generator.isOpen()) {
                    this._generator.blockForOutput(getMaxIdleTime());
                }
                return;
            }
            throw new EofException();
        }
        throw new IOException("Closed");
    }
}
