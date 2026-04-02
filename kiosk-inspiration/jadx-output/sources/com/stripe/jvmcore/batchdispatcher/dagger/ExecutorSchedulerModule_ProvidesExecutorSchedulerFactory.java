package com.stripe.jvmcore.batchdispatcher.dagger;

import com.stripe.jvmcore.batchdispatcher.schedulers.ExecutorScheduler;
import com.stripe.logwriter.LogWriter;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.ScheduledExecutorService;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class ExecutorSchedulerModule_ProvidesExecutorSchedulerFactory implements Factory<ExecutorScheduler> {
    private final Provider<ScheduledExecutorService> executorServiceProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final ExecutorSchedulerModule module;
    private final Provider<CoroutineScope> scopeProvider;

    public ExecutorSchedulerModule_ProvidesExecutorSchedulerFactory(ExecutorSchedulerModule executorSchedulerModule, Provider<LogWriter> provider, Provider<ScheduledExecutorService> provider2, Provider<CoroutineScope> provider3) {
        this.module = executorSchedulerModule;
        this.logWriterProvider = provider;
        this.executorServiceProvider = provider2;
        this.scopeProvider = provider3;
    }

    @Override // javax.inject.Provider
    public ExecutorScheduler get() {
        return providesExecutorScheduler(this.module, this.logWriterProvider.get(), this.executorServiceProvider.get(), this.scopeProvider.get());
    }

    public static ExecutorSchedulerModule_ProvidesExecutorSchedulerFactory create(ExecutorSchedulerModule executorSchedulerModule, Provider<LogWriter> provider, Provider<ScheduledExecutorService> provider2, Provider<CoroutineScope> provider3) {
        return new ExecutorSchedulerModule_ProvidesExecutorSchedulerFactory(executorSchedulerModule, provider, provider2, provider3);
    }

    public static ExecutorScheduler providesExecutorScheduler(ExecutorSchedulerModule executorSchedulerModule, LogWriter logWriter, ScheduledExecutorService scheduledExecutorService, CoroutineScope coroutineScope) {
        return (ExecutorScheduler) Preconditions.checkNotNullFromProvides(executorSchedulerModule.providesExecutorScheduler(logWriter, scheduledExecutorService, coroutineScope));
    }
}
