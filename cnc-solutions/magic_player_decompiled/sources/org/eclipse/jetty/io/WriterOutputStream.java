package org.eclipse.jetty.io;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

/* JADX INFO: loaded from: classes2.dex */
public class WriterOutputStream extends OutputStream {
    private final byte[] _buf;
    public final String _encoding;
    public final Writer _writer;

    public WriterOutputStream(Writer writer, String str) {
        this._buf = new byte[1];
        this._writer = writer;
        this._encoding = str;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this._writer.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this._writer.flush();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        String str = this._encoding;
        if (str == null) {
            this._writer.write(new String(bArr));
        } else {
            this._writer.write(new String(bArr, str));
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i4, int i5) throws IOException {
        String str = this._encoding;
        if (str == null) {
            this._writer.write(new String(bArr, i4, i5));
        } else {
            this._writer.write(new String(bArr, i4, i5, str));
        }
    }

    public WriterOutputStream(Writer writer) {
        this._buf = new byte[1];
        this._writer = writer;
        this._encoding = null;
    }

    @Override // java.io.OutputStream
    public synchronized void write(int i4) {
        byte[] bArr = this._buf;
        bArr[0] = (byte) i4;
        write(bArr);
    }
}
