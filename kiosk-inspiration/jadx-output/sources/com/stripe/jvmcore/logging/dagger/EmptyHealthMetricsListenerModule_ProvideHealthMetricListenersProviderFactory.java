package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.logging.HealthMetricListenersProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory implements Factory<HealthMetricListenersProvider> {
    @Override // javax.inject.Provider
    public HealthMetricListenersProvider get() {
        return provideHealthMetricListenersProvider();
    }

    public static EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static HealthMetricListenersProvider provideHealthMetricListenersProvider() {
        return (HealthMetricListenersProvider) Preconditions.checkNotNullFromProvides(EmptyHealthMetricsListenerModule.INSTANCE.provideHealthMetricListenersProvider());
    }

    private static final class InstanceHolder {
        private static final EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory INSTANCE = new EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory();

        private InstanceHolder() {
        }
    }
}
