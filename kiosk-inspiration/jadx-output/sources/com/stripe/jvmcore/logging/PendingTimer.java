package com.stripe.jvmcore.logging;

import com.stripe.loggingmodels.Metric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HealthLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\u0003HÀ\u0003¢\u0006\u0002\b\bJ\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/jvmcore/logging/PendingTimer;", "", "metric", "Lcom/stripe/loggingmodels/Metric;", "(Lcom/stripe/loggingmodels/Metric;)V", "getMetric$logging", "()Lcom/stripe/loggingmodels/Metric;", "component1", "component1$logging", "copy", "equals", "", "other", "hashCode", "", "toString", "", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PendingTimer {
    private final Metric metric;

    public static /* synthetic */ PendingTimer copy$default(PendingTimer pendingTimer, Metric metric, int i, Object obj) {
        if ((i & 1) != 0) {
            metric = pendingTimer.metric;
        }
        return pendingTimer.copy(metric);
    }

    /* JADX INFO: renamed from: component1$logging, reason: from getter */
    public final Metric getMetric() {
        return this.metric;
    }

    public final PendingTimer copy(Metric metric) {
        Intrinsics.checkNotNullParameter(metric, "metric");
        return new PendingTimer(metric);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof PendingTimer) && Intrinsics.areEqual(this.metric, ((PendingTimer) other).metric);
    }

    public int hashCode() {
        return this.metric.hashCode();
    }

    public String toString() {
        return "PendingTimer(metric=" + this.metric + ')';
    }

    public PendingTimer(Metric metric) {
        Intrinsics.checkNotNullParameter(metric, "metric");
        this.metric = metric;
    }

    public final Metric getMetric$logging() {
        return this.metric;
    }
}
