package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.terminal.clientlogger.pub.SearchIndices;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: ObservabilityData.kt */
/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u001f2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001e\u001fBc\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013Jd\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u0012J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0002H\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0016R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;", "metadata", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;", "search_indices", "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;", "log_data", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;", "metric_data", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;", "trace_data", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TraceData;", "legacy_trace_data", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;", "event_data", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TraceData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ObservabilityData extends Message<ObservabilityData, Builder> {
    public static final ProtoAdapter<ObservabilityData> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.EventData#ADAPTER", jsonName = "eventData", oneofName = "data", schemaIndex = 6, tag = 7)
    public final EventData event_data;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.LegacyTraceData#ADAPTER", jsonName = "legacyTraceData", oneofName = "data", schemaIndex = 5, tag = 6)
    public final LegacyTraceData legacy_trace_data;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.LogData#ADAPTER", jsonName = "logData", oneofName = "data", schemaIndex = 2, tag = 3)
    public final LogData log_data;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.Metadata#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final Metadata metadata;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.MetricData#ADAPTER", jsonName = "metricData", oneofName = "data", schemaIndex = 3, tag = 4)
    public final MetricData metric_data;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.SearchIndices#ADAPTER", jsonName = "searchIndices", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final SearchIndices search_indices;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.TraceData#ADAPTER", jsonName = "traceData", oneofName = "data", schemaIndex = 4, tag = 5)
    public final TraceData trace_data;

    public ObservabilityData() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public /* synthetic */ ObservabilityData(Metadata metadata, SearchIndices searchIndices, LogData logData, MetricData metricData, TraceData traceData, LegacyTraceData legacyTraceData, EventData eventData, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : metadata, (i & 2) != 0 ? null : searchIndices, (i & 4) != 0 ? null : logData, (i & 8) != 0 ? null : metricData, (i & 16) != 0 ? null : traceData, (i & 32) != 0 ? null : legacyTraceData, (i & 64) != 0 ? null : eventData, (i & 128) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ObservabilityData(Metadata metadata, SearchIndices searchIndices, LogData logData, MetricData metricData, TraceData traceData, LegacyTraceData legacyTraceData, EventData eventData, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.metadata = metadata;
        this.search_indices = searchIndices;
        this.log_data = logData;
        this.metric_data = metricData;
        this.trace_data = traceData;
        this.legacy_trace_data = legacyTraceData;
        this.event_data = eventData;
        if (Internal.countNonNull(logData, metricData, traceData, legacyTraceData, eventData) > 1) {
            throw new IllegalArgumentException("At most one of log_data, metric_data, trace_data, legacy_trace_data, event_data may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.metadata = this.metadata;
        builder.search_indices = this.search_indices;
        builder.log_data = this.log_data;
        builder.metric_data = this.metric_data;
        builder.trace_data = this.trace_data;
        builder.legacy_trace_data = this.legacy_trace_data;
        builder.event_data = this.event_data;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ObservabilityData)) {
            return false;
        }
        ObservabilityData observabilityData = (ObservabilityData) other;
        return Intrinsics.areEqual(unknownFields(), observabilityData.unknownFields()) && Intrinsics.areEqual(this.metadata, observabilityData.metadata) && Intrinsics.areEqual(this.search_indices, observabilityData.search_indices) && Intrinsics.areEqual(this.log_data, observabilityData.log_data) && Intrinsics.areEqual(this.metric_data, observabilityData.metric_data) && Intrinsics.areEqual(this.trace_data, observabilityData.trace_data) && Intrinsics.areEqual(this.legacy_trace_data, observabilityData.legacy_trace_data) && Intrinsics.areEqual(this.event_data, observabilityData.event_data);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Metadata metadata = this.metadata;
        int iHashCode2 = (iHashCode + (metadata != null ? metadata.hashCode() : 0)) * 37;
        SearchIndices searchIndices = this.search_indices;
        int iHashCode3 = (iHashCode2 + (searchIndices != null ? searchIndices.hashCode() : 0)) * 37;
        LogData logData = this.log_data;
        int iHashCode4 = (iHashCode3 + (logData != null ? logData.hashCode() : 0)) * 37;
        MetricData metricData = this.metric_data;
        int iHashCode5 = (iHashCode4 + (metricData != null ? metricData.hashCode() : 0)) * 37;
        TraceData traceData = this.trace_data;
        int iHashCode6 = (iHashCode5 + (traceData != null ? traceData.hashCode() : 0)) * 37;
        LegacyTraceData legacyTraceData = this.legacy_trace_data;
        int iHashCode7 = (iHashCode6 + (legacyTraceData != null ? legacyTraceData.hashCode() : 0)) * 37;
        EventData eventData = this.event_data;
        int iHashCode8 = iHashCode7 + (eventData != null ? eventData.hashCode() : 0);
        this.hashCode = iHashCode8;
        return iHashCode8;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.metadata != null) {
            arrayList.add("metadata=" + this.metadata);
        }
        if (this.search_indices != null) {
            arrayList.add("search_indices=" + this.search_indices);
        }
        if (this.log_data != null) {
            arrayList.add("log_data=" + this.log_data);
        }
        if (this.metric_data != null) {
            arrayList.add("metric_data=" + this.metric_data);
        }
        if (this.trace_data != null) {
            arrayList.add("trace_data=" + this.trace_data);
        }
        if (this.legacy_trace_data != null) {
            arrayList.add("legacy_trace_data=" + this.legacy_trace_data);
        }
        if (this.event_data != null) {
            arrayList.add("event_data=" + this.event_data);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ObservabilityData{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ObservabilityData copy$default(ObservabilityData observabilityData, Metadata metadata, SearchIndices searchIndices, LogData logData, MetricData metricData, TraceData traceData, LegacyTraceData legacyTraceData, EventData eventData, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            metadata = observabilityData.metadata;
        }
        if ((i & 2) != 0) {
            searchIndices = observabilityData.search_indices;
        }
        if ((i & 4) != 0) {
            logData = observabilityData.log_data;
        }
        if ((i & 8) != 0) {
            metricData = observabilityData.metric_data;
        }
        if ((i & 16) != 0) {
            traceData = observabilityData.trace_data;
        }
        if ((i & 32) != 0) {
            legacyTraceData = observabilityData.legacy_trace_data;
        }
        if ((i & 64) != 0) {
            eventData = observabilityData.event_data;
        }
        if ((i & 128) != 0) {
            byteString = observabilityData.unknownFields();
        }
        EventData eventData2 = eventData;
        ByteString byteString2 = byteString;
        TraceData traceData2 = traceData;
        LegacyTraceData legacyTraceData2 = legacyTraceData;
        return observabilityData.copy(metadata, searchIndices, logData, metricData, traceData2, legacyTraceData2, eventData2, byteString2);
    }

    public final ObservabilityData copy(Metadata metadata, SearchIndices search_indices, LogData log_data, MetricData metric_data, TraceData trace_data, LegacyTraceData legacy_trace_data, EventData event_data, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ObservabilityData(metadata, search_indices, log_data, metric_data, trace_data, legacy_trace_data, event_data, unknownFields);
    }

    /* JADX INFO: compiled from: ObservabilityData.kt */
    @kotlin.Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;", "()V", "event_data", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;", "legacy_trace_data", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;", "log_data", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LogData;", "metadata", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;", "metric_data", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/MetricData;", "search_indices", "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;", "trace_data", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/TraceData;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ObservabilityData, Builder> {
        public EventData event_data;
        public LegacyTraceData legacy_trace_data;
        public LogData log_data;
        public Metadata metadata;
        public MetricData metric_data;
        public SearchIndices search_indices;
        public TraceData trace_data;

        public final Builder metadata(Metadata metadata) {
            this.metadata = metadata;
            return this;
        }

        public final Builder search_indices(SearchIndices search_indices) {
            this.search_indices = search_indices;
            return this;
        }

        public final Builder log_data(LogData log_data) {
            this.log_data = log_data;
            this.metric_data = null;
            this.trace_data = null;
            this.legacy_trace_data = null;
            this.event_data = null;
            return this;
        }

        public final Builder metric_data(MetricData metric_data) {
            this.metric_data = metric_data;
            this.log_data = null;
            this.trace_data = null;
            this.legacy_trace_data = null;
            this.event_data = null;
            return this;
        }

        public final Builder trace_data(TraceData trace_data) {
            this.trace_data = trace_data;
            this.log_data = null;
            this.metric_data = null;
            this.legacy_trace_data = null;
            this.event_data = null;
            return this;
        }

        public final Builder legacy_trace_data(LegacyTraceData legacy_trace_data) {
            this.legacy_trace_data = legacy_trace_data;
            this.log_data = null;
            this.metric_data = null;
            this.trace_data = null;
            this.event_data = null;
            return this;
        }

        public final Builder event_data(EventData event_data) {
            this.event_data = event_data;
            this.log_data = null;
            this.metric_data = null;
            this.trace_data = null;
            this.legacy_trace_data = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ObservabilityData build() {
            return new ObservabilityData(this.metadata, this.search_indices, this.log_data, this.metric_data, this.trace_data, this.legacy_trace_data, this.event_data, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ObservabilityData.kt */
    @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ObservabilityData build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ObservabilityData.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ObservabilityData>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.ObservabilityData$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ObservabilityData value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.metadata != null) {
                    size += Metadata.ADAPTER.encodedSizeWithTag(1, value.metadata);
                }
                if (value.search_indices != null) {
                    size += SearchIndices.ADAPTER.encodedSizeWithTag(2, value.search_indices);
                }
                return size + LogData.ADAPTER.encodedSizeWithTag(3, value.log_data) + MetricData.ADAPTER.encodedSizeWithTag(4, value.metric_data) + TraceData.ADAPTER.encodedSizeWithTag(5, value.trace_data) + LegacyTraceData.ADAPTER.encodedSizeWithTag(6, value.legacy_trace_data) + EventData.ADAPTER.encodedSizeWithTag(7, value.event_data);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ObservabilityData value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.metadata != null) {
                    Metadata.ADAPTER.encodeWithTag(writer, 1, value.metadata);
                }
                if (value.search_indices != null) {
                    SearchIndices.ADAPTER.encodeWithTag(writer, 2, value.search_indices);
                }
                LogData.ADAPTER.encodeWithTag(writer, 3, value.log_data);
                MetricData.ADAPTER.encodeWithTag(writer, 4, value.metric_data);
                TraceData.ADAPTER.encodeWithTag(writer, 5, value.trace_data);
                LegacyTraceData.ADAPTER.encodeWithTag(writer, 6, value.legacy_trace_data);
                EventData.ADAPTER.encodeWithTag(writer, 7, value.event_data);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ObservabilityData value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                EventData.ADAPTER.encodeWithTag(writer, 7, value.event_data);
                LegacyTraceData.ADAPTER.encodeWithTag(writer, 6, value.legacy_trace_data);
                TraceData.ADAPTER.encodeWithTag(writer, 5, value.trace_data);
                MetricData.ADAPTER.encodeWithTag(writer, 4, value.metric_data);
                LogData.ADAPTER.encodeWithTag(writer, 3, value.log_data);
                if (value.search_indices != null) {
                    SearchIndices.ADAPTER.encodeWithTag(writer, 2, value.search_indices);
                }
                if (value.metadata != null) {
                    Metadata.ADAPTER.encodeWithTag(writer, 1, value.metadata);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ObservabilityData redact(ObservabilityData value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Metadata metadata = value.metadata;
                Metadata metadataRedact = metadata != null ? Metadata.ADAPTER.redact(metadata) : null;
                SearchIndices searchIndices = value.search_indices;
                SearchIndices searchIndicesRedact = searchIndices != null ? SearchIndices.ADAPTER.redact(searchIndices) : null;
                LogData logData = value.log_data;
                LogData logDataRedact = logData != null ? LogData.ADAPTER.redact(logData) : null;
                MetricData metricData = value.metric_data;
                MetricData metricDataRedact = metricData != null ? MetricData.ADAPTER.redact(metricData) : null;
                TraceData traceData = value.trace_data;
                TraceData traceDataRedact = traceData != null ? TraceData.ADAPTER.redact(traceData) : null;
                LegacyTraceData legacyTraceData = value.legacy_trace_data;
                LegacyTraceData legacyTraceDataRedact = legacyTraceData != null ? LegacyTraceData.ADAPTER.redact(legacyTraceData) : null;
                EventData eventData = value.event_data;
                return value.copy(metadataRedact, searchIndicesRedact, logDataRedact, metricDataRedact, traceDataRedact, legacyTraceDataRedact, eventData != null ? EventData.ADAPTER.redact(eventData) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ObservabilityData decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Metadata metadataDecode = null;
                SearchIndices searchIndicesDecode = null;
                LogData logDataDecode = null;
                MetricData metricDataDecode = null;
                TraceData traceDataDecode = null;
                LegacyTraceData legacyTraceDataDecode = null;
                EventData eventDataDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                metadataDecode = Metadata.ADAPTER.decode(reader);
                                break;
                            case 2:
                                searchIndicesDecode = SearchIndices.ADAPTER.decode(reader);
                                break;
                            case 3:
                                logDataDecode = LogData.ADAPTER.decode(reader);
                                break;
                            case 4:
                                metricDataDecode = MetricData.ADAPTER.decode(reader);
                                break;
                            case 5:
                                traceDataDecode = TraceData.ADAPTER.decode(reader);
                                break;
                            case 6:
                                legacyTraceDataDecode = LegacyTraceData.ADAPTER.decode(reader);
                                break;
                            case 7:
                                eventDataDecode = EventData.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new ObservabilityData(metadataDecode, searchIndicesDecode, logDataDecode, metricDataDecode, traceDataDecode, legacyTraceDataDecode, eventDataDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
