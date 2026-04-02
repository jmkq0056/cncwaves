package org.fourthline.cling.transport.impl;

import java.util.concurrent.ExecutorService;
import org.fourthline.cling.transport.spi.AbstractStreamClientConfiguration;

/* JADX INFO: loaded from: classes2.dex */
public class StreamClientConfigurationImpl extends AbstractStreamClientConfiguration {
    private boolean usePersistentConnections;

    public StreamClientConfigurationImpl(ExecutorService executorService) {
        super(executorService);
        this.usePersistentConnections = false;
    }

    public boolean isUsePersistentConnections() {
        return this.usePersistentConnections;
    }

    public void setUsePersistentConnections(boolean z3) {
        this.usePersistentConnections = z3;
    }

    public StreamClientConfigurationImpl(ExecutorService executorService, int i4) {
        super(executorService, i4);
        this.usePersistentConnections = false;
    }
}
