package org.eclipse.jetty.http.gzip;

import g2.w;
import j2.c;
import j2.e;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.zip.DeflaterOutputStream;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.util.ByteArrayOutputStream2;
import org.xbill.DNS.TTL;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractCompressedStream extends w {
    public ByteArrayOutputStream2 _bOut;
    public boolean _closed;
    public DeflaterOutputStream _compressedOutputStream;
    public boolean _doNotCompress;
    private final String _encoding;
    public OutputStream _out;
    public final e _response;
    public final String _vary;
    public final CompressedResponseWrapper _wrapper;

    public AbstractCompressedStream(String str, c cVar, CompressedResponseWrapper compressedResponseWrapper, String str2) throws IOException {
        this._encoding = str;
        this._wrapper = compressedResponseWrapper;
        this._response = (e) compressedResponseWrapper.getResponse();
        this._vary = str2;
        if (compressedResponseWrapper.getMinCompressSize() == 0) {
            doCompress();
        }
    }

    private void checkOut(int i4) throws IOException {
        if (this._closed) {
            throw new IOException("CLOSED");
        }
        if (this._out != null) {
            ByteArrayOutputStream2 byteArrayOutputStream2 = this._bOut;
            if (byteArrayOutputStream2 == null || i4 < byteArrayOutputStream2.getBuf().length - this._bOut.getCount()) {
                return;
            }
            long contentLength = this._wrapper.getContentLength();
            if (contentLength < 0 || contentLength >= this._wrapper.getMinCompressSize()) {
                doCompress();
                return;
            } else {
                doNotCompress(false);
                return;
            }
        }
        if (i4 <= this._wrapper.getBufferSize()) {
            ByteArrayOutputStream2 byteArrayOutputStream22 = new ByteArrayOutputStream2(this._wrapper.getBufferSize());
            this._bOut = byteArrayOutputStream22;
            this._out = byteArrayOutputStream22;
        } else {
            long contentLength2 = this._wrapper.getContentLength();
            if (contentLength2 < 0 || contentLength2 >= this._wrapper.getMinCompressSize()) {
                doCompress();
            } else {
                doNotCompress(false);
            }
        }
    }

    public void addHeader(String str, String str2) {
        this._response.addHeader(str, str2);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this._closed) {
            return;
        }
        if (this._wrapper.getRequest().getAttribute("javax.servlet.include.request_uri") != null) {
            flush();
            return;
        }
        if (this._bOut != null) {
            long contentLength = this._wrapper.getContentLength();
            if (contentLength < 0) {
                contentLength = this._bOut.getCount();
                this._wrapper.setContentLength(contentLength);
            }
            if (contentLength < this._wrapper.getMinCompressSize()) {
                doNotCompress(false);
            } else {
                doCompress();
            }
        } else if (this._out == null) {
            doNotCompress(false);
        }
        DeflaterOutputStream deflaterOutputStream = this._compressedOutputStream;
        if (deflaterOutputStream != null) {
            deflaterOutputStream.close();
        } else {
            this._out.close();
        }
        this._closed = true;
    }

    public abstract DeflaterOutputStream createStream();

    public void doCompress() throws IOException {
        if (this._compressedOutputStream == null) {
            if (this._response.isCommitted()) {
                throw new IllegalStateException();
            }
            String str = this._encoding;
            if (str != null) {
                setHeader(HttpHeaders.CONTENT_ENCODING, str);
                if (this._response.containsHeader(HttpHeaders.CONTENT_ENCODING)) {
                    addHeader(HttpHeaders.VARY, this._vary);
                    DeflaterOutputStream deflaterOutputStreamCreateStream = createStream();
                    this._compressedOutputStream = deflaterOutputStreamCreateStream;
                    this._out = deflaterOutputStreamCreateStream;
                    if (deflaterOutputStreamCreateStream != null) {
                        ByteArrayOutputStream2 byteArrayOutputStream2 = this._bOut;
                        if (byteArrayOutputStream2 != null) {
                            deflaterOutputStreamCreateStream.write(byteArrayOutputStream2.getBuf(), 0, this._bOut.getCount());
                            this._bOut = null;
                        }
                        String eTag = this._wrapper.getETag();
                        if (eTag != null) {
                            setHeader(HttpHeaders.ETAG, eTag.substring(0, eTag.length() - 1) + '-' + this._encoding + '\"');
                            return;
                        }
                        return;
                    }
                }
            }
            doNotCompress(true);
        }
    }

    public void doNotCompress(boolean z3) throws IOException {
        if (this._compressedOutputStream != null) {
            throw new IllegalStateException("Compressed output stream is already assigned.");
        }
        if (this._out == null || this._bOut != null) {
            if (z3) {
                addHeader(HttpHeaders.VARY, this._vary);
            }
            if (this._wrapper.getETag() != null) {
                setHeader(HttpHeaders.ETAG, this._wrapper.getETag());
            }
            this._doNotCompress = true;
            this._out = this._response.getOutputStream();
            setContentLength();
            ByteArrayOutputStream2 byteArrayOutputStream2 = this._bOut;
            if (byteArrayOutputStream2 != null) {
                this._out.write(byteArrayOutputStream2.getBuf(), 0, this._bOut.getCount());
            }
            this._bOut = null;
        }
    }

    public void finish() throws IOException {
        if (this._closed) {
            return;
        }
        if (this._out == null || this._bOut != null) {
            long contentLength = this._wrapper.getContentLength();
            if (contentLength < 0 || contentLength >= this._wrapper.getMinCompressSize()) {
                doCompress();
            } else {
                doNotCompress(false);
            }
        }
        DeflaterOutputStream deflaterOutputStream = this._compressedOutputStream;
        if (deflaterOutputStream == null || this._closed) {
            return;
        }
        this._closed = true;
        deflaterOutputStream.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        if (this._out == null || this._bOut != null) {
            long contentLength = this._wrapper.getContentLength();
            if (contentLength <= 0 || contentLength >= this._wrapper.getMinCompressSize()) {
                doCompress();
            } else {
                doNotCompress(false);
            }
        }
        this._out.flush();
    }

    public OutputStream getOutputStream() {
        return this._out;
    }

    public boolean isClosed() {
        return this._closed;
    }

    public PrintWriter newWriter(OutputStream outputStream, String str) {
        return str == null ? new PrintWriter(outputStream) : new PrintWriter(new OutputStreamWriter(outputStream, str));
    }

    public void resetBuffer() {
        if (this._response.isCommitted() || this._compressedOutputStream != null) {
            throw new IllegalStateException("Committed");
        }
        this._closed = false;
        this._out = null;
        this._bOut = null;
        this._doNotCompress = false;
    }

    public void setBufferSize(int i4) {
        ByteArrayOutputStream2 byteArrayOutputStream2 = this._bOut;
        if (byteArrayOutputStream2 == null || byteArrayOutputStream2.getBuf().length >= i4) {
            return;
        }
        ByteArrayOutputStream2 byteArrayOutputStream22 = new ByteArrayOutputStream2(i4);
        byteArrayOutputStream22.write(this._bOut.getBuf(), 0, this._bOut.size());
        this._bOut = byteArrayOutputStream22;
    }

    public void setContentLength() {
        if (this._doNotCompress) {
            long contentLength = this._wrapper.getContentLength();
            if (contentLength >= 0) {
                if (contentLength < TTL.MAX_VALUE) {
                    this._response.setContentLength((int) contentLength);
                } else {
                    this._response.setHeader(HttpHeaders.CONTENT_LENGTH, Long.toString(contentLength));
                }
            }
        }
    }

    public void setHeader(String str, String str2) {
        this._response.setHeader(str, str2);
    }

    @Override // java.io.OutputStream
    public void write(int i4) throws IOException {
        checkOut(1);
        this._out.write(i4);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        checkOut(bArr.length);
        this._out.write(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i4, int i5) throws IOException {
        checkOut(i5);
        this._out.write(bArr, i4, i5);
    }
}
