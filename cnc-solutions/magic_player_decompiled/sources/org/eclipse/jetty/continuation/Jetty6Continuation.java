package org.eclipse.jetty.continuation;

import androidx.appcompat.widget.ActivityChooserView;
import g2.e0;
import g2.f0;
import g2.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jetty.continuation.ContinuationFilter;
import org.mortbay.log.Log;
import org.mortbay.log.Logger;
import org.xbill.DNS.TTL;

/* JADX INFO: loaded from: classes2.dex */
public class Jetty6Continuation implements ContinuationFilter.FilteredContinuation {
    private static final Logger LOG = Log.getLogger(Jetty6Continuation.class.getName());
    private static final ContinuationThrowable __exception = new ContinuationThrowable();
    private final org.mortbay.util.ajax.Continuation _j6Continuation;
    private List<ContinuationListener> _listeners;
    private final y _request;
    private e0 _response;
    private Throwable _retry;
    private int _timeout;
    private boolean _initial = true;
    private volatile boolean _completed = false;
    private volatile boolean _resumed = false;
    private volatile boolean _expired = false;
    private boolean _responseWrapped = false;

    public Jetty6Continuation(y yVar, org.mortbay.util.ajax.Continuation continuation) {
        if (!ContinuationFilter._initialized) {
            LOG.warn("!ContinuationFilter installed", (Object) null, (Object) null);
            throw new IllegalStateException("!ContinuationFilter installed");
        }
        this._request = yVar;
        this._j6Continuation = continuation;
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void addContinuationListener(ContinuationListener continuationListener) {
        if (this._listeners == null) {
            this._listeners = new ArrayList();
        }
        this._listeners.add(continuationListener);
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void complete() {
        synchronized (this) {
            if (this._resumed) {
                throw new IllegalStateException();
            }
            this._completed = true;
            if (this._j6Continuation.isPending()) {
                this._j6Continuation.resume();
            }
        }
    }

    @Override // org.eclipse.jetty.continuation.ContinuationFilter.FilteredContinuation
    public boolean enter(e0 e0Var) {
        List<ContinuationListener> list;
        this._response = e0Var;
        this._expired = !this._j6Continuation.isResumed();
        if (this._initial) {
            return true;
        }
        this._j6Continuation.reset();
        if (this._expired && (list = this._listeners) != null) {
            Iterator<ContinuationListener> it = list.iterator();
            while (it.hasNext()) {
                it.next().onTimeout(this);
            }
        }
        return !this._completed;
    }

    @Override // org.eclipse.jetty.continuation.ContinuationFilter.FilteredContinuation
    public boolean exit() {
        this._initial = false;
        Throwable th = this._retry;
        this._retry = null;
        if (th instanceof Error) {
            throw ((Error) th);
        }
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        List<ContinuationListener> list = this._listeners;
        if (list == null) {
            return true;
        }
        Iterator<ContinuationListener> it = list.iterator();
        while (it.hasNext()) {
            it.next().onComplete(this);
        }
        return true;
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
        return this._initial;
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
        return this._retry != null;
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void removeAttribute(String str) {
        this._request.removeAttribute(str);
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void resume() {
        synchronized (this) {
            if (this._completed) {
                throw new IllegalStateException();
            }
            this._resumed = true;
            if (this._j6Continuation.isPending()) {
                this._j6Continuation.resume();
            }
        }
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void setAttribute(String str, Object obj) {
        this._request.setAttribute(str, obj);
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void setTimeout(long j4) {
        this._timeout = j4 > TTL.MAX_VALUE ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : (int) j4;
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void suspend(e0 e0Var) {
        try {
            this._response = e0Var;
            this._responseWrapped = e0Var instanceof f0;
            this._resumed = false;
            this._expired = false;
            this._completed = false;
            this._j6Continuation.suspend(this._timeout);
        } catch (Throwable th) {
            this._retry = th;
        }
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
        try {
            this._response = null;
            this._responseWrapped = false;
            this._resumed = false;
            this._expired = false;
            this._completed = false;
            this._j6Continuation.suspend(this._timeout);
        } catch (Throwable th) {
            this._retry = th;
        }
    }
}
