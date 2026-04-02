package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.batchdispatcher.BatchDispatcher;
import com.stripe.jvmcore.batchdispatcher.Collector;
import com.stripe.jvmcore.batchdispatcher.Dispatcher;
import com.stripe.jvmcore.batchdispatcher.Scheduler;
import com.stripe.jvmcore.logging.ObservabilityFeatureFlags;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.gator.ProxySpanPb;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory implements Factory<BatchDispatcher<ProxySpanPb>> {
    private final Provider<Dispatcher<ProxySpanPb>> clientLoggerProvider;
    private final Provider<Collector<ProxySpanPb>> collectorProvider;
    private final Provider<Dispatcher<ProxySpanPb>> gatorProvider;
    private final Provider<LogWriter> logWriterProvider;
    private final Provider<ObservabilityFeatureFlags> observabilityFeatureFlagsProvider;
    private final Provider<Scheduler> schedulerProvider;

    public CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory(Provider<Collector<ProxySpanPb>> provider, Provider<Dispatcher<ProxySpanPb>> provider2, Provider<Dispatcher<ProxySpanPb>> provider3, Provider<Scheduler> provider4, Provider<ObservabilityFeatureFlags> provider5, Provider<LogWriter> provider6) {
        this.collectorProvider = provider;
        this.gatorProvider = provider2;
        this.clientLoggerProvider = provider3;
        this.schedulerProvider = provider4;
        this.observabilityFeatureFlagsProvider = provider5;
        this.logWriterProvider = provider6;
    }

    @Override // javax.inject.Provider
    public BatchDispatcher<ProxySpanPb> get() {
        return providesBatchDispatcher(this.collectorProvider.get(), this.gatorProvider.get(), this.clientLoggerProvider.get(), this.schedulerProvider.get(), this.observabilityFeatureFlagsProvider.get(), this.logWriterProvider.get());
    }

    public static CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory create(Provider<Collector<ProxySpanPb>> provider, Provider<Dispatcher<ProxySpanPb>> provider2, Provider<Dispatcher<ProxySpanPb>> provider3, Provider<Scheduler> provider4, Provider<ObservabilityFeatureFlags> provider5, Provider<LogWriter> provider6) {
        return new CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory(provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static BatchDispatcher<ProxySpanPb> providesBatchDispatcher(Collector<ProxySpanPb> collector, Dispatcher<ProxySpanPb> dispatcher, Dispatcher<ProxySpanPb> dispatcher2, Scheduler scheduler, ObservabilityFeatureFlags observabilityFeatureFlags, LogWriter logWriter) {
        return (BatchDispatcher) Preconditions.checkNotNullFromProvides(CompositeTraceLoggerBatchDispatcherModule.INSTANCE.providesBatchDispatcher(collector, dispatcher, dispatcher2, scheduler, observabilityFeatureFlags, logWriter));
    }
}
