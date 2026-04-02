package org.eclipse.jetty.util;

import android.support.v4.media.f;
import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes2.dex */
public class MultiPartWriter extends FilterWriter {
    public static String MULTIPART_MIXED = MultiPartOutputStream.MULTIPART_MIXED;
    public static String MULTIPART_X_MIXED_REPLACE = MultiPartOutputStream.MULTIPART_X_MIXED_REPLACE;
    private static final String __CRLF = "\r\n";
    private static final String __DASHDASH = "--";
    private String boundary;
    private boolean inPart;

    public MultiPartWriter(Writer writer) {
        super(writer);
        this.inPart = false;
        StringBuilder sbA = f.a("jetty");
        sbA.append(System.identityHashCode(this));
        sbA.append(Long.toString(System.currentTimeMillis(), 36));
        this.boundary = sbA.toString();
        this.inPart = false;
    }

    @Override // java.io.FilterWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.inPart) {
            ((FilterWriter) this).out.write("\r\n");
        }
        ((FilterWriter) this).out.write(__DASHDASH);
        ((FilterWriter) this).out.write(this.boundary);
        ((FilterWriter) this).out.write(__DASHDASH);
        ((FilterWriter) this).out.write("\r\n");
        this.inPart = false;
        super.close();
    }

    public void endPart() throws IOException {
        if (this.inPart) {
            ((FilterWriter) this).out.write("\r\n");
        }
        this.inPart = false;
    }

    public String getBoundary() {
        return this.boundary;
    }

    public void startPart(String str) throws IOException {
        if (this.inPart) {
            ((FilterWriter) this).out.write("\r\n");
        }
        ((FilterWriter) this).out.write(__DASHDASH);
        ((FilterWriter) this).out.write(this.boundary);
        ((FilterWriter) this).out.write("\r\n");
        ((FilterWriter) this).out.write("Content-Type: ");
        ((FilterWriter) this).out.write(str);
        ((FilterWriter) this).out.write("\r\n");
        ((FilterWriter) this).out.write("\r\n");
        this.inPart = true;
    }

    public void startPart(String str, String[] strArr) throws IOException {
        if (this.inPart) {
            ((FilterWriter) this).out.write("\r\n");
        }
        ((FilterWriter) this).out.write(__DASHDASH);
        ((FilterWriter) this).out.write(this.boundary);
        ((FilterWriter) this).out.write("\r\n");
        ((FilterWriter) this).out.write("Content-Type: ");
        ((FilterWriter) this).out.write(str);
        ((FilterWriter) this).out.write("\r\n");
        for (int i4 = 0; strArr != null && i4 < strArr.length; i4++) {
            ((FilterWriter) this).out.write(strArr[i4]);
            ((FilterWriter) this).out.write("\r\n");
        }
        ((FilterWriter) this).out.write("\r\n");
        this.inPart = true;
    }
}
