package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.batchdispatcher.BatchDispatcher;
import com.stripe.jvmcore.batchdispatcher.Collector;
import com.stripe.jvmcore.batchdispatcher.Dispatcher;
import com.stripe.jvmcore.batchdispatcher.Scheduler;
import com.stripe.jvmcore.logging.ObservabilityFeatureFlags;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.gator.ProxyEventPb;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class CompositeMetricLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory implements Factory<BatchDispatcher<ProxyEventPb>> {
    private final Provider<Dispatcher<ProxyEventPb>> clientLoggerProvider;
    private final Provider<Collector<ProxyEventPb>> collectorProvider;
    private final Provider<Dispatcher<ProxyEventPb>> gatorProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<ObservabilityFeatureFlags> observabilityFeatureFlagsProvider;
    private final Provider<Scheduler> schedulerProvider;

    public CompositeMetricLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory(Provider<Collector<ProxyEventPb>> provider, Provider<Dispatcher<ProxyEventPb>> provider2, Provider<Dispatcher<ProxyEventPb>> provider3, Provider<Scheduler> provider4, Provider<ObservabilityFeatureFlags> provider5, Provider<LogWriter> provider6) {
        this.collectorProvider = provider;
        this.gatorProvider = provider2;
        this.clientLoggerProvider = provider3;
        this.schedulerProvider = provider4;
        this.observabilityFeatureFlagsProvider = provider5;
        this.logWriterProvider = provider6;
    }

    @Override // javax.inject.Provider
    public BatchDispatcher<ProxyEventPb> get() {
        return providesBatchDispatcher(this.collectorProvider.get(), this.gatorProvider.get(), this.clientLoggerProvider.get(), this.schedulerProvider.get(), this.observabilityFeatureFlagsProvider.get(), this.logWriterProvider.get());
    }

    public static CompositeMetricLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory create(Provider<Collector<ProxyEventPb>> provider, Provider<Dispatcher<ProxyEventPb>> provider2, Provider<Dispatcher<ProxyEventPb>> provider3, Provider<Scheduler> provider4, Provider<ObservabilityFeatureFlags> provider5, Provider<LogWriter> provider6) {
        return new CompositeMetricLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory(provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static BatchDispatcher<ProxyEventPb> providesBatchDispatcher(Collector<ProxyEventPb> collector, Dispatcher<ProxyEventPb> dispatcher, Dispatcher<ProxyEventPb> dispatcher2, Scheduler scheduler, ObservabilityFeatureFlags observabilityFeatureFlags, LogWriter logWriter) {
        return (BatchDispatcher) Preconditions.checkNotNullFromProvides(CompositeMetricLoggerBatchDispatcherModule.INSTANCE.providesBatchDispatcher(collector, dispatcher, dispatcher2, scheduler, observabilityFeatureFlags, logWriter));
    }
}
