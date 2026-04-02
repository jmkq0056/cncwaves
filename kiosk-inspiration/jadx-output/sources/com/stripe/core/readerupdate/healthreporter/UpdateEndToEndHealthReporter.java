package com.stripe.core.readerupdate.healthreporter;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.stripe.jvmcore.logging.ExecutionTimeLogger;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.EndToEndScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.updates.UpdatesDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: UpdateEndToEndHealthReporter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B1\u0012\"\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0003j\u0002`\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ2\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00100\u000f\"\u0004\b\u0000\u0010\u0010*\b\u0012\u0004\u0012\u0002H\u00100\u000f2\u0014\b\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u0012R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;", "", "healthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;", "Lcom/stripe/core/readerupdate/healthreporter/EndToEndUpdateHealthLogger;", BbposAdapter.ENDPOINT_TAG_KEY, "Lcom/stripe/core/readerupdate/healthreporter/Endpoint;", "(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/core/readerupdate/healthreporter/Endpoint;)V", "logHelper", "Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;", "reportFlowExecution", "Lkotlinx/coroutines/flow/Flow;", PrinterTextParser.TAGS_ALIGN_RIGHT, "tags", "", "", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdateEndToEndHealthReporter {
    private final Endpoint endpoint;
    private final ExecutionTimeLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder> logHelper;

    public UpdateEndToEndHealthReporter(HealthLogger<UpdatesDomain, UpdatesDomain.Builder, EndToEndScope, EndToEndScope.Builder> healthLogger, Endpoint endpoint) {
        Intrinsics.checkNotNullParameter(healthLogger, "healthLogger");
        Intrinsics.checkNotNullParameter(endpoint, "endpoint");
        this.endpoint = endpoint;
        this.logHelper = new ExecutionTimeLogger<>(healthLogger);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Flow reportFlowExecution$default(UpdateEndToEndHealthReporter updateEndToEndHealthReporter, Flow flow, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            map = MapsKt.emptyMap();
        }
        return updateEndToEndHealthReporter.reportFlowExecution(flow, map);
    }

    public final <R> Flow<R> reportFlowExecution(Flow<? extends R> flow, Map<String, String> tags) {
        Intrinsics.checkNotNullParameter(flow, "<this>");
        Intrinsics.checkNotNullParameter(tags, "tags");
        return this.logHelper.reportFlowExecutionWithException(flow, TagsKt.getComprehensiveTags(tags, this.endpoint), new Function2<EndToEndScope.Builder, Timer, Unit>() { // from class: com.stripe.core.readerupdate.healthreporter.UpdateEndToEndHealthReporter$reportFlowExecution$1$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(EndToEndScope.Builder builder, Timer timer) {
                invoke2(builder, timer);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(EndToEndScope.Builder reportFlowExecutionWithException, Timer event) {
                Intrinsics.checkNotNullParameter(reportFlowExecutionWithException, "$this$reportFlowExecutionWithException");
                Intrinsics.checkNotNullParameter(event, "event");
                reportFlowExecutionWithException.updates = event;
            }
        });
    }
}
