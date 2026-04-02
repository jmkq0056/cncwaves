package org.eclipse.jetty.server.handler;

import j2.c;
import j2.e;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.GZIPOutputStream;
import org.eclipse.jetty.continuation.Continuation;
import org.eclipse.jetty.continuation.ContinuationListener;
import org.eclipse.jetty.continuation.ContinuationSupport;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpMethods;
import org.eclipse.jetty.http.gzip.AbstractCompressedStream;
import org.eclipse.jetty.http.gzip.CompressedResponseWrapper;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class GzipHandler extends HandlerWrapper {
    private static final Logger LOG = Log.getLogger((Class<?>) GzipHandler.class);
    public Set<String> _excluded;
    public Set<String> _mimeTypes;
    public int _bufferSize = 8192;
    public int _minGzipSize = 256;
    public String _vary = "Accept-Encoding, User-Agent";

    public int getBufferSize() {
        return this._bufferSize;
    }

    public Set<String> getExcluded() {
        return this._excluded;
    }

    public Set<String> getMimeTypes() {
        return this._mimeTypes;
    }

    public int getMinGzipSize() {
        return this._minGzipSize;
    }

    public String getVary() {
        return this._vary;
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.Handler
    public void handle(String str, Request request, c cVar, e eVar) throws IOException {
        if (this._handler == null || !isStarted()) {
            return;
        }
        String header = cVar.getHeader("accept-encoding");
        if (header == null || header.indexOf(HttpHeaderValues.GZIP) < 0 || eVar.containsHeader(HttpHeaders.CONTENT_ENCODING) || HttpMethods.HEAD.equalsIgnoreCase(cVar.getMethod())) {
            this._handler.handle(str, request, cVar, eVar);
            return;
        }
        if (this._excluded != null) {
            if (this._excluded.contains(cVar.getHeader(HttpHeaders.USER_AGENT))) {
                this._handler.handle(str, request, cVar, eVar);
                return;
            }
        }
        final CompressedResponseWrapper compressedResponseWrapperNewGzipResponseWrapper = newGzipResponseWrapper(cVar, eVar);
        try {
            this._handler.handle(str, request, cVar, compressedResponseWrapperNewGzipResponseWrapper);
            Continuation continuation = ContinuationSupport.getContinuation(cVar);
            if (continuation.isSuspended() && continuation.isResponseWrapped()) {
                continuation.addContinuationListener(new ContinuationListener() { // from class: org.eclipse.jetty.server.handler.GzipHandler.1
                    @Override // org.eclipse.jetty.continuation.ContinuationListener
                    public void onComplete(Continuation continuation2) {
                        try {
                            compressedResponseWrapperNewGzipResponseWrapper.finish();
                        } catch (IOException e4) {
                            GzipHandler.LOG.warn(e4);
                        }
                    }

                    @Override // org.eclipse.jetty.continuation.ContinuationListener
                    public void onTimeout(Continuation continuation2) {
                    }
                });
            } else {
                compressedResponseWrapperNewGzipResponseWrapper.finish();
            }
        } catch (Throwable th) {
            Continuation continuation2 = ContinuationSupport.getContinuation(cVar);
            if (continuation2.isSuspended() && continuation2.isResponseWrapped()) {
                continuation2.addContinuationListener(new ContinuationListener() { // from class: org.eclipse.jetty.server.handler.GzipHandler.1
                    @Override // org.eclipse.jetty.continuation.ContinuationListener
                    public void onComplete(Continuation continuation22) {
                        try {
                            compressedResponseWrapperNewGzipResponseWrapper.finish();
                        } catch (IOException e4) {
                            GzipHandler.LOG.warn(e4);
                        }
                    }

                    @Override // org.eclipse.jetty.continuation.ContinuationListener
                    public void onTimeout(Continuation continuation22) {
                    }
                });
            } else if (eVar.isCommitted()) {
                compressedResponseWrapperNewGzipResponseWrapper.finish();
            } else {
                compressedResponseWrapperNewGzipResponseWrapper.resetBuffer();
                compressedResponseWrapperNewGzipResponseWrapper.noCompression();
            }
            throw th;
        }
    }

    public CompressedResponseWrapper newGzipResponseWrapper(c cVar, e eVar) {
        return new CompressedResponseWrapper(cVar, eVar) { // from class: org.eclipse.jetty.server.handler.GzipHandler.2
            {
                super.setMimeTypes(GzipHandler.this._mimeTypes);
                super.setBufferSize(GzipHandler.this._bufferSize);
                super.setMinCompressSize(GzipHandler.this._minGzipSize);
            }

            @Override // org.eclipse.jetty.http.gzip.CompressedResponseWrapper
            public AbstractCompressedStream newCompressedStream(c cVar2, e eVar2) {
                return new AbstractCompressedStream(HttpHeaderValues.GZIP, cVar2, this, GzipHandler.this._vary) { // from class: org.eclipse.jetty.server.handler.GzipHandler.2.1
                    @Override // org.eclipse.jetty.http.gzip.AbstractCompressedStream
                    public DeflaterOutputStream createStream() {
                        return new GZIPOutputStream(this._response.getOutputStream(), GzipHandler.this._bufferSize);
                    }
                };
            }

            @Override // org.eclipse.jetty.http.gzip.CompressedResponseWrapper
            public PrintWriter newWriter(OutputStream outputStream, String str) {
                return GzipHandler.this.newWriter(outputStream, str);
            }
        };
    }

    public PrintWriter newWriter(OutputStream outputStream, String str) {
        return str == null ? new PrintWriter(outputStream) : new PrintWriter(new OutputStreamWriter(outputStream, str));
    }

    public void setBufferSize(int i4) {
        this._bufferSize = i4;
    }

    public void setExcluded(Set<String> set) {
        this._excluded = set;
    }

    public void setMimeTypes(Set<String> set) {
        this._mimeTypes = set;
    }

    public void setMinGzipSize(int i4) {
        this._minGzipSize = i4;
    }

    public void setVary(String str) {
        this._vary = str;
    }

    public void setExcluded(String str) {
        if (str != null) {
            this._excluded = new HashSet();
            StringTokenizer stringTokenizer = new StringTokenizer(str, ",", false);
            while (stringTokenizer.hasMoreTokens()) {
                this._excluded.add(stringTokenizer.nextToken());
            }
        }
    }

    public void setMimeTypes(String str) {
        if (str != null) {
            this._mimeTypes = new HashSet();
            StringTokenizer stringTokenizer = new StringTokenizer(str, ",", false);
            while (stringTokenizer.hasMoreTokens()) {
                this._mimeTypes.add(stringTokenizer.nextToken());
            }
        }
    }
}
