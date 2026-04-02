package org.eclipse.jetty.server;

import j2.c;
import j2.e;
import org.eclipse.jetty.util.component.Destroyable;
import org.eclipse.jetty.util.component.LifeCycle;

/* JADX INFO: loaded from: classes2.dex */
public interface Handler extends LifeCycle, Destroyable {
    @Override // org.eclipse.jetty.util.component.Destroyable
    void destroy();

    Server getServer();

    void handle(String str, Request request, c cVar, e eVar);

    void setServer(Server server);
}
