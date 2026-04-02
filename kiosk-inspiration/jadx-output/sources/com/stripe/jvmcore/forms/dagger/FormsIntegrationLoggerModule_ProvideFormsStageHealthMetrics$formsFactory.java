package com.stripe.jvmcore.forms.dagger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.forms.FormsDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.forms.StageScope;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class FormsIntegrationLoggerModule_ProvideFormsStageHealthMetrics$formsFactory implements Factory<HealthLogger<FormsDomain, FormsDomain.Builder, StageScope, StageScope.Builder>> {
    private final Provider<HealthLoggerBuilder> builderProvider;

    public FormsIntegrationLoggerModule_ProvideFormsStageHealthMetrics$formsFactory(Provider<HealthLoggerBuilder> provider) {
        this.builderProvider = provider;
    }

    @Override // javax.inject.Provider
    public HealthLogger<FormsDomain, FormsDomain.Builder, StageScope, StageScope.Builder> get() {
        return provideFormsStageHealthMetrics$forms(this.builderProvider.get());
    }

    public static FormsIntegrationLoggerModule_ProvideFormsStageHealthMetrics$formsFactory create(Provider<HealthLoggerBuilder> provider) {
        return new FormsIntegrationLoggerModule_ProvideFormsStageHealthMetrics$formsFactory(provider);
    }

    public static HealthLogger<FormsDomain, FormsDomain.Builder, StageScope, StageScope.Builder> provideFormsStageHealthMetrics$forms(HealthLoggerBuilder healthLoggerBuilder) {
        return (HealthLogger) Preconditions.checkNotNullFromProvides(FormsIntegrationLoggerModule.INSTANCE.provideFormsStageHealthMetrics$forms(healthLoggerBuilder));
    }
}
