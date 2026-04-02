package org.eclipse.jetty.util;

import android.support.v4.media.f;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.eclipse.jetty.io.BufferUtil;

/* JADX INFO: loaded from: classes2.dex */
public class MultiPartOutputStream extends FilterOutputStream {
    private String boundary;
    private byte[] boundaryBytes;
    private boolean inPart;
    private static final byte[] __CRLF = {13, 10};
    private static final byte[] __DASHDASH = {BufferUtil.MINUS, BufferUtil.MINUS};
    public static String MULTIPART_MIXED = "multipart/mixed";
    public static String MULTIPART_X_MIXED_REPLACE = "multipart/x-mixed-replace";

    public MultiPartOutputStream(OutputStream outputStream) {
        super(outputStream);
        this.inPart = false;
        StringBuilder sbA = f.a("jetty");
        sbA.append(System.identityHashCode(this));
        sbA.append(Long.toString(System.currentTimeMillis(), 36));
        String string = sbA.toString();
        this.boundary = string;
        this.boundaryBytes = string.getBytes("ISO-8859-1");
        this.inPart = false;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.inPart) {
            ((FilterOutputStream) this).out.write(__CRLF);
        }
        OutputStream outputStream = ((FilterOutputStream) this).out;
        byte[] bArr = __DASHDASH;
        outputStream.write(bArr);
        ((FilterOutputStream) this).out.write(this.boundaryBytes);
        ((FilterOutputStream) this).out.write(bArr);
        ((FilterOutputStream) this).out.write(__CRLF);
        this.inPart = false;
        super.close();
    }

    public String getBoundary() {
        return this.boundary;
    }

    public OutputStream getOut() {
        return ((FilterOutputStream) this).out;
    }

    public void startPart(String str) throws IOException {
        if (this.inPart) {
            ((FilterOutputStream) this).out.write(__CRLF);
        }
        this.inPart = true;
        ((FilterOutputStream) this).out.write(__DASHDASH);
        ((FilterOutputStream) this).out.write(this.boundaryBytes);
        OutputStream outputStream = ((FilterOutputStream) this).out;
        byte[] bArr = __CRLF;
        outputStream.write(bArr);
        if (str != null) {
            ((FilterOutputStream) this).out.write(("Content-Type: " + str).getBytes("ISO-8859-1"));
        }
        ((FilterOutputStream) this).out.write(bArr);
        ((FilterOutputStream) this).out.write(bArr);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i4, int i5) throws IOException {
        ((FilterOutputStream) this).out.write(bArr, i4, i5);
    }

    public void startPart(String str, String[] strArr) throws IOException {
        if (this.inPart) {
            ((FilterOutputStream) this).out.write(__CRLF);
        }
        this.inPart = true;
        ((FilterOutputStream) this).out.write(__DASHDASH);
        ((FilterOutputStream) this).out.write(this.boundaryBytes);
        OutputStream outputStream = ((FilterOutputStream) this).out;
        byte[] bArr = __CRLF;
        outputStream.write(bArr);
        if (str != null) {
            ((FilterOutputStream) this).out.write(("Content-Type: " + str).getBytes("ISO-8859-1"));
        }
        ((FilterOutputStream) this).out.write(bArr);
        for (int i4 = 0; strArr != null && i4 < strArr.length; i4++) {
            ((FilterOutputStream) this).out.write(strArr[i4].getBytes("ISO-8859-1"));
            ((FilterOutputStream) this).out.write(__CRLF);
        }
        ((FilterOutputStream) this).out.write(__CRLF);
    }
}
