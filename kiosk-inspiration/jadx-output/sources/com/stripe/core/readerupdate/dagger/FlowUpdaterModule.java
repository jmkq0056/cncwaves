package com.stripe.core.readerupdate.dagger;

import com.stripe.core.hardware.updates.ReaderVersion;
import com.stripe.core.readerupdate.ProgressFlowUpdater;
import com.stripe.core.readerupdate.ProgressStatus;
import com.stripe.core.readerupdate.UpdatePackage;
import com.stripe.core.readerupdate.UpdateSummary;
import com.stripe.core.readerupdate.healthreporter.InstallHealthReporter;
import com.stripe.core.readerupdate.healthreporter.UpdateEndToEndHealthReporter;
import com.stripe.core.readerupdate.healthreporter.UpdateStepHealthReporter;
import com.stripe.core.updater.Applicator;
import com.stripe.core.updater.Ingester;
import com.stripe.core.updater.Monitor;
import com.stripe.jvmcore.dagger.Armada;
import com.stripe.jvmcore.dagger.TMS;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.Module;
import dagger.Provides;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: FlowUpdaterModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0096\u0001\u0010\u0003\u001a\u0018\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004j\u0002`\b2\u0016\u0010\t\u001a\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u000b0\nj\u0002`\f2\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u000ej\u0002`\u000f2\u001c\u0010\u0010\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u000b0\u0011j\u0002`\u00122\b\b\u0001\u0010\u0013\u001a\u00020\u00142\b\b\u0001\u0010\u0015\u001a\u00020\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00070\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\u0096\u0001\u0010\u001b\u001a\u0018\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004j\u0002`\u001d2\u0016\u0010\t\u001a\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u000b0\nj\u0002`\u001e2\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00060\u000ej\u0002`\u001f2\u001c\u0010\u0010\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u000b0\u0011j\u0002`\u00122\b\b\u0001\u0010\u0013\u001a\u00020\u00142\b\b\u0001\u0010\u0015\u001a\u00020\u00162\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00070\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0007¨\u0006 "}, d2 = {"Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule;", "", "()V", "provideArmadaFlowUpdater", "Lcom/stripe/core/readerupdate/ProgressFlowUpdater;", "Lcom/stripe/core/readerupdate/UpdateSummary;", "Lcom/stripe/core/readerupdate/UpdatePackage;", "Lcom/stripe/core/readerupdate/ProgressStatus;", "Lcom/stripe/core/readerupdate/BbposArmadaUpdater;", "monitor", "Lcom/stripe/core/updater/Monitor;", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/core/readerupdate/ArmadaMonitor;", "ingester", "Lcom/stripe/core/updater/Ingester;", "Lcom/stripe/core/readerupdate/ArmadaIngester;", "applicator", "Lcom/stripe/core/updater/Applicator;", "Lcom/stripe/core/readerupdate/BbposApplicator;", "endToEndHealthReporter", "Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;", "stepHealthReporter", "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;", "installHealthReporter", "Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideTmsFlowUpdater", "Lcom/stripe/core/hardware/updates/ReaderVersion;", "Lcom/stripe/core/readerupdate/BbposTmsUpdater;", "Lcom/stripe/core/readerupdate/TmsMonitor;", "Lcom/stripe/core/readerupdate/TmsIngester;", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class FlowUpdaterModule {
    public static final FlowUpdaterModule INSTANCE = new FlowUpdaterModule();

    private FlowUpdaterModule() {
    }

    @Provides
    public final ProgressFlowUpdater<ReaderVersion, UpdatePackage, ProgressStatus> provideTmsFlowUpdater(Monitor<Flow<ReaderVersion>> monitor, Ingester<ReaderVersion, UpdatePackage> ingester, Applicator<UpdatePackage, Flow<ProgressStatus>> applicator, @TMS UpdateEndToEndHealthReporter endToEndHealthReporter, @TMS UpdateStepHealthReporter stepHealthReporter, InstallHealthReporter<ProgressStatus> installHealthReporter, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(monitor, "monitor");
        Intrinsics.checkNotNullParameter(ingester, "ingester");
        Intrinsics.checkNotNullParameter(applicator, "applicator");
        Intrinsics.checkNotNullParameter(endToEndHealthReporter, "endToEndHealthReporter");
        Intrinsics.checkNotNullParameter(stepHealthReporter, "stepHealthReporter");
        Intrinsics.checkNotNullParameter(installHealthReporter, "installHealthReporter");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new ProgressFlowUpdater<>(monitor, ingester, applicator, endToEndHealthReporter, stepHealthReporter, installHealthReporter, loggerFactory);
    }

    @Provides
    public final ProgressFlowUpdater<UpdateSummary, UpdatePackage, ProgressStatus> provideArmadaFlowUpdater(Monitor<Flow<UpdateSummary>> monitor, Ingester<UpdateSummary, UpdatePackage> ingester, Applicator<UpdatePackage, Flow<ProgressStatus>> applicator, @Armada UpdateEndToEndHealthReporter endToEndHealthReporter, @Armada UpdateStepHealthReporter stepHealthReporter, InstallHealthReporter<ProgressStatus> installHealthReporter, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(monitor, "monitor");
        Intrinsics.checkNotNullParameter(ingester, "ingester");
        Intrinsics.checkNotNullParameter(applicator, "applicator");
        Intrinsics.checkNotNullParameter(endToEndHealthReporter, "endToEndHealthReporter");
        Intrinsics.checkNotNullParameter(stepHealthReporter, "stepHealthReporter");
        Intrinsics.checkNotNullParameter(installHealthReporter, "installHealthReporter");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new ProgressFlowUpdater<>(monitor, ingester, applicator, endToEndHealthReporter, stepHealthReporter, installHealthReporter, loggerFactory);
    }
}
