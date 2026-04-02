package org.eclipse.jetty.http;

import java.io.IOException;
import java.io.InputStream;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.resource.Resource;

/* JADX INFO: loaded from: classes2.dex */
public interface HttpContent {

    public static class ResourceAsHttpContent implements HttpContent {
        private static final Logger LOG = Log.getLogger((Class<?>) ResourceAsHttpContent.class);
        public final Buffer _etag;
        public final int _maxBuffer;
        public final Buffer _mimeType;
        public final Resource _resource;

        public ResourceAsHttpContent(Resource resource, Buffer buffer) {
            this(resource, buffer, -1, false);
        }

        @Override // org.eclipse.jetty.http.HttpContent
        public long getContentLength() {
            return this._resource.length();
        }

        @Override // org.eclipse.jetty.http.HttpContent
        public Buffer getContentType() {
            return this._mimeType;
        }

        @Override // org.eclipse.jetty.http.HttpContent
        public Buffer getDirectBuffer() {
            return null;
        }

        @Override // org.eclipse.jetty.http.HttpContent
        public Buffer getETag() {
            return this._etag;
        }

        @Override // org.eclipse.jetty.http.HttpContent
        public Buffer getIndirectBuffer() {
            InputStream inputStream = null;
            try {
                try {
                    if (this._resource.length() > 0 && this._maxBuffer >= this._resource.length()) {
                        ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer((int) this._resource.length());
                        inputStream = this._resource.getInputStream();
                        byteArrayBuffer.readFrom(inputStream, (int) this._resource.length());
                        return byteArrayBuffer;
                    }
                    return null;
                } catch (IOException e4) {
                    throw new RuntimeException(e4);
                }
            } finally {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e5) {
                        LOG.warn("Couldn't close inputStream. Possible file handle leak", e5);
                    }
                }
            }
        }

        @Override // org.eclipse.jetty.http.HttpContent
        public InputStream getInputStream() {
            return this._resource.getInputStream();
        }

        @Override // org.eclipse.jetty.http.HttpContent
        public Buffer getLastModified() {
            return null;
        }

        @Override // org.eclipse.jetty.http.HttpContent
        public Resource getResource() {
            return this._resource;
        }

        @Override // org.eclipse.jetty.http.HttpContent
        public void release() {
            this._resource.release();
        }

        public ResourceAsHttpContent(Resource resource, Buffer buffer, int i4) {
            this(resource, buffer, i4, false);
        }

        public ResourceAsHttpContent(Resource resource, Buffer buffer, boolean z3) {
            this(resource, buffer, -1, z3);
        }

        public ResourceAsHttpContent(Resource resource, Buffer buffer, int i4, boolean z3) {
            this._resource = resource;
            this._mimeType = buffer;
            this._maxBuffer = i4;
            this._etag = z3 ? new ByteArrayBuffer(resource.getWeakETag()) : null;
        }
    }

    long getContentLength();

    Buffer getContentType();

    Buffer getDirectBuffer();

    Buffer getETag();

    Buffer getIndirectBuffer();

    InputStream getInputStream();

    Buffer getLastModified();

    Resource getResource();

    void release();
}
