package org.eclipse.jetty.http.gzip;

import g2.w;
import j2.c;
import j2.e;
import j2.f;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.Set;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.util.StringUtil;
import org.xbill.DNS.TTL;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CompressedResponseWrapper extends f {
    public static final int DEFAULT_BUFFER_SIZE = 8192;
    public static final int DEFAULT_MIN_COMPRESS_SIZE = 256;
    private int _bufferSize;
    private AbstractCompressedStream _compressedStream;
    private long _contentLength;
    private String _etag;
    private Set<String> _mimeTypes;
    private int _minCompressSize;
    private boolean _noCompression;
    public c _request;
    private PrintWriter _writer;

    public CompressedResponseWrapper(c cVar, e eVar) {
        super(eVar);
        this._bufferSize = 8192;
        this._minCompressSize = 256;
        this._contentLength = -1L;
        this._request = cVar;
    }

    private void setDeferredHeaders() {
        if (isCommitted()) {
            return;
        }
        long j4 = this._contentLength;
        if (j4 >= 0) {
            if (j4 < TTL.MAX_VALUE) {
                super.setContentLength((int) j4);
            } else {
                super.setHeader(HttpHeaders.CONTENT_LENGTH, Long.toString(j4));
            }
        }
        String str = this._etag;
        if (str != null) {
            super.setHeader(HttpHeaders.ETAG, str);
        }
    }

    @Override // j2.f, j2.e
    public void addHeader(String str, String str2) {
        if ("content-length".equalsIgnoreCase(str)) {
            this._contentLength = Long.parseLong(str2);
            AbstractCompressedStream abstractCompressedStream = this._compressedStream;
            if (abstractCompressedStream != null) {
                abstractCompressedStream.setContentLength();
                return;
            }
            return;
        }
        if ("content-type".equalsIgnoreCase(str)) {
            setContentType(str2);
            return;
        }
        if ("content-encoding".equalsIgnoreCase(str)) {
            super.addHeader(str, str2);
            if (isCommitted()) {
                return;
            }
            noCompression();
            return;
        }
        if ("etag".equalsIgnoreCase(str)) {
            this._etag = str2;
        } else {
            super.addHeader(str, str2);
        }
    }

    @Override // j2.f, j2.e
    public boolean containsHeader(String str) {
        if (this._noCompression || !"etag".equalsIgnoreCase(str) || this._etag == null) {
            return super.containsHeader(str);
        }
        return true;
    }

    public void finish() throws IOException {
        if (this._writer != null && !this._compressedStream.isClosed()) {
            this._writer.flush();
        }
        AbstractCompressedStream abstractCompressedStream = this._compressedStream;
        if (abstractCompressedStream != null) {
            abstractCompressedStream.finish();
        } else {
            setDeferredHeaders();
        }
    }

    @Override // g2.f0, g2.e0
    public void flushBuffer() throws IOException {
        PrintWriter printWriter = this._writer;
        if (printWriter != null) {
            printWriter.flush();
        }
        AbstractCompressedStream abstractCompressedStream = this._compressedStream;
        if (abstractCompressedStream != null) {
            abstractCompressedStream.flush();
        } else {
            getResponse().flushBuffer();
        }
    }

    @Override // g2.f0, g2.e0
    public int getBufferSize() {
        return this._bufferSize;
    }

    public long getContentLength() {
        return this._contentLength;
    }

    public String getETag() {
        return this._etag;
    }

    public int getMinCompressSize() {
        return this._minCompressSize;
    }

    @Override // g2.f0, g2.e0
    public w getOutputStream() {
        if (this._compressedStream == null) {
            if (getResponse().isCommitted() || this._noCompression) {
                return getResponse().getOutputStream();
            }
            this._compressedStream = newCompressedStream(this._request, (e) getResponse());
        } else if (this._writer != null) {
            throw new IllegalStateException("getWriter() called");
        }
        return this._compressedStream;
    }

    public c getRequest() {
        return this._request;
    }

    @Override // g2.f0, g2.e0
    public PrintWriter getWriter() {
        if (this._writer == null) {
            if (this._compressedStream != null) {
                throw new IllegalStateException("getOutputStream() called");
            }
            if (getResponse().isCommitted() || this._noCompression) {
                return getResponse().getWriter();
            }
            AbstractCompressedStream abstractCompressedStreamNewCompressedStream = newCompressedStream(this._request, (e) getResponse());
            this._compressedStream = abstractCompressedStreamNewCompressedStream;
            this._writer = newWriter(abstractCompressedStreamNewCompressedStream, getCharacterEncoding());
        }
        return this._writer;
    }

    public abstract AbstractCompressedStream newCompressedStream(c cVar, e eVar);

    public PrintWriter newWriter(OutputStream outputStream, String str) {
        return str == null ? new PrintWriter(outputStream) : new PrintWriter(new OutputStreamWriter(outputStream, str));
    }

    public void noCompression() {
        if (!this._noCompression) {
            setDeferredHeaders();
        }
        this._noCompression = true;
        AbstractCompressedStream abstractCompressedStream = this._compressedStream;
        if (abstractCompressedStream != null) {
            try {
                abstractCompressedStream.doNotCompress(false);
            } catch (IOException e4) {
                throw new IllegalStateException(e4);
            }
        }
    }

    @Override // g2.f0, g2.e0
    public void reset() {
        super.reset();
        AbstractCompressedStream abstractCompressedStream = this._compressedStream;
        if (abstractCompressedStream != null) {
            abstractCompressedStream.resetBuffer();
        }
        this._writer = null;
        this._compressedStream = null;
        this._noCompression = false;
        this._contentLength = -1L;
    }

    @Override // g2.f0, g2.e0
    public void resetBuffer() {
        super.resetBuffer();
        AbstractCompressedStream abstractCompressedStream = this._compressedStream;
        if (abstractCompressedStream != null) {
            abstractCompressedStream.resetBuffer();
        }
        this._writer = null;
        this._compressedStream = null;
    }

    @Override // j2.f, j2.e
    public void sendError(int i4, String str) {
        resetBuffer();
        super.sendError(i4, str);
    }

    @Override // j2.f, j2.e
    public void sendRedirect(String str) {
        resetBuffer();
        super.sendRedirect(str);
    }

    @Override // g2.f0, g2.e0
    public void setBufferSize(int i4) {
        this._bufferSize = i4;
        AbstractCompressedStream abstractCompressedStream = this._compressedStream;
        if (abstractCompressedStream != null) {
            abstractCompressedStream.setBufferSize(i4);
        }
    }

    @Override // g2.f0, g2.e0
    public void setContentLength(int i4) {
        if (this._noCompression) {
            super.setContentLength(i4);
        } else {
            setContentLength(i4);
        }
    }

    @Override // g2.f0, g2.e0
    public void setContentType(String str) {
        int iIndexOf;
        super.setContentType(str);
        if (this._noCompression) {
            return;
        }
        if (str != null && (iIndexOf = str.indexOf(";")) > 0) {
            str = str.substring(0, iIndexOf);
        }
        AbstractCompressedStream abstractCompressedStream = this._compressedStream;
        if (abstractCompressedStream == null || abstractCompressedStream.getOutputStream() == null) {
            if (this._mimeTypes != null || str == null || !str.contains(HttpHeaderValues.GZIP)) {
                Set<String> set = this._mimeTypes;
                if (set == null) {
                    return;
                }
                if (str != null && set.contains(StringUtil.asciiToLowerCase(str))) {
                    return;
                }
            }
            noCompression();
        }
    }

    @Override // j2.f, j2.e
    public void setHeader(String str, String str2) {
        if (this._noCompression) {
            super.setHeader(str, str2);
            return;
        }
        if ("content-length".equalsIgnoreCase(str)) {
            setContentLength(Long.parseLong(str2));
            return;
        }
        if ("content-type".equalsIgnoreCase(str)) {
            setContentType(str2);
            return;
        }
        if ("content-encoding".equalsIgnoreCase(str)) {
            super.setHeader(str, str2);
            if (isCommitted()) {
                return;
            }
            noCompression();
            return;
        }
        if ("etag".equalsIgnoreCase(str)) {
            this._etag = str2;
        } else {
            super.setHeader(str, str2);
        }
    }

    @Override // j2.f, j2.e
    public void setIntHeader(String str, int i4) {
        if (!"content-length".equalsIgnoreCase(str)) {
            super.setIntHeader(str, i4);
            return;
        }
        this._contentLength = i4;
        AbstractCompressedStream abstractCompressedStream = this._compressedStream;
        if (abstractCompressedStream != null) {
            abstractCompressedStream.setContentLength();
        }
    }

    public void setMimeTypes(Set<String> set) {
        this._mimeTypes = set;
    }

    public void setMinCompressSize(int i4) {
        this._minCompressSize = i4;
    }

    @Override // j2.f, j2.e
    public void setStatus(int i4, String str) {
        super.setStatus(i4, str);
        if (i4 < 200 || i4 == 204 || i4 == 205 || i4 >= 300) {
            noCompression();
        }
    }

    @Override // j2.f, j2.e
    public void sendError(int i4) {
        resetBuffer();
        super.sendError(i4);
    }

    @Override // j2.f, j2.e
    public void setStatus(int i4) {
        super.setStatus(i4);
        if (i4 < 200 || i4 == 204 || i4 == 205 || i4 >= 300) {
            noCompression();
        }
    }

    public void setContentLength(long j4) {
        this._contentLength = j4;
        AbstractCompressedStream abstractCompressedStream = this._compressedStream;
        if (abstractCompressedStream != null) {
            abstractCompressedStream.setContentLength();
            return;
        }
        if (!this._noCompression || j4 < 0) {
            return;
        }
        e eVar = (e) getResponse();
        long j5 = this._contentLength;
        if (j5 < TTL.MAX_VALUE) {
            eVar.setContentLength((int) j5);
        } else {
            eVar.setHeader(HttpHeaders.CONTENT_LENGTH, Long.toString(j5));
        }
    }
}
