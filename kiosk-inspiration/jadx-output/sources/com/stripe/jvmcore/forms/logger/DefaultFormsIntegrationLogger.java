package com.stripe.jvmcore.forms.logger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.PendingTimer;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.forms.FormsDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.forms.StageScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultFormsIntegrationLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B+\b\u0007\u0012\"\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0003j\u0002`\b¢\u0006\u0002\u0010\tJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\rH\u0016R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0003j\u0002`\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/jvmcore/forms/logger/DefaultFormsIntegrationLogger;", "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;", "stageHealthMetrics", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;", "Lcom/stripe/jvmcore/forms/logger/FormStageHealthMetrics;", "(Lcom/stripe/jvmcore/logging/HealthLogger;)V", "endToEndResultTimer", "Lcom/stripe/jvmcore/logging/PendingTimer;", "finishEndToEndTimer", "", "result", "", "startEndToEndTimer", "Companion", "forms"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultFormsIntegrationLogger implements FormsIntegrationLogger {
    private static final String OPERATION_RESULT_TAG = "OperationResult";
    private PendingTimer endToEndResultTimer;
    private final HealthLogger<FormsDomain, FormsDomain.Builder, StageScope, StageScope.Builder> stageHealthMetrics;

    @Inject
    public DefaultFormsIntegrationLogger(HealthLogger<FormsDomain, FormsDomain.Builder, StageScope, StageScope.Builder> stageHealthMetrics) {
        Intrinsics.checkNotNullParameter(stageHealthMetrics, "stageHealthMetrics");
        this.stageHealthMetrics = stageHealthMetrics;
    }

    @Override // com.stripe.jvmcore.forms.logger.FormsIntegrationLogger
    public void startEndToEndTimer() {
        this.endToEndResultTimer = HealthLogger.startTimer$default(this.stageHealthMetrics, null, new Function2<StageScope.Builder, Timer, Unit>() { // from class: com.stripe.jvmcore.forms.logger.DefaultFormsIntegrationLogger.startEndToEndTimer.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(StageScope.Builder builder, Timer timer) {
                invoke2(builder, timer);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(StageScope.Builder startTimer, Timer t) {
                Intrinsics.checkNotNullParameter(startTimer, "$this$startTimer");
                Intrinsics.checkNotNullParameter(t, "t");
                startTimer.end_to_end_result_by_integration = t;
            }
        }, 1, null);
    }

    @Override // com.stripe.jvmcore.forms.logger.FormsIntegrationLogger
    public void finishEndToEndTimer(String result) {
        Intrinsics.checkNotNullParameter(result, "result");
        PendingTimer pendingTimer = this.endToEndResultTimer;
        if (pendingTimer != null) {
            HealthLogger.endTimer$default(this.stageHealthMetrics, pendingTimer, null, MapsKt.mapOf(TuplesKt.to(OPERATION_RESULT_TAG, result)), null, 10, null);
        }
        this.endToEndResultTimer = null;
    }
}
