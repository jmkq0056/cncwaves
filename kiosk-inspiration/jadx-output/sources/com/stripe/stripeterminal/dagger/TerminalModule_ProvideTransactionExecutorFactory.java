package com.stripe.stripeterminal.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideTransactionExecutorFactory implements Factory<ExecutorService> {
    private final TerminalModule module;

    public TerminalModule_ProvideTransactionExecutorFactory(TerminalModule terminalModule) {
        this.module = terminalModule;
    }

    @Override // javax.inject.Provider
    public ExecutorService get() {
        return provideTransactionExecutor(this.module);
    }

    public static TerminalModule_ProvideTransactionExecutorFactory create(TerminalModule terminalModule) {
        return new TerminalModule_ProvideTransactionExecutorFactory(terminalModule);
    }

    public static ExecutorService provideTransactionExecutor(TerminalModule terminalModule) {
        return (ExecutorService) Preconditions.checkNotNullFromProvides(terminalModule.provideTransactionExecutor());
    }
}
