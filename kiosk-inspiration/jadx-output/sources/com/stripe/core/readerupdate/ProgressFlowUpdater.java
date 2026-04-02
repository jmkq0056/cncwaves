package com.stripe.core.readerupdate;

import com.stripe.core.readerupdate.healthreporter.InstallHealthReporter;
import com.stripe.core.readerupdate.healthreporter.UpdateEndToEndHealthReporter;
import com.stripe.core.readerupdate.healthreporter.UpdateStepHealthReporter;
import com.stripe.core.updater.Applicator;
import com.stripe.core.updater.Ingester;
import com.stripe.core.updater.Monitor;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.sun.jna.platform.win32.Ddeml;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: ProgressFlowUpdater.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u001c*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u0004\b\u0002\u0010\u00032\u00020\u0004:\u0001\u001cBo\b\u0000\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00070\u0006\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t\u0012\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u00070\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014J\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00020\u0007R \u0010\n\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\u00070\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0016j\u0002`\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/stripe/core/readerupdate/ProgressFlowUpdater;", "Coordinates", "Image", Ddeml.SZDDESYS_ITEM_STATUS, "", "monitor", "Lcom/stripe/core/updater/Monitor;", "Lkotlinx/coroutines/flow/Flow;", "ingester", "Lcom/stripe/core/updater/Ingester;", "applicator", "Lcom/stripe/core/updater/Applicator;", "endToEndHealthReporter", "Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;", "stepHealthReporter", "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;", "installHealthReporter", "Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lcom/stripe/core/updater/Monitor;Lcom/stripe/core/updater/Ingester;Lcom/stripe/core/updater/Applicator;Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "updateFlow", "start", "Companion", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProgressFlowUpdater<Coordinates, Image, Status> {
    private static final String IDENTIFIER = "update_package_operation";
    private final Applicator<Image, Flow<Status>> applicator;
    private final UpdateEndToEndHealthReporter endToEndHealthReporter;
    private final Ingester<Coordinates, Image> ingester;
    private final InstallHealthReporter<Status> installHealthReporter;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final Monitor<Flow<Coordinates>> monitor;
    private final UpdateStepHealthReporter stepHealthReporter;
    private final Flow<Status> updateFlow;

    public ProgressFlowUpdater(Monitor<Flow<Coordinates>> monitor, Ingester<Coordinates, Image> ingester, Applicator<Image, Flow<Status>> applicator, UpdateEndToEndHealthReporter endToEndHealthReporter, UpdateStepHealthReporter stepHealthReporter, InstallHealthReporter<Status> installHealthReporter, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(monitor, "monitor");
        Intrinsics.checkNotNullParameter(ingester, "ingester");
        Intrinsics.checkNotNullParameter(applicator, "applicator");
        Intrinsics.checkNotNullParameter(endToEndHealthReporter, "endToEndHealthReporter");
        Intrinsics.checkNotNullParameter(stepHealthReporter, "stepHealthReporter");
        Intrinsics.checkNotNullParameter(installHealthReporter, "installHealthReporter");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.monitor = monitor;
        this.ingester = ingester;
        this.applicator = applicator;
        this.endToEndHealthReporter = endToEndHealthReporter;
        this.stepHealthReporter = stepHealthReporter;
        this.installHealthReporter = installHealthReporter;
        this.logger = loggerFactory.create(Reflection.getOrCreateKotlinClass(ProgressFlowUpdater.class));
        this.updateFlow = FlowKt.flow(new ProgressFlowUpdater$updateFlow$1(this, null));
    }

    public final Flow<Status> start() {
        return UpdateEndToEndHealthReporter.reportFlowExecution$default(this.endToEndHealthReporter, this.updateFlow, null, 1, null);
    }
}
