package org.eclipse.jetty.util;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class ReadLineInputStream extends BufferedInputStream {
    public boolean _seenCRLF;
    public boolean _skipLF;

    public ReadLineInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() {
        int i4;
        i4 = super.read();
        if (this._skipLF) {
            this._skipLF = false;
            if (this._seenCRLF && i4 == 10) {
                i4 = super.read();
            }
        }
        return i4;
    }

    public String readLine() throws IOException {
        mark(((BufferedInputStream) this).buf.length);
        while (true) {
            int i4 = super.read();
            int i5 = ((BufferedInputStream) this).markpos;
            if (i5 < 0) {
                throw new IOException("Buffer size exceeded: no line terminator");
            }
            if (i4 == -1) {
                ((BufferedInputStream) this).markpos = -1;
                if (((BufferedInputStream) this).pos > i5) {
                    return new String(((BufferedInputStream) this).buf, i5, ((BufferedInputStream) this).pos - i5, StringUtil.__UTF8_CHARSET);
                }
                return null;
            }
            if (i4 == 13) {
                int i6 = ((BufferedInputStream) this).pos;
                if (!this._seenCRLF || i6 >= ((BufferedInputStream) this).count) {
                    this._skipLF = true;
                } else {
                    byte[] bArr = ((BufferedInputStream) this).buf;
                    int i7 = ((BufferedInputStream) this).pos;
                    if (bArr[i7] == 10) {
                        ((BufferedInputStream) this).pos = i7 + 1;
                    }
                }
                int i8 = ((BufferedInputStream) this).markpos;
                ((BufferedInputStream) this).markpos = -1;
                return new String(((BufferedInputStream) this).buf, i8, (i6 - i8) - 1, StringUtil.__UTF8_CHARSET);
            }
            if (i4 == 10) {
                if (!this._skipLF) {
                    ((BufferedInputStream) this).markpos = -1;
                    return new String(((BufferedInputStream) this).buf, i5, (((BufferedInputStream) this).pos - i5) - 1, StringUtil.__UTF8_CHARSET);
                }
                this._skipLF = false;
                this._seenCRLF = true;
                ((BufferedInputStream) this).markpos = i5 + 1;
            }
        }
    }

    public ReadLineInputStream(InputStream inputStream, int i4) {
        super(inputStream, i4);
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i4, int i5) {
        if (this._skipLF && i5 > 0) {
            this._skipLF = false;
            if (this._seenCRLF) {
                int i6 = super.read();
                if (i6 == -1) {
                    return -1;
                }
                if (i6 != 10) {
                    bArr[i4] = (byte) (i6 & 255);
                    return super.read(bArr, i4 + 1, i5 - 1) + 1;
                }
            }
        }
        return super.read(bArr, i4, i5);
    }
}
