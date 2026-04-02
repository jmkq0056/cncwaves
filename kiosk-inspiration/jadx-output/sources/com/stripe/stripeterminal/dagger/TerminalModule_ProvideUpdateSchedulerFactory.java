package com.stripe.stripeterminal.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import io.reactivex.rxjava3.core.Scheduler;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class TerminalModule_ProvideUpdateSchedulerFactory implements Factory<Scheduler> {
    private final TerminalModule module;
    private final Provider<Scheduler> schedulerProvider;

    public TerminalModule_ProvideUpdateSchedulerFactory(TerminalModule terminalModule, Provider<Scheduler> provider) {
        this.module = terminalModule;
        this.schedulerProvider = provider;
    }

    @Override // javax.inject.Provider
    public Scheduler get() {
        return provideUpdateScheduler(this.module, this.schedulerProvider.get());
    }

    public static TerminalModule_ProvideUpdateSchedulerFactory create(TerminalModule terminalModule, Provider<Scheduler> provider) {
        return new TerminalModule_ProvideUpdateSchedulerFactory(terminalModule, provider);
    }

    public static Scheduler provideUpdateScheduler(TerminalModule terminalModule, Scheduler scheduler) {
        return (Scheduler) Preconditions.checkNotNullFromProvides(terminalModule.provideUpdateScheduler(scheduler));
    }
}
