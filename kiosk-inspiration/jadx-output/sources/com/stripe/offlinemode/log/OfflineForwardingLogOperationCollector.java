package com.stripe.offlinemode.log;

import com.google.gson.Gson;
import com.stripe.jvmcore.logging.terminal.contracts.LogOperationCollector;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.Trace;
import com.stripe.loggingmodels.TraceLogger;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineForwardingLogOperationCollector.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationCollector;", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;", "traceLogger", "Lcom/stripe/loggingmodels/TraceLogger;", "gson", "Lcom/google/gson/Gson;", "(Lcom/stripe/loggingmodels/TraceLogger;Lcom/google/gson/Gson;)V", "collect", "", "result", "data", "isComplete", "", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineForwardingLogOperationCollector implements LogOperationCollector<ApplicationTraceResult, OfflineForwardingLogOperation> {
    private final Gson gson;
    private final TraceLogger traceLogger;

    public OfflineForwardingLogOperationCollector(TraceLogger traceLogger, Gson gson) {
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(gson, "gson");
        this.traceLogger = traceLogger;
        this.gson = gson;
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogOperationCollector
    public void collect(ApplicationTraceResult result, OfflineForwardingLogOperation data, boolean isComplete) {
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(data, "data");
        if (result.getException() != null) {
            TraceLogger traceLogger = this.traceLogger;
            Trace trace = data.getTrace();
            Throwable exception = result.getException();
            Intrinsics.checkNotNull(exception);
            TraceLogger.endTraceWithException$default(traceLogger, trace, exception, result.getErrorCode(), null, 8, null);
            return;
        }
        if (result.getErrorMessage() != null) {
            TraceLogger.endTraceWithErrorMessage$default(this.traceLogger, data.getTrace(), result.getErrorMessage(), result.getErrorCode(), null, 8, null);
            return;
        }
        TraceLogger traceLogger2 = this.traceLogger;
        Trace trace2 = data.getTrace();
        String json = this.gson.toJson(result);
        Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
        TraceLogger.endTraceWithSuccess$default(traceLogger2, trace2, json, (Map) null, 4, (Object) null);
    }
}
