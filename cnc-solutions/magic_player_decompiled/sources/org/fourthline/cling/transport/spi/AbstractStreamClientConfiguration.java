package org.fourthline.cling.transport.spi;

import java.util.concurrent.ExecutorService;
import org.fourthline.cling.model.ServerClientTokens;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractStreamClientConfiguration implements StreamClientConfiguration {
    public int logWarningSeconds;
    public ExecutorService requestExecutorService;
    public int timeoutSeconds;

    public AbstractStreamClientConfiguration(ExecutorService executorService) {
        this.timeoutSeconds = 60;
        this.logWarningSeconds = 5;
        this.requestExecutorService = executorService;
    }

    @Override // org.fourthline.cling.transport.spi.StreamClientConfiguration
    public int getLogWarningSeconds() {
        return this.logWarningSeconds;
    }

    @Override // org.fourthline.cling.transport.spi.StreamClientConfiguration
    public ExecutorService getRequestExecutorService() {
        return this.requestExecutorService;
    }

    @Override // org.fourthline.cling.transport.spi.StreamClientConfiguration
    public int getTimeoutSeconds() {
        return this.timeoutSeconds;
    }

    @Override // org.fourthline.cling.transport.spi.StreamClientConfiguration
    public String getUserAgentValue(int i4, int i5) {
        return new ServerClientTokens(i4, i5).toString();
    }

    public void setLogWarningSeconds(int i4) {
        this.logWarningSeconds = i4;
    }

    public void setRequestExecutorService(ExecutorService executorService) {
        this.requestExecutorService = executorService;
    }

    public void setTimeoutSeconds(int i4) {
        this.timeoutSeconds = i4;
    }

    public AbstractStreamClientConfiguration(ExecutorService executorService, int i4) {
        this.timeoutSeconds = 60;
        this.logWarningSeconds = 5;
        this.requestExecutorService = executorService;
        this.timeoutSeconds = i4;
    }

    public AbstractStreamClientConfiguration(ExecutorService executorService, int i4, int i5) {
        this.timeoutSeconds = 60;
        this.logWarningSeconds = 5;
        this.requestExecutorService = executorService;
        this.timeoutSeconds = i4;
        this.logWarningSeconds = i5;
    }
}
