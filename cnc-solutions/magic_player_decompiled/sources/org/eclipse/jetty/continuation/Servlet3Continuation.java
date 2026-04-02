package org.eclipse.jetty.continuation;

import g2.a;
import g2.b;
import g2.c;
import g2.d;
import g2.e0;
import g2.f0;
import g2.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Servlet3Continuation implements Continuation {
    private static final ContinuationThrowable __exception = new ContinuationThrowable();
    private a _context;
    private final y _request;
    private e0 _response;
    private List<c> _listeners = new ArrayList();
    private volatile boolean _initial = true;
    private volatile boolean _resumed = false;
    private volatile boolean _expired = false;
    private volatile boolean _responseWrapped = false;
    private long _timeoutMs = -1;

    public Servlet3Continuation(y yVar) {
        this._request = yVar;
        this._listeners.add(new c() { // from class: org.eclipse.jetty.continuation.Servlet3Continuation.1
            @Override // g2.c
            public void onComplete(b bVar) {
            }

            @Override // g2.c
            public void onError(b bVar) {
            }

            @Override // g2.c
            public void onStartAsync(b bVar) {
                bVar.getAsyncContext().addListener(this);
            }

            @Override // g2.c
            public void onTimeout(b bVar) {
                Servlet3Continuation.this._initial = false;
                bVar.getAsyncContext().dispatch();
            }
        });
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void addContinuationListener(final ContinuationListener continuationListener) {
        c cVar = new c() { // from class: org.eclipse.jetty.continuation.Servlet3Continuation.2
            @Override // g2.c
            public void onComplete(b bVar) {
                continuationListener.onComplete(Servlet3Continuation.this);
            }

            @Override // g2.c
            public void onError(b bVar) {
                continuationListener.onComplete(Servlet3Continuation.this);
            }

            @Override // g2.c
            public void onStartAsync(b bVar) {
                bVar.getAsyncContext().addListener(this);
            }

            @Override // g2.c
            public void onTimeout(b bVar) {
                Servlet3Continuation.this._expired = true;
                continuationListener.onTimeout(Servlet3Continuation.this);
            }
        };
        a aVar = this._context;
        if (aVar != null) {
            aVar.addListener(cVar);
        } else {
            this._listeners.add(cVar);
        }
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void complete() {
        a aVar = this._context;
        if (aVar == null) {
            throw new IllegalStateException();
        }
        aVar.complete();
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public Object getAttribute(String str) {
        return this._request.getAttribute(str);
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public e0 getServletResponse() {
        return this._response;
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public boolean isExpired() {
        return this._expired;
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public boolean isInitial() {
        return this._initial && this._request.getDispatcherType() != d.ASYNC;
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public boolean isResponseWrapped() {
        return this._responseWrapped;
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public boolean isResumed() {
        return this._resumed;
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public boolean isSuspended() {
        return this._request.isAsyncStarted();
    }

    public void keepWrappers() {
        this._responseWrapped = true;
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void removeAttribute(String str) {
        this._request.removeAttribute(str);
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void resume() {
        if (this._context == null) {
            throw new IllegalStateException();
        }
        this._resumed = true;
        this._context.dispatch();
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void setAttribute(String str, Object obj) {
        this._request.setAttribute(str, obj);
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void setTimeout(long j4) {
        this._timeoutMs = j4;
        a aVar = this._context;
        if (aVar != null) {
            aVar.setTimeout(j4);
        }
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void suspend(e0 e0Var) {
        this._response = e0Var;
        this._responseWrapped = e0Var instanceof f0;
        this._resumed = false;
        this._expired = false;
        a aVarStartAsync = this._request.startAsync();
        this._context = aVarStartAsync;
        aVarStartAsync.setTimeout(this._timeoutMs);
        Iterator<c> it = this._listeners.iterator();
        while (it.hasNext()) {
            this._context.addListener(it.next());
        }
        this._listeners.clear();
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void undispatch() {
        if (!isSuspended()) {
            throw new IllegalStateException("!suspended");
        }
        if (!ContinuationFilter.__debug) {
            throw __exception;
        }
        throw new ContinuationThrowable();
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void suspend() {
        this._resumed = false;
        this._expired = false;
        a aVarStartAsync = this._request.startAsync();
        this._context = aVarStartAsync;
        aVarStartAsync.setTimeout(this._timeoutMs);
        Iterator<c> it = this._listeners.iterator();
        while (it.hasNext()) {
            this._context.addListener(it.next());
        }
        this._listeners.clear();
    }
}
