package com.stripe.jvmcore.logging;

import com.stripe.jvmcore.batchdispatcher.BatchDispatcher;
import com.stripe.proto.api.gator.ProxyEventPb;
import com.stripe.time.Clock;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultMetricLogger_Factory implements Factory<DefaultMetricLogger> {
    private final Provider<BatchDispatcher<ProxyEventPb>> batchDispatcherProvider;
    private final Provider<Clock> clockProvider;

    public DefaultMetricLogger_Factory(Provider<BatchDispatcher<ProxyEventPb>> provider, Provider<Clock> provider2) {
        this.batchDispatcherProvider = provider;
        this.clockProvider = provider2;
    }

    @Override // javax.inject.Provider
    public DefaultMetricLogger get() {
        return newInstance(this.batchDispatcherProvider.get(), this.clockProvider.get());
    }

    public static DefaultMetricLogger_Factory create(Provider<BatchDispatcher<ProxyEventPb>> provider, Provider<Clock> provider2) {
        return new DefaultMetricLogger_Factory(provider, provider2);
    }

    public static DefaultMetricLogger newInstance(BatchDispatcher<ProxyEventPb> batchDispatcher, Clock clock) {
        return new DefaultMetricLogger(batchDispatcher, clock);
    }
}
