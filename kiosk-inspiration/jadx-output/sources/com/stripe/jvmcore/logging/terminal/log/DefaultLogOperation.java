package com.stripe.jvmcore.logging.terminal.log;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.jvmcore.logging.terminal.contracts.LogOperation;
import com.stripe.loggingmodels.LogLevel;
import com.stripe.loggingmodels.LogPoint;
import com.stripe.loggingmodels.Metric;
import com.stripe.loggingmodels.Trace;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultLogOperation.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J,\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#2\b\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u0011H\u0016J\u0010\u0010)\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\t\u0010*\u001a\u00020#HÖ\u0001R!\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8VX\u0096\u0084\u0002¢\u0006\f\u001a\u0004\b\f\u0010\r*\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0010\u001a\u00020\u00118VX\u0096\u0084\u0002¢\u0006\f\u001a\u0004\b\u0013\u0010\u0014*\u0004\b\u0012\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006+"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;", "trace", "Lcom/stripe/loggingmodels/Trace;", "metric", "Lcom/stripe/loggingmodels/Metric;", "(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/loggingmodels/Metric;)V", "logPoints", "", "Lcom/stripe/loggingmodels/LogPoint;", "getLogPoints$delegate", "(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;)Ljava/lang/Object;", "getLogPoints", "()Ljava/util/List;", "getMetric", "()Lcom/stripe/loggingmodels/Metric;", "startTimeMs", "", "getStartTimeMs$delegate", "getStartTimeMs", "()J", "getTrace", "()Lcom/stripe/loggingmodels/Trace;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "log", "", "message", "", "throwable", "", FirebaseAnalytics.Param.LEVEL, "Lcom/stripe/loggingmodels/LogLevel;", "currentTimeMillis", "new", "toString", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class DefaultLogOperation implements LogOperation<DefaultLogOperation> {
    private final Metric metric;
    private final Trace trace;

    public static /* synthetic */ DefaultLogOperation copy$default(DefaultLogOperation defaultLogOperation, Trace trace, Metric metric, int i, Object obj) {
        if ((i & 1) != 0) {
            trace = defaultLogOperation.trace;
        }
        if ((i & 2) != 0) {
            metric = defaultLogOperation.metric;
        }
        return defaultLogOperation.copy(trace, metric);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Trace getTrace() {
        return this.trace;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Metric getMetric() {
        return this.metric;
    }

    public final DefaultLogOperation copy(Trace trace, Metric metric) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        Intrinsics.checkNotNullParameter(metric, "metric");
        return new DefaultLogOperation(trace, metric);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DefaultLogOperation)) {
            return false;
        }
        DefaultLogOperation defaultLogOperation = (DefaultLogOperation) other;
        return Intrinsics.areEqual(this.trace, defaultLogOperation.trace) && Intrinsics.areEqual(this.metric, defaultLogOperation.metric);
    }

    public int hashCode() {
        return (this.trace.hashCode() * 31) + this.metric.hashCode();
    }

    public String toString() {
        return "DefaultLogOperation(trace=" + this.trace + ", metric=" + this.metric + ')';
    }

    public DefaultLogOperation(Trace trace, Metric metric) {
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

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogOperation
    public List<LogPoint> getLogPoints() {
        return this.trace.getLogPoints();
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogOperation
    public long getStartTimeMs() {
        return this.trace.getStartTimeMillis();
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogOperation
    public void log(String message, Throwable throwable, LogLevel level, long currentTimeMillis) {
        Intrinsics.checkNotNullParameter(level, "level");
        this.trace.log(message, throwable, level, currentTimeMillis);
    }

    @Override // com.stripe.jvmcore.logging.terminal.contracts.LogOperation
    /* JADX INFO: renamed from: new */
    public DefaultLogOperation mo491new(long startTimeMs) {
        Trace trace = this.trace;
        return copy$default(this, trace.copy((8190 & 1) != 0 ? trace.startTimeMillis : startTimeMs, (8190 & 2) != 0 ? trace.service : null, (8190 & 4) != 0 ? trace.method : null, (8190 & 8) != 0 ? trace.request : null, (8190 & 16) != 0 ? trace.rootId : null, (8190 & 32) != 0 ? trace.parentId : null, (8190 & 64) != 0 ? trace.currentId : null, (8190 & 128) != 0 ? trace.context : null, (8190 & 256) != 0 ? trace.httpUrl : null, (8190 & 512) != 0 ? trace.httpMethod : null, (8190 & 1024) != 0 ? trace.httpRequestHeaders : null, (8190 & 2048) != 0 ? trace.clock : null, (8190 & 4096) != 0 ? trace.tags : null), null, 2, null);
    }
}
