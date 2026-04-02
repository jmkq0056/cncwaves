package com.stripe.jvmcore.logging.terminal.log;

import com.google.gson.Gson;
import com.stripe.jvmcore.logging.terminal.contracts.LogOperationFactory;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.MetricLogger;
import com.stripe.loggingmodels.Tag;
import com.stripe.loggingmodels.Trace;
import com.stripe.loggingmodels.TraceLogger;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: DefaultLogOperationFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0014B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\f\u0010\u000f\u001a\u00020\u0010*\u00020\tH\u0002J\u0018\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u0012*\u00020\tH\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory;", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;", "traceLogger", "Lcom/stripe/loggingmodels/TraceLogger;", "metricLogger", "Lcom/stripe/loggingmodels/MetricLogger;", "traceManager", "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;", "gson", "Lcom/google/gson/Gson;", "(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;Lcom/google/gson/Gson;)V", "create", "request", "context", "Lcom/stripe/loggingmodels/Trace$Context;", "tags", "", "", "Companion", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultLogOperationFactory implements LogOperationFactory<ApplicationTrace, DefaultLogOperation> {
    private static final String TAG_ACTION_ID = "terminal_action_id";
    private static final String TERMINAL_DOMAIN = "terminal_request";
    private static final String TERMINAL_SCOPE = "terminal";
    private final Gson gson;
    private final MetricLogger metricLogger;
    private final TraceLogger traceLogger;
    private final TraceManager traceManager;

    public DefaultLogOperationFactory(TraceLogger traceLogger, MetricLogger metricLogger, TraceManager traceManager, Gson gson) {
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(metricLogger, "metricLogger");
        Intrinsics.checkNotNullParameter(traceManager, "traceManager");
        Intrinsics.checkNotNullParameter(gson, "gson");
        this.traceLogger = traceLogger;
        this.metricLogger = metricLogger;
        this.traceManager = traceManager;
        this.gson = gson;
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogOperationFactory
    public DefaultLogOperation create(ApplicationTrace request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Trace.Context context = context(this.traceManager);
        TraceLogger traceLogger = this.traceLogger;
        String service = request.getService();
        String method = request.getMethod();
        String json = this.gson.toJson(request);
        Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
        String actionId = context.getActionId();
        return new DefaultLogOperation(traceLogger.startTrace(service, method, json, (Long) null, (Long) null, actionId != null ? StringsKt.toLongOrNull(actionId) : null, context, (String) null, (String) null, MapsKt.emptyMap(), MapsKt.plus(tags(this.traceManager), request.getTags())), this.metricLogger.startTimedMetric(TERMINAL_DOMAIN, TERMINAL_SCOPE, request.getMethod(), Tag.HealthTag.INSTANCE.toHealthTags(request.getTags())));
    }

    private final Trace.Context context(TraceManager traceManager) {
        return new Trace.Context(traceManager.get_serialNumber(), traceManager.getSessionId(), traceManager.nextTraceId());
    }

    private final Map<String, String> tags(TraceManager traceManager) {
        Map mapCreateMapBuilder = MapsKt.createMapBuilder();
        String terminalActionId = traceManager.getTerminalActionId();
        if (terminalActionId != null) {
            mapCreateMapBuilder.put(TAG_ACTION_ID, terminalActionId);
        }
        return MapsKt.build(mapCreateMapBuilder);
    }
}
