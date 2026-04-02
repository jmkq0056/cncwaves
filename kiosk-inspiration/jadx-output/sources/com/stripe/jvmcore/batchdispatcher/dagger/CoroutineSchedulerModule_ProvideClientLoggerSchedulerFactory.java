package com.stripe.jvmcore.batchdispatcher.dagger;

import com.stripe.jvmcore.batchdispatcher.schedulers.CoroutineScheduler;
import com.stripe.logwriter.LogWriter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory implements Factory<CoroutineScheduler> {
    private final Provider<CoroutineScope> appScopeProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<CoroutineDispatcher> mainProvider;
    private final CoroutineSchedulerModule module;

    public CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory(CoroutineSchedulerModule coroutineSchedulerModule, Provider<LogWriter> provider, Provider<CoroutineScope> provider2, Provider<CoroutineDispatcher> provider3) {
        this.module = coroutineSchedulerModule;
        this.logWriterProvider = provider;
        this.appScopeProvider = provider2;
        this.mainProvider = provider3;
    }

    @Override // javax.inject.Provider
    public CoroutineScheduler get() {
        return provideClientLoggerScheduler(this.module, this.logWriterProvider.get(), this.appScopeProvider.get(), this.mainProvider.get());
    }

    public static CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory create(CoroutineSchedulerModule coroutineSchedulerModule, Provider<LogWriter> provider, Provider<CoroutineScope> provider2, Provider<CoroutineDispatcher> provider3) {
        return new CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory(coroutineSchedulerModule, provider, provider2, provider3);
    }

    public static CoroutineScheduler provideClientLoggerScheduler(CoroutineSchedulerModule coroutineSchedulerModule, LogWriter logWriter, CoroutineScope coroutineScope, CoroutineDispatcher coroutineDispatcher) {
        return (CoroutineScheduler) Preconditions.checkNotNullFromProvides(coroutineSchedulerModule.provideClientLoggerScheduler(logWriter, coroutineScope, coroutineDispatcher));
    }
}
