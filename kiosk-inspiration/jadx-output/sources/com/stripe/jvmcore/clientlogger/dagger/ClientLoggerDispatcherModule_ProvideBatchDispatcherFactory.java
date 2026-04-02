package com.stripe.jvmcore.clientlogger.dagger;

import com.stripe.jvmcore.batchdispatcher.BatchDispatcher;
import com.stripe.jvmcore.batchdispatcher.Collector;
import com.stripe.jvmcore.batchdispatcher.Dispatcher;
import com.stripe.jvmcore.batchdispatcher.Scheduler;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.ObservabilityData;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ClientLoggerDispatcherModule_ProvideBatchDispatcherFactory implements Factory<BatchDispatcher<ObservabilityData>> {
    private final Provider<Collector<ObservabilityData>> collectorProvider;
    private final Provider<Dispatcher<ObservabilityData>> dispatcherProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final ClientLoggerDispatcherModule module;
    private final Provider<Scheduler> schedulerProvider;

    public ClientLoggerDispatcherModule_ProvideBatchDispatcherFactory(ClientLoggerDispatcherModule clientLoggerDispatcherModule, Provider<LogWriter> provider, Provider<Collector<ObservabilityData>> provider2, Provider<Dispatcher<ObservabilityData>> provider3, Provider<Scheduler> provider4) {
        this.module = clientLoggerDispatcherModule;
        this.logWriterProvider = provider;
        this.collectorProvider = provider2;
        this.dispatcherProvider = provider3;
        this.schedulerProvider = provider4;
    }

    @Override // javax.inject.Provider
    public BatchDispatcher<ObservabilityData> get() {
        return provideBatchDispatcher(this.module, this.logWriterProvider.get(), this.collectorProvider.get(), this.dispatcherProvider.get(), this.schedulerProvider.get());
    }

    public static ClientLoggerDispatcherModule_ProvideBatchDispatcherFactory create(ClientLoggerDispatcherModule clientLoggerDispatcherModule, Provider<LogWriter> provider, Provider<Collector<ObservabilityData>> provider2, Provider<Dispatcher<ObservabilityData>> provider3, Provider<Scheduler> provider4) {
        return new ClientLoggerDispatcherModule_ProvideBatchDispatcherFactory(clientLoggerDispatcherModule, provider, provider2, provider3, provider4);
    }

    public static BatchDispatcher<ObservabilityData> provideBatchDispatcher(ClientLoggerDispatcherModule clientLoggerDispatcherModule, LogWriter logWriter, Collector<ObservabilityData> collector, Dispatcher<ObservabilityData> dispatcher, Scheduler scheduler) {
        return (BatchDispatcher) Preconditions.checkNotNullFromProvides(clientLoggerDispatcherModule.provideBatchDispatcher(logWriter, collector, dispatcher, scheduler));
    }
}
