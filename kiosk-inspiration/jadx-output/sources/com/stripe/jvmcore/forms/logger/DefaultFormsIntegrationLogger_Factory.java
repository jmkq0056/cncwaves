package com.stripe.jvmcore.forms.logger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.forms.FormsDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.forms.StageScope;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class DefaultFormsIntegrationLogger_Factory implements Factory<DefaultFormsIntegrationLogger> {
    private final Provider<HealthLogger<FormsDomain, FormsDomain.Builder, StageScope, StageScope.Builder>> stageHealthMetricsProvider;

    public DefaultFormsIntegrationLogger_Factory(Provider<HealthLogger<FormsDomain, FormsDomain.Builder, StageScope, StageScope.Builder>> provider) {
        this.stageHealthMetricsProvider = provider;
    }

    @Override // javax.inject.Provider
    public DefaultFormsIntegrationLogger get() {
        return newInstance(this.stageHealthMetricsProvider.get());
    }

    public static DefaultFormsIntegrationLogger_Factory create(Provider<HealthLogger<FormsDomain, FormsDomain.Builder, StageScope, StageScope.Builder>> provider) {
        return new DefaultFormsIntegrationLogger_Factory(provider);
    }

    public static DefaultFormsIntegrationLogger newInstance(HealthLogger<FormsDomain, FormsDomain.Builder, StageScope, StageScope.Builder> healthLogger) {
        return new DefaultFormsIntegrationLogger(healthLogger);
    }
}
