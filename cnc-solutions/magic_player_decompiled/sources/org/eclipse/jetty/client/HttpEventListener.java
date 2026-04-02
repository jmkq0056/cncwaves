package org.eclipse.jetty.client;

import org.eclipse.jetty.io.Buffer;

/* JADX INFO: loaded from: classes2.dex */
public interface HttpEventListener {
    void onConnectionFailed(Throwable th);

    void onException(Throwable th);

    void onExpire();

    void onRequestCommitted();

    void onRequestComplete();

    void onResponseComplete();

    void onResponseContent(Buffer buffer);

    void onResponseHeader(Buffer buffer, Buffer buffer2);

    void onResponseHeaderComplete();

    void onResponseStatus(Buffer buffer, int i4, Buffer buffer2);

    void onRetry();
}
