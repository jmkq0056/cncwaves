package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.PassthroughDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.StageScope;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class PassthroughHealthLoggerModule_ProvidePassthroughHealthStageLoggerFactory implements Factory<HealthLogger<PassthroughDomain, PassthroughDomain.Builder, StageScope, StageScope.Builder>> {
    private final Provider<HealthLoggerBuilder> healthLoggerBuilderProvider;

    public PassthroughHealthLoggerModule_ProvidePassthroughHealthStageLoggerFactory(Provider<HealthLoggerBuilder> provider) {
        this.healthLoggerBuilderProvider = provider;
    }

    @Override // javax.inject.Provider
    public HealthLogger<PassthroughDomain, PassthroughDomain.Builder, StageScope, StageScope.Builder> get() {
        return providePassthroughHealthStageLogger(this.healthLoggerBuilderProvider.get());
    }

    public static PassthroughHealthLoggerModule_ProvidePassthroughHealthStageLoggerFactory create(Provider<HealthLoggerBuilder> provider) {
        return new PassthroughHealthLoggerModule_ProvidePassthroughHealthStageLoggerFactory(provider);
    }

    public static HealthLogger<PassthroughDomain, PassthroughDomain.Builder, StageScope, StageScope.Builder> providePassthroughHealthStageLogger(HealthLoggerBuilder healthLoggerBuilder) {
        return (HealthLogger) Preconditions.checkNotNullFromProvides(PassthroughHealthLoggerModule.INSTANCE.providePassthroughHealthStageLogger(healthLoggerBuilder));
    }
}
