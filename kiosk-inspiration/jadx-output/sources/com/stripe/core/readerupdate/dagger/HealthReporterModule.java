package com.stripe.core.readerupdate.dagger;

import com.stripe.core.readerupdate.ProgressStatus;
import com.stripe.core.readerupdate.healthreporter.Endpoint;
import com.stripe.core.readerupdate.healthreporter.InstallHealthReporter;
import com.stripe.core.readerupdate.healthreporter.ProgressStatusInstallHealthReporter;
import com.stripe.core.readerupdate.healthreporter.UpdateEndToEndHealthReporter;
import com.stripe.core.readerupdate.healthreporter.UpdateStepHealthReporter;
import com.stripe.jvmcore.dagger.Armada;
import com.stripe.jvmcore.dagger.TMS;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.EndToEndScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.SingleUpdateScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HealthReporterModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u00020\u00042\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0006j\u0002`\u000bH\u0007J,\u0010\f\u001a\u00020\r2\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u0006j\u0002`\u0010H\u0007J2\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u0006j\u0002`\u0010H\u0007J,\u0010\u0014\u001a\u00020\u00042\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0006j\u0002`\u000bH\u0007J,\u0010\u0015\u001a\u00020\r2\"\u0010\u0005\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u0006j\u0002`\u0010H\u0007¨\u0006\u0016"}, d2 = {"Lcom/stripe/core/readerupdate/dagger/HealthReporterModule;", "", "()V", "provideArmadaUpdateEndToEndHealthReporter", "Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;", "healthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;", "Lcom/stripe/core/readerupdate/healthreporter/EndToEndUpdateHealthLogger;", "provideArmadaUpdateStepHealthReporter", "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;", "Lcom/stripe/core/readerupdate/healthreporter/SingleUpdateHealthLogger;", "provideProgressStatusInstallHealthReporter", "Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;", "Lcom/stripe/core/readerupdate/ProgressStatus;", "provideTMSUpdateEndToEndHealthReporter", "provideTMSUpdateStepHealthReporter", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class HealthReporterModule {
    public static final HealthReporterModule INSTANCE = new HealthReporterModule();

    private HealthReporterModule() {
    }

    @Provides
    @Armada
    public final UpdateStepHealthReporter provideArmadaUpdateStepHealthReporter(HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder> healthLogger) {
        Intrinsics.checkNotNullParameter(healthLogger, "healthLogger");
        return new UpdateStepHealthReporter(healthLogger, Endpoint.ARMADA);
    }

    @Provides
    @TMS
    public final UpdateStepHealthReporter provideTMSUpdateStepHealthReporter(HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder> healthLogger) {
        Intrinsics.checkNotNullParameter(healthLogger, "healthLogger");
        return new UpdateStepHealthReporter(healthLogger, Endpoint.TMS);
    }

    @Provides
    @Armada
    public final UpdateEndToEndHealthReporter provideArmadaUpdateEndToEndHealthReporter(HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder> healthLogger) {
        Intrinsics.checkNotNullParameter(healthLogger, "healthLogger");
        return new UpdateEndToEndHealthReporter(healthLogger, Endpoint.ARMADA);
    }

    @Provides
    @TMS
    public final UpdateEndToEndHealthReporter provideTMSUpdateEndToEndHealthReporter(HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder> healthLogger) {
        Intrinsics.checkNotNullParameter(healthLogger, "healthLogger");
        return new UpdateEndToEndHealthReporter(healthLogger, Endpoint.TMS);
    }

    @Provides
    public final InstallHealthReporter<ProgressStatus> provideProgressStatusInstallHealthReporter(HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder> healthLogger) {
        Intrinsics.checkNotNullParameter(healthLogger, "healthLogger");
        return new ProgressStatusInstallHealthReporter(healthLogger);
    }
}
