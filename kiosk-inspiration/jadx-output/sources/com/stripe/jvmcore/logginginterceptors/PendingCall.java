package com.stripe.jvmcore.logginginterceptors;

import com.stripe.loggingmodels.Metric;
import com.stripe.loggingmodels.Trace;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PendingCall.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/stripe/jvmcore/logginginterceptors/PendingCall;", "", "trace", "Lcom/stripe/loggingmodels/Trace;", "metric", "Lcom/stripe/loggingmodels/Metric;", "(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/loggingmodels/Metric;)V", "getMetric", "()Lcom/stripe/loggingmodels/Metric;", "getTrace", "()Lcom/stripe/loggingmodels/Trace;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "logging-interceptors"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PendingCall {
    private final Metric metric;
    private final Trace trace;

    public static /* synthetic */ PendingCall copy$default(PendingCall pendingCall, Trace trace, Metric metric, int i, Object obj) {
        if ((i & 1) != 0) {
            trace = pendingCall.trace;
        }
        if ((i & 2) != 0) {
            metric = pendingCall.metric;
        }
        return pendingCall.copy(trace, metric);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Trace getTrace() {
        return this.trace;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Metric getMetric() {
        return this.metric;
    }

    public final PendingCall copy(Trace trace, Metric metric) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        Intrinsics.checkNotNullParameter(metric, "metric");
        return new PendingCall(trace, metric);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PendingCall)) {
            return false;
        }
        PendingCall pendingCall = (PendingCall) other;
        return Intrinsics.areEqual(this.trace, pendingCall.trace) && Intrinsics.areEqual(this.metric, pendingCall.metric);
    }

    public int hashCode() {
        return (this.trace.hashCode() * 31) + this.metric.hashCode();
    }

    public String toString() {
        return "PendingCall(trace=" + this.trace + ", metric=" + this.metric + ')';
    }

    public PendingCall(Trace trace, Metric metric) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        Intrinsics.checkNotNullParameter(metric, "metric");
        this.trace = trace;
        this.metric = metric;
    }

    public final Trace getTrace() {
        return this.trace;
    }

    public final Metric getMetric() {
        return this.metric;
    }
}
