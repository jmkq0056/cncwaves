package com.stripe.stripeterminal.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import io.reactivex.rxjava3.core.Scheduler;
import java.util.concurrent.ExecutorService;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideTransactionSchedulerFactory implements Factory<Scheduler> {
    private final Provider<ExecutorService> executorProvider;
    private final TerminalModule module;

    public TerminalModule_ProvideTransactionSchedulerFactory(TerminalModule terminalModule, Provider<ExecutorService> provider) {
        this.module = terminalModule;
        this.executorProvider = provider;
    }

    @Override // javax.inject.Provider
    public Scheduler get() {
        return provideTransactionScheduler(this.module, this.executorProvider.get());
    }

    public static TerminalModule_ProvideTransactionSchedulerFactory create(TerminalModule terminalModule, Provider<ExecutorService> provider) {
        return new TerminalModule_ProvideTransactionSchedulerFactory(terminalModule, provider);
    }

    public static Scheduler provideTransactionScheduler(TerminalModule terminalModule, ExecutorService executorService) {
        return (Scheduler) Preconditions.checkNotNullFromProvides(terminalModule.provideTransactionScheduler(executorService));
    }
}
