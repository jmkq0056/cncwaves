package org.eclipse.jetty.server;

import g2.a;
import g2.b;
import g2.c;
import g2.e0;
import g2.p;
import g2.u;
import g2.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jetty.continuation.Continuation;
import org.eclipse.jetty.continuation.ContinuationListener;
import org.eclipse.jetty.continuation.ContinuationThrowable;
import org.eclipse.jetty.io.AsyncEndPoint;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.util.URIUtil;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.thread.Timeout;

/* JADX INFO: loaded from: classes2.dex */
public class AsyncContinuation implements a, Continuation {
    private static final long DEFAULT_TIMEOUT = 30000;
    private static final int __ASYNCSTARTED = 2;
    private static final int __ASYNCWAIT = 4;
    private static final int __COMPLETED = 9;
    private static final int __COMPLETING = 7;
    private static final int __DISPATCHED = 1;
    private static final int __IDLE = 0;
    private static final int __REDISPATCH = 5;
    private static final int __REDISPATCHED = 6;
    private static final int __REDISPATCHING = 3;
    private static final int __UNCOMPLETED = 8;
    private List<c> _asyncListeners;
    public AbstractHttpConnection _connection;
    private volatile boolean _continuation;
    private List<ContinuationListener> _continuationListeners;
    private AsyncEventState _event;
    private volatile long _expireAt;
    private boolean _expired;
    private List<c> _lastAsyncListeners;
    private volatile boolean _responseWrapped;
    private boolean _resumed;
    private static final Logger LOG = Log.getLogger((Class<?>) AsyncContinuation.class);
    private static final ContinuationThrowable __exception = new ContinuationThrowable();
    private long _timeoutMs = DEFAULT_TIMEOUT;
    private int _state = 0;
    private boolean _initial = true;

    public class AsyncEventState extends b {
        private p _dispatchContext;
        private String _pathInContext;
        private final p _suspendedContext;
        private Timeout.Task _timeout;

        public AsyncEventState(p pVar, y yVar, e0 e0Var) {
            super(AsyncContinuation.this, yVar, e0Var);
            this._timeout = AsyncContinuation.this.new AsyncTimeout();
            this._suspendedContext = pVar;
            Request request = AsyncContinuation.this._connection.getRequest();
            if (request.getAttribute("javax.servlet.async.request_uri") == null) {
                String str = (String) request.getAttribute("javax.servlet.forward.request_uri");
                if (str != null) {
                    request.setAttribute("javax.servlet.async.request_uri", str);
                    request.setAttribute("javax.servlet.async.context_path", request.getAttribute("javax.servlet.forward.context_path"));
                    request.setAttribute("javax.servlet.async.servlet_path", request.getAttribute("javax.servlet.forward.servlet_path"));
                    request.setAttribute("javax.servlet.async.path_info", request.getAttribute("javax.servlet.forward.path_info"));
                    request.setAttribute("javax.servlet.async.query_string", request.getAttribute("javax.servlet.forward.query_string"));
                    return;
                }
                request.setAttribute("javax.servlet.async.request_uri", request.getRequestURI());
                request.setAttribute("javax.servlet.async.context_path", request.getContextPath());
                request.setAttribute("javax.servlet.async.servlet_path", request.getServletPath());
                request.setAttribute("javax.servlet.async.path_info", request.getPathInfo());
                request.setAttribute("javax.servlet.async.query_string", request.getQueryString());
            }
        }

        public p getDispatchContext() {
            return this._dispatchContext;
        }

        public String getPath() {
            return this._pathInContext;
        }

        public p getServletContext() {
            p pVar = this._dispatchContext;
            return pVar == null ? this._suspendedContext : pVar;
        }

        public p getSuspendedContext() {
            return this._suspendedContext;
        }

        public void setPath(String str) {
            this._pathInContext = str;
        }
    }

    public class AsyncTimeout extends Timeout.Task implements Runnable {
        public AsyncTimeout() {
        }

        @Override // org.eclipse.jetty.util.thread.Timeout.Task
        public void expired() {
            AsyncContinuation.this.expired();
        }

        @Override // java.lang.Runnable
        public void run() {
            AsyncContinuation.this.expired();
        }
    }

