package org.eclipse.jetty.server.handler;

import j2.c;
import j2.e;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.Request;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ScopedHandler extends HandlerWrapper {
    private static final ThreadLocal<ScopedHandler> __outerScope = new ThreadLocal<>();
    public ScopedHandler _nextScope;
    public ScopedHandler _outerScope;

    public abstract void doHandle(String str, Request request, c cVar, e eVar);

    public abstract void doScope(String str, Request request, c cVar, e eVar);

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        try {
            ThreadLocal<ScopedHandler> threadLocal = __outerScope;
            ScopedHandler scopedHandler = threadLocal.get();
            this._outerScope = scopedHandler;
            if (scopedHandler == null) {
                threadLocal.set(this);
            }
            super.doStart();
            this._nextScope = (ScopedHandler) getChildHandlerByClass(ScopedHandler.class);
            if (this._outerScope == null) {
                threadLocal.set(null);
            }
        } catch (Throwable th) {
            if (this._outerScope == null) {
                __outerScope.set(null);
            }
            throw th;
        }
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.Handler
    public final void handle(String str, Request request, c cVar, e eVar) {
        if (this._outerScope == null) {
            doScope(str, request, cVar, eVar);
        } else {
            doHandle(str, request, cVar, eVar);
        }
    }

    public boolean never() {
        return false;
    }

    public final void nextHandle(String str, Request request, c cVar, e eVar) {
        ScopedHandler scopedHandler = this._nextScope;
        if (scopedHandler != null && scopedHandler == this._handler) {
            scopedHandler.doHandle(str, request, cVar, eVar);
            return;
        }
        Handler handler = this._handler;
        if (handler != null) {
            handler.handle(str, request, cVar, eVar);
        }
    }

    public final void nextScope(String str, Request request, c cVar, e eVar) {
        ScopedHandler scopedHandler = this._nextScope;
        if (scopedHandler != null) {
            scopedHandler.doScope(str, request, cVar, eVar);
            return;
        }
        ScopedHandler scopedHandler2 = this._outerScope;
        if (scopedHandler2 != null) {
            scopedHandler2.doHandle(str, request, cVar, eVar);
        } else {
            doHandle(str, request, cVar, eVar);
        }
    }
}
