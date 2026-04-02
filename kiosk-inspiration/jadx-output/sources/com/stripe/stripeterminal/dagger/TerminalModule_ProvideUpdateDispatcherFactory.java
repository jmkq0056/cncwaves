package com.stripe.stripeterminal.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.ExecutorService;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideUpdateDispatcherFactory implements Factory<CoroutineDispatcher> {
    private final Provider<ExecutorService> executorProvider;
    private final TerminalModule module;

    public TerminalModule_ProvideUpdateDispatcherFactory(TerminalModule terminalModule, Provider<ExecutorService> provider) {
        this.module = terminalModule;
        this.executorProvider = provider;
    }

    @Override // javax.inject.Provider
    public CoroutineDispatcher get() {
        return provideUpdateDispatcher(this.module, this.executorProvider.get());
    }

    public static TerminalModule_ProvideUpdateDispatcherFactory create(TerminalModule terminalModule, Provider<ExecutorService> provider) {
        return new TerminalModule_ProvideUpdateDispatcherFactory(terminalModule, provider);
    }

    public static CoroutineDispatcher provideUpdateDispatcher(TerminalModule terminalModule, ExecutorService executorService) {
        return (CoroutineDispatcher) Preconditions.checkNotNullFromProvides(terminalModule.provideUpdateDispatcher(executorService));
    }
}
