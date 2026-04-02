package org.eclipse.jetty.server.handler;

import j2.c;
import j2.e;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.util.component.AbstractLifeCycle;

/* JADX INFO: loaded from: classes2.dex */
public class HandlerWrapper extends AbstractHandlerContainer {
    public Handler _handler;

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
        Handler handler = this._handler;
        if (handler != null) {
            handler.start();
        }
        super.doStart();
    }

    @Override // org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        Handler handler = this._handler;
        if (handler != null) {
            handler.stop();
        }
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
        Handler handler = this._handler;
        return handler == null ? new Handler[0] : new Handler[]{handler};
    }

    public <H extends Handler> H getNestedHandlerByClass(Class<H> cls) {
        HandlerWrapper handlerWrapper = this;
        while (handlerWrapper != null) {
            if (cls.isInstance(handlerWrapper)) {
                return handlerWrapper;
            }
            Handler handler = handlerWrapper.getHandler();
            if (!(handler instanceof HandlerWrapper)) {
                return null;
            }
            handlerWrapper = (HandlerWrapper) handler;
        }
        return null;
    }

    public void handle(String str, Request request, c cVar, e eVar) {
        if (this._handler == null || !isStarted()) {
            return;
        }
        this._handler.handle(str, request, cVar, eVar);
    }

    public void setHandler(Handler handler) {
        if (isStarted()) {
            throw new IllegalStateException(AbstractLifeCycle.STARTED);
        }
        Handler handler2 = this._handler;
        this._handler = handler;
        if (handler != null) {
            handler.setServer(getServer());
        }
        if (getServer() != null) {
            getServer().getContainer().update(this, handler2, handler, "handler");
        }
    }

    @Override // org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.server.Handler
    public void setServer(Server server) {
        Server server2 = getServer();
        if (server == server2) {
            return;
        }
        if (isStarted()) {
            throw new IllegalStateException(AbstractLifeCycle.STARTED);
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
