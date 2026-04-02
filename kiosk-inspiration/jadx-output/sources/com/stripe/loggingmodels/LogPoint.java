package com.stripe.loggingmodels;

import com.stripe.proto.api.gator.ReportedSpanPb;
import com.stripe.proto.terminal.clientlogger.pub.api.ReportedSpanPb;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.LegacyTraceData;
import com.stripe.strings.StringsExtKt;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LogPoint.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001%B)\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0011\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0001H\u0096\u0002J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0018\u001a\u00020\bHÆ\u0003J5\u0010\u0019\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\bHÖ\u0001J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020!H\u0017J\b\u0010\"\u001a\u00020#H\u0016J\t\u0010$\u001a\u00020\u0003HÖ\u0001R\u0012\u0010\n\u001a\u00060\u000bR\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006&"}, d2 = {"Lcom/stripe/loggingmodels/LogPoint;", "Lcom/stripe/loggingmodels/SpanPoint;", "message", "", "exception", "logLevel", "Lcom/stripe/loggingmodels/LogLevel;", "offsetMs", "", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;I)V", "data", "Lcom/stripe/loggingmodels/LogPoint$LogPointData;", "getException", "()Ljava/lang/String;", "getLogLevel", "()Lcom/stripe/loggingmodels/LogLevel;", "getMessage", "getOffsetMs", "()I", "compareTo", "other", "component1", "component2", "component3", "component4", "copy", "equals", "", "", "hashCode", "toClientLoggerProto", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;", "toGatorProto", "Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;", "toLegacyTraceProto", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb;", "toString", "LogPointData", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class LogPoint implements SpanPoint {
    private final LogPointData data;
    private final String exception;
    private final LogLevel logLevel;
    private final String message;
    private final int offsetMs;

    public static /* synthetic */ LogPoint copy$default(LogPoint logPoint, String str, String str2, LogLevel logLevel, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = logPoint.message;
        }
        if ((i2 & 2) != 0) {
            str2 = logPoint.exception;
        }
        if ((i2 & 4) != 0) {
            logLevel = logPoint.logLevel;
        }
        if ((i2 & 8) != 0) {
            i = logPoint.offsetMs;
        }
        return logPoint.copy(str, str2, logLevel, i);
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

    public final LogPoint copy(String message, String exception, LogLevel logLevel, int offsetMs) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        return new LogPoint(message, exception, logLevel, offsetMs);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LogPoint)) {
            return false;
        }
        LogPoint logPoint = (LogPoint) other;
        return Intrinsics.areEqual(this.message, logPoint.message) && Intrinsics.areEqual(this.exception, logPoint.exception) && this.logLevel == logPoint.logLevel && this.offsetMs == logPoint.offsetMs;
    }

    public int hashCode() {
        String str = this.message;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.exception;
        return ((((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.logLevel.hashCode()) * 31) + Integer.hashCode(this.offsetMs);
    }

    public String toString() {
        return "LogPoint(message=" + this.message + ", exception=" + this.exception + ", logLevel=" + this.logLevel + ", offsetMs=" + this.offsetMs + ')';
    }

    public LogPoint(String str, String str2, LogLevel logLevel, int i) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        this.message = str;
        this.exception = str2;
        this.logLevel = logLevel;
        this.offsetMs = i;
        this.data = new LogPointData(str, str2, LogLevelHelperKt.importance(logLevel));
    }

    public final String getMessage() {
        return this.message;
    }

    public final String getException() {
        return this.exception;
    }

    public final LogLevel getLogLevel() {
        return this.logLevel;
    }

    @Override // com.stripe.loggingmodels.SpanPoint
    public int getOffsetMs() {
        return this.offsetMs;
    }

    @Override // com.stripe.loggingmodels.SpanPoint
    @Deprecated(message = "Deprecated data type. Should be migrated to clientlogger")
    public ReportedSpanPb.SpanPointPb toGatorProto() {
        return new ReportedSpanPb.SpanPointPb(getOffsetMs(), this.data.toGatorProto(), null, null, 12, null);
    }

    @Override // com.stripe.loggingmodels.SpanPoint
    public ReportedSpanPb.SpanPointPb toClientLoggerProto() {
        return new ReportedSpanPb.SpanPointPb(getOffsetMs(), this.data.toClientLoggerProto(), null, null, 12, null);
    }

    @Override // com.stripe.loggingmodels.SpanPoint
    public LegacyTraceData.SpanPointPb toLegacyTraceProto() {
        return new LegacyTraceData.SpanPointPb(getOffsetMs(), this.data.toLegacyTraceProto(), null, null, 12, null);
    }

    @Override // java.lang.Comparable
    public int compareTo(SpanPoint other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return Intrinsics.compare(getOffsetMs(), other.getOffsetMs());
    }

    /* JADX INFO: compiled from: LogPoint.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0006\u0010\b\u001a\u00020\tJ\b\u0010\n\u001a\u00020\u000bH\u0007J\u0006\u0010\f\u001a\u00020\rR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/stripe/loggingmodels/LogPoint$LogPointData;", "", "message", "", "exception", "logLevel", "", "(Lcom/stripe/loggingmodels/LogPoint;Ljava/lang/String;Ljava/lang/String;I)V", "toClientLoggerProto", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$LogPoint;", "toGatorProto", "Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;", "toLegacyTraceProto", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private final class LogPointData {
        private final String exception;
        private final int logLevel;
        private final String message;

        public LogPointData(String str, String str2, int i) {
            this.message = str;
            this.logLevel = i;
            this.exception = str2 != null ? StringsExtKt.escape(str2) : null;
        }

        @Deprecated(message = "Deprecated data type. Should be migrated to clientlogger")
        public final ReportedSpanPb.SpanPointPb.LogPoint toGatorProto() {
            int i = this.logLevel;
            String str = this.message;
            if (str == null) {
                str = "";
            }
            String str2 = this.exception;
            if (str2 == null) {
                str2 = "";
            }
            String str3 = str;
            return new ReportedSpanPb.SpanPointPb.LogPoint(i, null, str3, str2, null, 18, null);
        }

        public final ReportedSpanPb.SpanPointPb.LogPoint toClientLoggerProto() {
            int i = this.logLevel;
            String str = this.message;
            if (str == null) {
                str = "";
            }
            String str2 = this.exception;
            if (str2 == null) {
                str2 = "";
            }
            String str3 = str;
            return new ReportedSpanPb.SpanPointPb.LogPoint(i, null, str3, str2, null, 18, null);
        }

        public final LegacyTraceData.SpanPointPb.LogPoint toLegacyTraceProto() {
            int i = this.logLevel;
            String str = this.message;
            if (str == null) {
                str = "";
            }
            String str2 = this.exception;
            if (str2 == null) {
                str2 = "";
            }
            String str3 = str;
            return new LegacyTraceData.SpanPointPb.LogPoint(i, null, str3, str2, null, 18, null);
        }
    }
}
