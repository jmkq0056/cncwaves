package com.stripe.stripeterminal.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.ExecutorService;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideCoroutineScopeFactory implements Factory<CoroutineScope> {
    private final Provider<ExecutorService> executorProvider;
    private final TerminalModule module;

    public TerminalModule_ProvideCoroutineScopeFactory(TerminalModule terminalModule, Provider<ExecutorService> provider) {
        this.module = terminalModule;
        this.executorProvider = provider;
    }

    @Override // javax.inject.Provider
    public CoroutineScope get() {
        return provideCoroutineScope(this.module, this.executorProvider.get());
    }

    public static TerminalModule_ProvideCoroutineScopeFactory create(TerminalModule terminalModule, Provider<ExecutorService> provider) {
        return new TerminalModule_ProvideCoroutineScopeFactory(terminalModule, provider);
    }

    public static CoroutineScope provideCoroutineScope(TerminalModule terminalModule, ExecutorService executorService) {
        return (CoroutineScope) Preconditions.checkNotNullFromProvides(terminalModule.provideCoroutineScope(executorService));
    }
}
