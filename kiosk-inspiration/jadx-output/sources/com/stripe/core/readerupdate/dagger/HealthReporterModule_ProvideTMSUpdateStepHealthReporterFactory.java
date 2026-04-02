package com.stripe.core.readerupdate.dagger;

import com.stripe.core.readerupdate.healthreporter.UpdateStepHealthReporter;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.SingleUpdateScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class HealthReporterModule_ProvideTMSUpdateStepHealthReporterFactory implements Factory<UpdateStepHealthReporter> {
    private final Provider<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder>> healthLoggerProvider;

    public HealthReporterModule_ProvideTMSUpdateStepHealthReporterFactory(Provider<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder>> provider) {
        this.healthLoggerProvider = provider;
    }

    @Override // javax.inject.Provider
    public UpdateStepHealthReporter get() {
        return provideTMSUpdateStepHealthReporter(this.healthLoggerProvider.get());
    }

    public static HealthReporterModule_ProvideTMSUpdateStepHealthReporterFactory create(Provider<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder>> provider) {
        return new HealthReporterModule_ProvideTMSUpdateStepHealthReporterFactory(provider);
    }

    public static UpdateStepHealthReporter provideTMSUpdateStepHealthReporter(HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder> healthLogger) {
        return (UpdateStepHealthReporter) Preconditions.checkNotNullFromProvides(HealthReporterModule.INSTANCE.provideTMSUpdateStepHealthReporter(healthLogger));
    }
}
