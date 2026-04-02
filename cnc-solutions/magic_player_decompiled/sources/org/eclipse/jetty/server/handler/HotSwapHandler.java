package org.eclipse.jetty.server.handler;

import j2.c;
import j2.e;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.util.component.AbstractLifeCycle;

/* JADX INFO: loaded from: classes2.dex */
public class HotSwapHandler extends AbstractHandlerContainer {
    private volatile Handler _handler;

    @Override // org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.Destroyable
    public void destroy() {
        if (!isStopped()) {
            throw new IllegalStateException("!STOPPED");
        }
        Handler handler = getHandler();
        if (handler != null) {
            setHandler(null);
            handler.destroy();
        }
        super.destroy();
    }

    @Override // org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        super.doStart();
    }

    @Override // org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        super.doStop();
    }

    @Override // org.eclipse.jetty.server.handler.AbstractHandlerContainer
    public Object expandChildren(Object obj, Class cls) {
        return expandHandler(this._handler, obj, cls);
    }

    public Handler getHandler() {
        return this._handler;
    }

    @Override // org.eclipse.jetty.server.HandlerContainer
    public Handler[] getHandlers() {
        return new Handler[]{this._handler};
    }

    @Override // org.eclipse.jetty.server.Handler
    public void handle(String str, Request request, c cVar, e eVar) {
        if (this._handler == null || !isStarted()) {
            return;
        }
        this._handler.handle(str, request, cVar, eVar);
    }

    public void setHandler(Handler handler) {
        if (handler == null) {
            throw new IllegalArgumentException("Parameter handler is null.");
        }
        try {
            Handler handler2 = this._handler;
            this._handler = handler;
            Server server = getServer();
            handler.setServer(server);
            addBean(handler);
            if (server != null) {
                server.getContainer().update(this, handler2, handler, "handler");
            }
            if (handler2 != null) {
                removeBean(handler2);
            }
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    @Override // org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.server.Handler
    public void setServer(Server server) {
        Server server2 = getServer();
        if (server == server2) {
            return;
        }
        if (isRunning()) {
            throw new IllegalStateException(AbstractLifeCycle.RUNNING);
        }
        super.setServer(server);
        Handler handler = getHandler();
        if (handler != null) {
            handler.setServer(server);
        }
        if (server == null || server == server2) {
            return;
        }
        server.getContainer().update(this, (Object) null, this._handler, "handler");
    }
}
