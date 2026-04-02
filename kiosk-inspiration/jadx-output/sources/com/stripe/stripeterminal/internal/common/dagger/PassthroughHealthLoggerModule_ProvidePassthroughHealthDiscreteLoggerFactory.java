package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.passthrough.PassthroughDomain;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class PassthroughHealthLoggerModule_ProvidePassthroughHealthDiscreteLoggerFactory implements Factory<HealthLogger<PassthroughDomain, PassthroughDomain.Builder, DiscreteScope, DiscreteScope.Builder>> {
    private final Provider<HealthLoggerBuilder> healthLoggerBuilderProvider;

    public PassthroughHealthLoggerModule_ProvidePassthroughHealthDiscreteLoggerFactory(Provider<HealthLoggerBuilder> provider) {
        this.healthLoggerBuilderProvider = provider;
    }

    @Override // javax.inject.Provider
    public HealthLogger<PassthroughDomain, PassthroughDomain.Builder, DiscreteScope, DiscreteScope.Builder> get() {
        return providePassthroughHealthDiscreteLogger(this.healthLoggerBuilderProvider.get());
    }

    public static PassthroughHealthLoggerModule_ProvidePassthroughHealthDiscreteLoggerFactory create(Provider<HealthLoggerBuilder> provider) {
        return new PassthroughHealthLoggerModule_ProvidePassthroughHealthDiscreteLoggerFactory(provider);
    }

    public static HealthLogger<PassthroughDomain, PassthroughDomain.Builder, DiscreteScope, DiscreteScope.Builder> providePassthroughHealthDiscreteLogger(HealthLoggerBuilder healthLoggerBuilder) {
        return (HealthLogger) Preconditions.checkNotNullFromProvides(PassthroughHealthLoggerModule.INSTANCE.providePassthroughHealthDiscreteLogger(healthLoggerBuilder));
    }
}
