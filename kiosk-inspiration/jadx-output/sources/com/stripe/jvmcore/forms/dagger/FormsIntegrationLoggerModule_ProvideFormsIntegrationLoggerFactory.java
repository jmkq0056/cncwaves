package com.stripe.jvmcore.forms.dagger;

import com.stripe.jvmcore.forms.logger.FormsIntegrationLogger;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.forms.FormsDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.forms.StageScope;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class FormsIntegrationLoggerModule_ProvideFormsIntegrationLoggerFactory implements Factory<FormsIntegrationLogger> {
    private final Provider<HealthLogger<FormsDomain, FormsDomain.Builder, StageScope, StageScope.Builder>> stageHealthMetricsProvider;

    public FormsIntegrationLoggerModule_ProvideFormsIntegrationLoggerFactory(Provider<HealthLogger<FormsDomain, FormsDomain.Builder, StageScope, StageScope.Builder>> provider) {
        this.stageHealthMetricsProvider = provider;
    }

    @Override // javax.inject.Provider
    public FormsIntegrationLogger get() {
        return provideFormsIntegrationLogger(this.stageHealthMetricsProvider.get());
    }

    public static FormsIntegrationLoggerModule_ProvideFormsIntegrationLoggerFactory create(Provider<HealthLogger<FormsDomain, FormsDomain.Builder, StageScope, StageScope.Builder>> provider) {
        return new FormsIntegrationLoggerModule_ProvideFormsIntegrationLoggerFactory(provider);
    }

    public static FormsIntegrationLogger provideFormsIntegrationLogger(HealthLogger<FormsDomain, FormsDomain.Builder, StageScope, StageScope.Builder> healthLogger) {
        return (FormsIntegrationLogger) Preconditions.checkNotNullFromProvides(FormsIntegrationLoggerModule.INSTANCE.provideFormsIntegrationLogger(healthLogger));
    }
}
