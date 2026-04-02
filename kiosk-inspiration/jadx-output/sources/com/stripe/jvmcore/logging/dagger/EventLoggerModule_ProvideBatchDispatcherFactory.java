package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.batchdispatcher.BatchDispatcher;
import com.stripe.jvmcore.batchdispatcher.Collector;
import com.stripe.jvmcore.batchdispatcher.Dispatcher;
import com.stripe.jvmcore.batchdispatcher.Scheduler;
import com.stripe.jvmcore.logging.ObservabilityFeatureFlags;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.gator.LogEvent;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class EventLoggerModule_ProvideBatchDispatcherFactory implements Factory<BatchDispatcher<LogEvent>> {
    private final Provider<Dispatcher<LogEvent>> clientLoggerProvider;
    private final Provider<Collector<LogEvent>> collectorProvider;
    private final Provider<Dispatcher<LogEvent>> gatorProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final EventLoggerModule module;
    private final Provider<ObservabilityFeatureFlags> observabilityFeatureFlagsProvider;
    private final Provider<Scheduler> schedulerProvider;

    public EventLoggerModule_ProvideBatchDispatcherFactory(EventLoggerModule eventLoggerModule, Provider<Collector<LogEvent>> provider, Provider<Dispatcher<LogEvent>> provider2, Provider<Dispatcher<LogEvent>> provider3, Provider<Scheduler> provider4, Provider<ObservabilityFeatureFlags> provider5, Provider<LogWriter> provider6) {
        this.module = eventLoggerModule;
        this.collectorProvider = provider;
        this.gatorProvider = provider2;
        this.clientLoggerProvider = provider3;
        this.schedulerProvider = provider4;
        this.observabilityFeatureFlagsProvider = provider5;
        this.logWriterProvider = provider6;
    }

    @Override // javax.inject.Provider
    public BatchDispatcher<LogEvent> get() {
        return provideBatchDispatcher(this.module, this.collectorProvider.get(), this.gatorProvider.get(), this.clientLoggerProvider.get(), this.schedulerProvider.get(), this.observabilityFeatureFlagsProvider.get(), this.logWriterProvider.get());
    }

    public static EventLoggerModule_ProvideBatchDispatcherFactory create(EventLoggerModule eventLoggerModule, Provider<Collector<LogEvent>> provider, Provider<Dispatcher<LogEvent>> provider2, Provider<Dispatcher<LogEvent>> provider3, Provider<Scheduler> provider4, Provider<ObservabilityFeatureFlags> provider5, Provider<LogWriter> provider6) {
        return new EventLoggerModule_ProvideBatchDispatcherFactory(eventLoggerModule, provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static BatchDispatcher<LogEvent> provideBatchDispatcher(EventLoggerModule eventLoggerModule, Collector<LogEvent> collector, Dispatcher<LogEvent> dispatcher, Dispatcher<LogEvent> dispatcher2, Scheduler scheduler, ObservabilityFeatureFlags observabilityFeatureFlags, LogWriter logWriter) {
        return (BatchDispatcher) Preconditions.checkNotNullFromProvides(eventLoggerModule.provideBatchDispatcher(collector, dispatcher, dispatcher2, scheduler, observabilityFeatureFlags, logWriter));
    }
}
