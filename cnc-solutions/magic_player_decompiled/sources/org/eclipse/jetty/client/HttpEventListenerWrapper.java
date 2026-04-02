package org.eclipse.jetty.client;

import org.eclipse.jetty.io.Buffer;

/* JADX INFO: loaded from: classes2.dex */
public class HttpEventListenerWrapper implements HttpEventListener {
    public boolean _delegatingRequests;
    public boolean _delegatingResponses;
    public boolean _delegationResult;
    public HttpEventListener _listener;
    private Buffer _reason;
    private int _status;
    private Buffer _version;

    public HttpEventListenerWrapper() {
        this._delegationResult = true;
        this._listener = null;
        this._delegatingRequests = false;
        this._delegatingResponses = false;
    }

    public HttpEventListener getEventListener() {
        return this._listener;
    }

    public boolean isDelegatingRequests() {
        return this._delegatingRequests;
    }

    public boolean isDelegatingResponses() {
        return this._delegatingResponses;
    }

    @Override // org.eclipse.jetty.client.HttpEventListener
    public void onConnectionFailed(Throwable th) {
        if (this._delegatingRequests) {
            this._listener.onConnectionFailed(th);
        }
    }

    @Override // org.eclipse.jetty.client.HttpEventListener
    public void onException(Throwable th) {
        if (this._delegatingRequests || this._delegatingResponses) {
            this._listener.onException(th);
        }
    }

    @Override // org.eclipse.jetty.client.HttpEventListener
    public void onExpire() {
        if (this._delegatingRequests || this._delegatingResponses) {
            this._listener.onExpire();
        }
    }

    @Override // org.eclipse.jetty.client.HttpEventListener
    public void onRequestCommitted() {
        if (this._delegatingRequests) {
            this._listener.onRequestCommitted();
        }
    }

    @Override // org.eclipse.jetty.client.HttpEventListener
    public void onRequestComplete() {
        if (this._delegatingRequests) {
            this._listener.onRequestComplete();
        }
    }

    @Override // org.eclipse.jetty.client.HttpEventListener
    public void onResponseComplete() {
        if (this._delegatingResponses) {
            if (!this._delegationResult) {
                this._listener.onResponseStatus(this._version, this._status, this._reason);
            }
            this._listener.onResponseComplete();
        }
    }

    @Override // org.eclipse.jetty.client.HttpEventListener
    public void onResponseContent(Buffer buffer) {
        if (this._delegatingResponses) {
            this._listener.onResponseContent(buffer);
        }
    }

    @Override // org.eclipse.jetty.client.HttpEventListener
    public void onResponseHeader(Buffer buffer, Buffer buffer2) {
        if (this._delegatingResponses) {
            this._listener.onResponseHeader(buffer, buffer2);
        }
    }

    @Override // org.eclipse.jetty.client.HttpEventListener
    public void onResponseHeaderComplete() {
        if (this._delegatingResponses) {
            this._listener.onResponseHeaderComplete();
        }
    }

    @Override // org.eclipse.jetty.client.HttpEventListener
    public void onResponseStatus(Buffer buffer, int i4, Buffer buffer2) {
        if (this._delegatingResponses) {
            this._listener.onResponseStatus(buffer, i4, buffer2);
            return;
        }
        this._version = buffer;
        this._status = i4;
        this._reason = buffer2;
    }

    @Override // org.eclipse.jetty.client.HttpEventListener
    public void onRetry() {
        if (this._delegatingRequests) {
            this._listener.onRetry();
        }
    }

    public void setDelegatingRequests(boolean z3) {
        this._delegatingRequests = z3;
    }

    public void setDelegatingResponses(boolean z3) {
        this._delegatingResponses = z3;
    }

    public void setDelegationResult(boolean z3) {
        this._delegationResult = z3;
    }

    public void setEventListener(HttpEventListener httpEventListener) {
        this._listener = httpEventListener;
    }

    public HttpEventListenerWrapper(HttpEventListener httpEventListener, boolean z3) {
        this._delegationResult = true;
        this._listener = httpEventListener;
        this._delegatingRequests = z3;
        this._delegatingResponses = z3;
    }
}
