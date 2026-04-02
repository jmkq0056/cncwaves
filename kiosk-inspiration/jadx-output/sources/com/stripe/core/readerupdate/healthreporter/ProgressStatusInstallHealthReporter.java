package com.stripe.core.readerupdate.healthreporter;

import androidx.core.app.NotificationCompat;
import com.stripe.core.readerupdate.ProgressStatus;
import com.stripe.core.readerupdate.Update;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.PendingTimer;
import com.stripe.loggingmodels.Outcome;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.SingleUpdateScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProgressStatusInstallHealthReporter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B)\u0012\"\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0004j\u0002`\t¢\u0006\u0002\u0010\nJ.\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00132\u0014\b\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160\u0015H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0002H\u0016R*\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0004j\u0002`\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter;", "Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;", "Lcom/stripe/core/readerupdate/ProgressStatus;", "healthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;", "Lcom/stripe/core/readerupdate/healthreporter/SingleUpdateHealthLogger;", "(Lcom/stripe/jvmcore/logging/HealthLogger;)V", "timers", "", "Lcom/stripe/core/readerupdate/Update;", "Lcom/stripe/jvmcore/logging/PendingTimer;", "endTimer", "", "asset", "outcome", "Lcom/stripe/loggingmodels/Outcome;", "tags", "", "", "reportInstallProgress", NotificationCompat.CATEGORY_STATUS, "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProgressStatusInstallHealthReporter implements InstallHealthReporter<ProgressStatus> {
    private final HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder> healthLogger;
    private Map<Update, PendingTimer> timers;

    public ProgressStatusInstallHealthReporter(HealthLogger<UpdatesDomain, UpdatesDomain.Builder, SingleUpdateScope, SingleUpdateScope.Builder> healthLogger) {
        Intrinsics.checkNotNullParameter(healthLogger, "healthLogger");
        this.healthLogger = healthLogger;
        this.timers = new LinkedHashMap();
    }

    @Override // com.stripe.core.readerupdate.healthreporter.InstallHealthReporter
    public ProgressStatus reportInstallProgress(ProgressStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        if (status instanceof ProgressStatus.Start) {
            Update asset = ((ProgressStatus.Start) status).getAsset();
            this.timers.put(asset, this.healthLogger.startTimer(MapsKt.mapOf(TuplesKt.to("asset", asset.toString())), new Function2<SingleUpdateScope.Builder, Timer, Unit>() { // from class: com.stripe.core.readerupdate.healthreporter.ProgressStatusInstallHealthReporter.reportInstallProgress.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(SingleUpdateScope.Builder builder, Timer timer) {
                    invoke2(builder, timer);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(SingleUpdateScope.Builder startTimer, Timer event) {
                    Intrinsics.checkNotNullParameter(startTimer, "$this$startTimer");
                    Intrinsics.checkNotNullParameter(event, "event");
                    startTimer.install = event;
                }
            }));
            return status;
        }
        if (status instanceof ProgressStatus.Success) {
            endTimer$default(this, ((ProgressStatus.Success) status).getAsset(), Outcome.Ok.INSTANCE, null, 4, null);
            return status;
        }
        if (status instanceof ProgressStatus.Error) {
            ProgressStatus.Error error = (ProgressStatus.Error) status;
            endTimer(error.getAsset(), Outcome.GenericError.INSTANCE, MapsKt.mapOf(TuplesKt.to("error", error.getException().toString())));
        }
        return status;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void endTimer$default(ProgressStatusInstallHealthReporter progressStatusInstallHealthReporter, Update update, Outcome outcome, Map map, int i, Object obj) {
        if ((i & 4) != 0) {
            map = MapsKt.emptyMap();
        }
        progressStatusInstallHealthReporter.endTimer(update, outcome, map);
    }

    private final void endTimer(Update asset, Outcome outcome, Map<String, String> tags) {
        PendingTimer pendingTimer = this.timers.get(asset);
        if (pendingTimer != null) {
            HealthLogger.endTimer$default(this.healthLogger, pendingTimer, outcome, tags, null, 8, null);
        }
        this.timers.put(asset, null);
    }
}
