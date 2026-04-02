package org.eclipse.jetty.server.handler;

import g2.u;
import j2.c;
import j2.e;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.util.LazyList;
import org.eclipse.jetty.util.MultiException;
import org.eclipse.jetty.util.component.AbstractLifeCycle;

/* JADX INFO: loaded from: classes2.dex */
public class HandlerCollection extends AbstractHandlerContainer {
    private volatile Handler[] _handlers;
    private final boolean _mutableWhenRunning;
    private boolean _parallelStart;

    public HandlerCollection() {
        this._parallelStart = false;
        this._mutableWhenRunning = false;
    }

    public void addHandler(Handler handler) {
        setHandlers((Handler[]) LazyList.addToArray(getHandlers(), handler, Handler.class));
    }

    @Override // org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.Destroyable
    public void destroy() {
        if (!isStopped()) {
            throw new IllegalStateException("!STOPPED");
        }
        Handler[] childHandlers = getChildHandlers();
        setHandlers(null);
        for (Handler handler : childHandlers) {
            handler.destroy();
        }
        super.destroy();
    }

    @Override // org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        final MultiException multiException = new MultiException();
        if (this._handlers != null) {
            if (this._parallelStart) {
                final CountDownLatch countDownLatch = new CountDownLatch(this._handlers.length);
                final ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
                for (int i4 = 0; i4 < this._handlers.length; i4++) {
                    final int i5 = i4;
                    getServer().getThreadPool().dispatch(new Runnable() { // from class: org.eclipse.jetty.server.handler.HandlerCollection.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ClassLoader contextClassLoader2 = Thread.currentThread().getContextClassLoader();
                            try {
                                Thread.currentThread().setContextClassLoader(contextClassLoader);
                                HandlerCollection.this._handlers[i5].start();
                            } finally {
                                try {
                                } finally {
                                }
                            }
                        }
                    });
                }
                countDownLatch.await();
            } else {
                for (int i6 = 0; i6 < this._handlers.length; i6++) {
                    try {
                        this._handlers[i6].start();
                    } catch (Throwable th) {
                        multiException.add(th);
                    }
                }
            }
        }
        super.doStart();
        multiException.ifExceptionThrow();
    }

    @Override // org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() throws Exception {
        MultiException multiException = new MultiException();
        try {
            super.doStop();
        } catch (Throwable th) {
            multiException.add(th);
        }
        if (this._handlers != null) {
            int length = this._handlers.length;
            while (true) {
                int i4 = length - 1;
                if (length <= 0) {
                    break;
                }
                try {
                    this._handlers[i4].stop();
                } catch (Throwable th2) {
                    multiException.add(th2);
                }
                length = i4;
            }
        }
        multiException.ifExceptionThrow();
    }

    @Override // org.eclipse.jetty.server.handler.AbstractHandlerContainer
    public Object expandChildren(Object obj, Class cls) {
        Handler[] handlers = getHandlers();
        for (int i4 = 0; handlers != null && i4 < handlers.length; i4++) {
            obj = expandHandler(handlers[i4], obj, cls);
        }
        return obj;
    }

    @Override // org.eclipse.jetty.server.HandlerContainer
    public Handler[] getHandlers() {
        return this._handlers;
    }

    public void handle(String str, Request request, c cVar, e eVar) throws IOException, u {
        if (this._handlers == null || !isStarted()) {
            return;
        }
        MultiException multiException = null;
        for (int i4 = 0; i4 < this._handlers.length; i4++) {
            try {
                this._handlers[i4].handle(str, request, cVar, eVar);
            } catch (IOException e4) {
                throw e4;
            } catch (RuntimeException e5) {
                throw e5;
            } catch (Exception e6) {
                if (multiException == null) {
                    multiException = new MultiException();
                }
                multiException.add(e6);
            }
        }
        if (multiException != null) {
            if (multiException.size() != 1) {
                throw new u(multiException);
            }
            throw new u(multiException.getThrowable(0));
        }
    }

    public boolean isParallelStart() {
        return this._parallelStart;
    }

    public void removeHandler(Handler handler) {
        Handler[] handlers = getHandlers();
        if (handlers == null || handlers.length <= 0) {
            return;
        }
        setHandlers((Handler[]) LazyList.removeFromArray(handlers, handler));
    }

    public void setHandlers(Handler[] handlerArr) {
        if (!this._mutableWhenRunning && isStarted()) {
            throw new IllegalStateException(AbstractLifeCycle.STARTED);
        }
        Handler[] handlerArr2 = this._handlers == null ? null : (Handler[]) this._handlers.clone();
        this._handlers = handlerArr;
        Server server = getServer();
        MultiException multiException = new MultiException();
        for (int i4 = 0; handlerArr != null && i4 < handlerArr.length; i4++) {
            if (handlerArr[i4].getServer() != server) {
                handlerArr[i4].setServer(server);
            }
        }
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object[]) handlerArr2, (Object[]) handlerArr, "handler");
        }
        for (int i5 = 0; handlerArr2 != null && i5 < handlerArr2.length; i5++) {
            if (handlerArr2[i5] != null) {
                try {
                    if (handlerArr2[i5].isStarted()) {
                        handlerArr2[i5].stop();
                    }
                } catch (Throwable th) {
                    multiException.add(th);
                }
            }
        }
        multiException.ifExceptionThrowRuntime();
    }

    public void setParallelStart(boolean z3) {
        this._parallelStart = z3;
    }

    @Override // org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.server.Handler
    public void setServer(Server server) {
        if (isStarted()) {
            throw new IllegalStateException(AbstractLifeCycle.STARTED);
        }
        Server server2 = getServer();
        super.setServer(server);
        Handler[] handlers = getHandlers();
        for (int i4 = 0; handlers != null && i4 < handlers.length; i4++) {
            handlers[i4].setServer(server);
        }
        if (server == null || server == server2) {
            return;
        }
        server.getContainer().update((Object) this, (Object[]) null, (Object[]) this._handlers, "handler");
    }

    public HandlerCollection(boolean z3) {
        this._parallelStart = false;
        this._mutableWhenRunning = z3;
    }
}
