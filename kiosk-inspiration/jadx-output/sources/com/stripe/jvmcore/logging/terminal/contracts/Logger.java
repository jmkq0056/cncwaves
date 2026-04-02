package com.stripe.jvmcore.logging.terminal.contracts;

import com.google.firebase.perf.metrics.resource.ResourceType;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Logger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0005\bf\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00042\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0005JG\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2.\u0010\n\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\f0\u000b\"\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\fH&¢\u0006\u0002\u0010\u000eJE\u0010\u000f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2.\u0010\n\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\f0\u000b\"\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\fH&¢\u0006\u0002\u0010\u000eJQ\u0010\u000f\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\u00112.\u0010\n\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\f0\u000b\"\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\fH&¢\u0006\u0002\u0010\u0012J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0016JG\u0010\u0013\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2.\u0010\n\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\f0\u000b\"\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\fH&¢\u0006\u0002\u0010\u000eJG\u0010\u0014\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2.\u0010\n\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\f0\u000b\"\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\fH&¢\u0006\u0002\u0010\u000eJQ\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00112\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2.\u0010\n\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\f0\u000b\"\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\r0\fH&¢\u0006\u0002\u0010\u0015ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0016À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;", ResourceType.TRACE, "Lcom/stripe/loggingmodels/ApplicationTrace;", "TraceResult", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationController;", "d", "", "message", "", "keyValuePairs", "", "Lkotlin/Pair;", "", "(Ljava/lang/String;[Lkotlin/Pair;)V", "e", "t", "", "(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V", "i", "w", "(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface Logger<Trace extends ApplicationTrace, TraceResult extends ApplicationTraceResult> extends LogOperationController<Trace, TraceResult> {
    void d(String message, Pair<String, ? extends Object>... keyValuePairs);

    void e(String message, Throwable t, Pair<String, ? extends Object>... keyValuePairs);

    void e(String message, Pair<String, ? extends Object>... keyValuePairs);

    void i(String message, Pair<String, ? extends Object>... keyValuePairs);

    void w(String message, Pair<String, ? extends Object>... keyValuePairs);

    void w(Throwable t, String message, Pair<String, ? extends Object>... keyValuePairs);

    static /* synthetic */ void e$default(Logger logger, String str, Throwable th, Pair[] pairArr, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: e");
        }
        if ((i & 1) != 0) {
            str = null;
        }
        logger.e(str, th, pairArr);
    }

    default void e(Throwable t) {
        Intrinsics.checkNotNullParameter(t, "t");
        e(null, t, new Pair[0]);
    }

    static /* synthetic */ void w$default(Logger logger, Throwable th, String str, Pair[] pairArr, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: w");
        }
        if ((i & 2) != 0) {
            str = null;
        }
        logger.w(th, str, pairArr);
    }
}
