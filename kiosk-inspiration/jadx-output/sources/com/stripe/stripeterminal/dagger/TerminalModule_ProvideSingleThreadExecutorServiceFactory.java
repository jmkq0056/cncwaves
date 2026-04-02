package com.stripe.stripeterminal.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideSingleThreadExecutorServiceFactory implements Factory<ExecutorService> {
    private final TerminalModule module;

    public TerminalModule_ProvideSingleThreadExecutorServiceFactory(TerminalModule terminalModule) {
        this.module = terminalModule;
    }

    @Override // javax.inject.Provider
    public ExecutorService get() {
        return provideSingleThreadExecutorService(this.module);
    }

    public static TerminalModule_ProvideSingleThreadExecutorServiceFactory create(TerminalModule terminalModule) {
        return new TerminalModule_ProvideSingleThreadExecutorServiceFactory(terminalModule);
    }

    public static ExecutorService provideSingleThreadExecutorService(TerminalModule terminalModule) {
        return (ExecutorService) Preconditions.checkNotNullFromProvides(terminalModule.provideSingleThreadExecutorService());
    }
}
