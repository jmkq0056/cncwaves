package com.stripe.jvmcore.logging.terminal.contracts;

import com.google.firebase.perf.metrics.resource.ResourceType;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import kotlin.Metadata;

/* JADX INFO: compiled from: LogOperationController.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\bf\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00042\u00020\u0005J\b\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\u0007H&J\u001d\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00028\u00012\u0006\u0010\u000b\u001a\u00020\fH&¢\u0006\u0002\u0010\rJ\b\u0010\u000e\u001a\u00020\u0007H&J\u001d\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00028\u00002\u0006\u0010\u000b\u001a\u00020\fH&¢\u0006\u0002\u0010\u0011ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0012À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationController;", ResourceType.TRACE, "Lcom/stripe/loggingmodels/ApplicationTrace;", "TraceResult", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogLifecycleListener;", "endAllOperations", "", "endLongRunningOperations", "endOperation", "applicationTraceResult", "identifier", "", "(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V", "flushPending", "startOperation", "applicationTrace", "(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface LogOperationController<Trace extends ApplicationTrace, TraceResult extends ApplicationTraceResult> extends LogLifecycleListener {
    void endAllOperations();

    void endLongRunningOperations();

    void endOperation(TraceResult applicationTraceResult, String identifier);

    void flushPending();

    void startOperation(Trace applicationTrace, String identifier);
}
