package com.stripe.offlinemode.log;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.jvmcore.logging.terminal.contracts.LogOperation;
import com.stripe.loggingmodels.LogLevel;
import com.stripe.loggingmodels.LogPoint;
import com.stripe.loggingmodels.Trace;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: OfflineForwardingLogOperation.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J,\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\rH\u0016J\u0010\u0010$\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rH\u0016J\t\u0010%\u001a\u00020\u001eHÖ\u0001R!\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068VX\u0096\u0084\u0002¢\u0006\f\u001a\u0004\b\n\u0010\u000b*\u0004\b\b\u0010\tR\u001b\u0010\f\u001a\u00020\r8VX\u0096\u0084\u0002¢\u0006\f\u001a\u0004\b\u000f\u0010\u0010*\u0004\b\u000e\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006&"}, d2 = {"Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;", "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;", "trace", "Lcom/stripe/loggingmodels/Trace;", "(Lcom/stripe/loggingmodels/Trace;)V", "logPoints", "", "Lcom/stripe/loggingmodels/LogPoint;", "getLogPoints$delegate", "(Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;)Ljava/lang/Object;", "getLogPoints", "()Ljava/util/List;", "startTimeMs", "", "getStartTimeMs$delegate", "getStartTimeMs", "()J", "getTrace", "()Lcom/stripe/loggingmodels/Trace;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "log", "", "message", "", "throwable", "", FirebaseAnalytics.Param.LEVEL, "Lcom/stripe/loggingmodels/LogLevel;", "currentTimeMillis", "new", "toString", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class OfflineForwardingLogOperation implements LogOperation<OfflineForwardingLogOperation> {
    private final Trace trace;

    public static /* synthetic */ OfflineForwardingLogOperation copy$default(OfflineForwardingLogOperation offlineForwardingLogOperation, Trace trace, int i, Object obj) {
        if ((i & 1) != 0) {
            trace = offlineForwardingLogOperation.trace;
        }
        return offlineForwardingLogOperation.copy(trace);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Trace getTrace() {
        return this.trace;
    }

    public final OfflineForwardingLogOperation copy(Trace trace) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        return new OfflineForwardingLogOperation(trace);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof OfflineForwardingLogOperation) && Intrinsics.areEqual(this.trace, ((OfflineForwardingLogOperation) other).trace);
    }

    public int hashCode() {
        return this.trace.hashCode();
    }

    public String toString() {
        return "OfflineForwardingLogOperation(trace=" + this.trace + ')';
    }

    public OfflineForwardingLogOperation(Trace trace) {
        Intrinsics.checkNotNullParameter(trace, "trace");
        this.trace = trace;
    }

    public final Trace getTrace() {
        return this.trace;
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
    public OfflineForwardingLogOperation mo491new(long startTimeMs) {
        Trace trace = this.trace;
        return copy(trace.copy((8190 & 1) != 0 ? trace.startTimeMillis : startTimeMs, (8190 & 2) != 0 ? trace.service : null, (8190 & 4) != 0 ? trace.method : null, (8190 & 8) != 0 ? trace.request : null, (8190 & 16) != 0 ? trace.rootId : null, (8190 & 32) != 0 ? trace.parentId : null, (8190 & 64) != 0 ? trace.currentId : null, (8190 & 128) != 0 ? trace.context : null, (8190 & 256) != 0 ? trace.httpUrl : null, (8190 & 512) != 0 ? trace.httpMethod : null, (8190 & 1024) != 0 ? trace.httpRequestHeaders : null, (8190 & 2048) != 0 ? trace.clock : null, (8190 & 4096) != 0 ? trace.tags : null));
    }
}
