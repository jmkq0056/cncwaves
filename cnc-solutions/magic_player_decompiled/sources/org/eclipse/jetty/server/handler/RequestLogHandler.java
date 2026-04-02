package org.eclipse.jetty.server.handler;

import g2.d;
import j2.c;
import j2.e;
import org.eclipse.jetty.continuation.Continuation;
import org.eclipse.jetty.continuation.ContinuationListener;
import org.eclipse.jetty.server.AsyncContinuation;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.RequestLog;
import org.eclipse.jetty.server.Response;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.util.component.AbstractLifeCycle;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class RequestLogHandler extends HandlerWrapper {
    private static final Logger LOG = Log.getLogger((Class<?>) RequestLogHandler.class);
    private RequestLog _requestLog;

    public static class NullRequestLog extends AbstractLifeCycle implements RequestLog {
        private NullRequestLog() {
        }

        @Override // org.eclipse.jetty.server.RequestLog
        public void log(Request request, Response response) {
        }
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        if (this._requestLog == null) {
            LOG.warn("!RequestLog", new Object[0]);
            this._requestLog = new NullRequestLog();
        }
        super.doStart();
        this._requestLog.start();
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        super.doStop();
        this._requestLog.stop();
        if (this._requestLog instanceof NullRequestLog) {
            this._requestLog = null;
        }
    }

    public RequestLog getRequestLog() {
        return this._requestLog;
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.Handler
    public void handle(String str, final Request request, c cVar, final e eVar) {
        d dVar = d.REQUEST;
        AsyncContinuation asyncContinuation = request.getAsyncContinuation();
        if (!asyncContinuation.isInitial()) {
            request.setDispatchTime(System.currentTimeMillis());
        }
        try {
            super.handle(str, request, cVar, eVar);
            if (this._requestLog == null || !request.getDispatcherType().equals(dVar)) {
                return;
            }
            if (!asyncContinuation.isAsync()) {
                this._requestLog.log(request, (Response) eVar);
            } else if (asyncContinuation.isInitial()) {
                asyncContinuation.addContinuationListener(new ContinuationListener() { // from class: org.eclipse.jetty.server.handler.RequestLogHandler.1
                    @Override // org.eclipse.jetty.continuation.ContinuationListener
                    public void onComplete(Continuation continuation) {
                        RequestLogHandler.this._requestLog.log(request, (Response) eVar);
                    }

                    @Override // org.eclipse.jetty.continuation.ContinuationListener
                    public void onTimeout(Continuation continuation) {
                    }
                });
            }
        } catch (Throwable th) {
            if (this._requestLog != null && request.getDispatcherType().equals(dVar)) {
                if (!asyncContinuation.isAsync()) {
                    this._requestLog.log(request, (Response) eVar);
                } else if (asyncContinuation.isInitial()) {
                    asyncContinuation.addContinuationListener(new ContinuationListener() { // from class: org.eclipse.jetty.server.handler.RequestLogHandler.1
                        @Override // org.eclipse.jetty.continuation.ContinuationListener
                        public void onComplete(Continuation continuation) {
                            RequestLogHandler.this._requestLog.log(request, (Response) eVar);
                        }

                        @Override // org.eclipse.jetty.continuation.ContinuationListener
                        public void onTimeout(Continuation continuation) {
                        }
                    });
                }
            }
            throw th;
        }
    }

    public void setRequestLog(RequestLog requestLog) {
        RequestLog requestLog2;
        try {
            RequestLog requestLog3 = this._requestLog;
            if (requestLog3 != null) {
                requestLog3.stop();
            }
        } catch (Exception e4) {
            LOG.warn(e4);
        }
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object) this._requestLog, (Object) requestLog, "logimpl", true);
        }
        this._requestLog = requestLog;
        try {
            if (!isStarted() || (requestLog2 = this._requestLog) == null) {
                return;
            }
            requestLog2.start();
        } catch (Exception e5) {
            throw new RuntimeException(e5);
        }
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.server.Handler
    public void setServer(Server server) {
        if (this._requestLog == null) {
            super.setServer(server);
            return;
        }
        if (getServer() != null && getServer() != server) {
            getServer().getContainer().update((Object) this, (Object) this._requestLog, (Object) null, "logimpl", true);
        }
        super.setServer(server);
        if (server == null || server == getServer()) {
            return;
        }
        server.getContainer().update((Object) this, (Object) null, (Object) this._requestLog, "logimpl", true);
    }
}
