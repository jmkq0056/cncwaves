package com.stripe.core.readerupdate.dagger;

import com.stripe.core.readerupdate.healthreporter.UpdateEndToEndHealthReporter;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.EndToEndScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class HealthReporterModule_ProvideArmadaUpdateEndToEndHealthReporterFactory implements Factory<UpdateEndToEndHealthReporter> {
    private final Provider<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder>> healthLoggerProvider;

    public HealthReporterModule_ProvideArmadaUpdateEndToEndHealthReporterFactory(Provider<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder>> provider) {
        this.healthLoggerProvider = provider;
    }

    @Override // javax.inject.Provider
    public UpdateEndToEndHealthReporter get() {
        return provideArmadaUpdateEndToEndHealthReporter(this.healthLoggerProvider.get());
    }

    public static HealthReporterModule_ProvideArmadaUpdateEndToEndHealthReporterFactory create(Provider<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder>> provider) {
        return new HealthReporterModule_ProvideArmadaUpdateEndToEndHealthReporterFactory(provider);
    }

    public static UpdateEndToEndHealthReporter provideArmadaUpdateEndToEndHealthReporter(HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder> healthLogger) {
        return (UpdateEndToEndHealthReporter) Preconditions.checkNotNullFromProvides(HealthReporterModule.INSTANCE.provideArmadaUpdateEndToEndHealthReporter(healthLogger));
    }
}
