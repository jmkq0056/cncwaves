package com.stripe.jvmcore.logging;

import com.stripe.jvmcore.batchdispatcher.BatchDispatcher;
import com.stripe.proto.api.gator.ProxySpanPb;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.ObservabilityData;
import com.stripe.time.Clock;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultTraceLogger_Factory implements Factory<DefaultTraceLogger> {
    private final Provider<Clock> clockProvider;
    private final Provider<BatchDispatcher<ObservabilityData>> observabilityDataBatchDispatcherProvider;
    private final Provider<ObservabilityFeatureFlags> observabilityFeatureFlagsProvider;
    private final Provider<BatchDispatcher<ProxySpanPb>> proxySpanPbBatchDispatcherProvider;

    public DefaultTraceLogger_Factory(Provider<BatchDispatcher<ProxySpanPb>> provider, Provider<BatchDispatcher<ObservabilityData>> provider2, Provider<ObservabilityFeatureFlags> provider3, Provider<Clock> provider4) {
        this.proxySpanPbBatchDispatcherProvider = provider;
        this.observabilityDataBatchDispatcherProvider = provider2;
        this.observabilityFeatureFlagsProvider = provider3;
        this.clockProvider = provider4;
    }

    @Override // javax.inject.Provider
    public DefaultTraceLogger get() {
        return newInstance(this.proxySpanPbBatchDispatcherProvider.get(), this.observabilityDataBatchDispatcherProvider.get(), this.observabilityFeatureFlagsProvider.get(), this.clockProvider.get());
    }

    public static DefaultTraceLogger_Factory create(Provider<BatchDispatcher<ProxySpanPb>> provider, Provider<BatchDispatcher<ObservabilityData>> provider2, Provider<ObservabilityFeatureFlags> provider3, Provider<Clock> provider4) {
        return new DefaultTraceLogger_Factory(provider, provider2, provider3, provider4);
    }

    public static DefaultTraceLogger newInstance(BatchDispatcher<ProxySpanPb> batchDispatcher, BatchDispatcher<ObservabilityData> batchDispatcher2, ObservabilityFeatureFlags observabilityFeatureFlags, Clock clock) {
        return new DefaultTraceLogger(batchDispatcher, batchDispatcher2, observabilityFeatureFlags, clock);
    }
}
