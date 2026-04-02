package com.stripe.offlinemode.dagger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.EndToEndScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineLogModule_ProvideEndToEndLoggerFactory implements Factory<HealthLogger<OfflineDomain, OfflineDomain.Builder, EndToEndScope, EndToEndScope.Builder>> {
    private final Provider<HealthLoggerBuilder> builderProvider;

    public OfflineLogModule_ProvideEndToEndLoggerFactory(Provider<HealthLoggerBuilder> builderProvider) {
        this.builderProvider = builderProvider;
    }

    @Override // javax.inject.Provider
    public HealthLogger<OfflineDomain, OfflineDomain.Builder, EndToEndScope, EndToEndScope.Builder> get() {
        return provideEndToEndLogger(this.builderProvider.get());
    }

    public static OfflineLogModule_ProvideEndToEndLoggerFactory create(Provider<HealthLoggerBuilder> builderProvider) {
        return new OfflineLogModule_ProvideEndToEndLoggerFactory(builderProvider);
    }

    public static HealthLogger<OfflineDomain, OfflineDomain.Builder, EndToEndScope, EndToEndScope.Builder> provideEndToEndLogger(HealthLoggerBuilder builder) {
        return (HealthLogger) Preconditions.checkNotNullFromProvides(OfflineLogModule.INSTANCE.provideEndToEndLogger(builder));
    }
}
