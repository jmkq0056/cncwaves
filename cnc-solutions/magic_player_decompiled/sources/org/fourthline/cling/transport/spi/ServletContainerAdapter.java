package org.fourthline.cling.transport.spi;

import g2.n;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public interface ServletContainerAdapter {
    int addConnector(String str, int i4);

    void registerServlet(String str, n nVar);

    void removeConnector(String str, int i4);

    void setExecutorService(ExecutorService executorService);

    void startIfNotRunning();

    void stopIfRunning();
}
