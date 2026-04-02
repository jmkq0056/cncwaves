package com.stripe.offlinemode.dagger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineLogModule_ProvideOfflineDiscreteLoggerFactory implements Factory<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> {
    private final Provider<HealthLoggerBuilder> builderProvider;

    public OfflineLogModule_ProvideOfflineDiscreteLoggerFactory(Provider<HealthLoggerBuilder> builderProvider) {
        this.builderProvider = builderProvider;
    }

    @Override // javax.inject.Provider
    public HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> get() {
        return provideOfflineDiscreteLogger(this.builderProvider.get());
    }

    public static OfflineLogModule_ProvideOfflineDiscreteLoggerFactory create(Provider<HealthLoggerBuilder> builderProvider) {
        return new OfflineLogModule_ProvideOfflineDiscreteLoggerFactory(builderProvider);
    }

    public static HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> provideOfflineDiscreteLogger(HealthLoggerBuilder builder) {
        return (HealthLogger) Preconditions.checkNotNullFromProvides(OfflineLogModule.INSTANCE.provideOfflineDiscreteLogger(builder));
    }
}
