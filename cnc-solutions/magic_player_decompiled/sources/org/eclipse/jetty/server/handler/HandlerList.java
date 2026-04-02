package org.eclipse.jetty.server.handler;

import j2.c;
import j2.e;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.Request;

/* JADX INFO: loaded from: classes2.dex */
public class HandlerList extends HandlerCollection {
    @Override // org.eclipse.jetty.server.handler.HandlerCollection, org.eclipse.jetty.server.Handler
    public void handle(String str, Request request, c cVar, e eVar) {
        Handler[] handlers = getHandlers();
        if (handlers == null || !isStarted()) {
            return;
        }
        for (Handler handler : handlers) {
            handler.handle(str, request, cVar, eVar);
            if (request.isHandled()) {
                return;
            }
        }
    }
}
