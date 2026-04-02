package org.eclipse.jetty.util;

import android.support.v4.media.f;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;

/* JADX INFO: loaded from: classes2.dex */
public class ByteArrayISO8859Writer extends Writer {
    private ByteArrayOutputStream2 _bout;
    private byte[] _buf;
    private boolean _fixed;
    private int _size;
    private OutputStreamWriter _writer;

    public ByteArrayISO8859Writer() {
        this._bout = null;
        this._writer = null;
        this._fixed = false;
        this._buf = new byte[2048];
    }

    private void writeEncoded(char[] cArr, int i4, int i5) throws IOException {
        ByteArrayOutputStream2 byteArrayOutputStream2 = this._bout;
        if (byteArrayOutputStream2 == null) {
            this._bout = new ByteArrayOutputStream2(i5 * 2);
            this._writer = new OutputStreamWriter(this._bout, "ISO-8859-1");
        } else {
            byteArrayOutputStream2.reset();
        }
        this._writer.write(cArr, i4, i5);
        this._writer.flush();
        ensureSpareCapacity(this._bout.getCount());
        System.arraycopy(this._bout.getBuf(), 0, this._buf, this._size, this._bout.getCount());
        this._size = this._bout.getCount() + this._size;
    }

    public int capacity() {
        return this._buf.length;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public void destroy() {
        this._buf = null;
    }

    public void ensureSpareCapacity(int i4) throws IOException {
        int i5 = this._size;
        int i6 = i5 + i4;
        byte[] bArr = this._buf;
        if (i6 > bArr.length) {
            if (this._fixed) {
                StringBuilder sbA = f.a("Buffer overflow: ");
                sbA.append(this._buf.length);
                throw new IOException(sbA.toString());
            }
            byte[] bArr2 = new byte[((bArr.length + i4) * 4) / 3];
            System.arraycopy(bArr, 0, bArr2, 0, i5);
            this._buf = bArr2;
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
    }

    public byte[] getBuf() {
        return this._buf;
    }

    public byte[] getByteArray() {
        int i4 = this._size;
        byte[] bArr = new byte[i4];
        System.arraycopy(this._buf, 0, bArr, 0, i4);
        return bArr;
    }

    public Object getLock() {
        return ((Writer) this).lock;
    }

    public void resetWriter() {
        this._size = 0;
    }

    public void setLength(int i4) {
        this._size = i4;
    }

    public int size() {
        return this._size;
    }

    public int spareCapacity() {
        return this._buf.length - this._size;
    }

    public void write(char c4) throws IOException {
        ensureSpareCapacity(1);
        if (c4 < 0 || c4 > 127) {
            writeEncoded(new char[]{c4}, 0, 1);
            return;
        }
        byte[] bArr = this._buf;
        int i4 = this._size;
        this._size = i4 + 1;
        bArr[i4] = (byte) c4;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        outputStream.write(this._buf, 0, this._size);
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        ensureSpareCapacity(cArr.length);
        for (int i4 = 0; i4 < cArr.length; i4++) {
            char c4 = cArr[i4];
            if (c4 >= 0 && c4 <= 127) {
                byte[] bArr = this._buf;
                int i5 = this._size;
                this._size = i5 + 1;
                bArr[i5] = (byte) c4;
            } else {
                writeEncoded(cArr, i4, cArr.length - i4);
                return;
            }
        }
    }

    public ByteArrayISO8859Writer(int i4) {
        this._bout = null;
        this._writer = null;
        this._fixed = false;
        this._buf = new byte[i4];
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i4, int i5) throws IOException {
        ensureSpareCapacity(i5);
        for (int i6 = 0; i6 < i5; i6++) {
            int i7 = i4 + i6;
            char c4 = cArr[i7];
            if (c4 >= 0 && c4 <= 127) {
                byte[] bArr = this._buf;
                int i8 = this._size;
                this._size = i8 + 1;
                bArr[i8] = (byte) c4;
            } else {
                writeEncoded(cArr, i7, i5 - i6);
                return;
            }
        }
    }

    public ByteArrayISO8859Writer(byte[] bArr) {
        this._bout = null;
        this._writer = null;
        this._fixed = false;
        this._buf = bArr;
        this._fixed = true;
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        if (str == null) {
            write("null", 0, 4);
            return;
        }
        int length = str.length();
        ensureSpareCapacity(length);
        for (int i4 = 0; i4 < length; i4++) {
            char cCharAt = str.charAt(i4);
            if (cCharAt >= 0 && cCharAt <= 127) {
                byte[] bArr = this._buf;
                int i5 = this._size;
                this._size = i5 + 1;
                bArr[i5] = (byte) cCharAt;
            } else {
                writeEncoded(str.toCharArray(), i4, length - i4);
                return;
            }
        }
    }

    @Override // java.io.Writer
    public void write(String str, int i4, int i5) throws IOException {
        ensureSpareCapacity(i5);
        for (int i6 = 0; i6 < i5; i6++) {
            int i7 = i4 + i6;
            char cCharAt = str.charAt(i7);
            if (cCharAt >= 0 && cCharAt <= 127) {
                byte[] bArr = this._buf;
                int i8 = this._size;
                this._size = i8 + 1;
                bArr[i8] = (byte) cCharAt;
            } else {
                writeEncoded(str.toCharArray(), i7, i5 - i6);
                return;
            }
        }
    }
}
