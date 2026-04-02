package org.eclipse.jetty.http;

import org.eclipse.jetty.io.Buffers;

/* JADX INFO: loaded from: classes2.dex */
public interface HttpBuffers {
    int getMaxBuffers();

    int getRequestBufferSize();

    Buffers.Type getRequestBufferType();

    Buffers getRequestBuffers();

    int getRequestHeaderSize();

    Buffers.Type getRequestHeaderType();

    int getResponseBufferSize();

    Buffers.Type getResponseBufferType();

    Buffers getResponseBuffers();

    int getResponseHeaderSize();

    Buffers.Type getResponseHeaderType();

    void setMaxBuffers(int i4);

    void setRequestBufferSize(int i4);

    void setRequestBuffers(Buffers buffers);

    void setRequestHeaderSize(int i4);

    void setResponseBufferSize(int i4);

    void setResponseBuffers(Buffers buffers);

    void setResponseHeaderSize(int i4);
}
