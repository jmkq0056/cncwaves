package com.stripe.core.stripeterminal.storage;

import com.stripe.jvmcore.logging.terminal.log.Span;
import com.stripe.loggingmodels.LogLevel;
import com.stripe.loggingmodels.LogPoint;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LogPointEntity.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 /2\u00020\u0001:\u0001/B;\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010#\u001a\u00020\u0006HÆ\u0003J\t\u0010$\u001a\u00020\bHÆ\u0003J\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u000bHÆ\u0003JI\u0010'\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020\bHÖ\u0001J\u0006\u0010,\u001a\u00020-J\t\u0010.\u001a\u00020\u0003HÖ\u0001R \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\u001e\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001e\u0010\t\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u000e\"\u0004\b\u001c\u0010\u0010R\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u00060"}, d2 = {"Lcom/stripe/core/stripeterminal/storage/LogPointEntity;", "", "message", "", "exception", "logLevel", "Lcom/stripe/loggingmodels/LogLevel;", "offsetMs", "", "traceId", "uid", "", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;ILjava/lang/String;J)V", "getException", "()Ljava/lang/String;", "setException", "(Ljava/lang/String;)V", "getLogLevel", "()Lcom/stripe/loggingmodels/LogLevel;", "setLogLevel", "(Lcom/stripe/loggingmodels/LogLevel;)V", "getMessage", "setMessage", "getOffsetMs", "()I", "setOffsetMs", "(I)V", "getTraceId", "setTraceId", "getUid", "()J", "setUid", "(J)V", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toModel", "Lcom/stripe/loggingmodels/LogPoint;", "toString", "Companion", "stripeterminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class LogPointEntity {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String exception;
    private LogLevel logLevel;
    private String message;
    private int offsetMs;
    private String traceId;
    private long uid;

    public static /* synthetic */ LogPointEntity copy$default(LogPointEntity logPointEntity, String str, String str2, LogLevel logLevel, int i, String str3, long j, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = logPointEntity.message;
        }
        if ((i2 & 2) != 0) {
            str2 = logPointEntity.exception;
        }
        if ((i2 & 4) != 0) {
            logLevel = logPointEntity.logLevel;
        }
        if ((i2 & 8) != 0) {
            i = logPointEntity.offsetMs;
        }
        if ((i2 & 16) != 0) {
            str3 = logPointEntity.traceId;
        }
        if ((i2 & 32) != 0) {
            j = logPointEntity.uid;
        }
        long j2 = j;
        String str4 = str3;
        LogLevel logLevel2 = logLevel;
        return logPointEntity.copy(str, str2, logLevel2, i, str4, j2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getException() {
        return this.exception;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final LogLevel getLogLevel() {
        return this.logLevel;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getOffsetMs() {
        return this.offsetMs;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getTraceId() {
        return this.traceId;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final long getUid() {
        return this.uid;
    }

    public final LogPointEntity copy(String message, String exception, LogLevel logLevel, int offsetMs, String traceId, long uid) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        Intrinsics.checkNotNullParameter(traceId, "traceId");
        return new LogPointEntity(message, exception, logLevel, offsetMs, traceId, uid);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LogPointEntity)) {
            return false;
        }
        LogPointEntity logPointEntity = (LogPointEntity) other;
        return Intrinsics.areEqual(this.message, logPointEntity.message) && Intrinsics.areEqual(this.exception, logPointEntity.exception) && this.logLevel == logPointEntity.logLevel && this.offsetMs == logPointEntity.offsetMs && Intrinsics.areEqual(this.traceId, logPointEntity.traceId) && this.uid == logPointEntity.uid;
    }

    public int hashCode() {
        String str = this.message;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.exception;
        return ((((((((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.logLevel.hashCode()) * 31) + Integer.hashCode(this.offsetMs)) * 31) + this.traceId.hashCode()) * 31) + Long.hashCode(this.uid);
    }

    public String toString() {
        return "LogPointEntity(message=" + this.message + ", exception=" + this.exception + ", logLevel=" + this.logLevel + ", offsetMs=" + this.offsetMs + ", traceId=" + this.traceId + ", uid=" + this.uid + ')';
    }

    public LogPointEntity(String str, String str2, LogLevel logLevel, int i, String traceId, long j) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        Intrinsics.checkNotNullParameter(traceId, "traceId");
        this.message = str;
        this.exception = str2;
        this.logLevel = logLevel;
        this.offsetMs = i;
        this.traceId = traceId;
        this.uid = j;
    }

    public /* synthetic */ LogPointEntity(String str, String str2, LogLevel logLevel, int i, String str3, long j, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, logLevel, i, str3, (i2 & 32) != 0 ? 0L : j);
    }

    public final String getMessage() {
        return this.message;
    }

    public final void setMessage(String str) {
        this.message = str;
    }

    public final String getException() {
        return this.exception;
    }

    public final void setException(String str) {
        this.exception = str;
    }

    public final LogLevel getLogLevel() {
        return this.logLevel;
    }

    public final void setLogLevel(LogLevel logLevel) {
        Intrinsics.checkNotNullParameter(logLevel, "<set-?>");
        this.logLevel = logLevel;
    }

    public final int getOffsetMs() {
        return this.offsetMs;
    }

    public final void setOffsetMs(int i) {
        this.offsetMs = i;
    }

    public final String getTraceId() {
        return this.traceId;
    }

    public final void setTraceId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.traceId = str;
    }

    public final long getUid() {
        return this.uid;
    }

    public final void setUid(long j) {
        this.uid = j;
    }

    /* JADX INFO: compiled from: LogPointEntity.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\n2\u0006\u0010\u0005\u001a\u00020\u000b¨\u0006\f"}, d2 = {"Lcom/stripe/core/stripeterminal/storage/LogPointEntity$Companion;", "", "()V", "fromModel", "Lcom/stripe/core/stripeterminal/storage/LogPointEntity;", "model", "Lcom/stripe/loggingmodels/LogPoint;", "traceId", "", "fromTraceModel", "", "Lcom/stripe/jvmcore/logging/terminal/log/Span;", "stripeterminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<LogPointEntity> fromTraceModel(Span model) {
            Intrinsics.checkNotNullParameter(model, "model");
            List<LogPoint> logPoints = model.getLogPoints();
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(logPoints, 10));
            Iterator<T> it = logPoints.iterator();
            while (it.hasNext()) {
                arrayList.add(LogPointEntity.INSTANCE.fromModel((LogPoint) it.next(), model.getTraceId()));
            }
            return arrayList;
        }

        public final LogPointEntity fromModel(LogPoint model, String traceId) {
            Intrinsics.checkNotNullParameter(model, "model");
            Intrinsics.checkNotNullParameter(traceId, "traceId");
            return new LogPointEntity(model.getMessage(), model.getException(), model.getLogLevel(), model.getOffsetMs(), traceId, 0L, 32, null);
        }
    }

    public final LogPoint toModel() {
        return new LogPoint(this.message, this.exception, this.logLevel, this.offsetMs);
    }
}
