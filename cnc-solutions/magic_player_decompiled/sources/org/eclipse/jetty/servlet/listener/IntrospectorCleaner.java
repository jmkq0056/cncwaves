package org.eclipse.jetty.servlet.listener;

import g2.s;
import g2.t;
import java.beans.Introspector;

/* JADX INFO: loaded from: classes2.dex */
public class IntrospectorCleaner implements t {
    @Override // g2.t
    public void contextDestroyed(s sVar) {
        Introspector.flushCaches();
    }

    @Override // g2.t
    public void contextInitialized(s sVar) {
    }
}
