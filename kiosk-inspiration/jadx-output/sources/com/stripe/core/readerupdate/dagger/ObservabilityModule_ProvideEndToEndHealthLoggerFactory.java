package com.stripe.core.readerupdate.dagger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.EndToEndScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ObservabilityModule_ProvideEndToEndHealthLoggerFactory implements Factory<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder>> {
    private final Provider<HealthLoggerBuilder> healthLoggerBuilderProvider;

    public ObservabilityModule_ProvideEndToEndHealthLoggerFactory(Provider<HealthLoggerBuilder> provider) {
        this.healthLoggerBuilderProvider = provider;
    }

    @Override // javax.inject.Provider
    public HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder> get() {
        return provideEndToEndHealthLogger(this.healthLoggerBuilderProvider.get());
    }

    public static ObservabilityModule_ProvideEndToEndHealthLoggerFactory create(Provider<HealthLoggerBuilder> provider) {
        return new ObservabilityModule_ProvideEndToEndHealthLoggerFactory(provider);
    }

    public static HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder> provideEndToEndHealthLogger(HealthLoggerBuilder healthLoggerBuilder) {
        return (HealthLogger) Preconditions.checkNotNullFromProvides(ObservabilityModule.INSTANCE.provideEndToEndHealthLogger(healthLoggerBuilder));
    }
}
