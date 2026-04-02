package org.eclipse.jetty.util;

import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class ByteArrayOutputStream2 extends ByteArrayOutputStream {
    public ByteArrayOutputStream2() {
    }

    public byte[] getBuf() {
        return ((ByteArrayOutputStream) this).buf;
    }

    public int getCount() {
        return ((ByteArrayOutputStream) this).count;
    }

    public void reset(int i4) {
        reset();
        if (((ByteArrayOutputStream) this).buf.length < i4) {
            ((ByteArrayOutputStream) this).buf = new byte[i4];
        }
    }

    public void setCount(int i4) {
        ((ByteArrayOutputStream) this).count = i4;
    }

    public void writeUnchecked(int i4) {
        byte[] bArr = ((ByteArrayOutputStream) this).buf;
        int i5 = ((ByteArrayOutputStream) this).count;
        ((ByteArrayOutputStream) this).count = i5 + 1;
        bArr[i5] = (byte) i4;
    }

    public ByteArrayOutputStream2(int i4) {
        super(i4);
    }
}