    private void doSuspend(p pVar, y yVar, e0 e0Var) {
        synchronized (this) {
            int i4 = this._state;
            if (i4 != 1 && i4 != 6) {
                throw new IllegalStateException(getStatusString());
            }
            this._resumed = false;
            this._expired = false;
            AsyncEventState asyncEventState = this._event;
            if (asyncEventState != null && yVar == asyncEventState.getSuppliedRequest() && e0Var == this._event.getSuppliedResponse() && pVar == this._event.getServletContext()) {
                this._event._dispatchContext = null;
                this._event._pathInContext = null;
            } else {
                this._event = new AsyncEventState(pVar, yVar, e0Var);
            }
            this._state = 2;
            List<c> list = this._lastAsyncListeners;
            this._lastAsyncListeners = this._asyncListeners;
            this._asyncListeners = list;
            if (list != null) {
                list.clear();
            }
        }
        List<c> list2 = this._lastAsyncListeners;
        if (list2 != null) {
            Iterator<c> it = list2.iterator();
            while (it.hasNext()) {
                try {
                    it.next().onStartAsync(this._event);
                } catch (Exception e4) {
                    LOG.warn(e4);
                }
            }
        }
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void addContinuationListener(ContinuationListener continuationListener) {
        synchronized (this) {
            if (this._continuationListeners == null) {
                this._continuationListeners = new ArrayList();
            }
            this._continuationListeners.add(continuationListener);
        }
    }

    @Override // g2.a
    public void addListener(c cVar) {
        synchronized (this) {
            if (this._asyncListeners == null) {
                this._asyncListeners = new ArrayList();
            }
            this._asyncListeners.add(cVar);
        }
    }

    public void cancel() {
        synchronized (this) {
            cancelTimeout();
            this._continuationListeners = null;
        }
    }

    public void cancelTimeout() {
        EndPoint endPoint = this._connection.getEndPoint();
        if (endPoint.isBlocking()) {
            synchronized (this) {
                this._expireAt = 0L;
                notifyAll();
            }
        } else {
            AsyncEventState asyncEventState = this._event;
            if (asyncEventState != null) {
                ((AsyncEndPoint) endPoint).cancelTimeout(asyncEventState._timeout);
            }
        }
    }

    @Override // g2.a, org.eclipse.jetty.continuation.Continuation
    public void complete() {
        synchronized (this) {
            int i4 = this._state;
            if (i4 != 1) {
                if (i4 == 2) {
                    this._state = 7;
                    return;
                }
                if (i4 == 4) {
                    this._state = 7;
                    boolean z3 = !this._expired;
                    if (z3) {
                        cancelTimeout();
                        scheduleDispatch();
                        return;
                    }
                    return;
                }
                if (i4 != 6) {
                    throw new IllegalStateException(getStatusString());
                }
            }
            throw new IllegalStateException(getStatusString());
        }
    }

    public <T extends c> T createListener(Class<T> cls) throws u {
        try {
            return cls.newInstance();
        } catch (Exception e4) {
            throw new u(e4);
        }
    }

    @Override // g2.a
    public void dispatch() {
        synchronized (this) {
            int i4 = this._state;
            if (i4 == 2) {
                this._state = 3;
                this._resumed = true;
                return;
            }
            if (i4 != 4) {
                if (i4 != 5) {
                    throw new IllegalStateException(getStatusString());
                }
                return;
            }
            boolean z3 = !this._expired;
            this._state = 5;
            this._resumed = true;
            if (z3) {
                cancelTimeout();
                scheduleDispatch();
            }
        }
    }

    public void doComplete(Throwable th) {
        List<ContinuationListener> list;
        List<c> list2;
        synchronized (this) {
            if (this._state != 8) {
                throw new IllegalStateException(getStatusString());
            }
            this._state = 9;
            list = this._continuationListeners;
            list2 = this._asyncListeners;
        }
        if (list2 != null) {
            for (c cVar : list2) {
                if (th != null) {
                    try {
                        this._event.getSuppliedRequest().setAttribute("javax.servlet.error.exception", th);
                        this._event.getSuppliedRequest().setAttribute("javax.servlet.error.message", th.getMessage());
                        cVar.onError(this._event);
                    } catch (Exception e4) {
                        LOG.warn(e4);
                    }
                } else {
                    cVar.onComplete(this._event);
                }
            }
        }
        if (list != null) {
            Iterator<ContinuationListener> it = list.iterator();
            while (it.hasNext()) {
                try {
                    it.next().onComplete(this);
                } catch (Exception e5) {
                    LOG.warn(e5);
                }
            }
        }
    }

    public void errorComplete() {
        synchronized (this) {
            int i4 = this._state;
            if (i4 == 2 || i4 == 3) {
                this._state = 7;
                this._resumed = false;
            } else if (i4 != 7) {
                throw new IllegalStateException(getStatusString());
            }
        }
    }

    public void expired() {
        synchronized (this) {
            int i4 = this._state;
            if (i4 == 2 || i4 == 4) {
                List<ContinuationListener> list = this._continuationListeners;
                List<c> list2 = this._asyncListeners;
                this._expired = true;
                if (list2 != null) {
                    Iterator<c> it = list2.iterator();
                    while (it.hasNext()) {
                        try {
                            it.next().onTimeout(this._event);
                        } catch (Exception e4) {
                            LOG.debug(e4);
                            this._connection.getRequest().setAttribute("javax.servlet.error.exception", e4);
                        }
                    }
                }
                if (list != null) {
                    Iterator<ContinuationListener> it2 = list.iterator();
                    while (it2.hasNext()) {
                        try {
                            it2.next().onTimeout(this);
                        } catch (Exception e5) {
                            LOG.warn(e5);
                        }
                    }
                }
                synchronized (this) {
                    int i5 = this._state;
                    if (i5 == 2 || i5 == 4) {
                        dispatch();
                    } else if (!this._continuation) {
                        this._expired = false;
                    }
                }
                scheduleDispatch();
            }
        }
    }

    public AsyncEventState getAsyncEventState() {
        AsyncEventState asyncEventState;
        synchronized (this) {
            asyncEventState = this._event;
        }
        return asyncEventState;
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public Object getAttribute(String str) {
        return this._connection.getRequest().getAttribute(str);
    }

    public Request getBaseRequest() {
        return this._connection.getRequest();
    }

    public ContextHandler getContextHandler() {
        AsyncEventState asyncEventState = this._event;
        if (asyncEventState != null) {
            return ((ContextHandler.Context) asyncEventState.getServletContext()).getContextHandler();
        }
        return null;
    }

    public y getRequest() {
        AsyncEventState asyncEventState = this._event;
        return asyncEventState != null ? asyncEventState.getSuppliedRequest() : this._connection.getRequest();
    }

    @Override // g2.a
    public e0 getResponse() {
        AsyncEventState asyncEventState;
        return (!this._responseWrapped || (asyncEventState = this._event) == null || asyncEventState.getSuppliedResponse() == null) ? this._connection.getResponse() : this._event.getSuppliedResponse();
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public e0 getServletResponse() {
        AsyncEventState asyncEventState;
        return (!this._responseWrapped || (asyncEventState = this._event) == null || asyncEventState.getSuppliedResponse() == null) ? this._connection.getResponse() : this._event.getSuppliedResponse();
    }

    public String getStatusString() {
        String str;
        String string;
        synchronized (this) {
            StringBuilder sb = new StringBuilder();
            int i4 = this._state;
            if (i4 == 0) {
                str = "IDLE";
            } else if (i4 == 1) {
                str = "DISPATCHED";
            } else if (i4 == 2) {
                str = "ASYNCSTARTED";
            } else if (i4 == 4) {
                str = "ASYNCWAIT";
            } else if (i4 == 3) {
                str = "REDISPATCHING";
            } else if (i4 == 5) {
                str = "REDISPATCH";
            } else if (i4 == 6) {
                str = "REDISPATCHED";
            } else if (i4 == 7) {
                str = "COMPLETING";
            } else if (i4 == 8) {
                str = "UNCOMPLETED";
            } else if (i4 == 9) {
                str = "COMPLETE";
            } else {
                str = "UNKNOWN?" + this._state;
            }
            sb.append(str);
            sb.append(this._initial ? ",initial" : "");
            sb.append(this._resumed ? ",resumed" : "");
            sb.append(this._expired ? ",expired" : "");
            string = sb.toString();
        }
        return string;
    }

    public long getTimeout() {
        long j4;
        synchronized (this) {
            j4 = this._timeoutMs;
        }
        return j4;
    }

    public boolean handling() {
        synchronized (this) {
            this._continuation = false;
            int i4 = this._state;
            if (i4 != 0) {
                if (i4 == 7) {
                    this._state = 8;
                    return false;
                }
                if (i4 == 4) {
                    return false;
                }
                if (i4 != 5) {
                    throw new IllegalStateException(getStatusString());
                }
                this._state = 6;
                return true;
            }
            this._initial = true;
            this._state = 1;
            List<c> list = this._lastAsyncListeners;
            if (list != null) {
                list.clear();
            }
            List<c> list2 = this._asyncListeners;
            if (list2 != null) {
                list2.clear();
            } else {
                this._asyncListeners = this._lastAsyncListeners;
                this._lastAsyncListeners = null;
            }
            return true;
        }
    }

    public boolean hasOriginalRequestAndResponse() {
        boolean z3;
        synchronized (this) {
            AsyncEventState asyncEventState = this._event;
            z3 = asyncEventState != null && asyncEventState.getSuppliedRequest() == this._connection._request && this._event.getSuppliedResponse() == this._connection._response;
        }
        return z3;
    }

    public boolean isAsync() {
        synchronized (this) {
            int i4 = this._state;
            return (i4 == 0 || i4 == 1 || i4 == 8 || i4 == 9) ? false : true;
        }
    }

    public boolean isAsyncStarted() {
        synchronized (this) {
            int i4 = this._state;
            return i4 == 2 || i4 == 3 || i4 == 4 || i4 == 5;
        }
    }

    public boolean isComplete() {
        boolean z3;
        synchronized (this) {
            z3 = this._state == 9;
        }
        return z3;
    }

    public boolean isCompleting() {
        boolean z3;
        synchronized (this) {
            z3 = this._state == 7;
        }
        return z3;
    }

    public boolean isContinuation() {
        return this._continuation;
    }

    public boolean isDispatchable() {
        synchronized (this) {
            int i4 = this._state;
            return i4 == 3 || i4 == 5 || i4 == 6 || i4 == 7;
        }
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public boolean isExpired() {
        boolean z3;
        synchronized (this) {
            z3 = this._expired;
        }
        return z3;
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public boolean isInitial() {
        boolean z3;
        synchronized (this) {
            z3 = this._initial;
        }
        return z3;
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public boolean isResponseWrapped() {
        return this._responseWrapped;
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public boolean isResumed() {
        boolean z3;
        synchronized (this) {
            z3 = this._resumed;
        }
        return z3;
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public boolean isSuspended() {
        synchronized (this) {
            int i4 = this._state;
            return i4 == 2 || i4 == 3 || i4 == 4 || i4 == 7;
        }
    }

    public boolean isSuspending() {
        synchronized (this) {
            int i4 = this._state;
            return i4 == 2 || i4 == 4;
        }
    }

    public boolean isUncompleted() {
        boolean z3;
        synchronized (this) {
            z3 = this._state == 8;
        }
        return z3;
    }

    public void recycle() {
        synchronized (this) {
            int i4 = this._state;
            if (i4 == 1 || i4 == 6) {
                throw new IllegalStateException(getStatusString());
            }
            this._state = 0;
            this._initial = true;
            this._resumed = false;
            this._expired = false;
            this._responseWrapped = false;
            cancelTimeout();
            this._timeoutMs = DEFAULT_TIMEOUT;
            this._continuationListeners = null;
        }
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void removeAttribute(String str) {
        this._connection.getRequest().removeAttribute(str);
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void resume() {
        dispatch();
    }

    public void scheduleDispatch() {
        EndPoint endPoint = this._connection.getEndPoint();
        if (endPoint.isBlocking()) {
            return;
        }
        ((AsyncEndPoint) endPoint).asyncDispatch();
    }

    public void scheduleTimeout() {
        EndPoint endPoint = this._connection.getEndPoint();
        if (this._timeoutMs > 0) {
            if (!endPoint.isBlocking()) {
                ((AsyncEndPoint) endPoint).scheduleTimeout(this._event._timeout, this._timeoutMs);
                return;
            }
            synchronized (this) {
                this._expireAt = System.currentTimeMillis() + this._timeoutMs;
                long jCurrentTimeMillis = this._timeoutMs;
                while (this._expireAt > 0 && jCurrentTimeMillis > 0 && this._connection.getServer().isRunning()) {
                    try {
                        wait(jCurrentTimeMillis);
                    } catch (InterruptedException e4) {
                        LOG.ignore(e4);
                    }
                    jCurrentTimeMillis = this._expireAt - System.currentTimeMillis();
                }
                if (this._expireAt > 0 && jCurrentTimeMillis <= 0 && this._connection.getServer().isRunning()) {
                    expired();
                }
            }
        }
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void setAttribute(String str, Object obj) {
        this._connection.getRequest().setAttribute(str, obj);
    }

    public void setConnection(AbstractHttpConnection abstractHttpConnection) {
        synchronized (this) {
            this._connection = abstractHttpConnection;
        }
    }

    @Override // g2.a, org.eclipse.jetty.continuation.Continuation
    public void setTimeout(long j4) {
        synchronized (this) {
            this._timeoutMs = j4;
        }
    }

    public void start(final Runnable runnable) {
        final AsyncEventState asyncEventState = this._event;
        if (asyncEventState != null) {
            this._connection.getServer().getThreadPool().dispatch(new Runnable() { // from class: org.eclipse.jetty.server.AsyncContinuation.1
                @Override // java.lang.Runnable
                public void run() throws Throwable {
                    ((ContextHandler.Context) asyncEventState.getServletContext()).getContextHandler().handle(runnable);
                }
            });
        }
    }

    public void startAsync(p pVar, y yVar, e0 e0Var) {
        synchronized (this) {
            this._responseWrapped = !(e0Var instanceof Response);
            doSuspend(pVar, yVar, e0Var);
            if (yVar instanceof j2.c) {
                this._event._pathInContext = URIUtil.addPaths(((j2.c) yVar).getServletPath(), ((j2.c) yVar).getPathInfo());
            }
        }
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void suspend(e0 e0Var) {
        this._continuation = true;
        this._responseWrapped = true ^ (e0Var instanceof Response);
        doSuspend(this._connection.getRequest().getServletContext(), this._connection.getRequest(), e0Var);
    }

    public String toString() {
        String str;
        synchronized (this) {
            str = super.toString() + "@" + getStatusString();
        }
        return str;
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void undispatch() {
        if (!isSuspended()) {
            throw new IllegalStateException("!suspended");
        }
        if (!LOG.isDebugEnabled()) {
            throw __exception;
        }
        throw new ContinuationThrowable();
    }

    public boolean unhandle() {
        synchronized (this) {
            int i4 = this._state;
            if (i4 == 0) {
                throw new IllegalStateException(getStatusString());
            }
            if (i4 != 1) {
                if (i4 == 2) {
                    this._initial = false;
                    this._state = 4;
                    scheduleTimeout();
                    int i5 = this._state;
                    if (i5 == 4) {
                        return true;
                    }
                    if (i5 == 7) {
                        this._state = 8;
                        return true;
                    }
                    this._initial = false;
                    this._state = 6;
                    return false;
                }
                if (i4 == 3) {
                    this._initial = false;
                    this._state = 6;
                    return false;
                }
                if (i4 != 6) {
                    if (i4 != 7) {
                        throw new IllegalStateException(getStatusString());
                    }
                    this._initial = false;
                    this._state = 8;
                    return true;
                }
            }
            this._state = 8;
            return true;
        }
    }

    @Override // org.eclipse.jetty.continuation.Continuation
    public void suspend() {
        this._responseWrapped = false;
        this._continuation = true;
        doSuspend(this._connection.getRequest().getServletContext(), this._connection.getRequest(), this._connection.getResponse());
    }

    public void addListener(c cVar, y yVar, e0 e0Var) {
        synchronized (this) {
            if (this._asyncListeners == null) {
                this._asyncListeners = new ArrayList();
            }
            this._asyncListeners.add(cVar);
        }
    }

    public void startAsync() {
        this._responseWrapped = false;
        this._continuation = false;
        doSuspend(this._connection.getRequest().getServletContext(), this._connection.getRequest(), this._connection.getResponse());
    }

    public void dispatch(p pVar, String str) {
        this._event._dispatchContext = pVar;
        this._event.setPath(str);
        dispatch();
    }

    public void dispatch(String str) {
        this._event.setPath(str);
        dispatch();
    }
}
