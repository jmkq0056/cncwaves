package com.stripe.jvmcore.logging.terminal.log;

import com.google.firebase.perf.metrics.resource.ResourceType;
import com.stripe.jvmcore.logging.terminal.contracts.Logger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.loggingmodels.LogLevel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SimpleLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\bf\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00042\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0005J&\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rH\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000eÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", ResourceType.TRACE, "Lcom/stripe/loggingmodels/ApplicationTrace;", "TraceResult", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;", "log", "", "message", "", "logLevel", "Lcom/stripe/loggingmodels/LogLevel;", "throwable", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface SimpleLogger<Trace extends ApplicationTrace, TraceResult extends ApplicationTraceResult> extends Logger<Trace, TraceResult> {
    default void log(String message, LogLevel logLevel, Throwable throwable) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
    }

    static /* synthetic */ void log$default(SimpleLogger simpleLogger, String str, LogLevel logLevel, Throwable th, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: log");
        }
        if ((i & 4) != 0) {
            th = null;
        }
        simpleLogger.log(str, logLevel, th);
    }
}
