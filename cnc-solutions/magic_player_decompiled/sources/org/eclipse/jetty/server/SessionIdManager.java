package org.eclipse.jetty.server;

import j2.c;
import j2.g;
import org.eclipse.jetty.util.component.LifeCycle;

/* JADX INFO: loaded from: classes2.dex */
public interface SessionIdManager extends LifeCycle {
    void addSession(g gVar);

    String getClusterId(String str);

    String getNodeId(String str, c cVar);

    String getWorkerName();

    boolean idInUse(String str);

    void invalidateAll(String str);

    String newSessionId(c cVar, long j4);

    void removeSession(g gVar);
}
