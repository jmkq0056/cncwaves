package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.logging.HealthMetricListener;
import com.stripe.jvmcore.logging.HealthMetricListenersProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.Set;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class HealthMetricListenersModule_ProvideHealthMetricListenersProviderFactory implements Factory<HealthMetricListenersProvider> {
    private final Provider<Set<HealthMetricListener>> healthMetricListenersProvider;

    public HealthMetricListenersModule_ProvideHealthMetricListenersProviderFactory(Provider<Set<HealthMetricListener>> provider) {
        this.healthMetricListenersProvider = provider;
    }

    @Override // javax.inject.Provider
    public HealthMetricListenersProvider get() {
        return provideHealthMetricListenersProvider(this.healthMetricListenersProvider.get());
    }

    public static HealthMetricListenersModule_ProvideHealthMetricListenersProviderFactory create(Provider<Set<HealthMetricListener>> provider) {
        return new HealthMetricListenersModule_ProvideHealthMetricListenersProviderFactory(provider);
    }

    public static HealthMetricListenersProvider provideHealthMetricListenersProvider(Set<HealthMetricListener> set) {
        return (HealthMetricListenersProvider) Preconditions.checkNotNullFromProvides(HealthMetricListenersModule.INSTANCE.provideHealthMetricListenersProvider(set));
    }
}
