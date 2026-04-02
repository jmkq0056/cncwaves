package org.eclipse.jetty.io.nio;

import org.eclipse.jetty.io.Connection;

/* JADX INFO: loaded from: classes2.dex */
public interface AsyncConnection extends Connection {
    void onInputShutdown();
}
