package com.stripe.core.readerupdate.dagger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.SingleUpdateScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ObservabilityModule_ProvideSingleUpdateHealthLoggerFactory implements Factory<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder>> {
    private final Provider<HealthLoggerBuilder> healthLoggerBuilderProvider;

    public ObservabilityModule_ProvideSingleUpdateHealthLoggerFactory(Provider<HealthLoggerBuilder> provider) {
        this.healthLoggerBuilderProvider = provider;
    }

    @Override // javax.inject.Provider
    public HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder> get() {
        return provideSingleUpdateHealthLogger(this.healthLoggerBuilderProvider.get());
    }

    public static ObservabilityModule_ProvideSingleUpdateHealthLoggerFactory create(Provider<HealthLoggerBuilder> provider) {
        return new ObservabilityModule_ProvideSingleUpdateHealthLoggerFactory(provider);
    }

    public static HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder> provideSingleUpdateHealthLogger(HealthLoggerBuilder healthLoggerBuilder) {
        return (HealthLogger) Preconditions.checkNotNullFromProvides(ObservabilityModule.INSTANCE.provideSingleUpdateHealthLogger(healthLoggerBuilder));
    }
}
