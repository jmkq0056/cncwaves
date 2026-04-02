package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.batchdispatcher.BatchDispatcher;
import com.stripe.jvmcore.logging.BaseSearchIndicesProvider;
import com.stripe.jvmcore.logging.ObservabilityDataStructuredEventLogger;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.ObservabilityData;
import com.stripe.time.Clock;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory implements Factory<ObservabilityDataStructuredEventLogger> {
    private final Provider<BaseSearchIndicesProvider> baseSearchIndicesProvider;
    private final Provider<Clock> clockProvider;
    private final StructuredEventLoggerModule module;
    private final Provider<BatchDispatcher<ObservabilityData>> observabilityDataBatchDispatcherProvider;

    public StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory(StructuredEventLoggerModule structuredEventLoggerModule, Provider<BatchDispatcher<ObservabilityData>> provider, Provider<Clock> provider2, Provider<BaseSearchIndicesProvider> provider3) {
        this.module = structuredEventLoggerModule;
        this.observabilityDataBatchDispatcherProvider = provider;
        this.clockProvider = provider2;
        this.baseSearchIndicesProvider = provider3;
    }

    @Override // javax.inject.Provider
    public ObservabilityDataStructuredEventLogger get() {
        return provideObservabilityDataStructuredEventLogger$logging(this.module, this.observabilityDataBatchDispatcherProvider.get(), this.clockProvider.get(), this.baseSearchIndicesProvider.get());
    }

    public static StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory create(StructuredEventLoggerModule structuredEventLoggerModule, Provider<BatchDispatcher<ObservabilityData>> provider, Provider<Clock> provider2, Provider<BaseSearchIndicesProvider> provider3) {
        return new StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory(structuredEventLoggerModule, provider, provider2, provider3);
    }

    public static ObservabilityDataStructuredEventLogger provideObservabilityDataStructuredEventLogger$logging(StructuredEventLoggerModule structuredEventLoggerModule, BatchDispatcher<ObservabilityData> batchDispatcher, Clock clock, BaseSearchIndicesProvider baseSearchIndicesProvider) {
        return (ObservabilityDataStructuredEventLogger) Preconditions.checkNotNullFromProvides(structuredEventLoggerModule.provideObservabilityDataStructuredEventLogger$logging(batchDispatcher, clock, baseSearchIndicesProvider));
    }
}
