package com.stripe.jvmcore.batchdispatcher.dagger;

import com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler;
import com.stripe.logwriter.LogWriter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class CoroutineSchedulerModule_ProvideSchedulerFactory implements Factory<CoroutineScheduler> {
    private final Provider<CoroutineScope> appScopeProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<CoroutineDispatcher> mainProvider;
    private final CoroutineSchedulerModule module;

    public CoroutineSchedulerModule_ProvideSchedulerFactory(CoroutineSchedulerModule coroutineSchedulerModule, Provider<CoroutineScope> provider, Provider<CoroutineDispatcher> provider2, Provider<LogWriter> provider3) {
        this.module = coroutineSchedulerModule;
        this.appScopeProvider = provider;
        this.mainProvider = provider2;
        this.logWriterProvider = provider3;
    }

    @Override // javax.inject.Provider
    public CoroutineScheduler get() {
        return provideScheduler(this.module, this.appScopeProvider.get(), this.mainProvider.get(), this.logWriterProvider.get());
    }

    public static CoroutineSchedulerModule_ProvideSchedulerFactory create(CoroutineSchedulerModule coroutineSchedulerModule, Provider<CoroutineScope> provider, Provider<CoroutineDispatcher> provider2, Provider<LogWriter> provider3) {
        return new CoroutineSchedulerModule_ProvideSchedulerFactory(coroutineSchedulerModule, provider, provider2, provider3);
    }

    public static CoroutineScheduler provideScheduler(CoroutineSchedulerModule coroutineSchedulerModule, CoroutineScope coroutineScope, CoroutineDispatcher coroutineDispatcher, LogWriter logWriter) {
        return (CoroutineScheduler) Preconditions.checkNotNullFromProvides(coroutineSchedulerModule.provideScheduler(coroutineScope, coroutineDispatcher, logWriter));
    }
}
