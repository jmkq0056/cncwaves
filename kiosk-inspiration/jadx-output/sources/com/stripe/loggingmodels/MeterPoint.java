package com.stripe.loggingmodels;

import com.stripe.proto.api.gator.ReportedSpanPb;
import com.stripe.proto.terminal.clientlogger.pub.api.ReportedSpanPb;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.LegacyTraceData;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MeterPoint.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0011\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0001H\u0096\u0002J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÆ\u0003J'\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0010\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0017J\b\u0010\u001d\u001a\u00020\u001eH\u0016J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006 "}, d2 = {"Lcom/stripe/loggingmodels/MeterPoint;", "Lcom/stripe/loggingmodels/SpanPoint;", "eventName", "", "offsetMs", "", "elapsedMs", "", "(Ljava/lang/String;IJ)V", "getElapsedMs", "()J", "getEventName", "()Ljava/lang/String;", "getOffsetMs", "()I", "compareTo", "other", "component1", "component2", "component3", "copy", "equals", "", "", "hashCode", "toClientLoggerProto", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;", "toGatorProto", "Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;", "toLegacyTraceProto", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb;", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class MeterPoint implements SpanPoint {
    private final long elapsedMs;
    private final String eventName;
    private final int offsetMs;

    public static /* synthetic */ MeterPoint copy$default(MeterPoint meterPoint, String str, int i, long j, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = meterPoint.eventName;
        }
        if ((i2 & 2) != 0) {
            i = meterPoint.offsetMs;
        }
        if ((i2 & 4) != 0) {
            j = meterPoint.elapsedMs;
        }
        return meterPoint.copy(str, i, j);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getEventName() {
        return this.eventName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getOffsetMs() {
        return this.offsetMs;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getElapsedMs() {
        return this.elapsedMs;
    }

    public final MeterPoint copy(String eventName, int offsetMs, long elapsedMs) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        return new MeterPoint(eventName, offsetMs, elapsedMs);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MeterPoint)) {
            return false;
        }
        MeterPoint meterPoint = (MeterPoint) other;
        return Intrinsics.areEqual(this.eventName, meterPoint.eventName) && this.offsetMs == meterPoint.offsetMs && this.elapsedMs == meterPoint.elapsedMs;
    }

    public int hashCode() {
        return (((this.eventName.hashCode() * 31) + Integer.hashCode(this.offsetMs)) * 31) + Long.hashCode(this.elapsedMs);
    }

    public String toString() {
        return "MeterPoint(eventName=" + this.eventName + ", offsetMs=" + this.offsetMs + ", elapsedMs=" + this.elapsedMs + ')';
    }

    public MeterPoint(String eventName, int i, long j) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        this.eventName = eventName;
        this.offsetMs = i;
        this.elapsedMs = j;
    }

    public final String getEventName() {
        return this.eventName;
    }

    @Override // com.stripe.loggingmodels.SpanPoint
    public int getOffsetMs() {
        return this.offsetMs;
    }

    public final long getElapsedMs() {
        return this.elapsedMs;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.loggingmodels.SpanPoint
    @Deprecated(message = "Deprecated data type. Should be migrated to clientlogger")
    public ReportedSpanPb.SpanPointPb toGatorProto() {
        return new ReportedSpanPb.SpanPointPb(getOffsetMs(), null, new ReportedSpanPb.SpanPointPb.MeterPoint(this.eventName, this.elapsedMs, null, 4, null), null, 10, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.loggingmodels.SpanPoint
    public ReportedSpanPb.SpanPointPb toClientLoggerProto() {
        return new ReportedSpanPb.SpanPointPb(getOffsetMs(), null, new ReportedSpanPb.SpanPointPb.MeterPoint(this.eventName, this.elapsedMs, null, 4, null), null, 10, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.loggingmodels.SpanPoint
    public LegacyTraceData.SpanPointPb toLegacyTraceProto() {
        return new LegacyTraceData.SpanPointPb(getOffsetMs(), null, new LegacyTraceData.SpanPointPb.MeterPoint(this.eventName, this.elapsedMs, null, 4, null), null, 10, 0 == true ? 1 : 0);
    }

    @Override // java.lang.Comparable
    public int compareTo(SpanPoint other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return Intrinsics.compare(getOffsetMs(), other.getOffsetMs());
    }
}
