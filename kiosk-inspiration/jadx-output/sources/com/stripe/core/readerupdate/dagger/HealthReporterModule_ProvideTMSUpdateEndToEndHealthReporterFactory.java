package com.stripe.core.readerupdate.dagger;

import com.stripe.core.readerupdate.healthreporter.UpdateEndToEndHealthReporter;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.EndToEndScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class HealthReporterModule_ProvideTMSUpdateEndToEndHealthReporterFactory implements Factory<UpdateEndToEndHealthReporter> {
    private final Provider<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder>> healthLoggerProvider;

    public HealthReporterModule_ProvideTMSUpdateEndToEndHealthReporterFactory(Provider<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder>> provider) {
        this.healthLoggerProvider = provider;
    }

    @Override // javax.inject.Provider
    public UpdateEndToEndHealthReporter get() {
        return provideTMSUpdateEndToEndHealthReporter(this.healthLoggerProvider.get());
    }

    public static HealthReporterModule_ProvideTMSUpdateEndToEndHealthReporterFactory create(Provider<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder>> provider) {
        return new HealthReporterModule_ProvideTMSUpdateEndToEndHealthReporterFactory(provider);
    }

    public static UpdateEndToEndHealthReporter provideTMSUpdateEndToEndHealthReporter(HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder> healthLogger) {
        return (UpdateEndToEndHealthReporter) Preconditions.checkNotNullFromProvides(HealthReporterModule.INSTANCE.provideTMSUpdateEndToEndHealthReporter(healthLogger));
    }
}
