package com.stripe.jvmcore.logging.terminal.models;

import com.stripe.loggingmodels.LogLevel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PendingLogPoint.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0016\u001a\u00020\tHÆ\u0003J5\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;", "", "message", "", "throwable", "", "logLevel", "Lcom/stripe/loggingmodels/LogLevel;", "currentTimeMillis", "", "(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)V", "getCurrentTimeMillis", "()J", "getLogLevel", "()Lcom/stripe/loggingmodels/LogLevel;", "getMessage", "()Ljava/lang/String;", "getThrowable", "()Ljava/lang/Throwable;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class PendingLogPoint {
    private final long currentTimeMillis;
    private final LogLevel logLevel;
    private final String message;
    private final Throwable throwable;

    public static /* synthetic */ PendingLogPoint copy$default(PendingLogPoint pendingLogPoint, String str, Throwable th, LogLevel logLevel, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = pendingLogPoint.message;
        }
        if ((i & 2) != 0) {
            th = pendingLogPoint.throwable;
        }
        if ((i & 4) != 0) {
            logLevel = pendingLogPoint.logLevel;
        }
        if ((i & 8) != 0) {
            j = pendingLogPoint.currentTimeMillis;
        }
        LogLevel logLevel2 = logLevel;
        return pendingLogPoint.copy(str, th, logLevel2, j);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Throwable getThrowable() {
        return this.throwable;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final LogLevel getLogLevel() {
        return this.logLevel;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final long getCurrentTimeMillis() {
        return this.currentTimeMillis;
    }

    public final PendingLogPoint copy(String message, Throwable throwable, LogLevel logLevel, long currentTimeMillis) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        return new PendingLogPoint(message, throwable, logLevel, currentTimeMillis);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PendingLogPoint)) {
            return false;
        }
        PendingLogPoint pendingLogPoint = (PendingLogPoint) other;
        return Intrinsics.areEqual(this.message, pendingLogPoint.message) && Intrinsics.areEqual(this.throwable, pendingLogPoint.throwable) && this.logLevel == pendingLogPoint.logLevel && this.currentTimeMillis == pendingLogPoint.currentTimeMillis;
    }

    public int hashCode() {
        String str = this.message;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Throwable th = this.throwable;
        return ((((iHashCode + (th != null ? th.hashCode() : 0)) * 31) + this.logLevel.hashCode()) * 31) + Long.hashCode(this.currentTimeMillis);
    }

    public String toString() {
        return "PendingLogPoint(message=" + this.message + ", throwable=" + this.throwable + ", logLevel=" + this.logLevel + ", currentTimeMillis=" + this.currentTimeMillis + ')';
    }

    public PendingLogPoint(String str, Throwable th, LogLevel logLevel, long j) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        this.message = str;
        this.throwable = th;
        this.logLevel = logLevel;
        this.currentTimeMillis = j;
    }

    public final String getMessage() {
        return this.message;
    }

    public final Throwable getThrowable() {
        return this.throwable;
    }

    public final LogLevel getLogLevel() {
        return this.logLevel;
    }

    public final long getCurrentTimeMillis() {
        return this.currentTimeMillis;
    }
}
