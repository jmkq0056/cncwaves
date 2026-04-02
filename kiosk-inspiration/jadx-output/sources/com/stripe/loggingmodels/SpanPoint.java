package com.stripe.loggingmodels;

import com.stripe.proto.api.gator.ReportedSpanPb;
import com.stripe.proto.terminal.clientlogger.pub.api.ReportedSpanPb;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.LegacyTraceData;
import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: compiled from: SpanPoint.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001J\b\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\tH'J\b\u0010\n\u001a\u00020\u000bH&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\fÀ\u0006\u0001"}, d2 = {"Lcom/stripe/loggingmodels/SpanPoint;", "", "offsetMs", "", "getOffsetMs", "()I", "toClientLoggerProto", "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;", "toGatorProto", "Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;", "toLegacyTraceProto", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface SpanPoint extends Comparable<SpanPoint> {
    int getOffsetMs();

    ReportedSpanPb.SpanPointPb toClientLoggerProto();

    @Deprecated(message = "Deprecated data type. Should be migrated to clientlogger")
    ReportedSpanPb.SpanPointPb toGatorProto();

    LegacyTraceData.SpanPointPb toLegacyTraceProto();
}
