package org.eclipse.jetty.client;

import org.eclipse.jetty.http.HttpFields;
import org.eclipse.jetty.io.Buffer;

/* JADX INFO: loaded from: classes2.dex */
public class CachedExchange extends HttpExchange {
    private final HttpFields _responseFields;
    private volatile int _responseStatus;

    public CachedExchange(boolean z3) {
        this._responseFields = z3 ? new HttpFields() : null;
    }

    public synchronized HttpFields getResponseFields() {
        if (getStatus() < 6) {
            throw new IllegalStateException("Headers not completely received yet");
        }
        return this._responseFields;
    }

    public synchronized int getResponseStatus() {
        if (getStatus() < 5) {
            throw new IllegalStateException("Response not received yet");
        }
        return this._responseStatus;
    }

    @Override // org.eclipse.jetty.client.HttpExchange
    public synchronized void onResponseHeader(Buffer buffer, Buffer buffer2) {
        HttpFields httpFields = this._responseFields;
        if (httpFields != null) {
            httpFields.add(buffer, buffer2.asImmutableBuffer());
        }
        super.onResponseHeader(buffer, buffer2);
    }

    @Override // org.eclipse.jetty.client.HttpExchange
    public synchronized void onResponseStatus(Buffer buffer, int i4, Buffer buffer2) {
        this._responseStatus = i4;
        super.onResponseStatus(buffer, i4, buffer2);
    }
}
