package org.eclipse.jetty.security;

import j2.c;
import j2.e;

/* JADX INFO: loaded from: classes2.dex */
public interface CrossContextPsuedoSession<T> {
    void clear(c cVar);

    T fetch(c cVar);

    void store(T t3, e eVar);
}
