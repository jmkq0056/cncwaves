package com.stripe.core.readerupdate.dagger;

import com.stripe.core.readerupdate.ProgressStatus;
import com.stripe.core.readerupdate.healthreporter.InstallHealthReporter;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.SingleUpdateScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class HealthReporterModule_ProvideProgressStatusInstallHealthReporterFactory implements Factory<InstallHealthReporter<ProgressStatus>> {
    private final Provider<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder>> healthLoggerProvider;

    public HealthReporterModule_ProvideProgressStatusInstallHealthReporterFactory(Provider<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder>> provider) {
        this.healthLoggerProvider = provider;
    }

    @Override // javax.inject.Provider
    public InstallHealthReporter<ProgressStatus> get() {
        return provideProgressStatusInstallHealthReporter(this.healthLoggerProvider.get());
    }

    public static HealthReporterModule_ProvideProgressStatusInstallHealthReporterFactory create(Provider<HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder>> provider) {
        return new HealthReporterModule_ProvideProgressStatusInstallHealthReporterFactory(provider);
    }

    public static InstallHealthReporter<ProgressStatus> provideProgressStatusInstallHealthReporter(HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder> healthLogger) {
        return (InstallHealthReporter) Preconditions.checkNotNullFromProvides(HealthReporterModule.INSTANCE.provideProgressStatusInstallHealthReporter(healthLogger));
    }
}
