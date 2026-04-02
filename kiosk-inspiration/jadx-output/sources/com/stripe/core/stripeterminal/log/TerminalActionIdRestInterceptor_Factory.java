package com.stripe.core.stripeterminal.log;

import com.stripe.jvmcore.logging.terminal.log.TraceManager;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class TerminalActionIdRestInterceptor_Factory implements Factory<TerminalActionIdRestInterceptor> {
    private final Provider<TraceManager> traceManagerProvider;

    public TerminalActionIdRestInterceptor_Factory(Provider<TraceManager> traceManagerProvider) {
        this.traceManagerProvider = traceManagerProvider;
    }

    @Override // javax.inject.Provider
    public TerminalActionIdRestInterceptor get() {
        return newInstance(this.traceManagerProvider.get());
    }

    public static TerminalActionIdRestInterceptor_Factory create(Provider<TraceManager> traceManagerProvider) {
        return new TerminalActionIdRestInterceptor_Factory(traceManagerProvider);
    }

    public static TerminalActionIdRestInterceptor newInstance(TraceManager traceManager) {
        return new TerminalActionIdRestInterceptor(traceManager);
    }
}
