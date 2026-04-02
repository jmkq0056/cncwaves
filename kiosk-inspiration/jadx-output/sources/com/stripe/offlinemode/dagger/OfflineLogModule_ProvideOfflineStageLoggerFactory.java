package com.stripe.offlinemode.dagger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.StageScope;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineLogModule_ProvideOfflineStageLoggerFactory implements Factory<HealthLogger<OfflineDomain, OfflineDomain.Builder, StageScope, StageScope.Builder>> {
    private final Provider<HealthLoggerBuilder> builderProvider;

    public OfflineLogModule_ProvideOfflineStageLoggerFactory(Provider<HealthLoggerBuilder> builderProvider) {
        this.builderProvider = builderProvider;
    }

    @Override // javax.inject.Provider
    public HealthLogger<OfflineDomain, OfflineDomain.Builder, StageScope, StageScope.Builder> get() {
        return provideOfflineStageLogger(this.builderProvider.get());
    }

    public static OfflineLogModule_ProvideOfflineStageLoggerFactory create(Provider<HealthLoggerBuilder> builderProvider) {
        return new OfflineLogModule_ProvideOfflineStageLoggerFactory(builderProvider);
    }

    public static HealthLogger<OfflineDomain, OfflineDomain.Builder, StageScope, StageScope.Builder> provideOfflineStageLogger(HealthLoggerBuilder builder) {
        return (HealthLogger) Preconditions.checkNotNullFromProvides(OfflineLogModule.INSTANCE.provideOfflineStageLogger(builder));
    }
}
