package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.common.Livemode;
import com.stripe.proto.model.common.VersionInfoPb;
import com.stripe.proto.model.trace.RequestInfoPb;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.LegacyTraceData;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: LegacyTraceData.kt */
/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 /2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004./01B\u0087\u0002\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0011\u001a\u00020\b\u0012\b\b\u0002\u0010\u0012\u001a\u00020\b\u0012\b\b\u0002\u0010\u0013\u001a\u00020\b\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u0016\u001a\u00020\b\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u0018\u001a\u00020\b\u0012\b\b\u0002\u0010\u0019\u001a\u00020\b\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\u0014\b\u0002\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u001d\u0012\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001f\u0012\u000e\b\u0002\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u001f\u0012\b\b\u0002\u0010#\u001a\u00020\u0015¢\u0006\u0002\u0010$J\u0088\u0002\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00042\b\b\u0002\u0010\u0011\u001a\u00020\b2\b\b\u0002\u0010\u0012\u001a\u00020\b2\b\b\u0002\u0010\u0013\u001a\u00020\b2\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\b2\b\b\u0002\u0010\u0017\u001a\u00020\u00152\b\b\u0002\u0010\u0018\u001a\u00020\b2\b\b\u0002\u0010\u0019\u001a\u00020\b2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0014\b\u0002\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u001d2\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001f2\u000e\b\u0002\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u001f2\b\b\u0002\u0010#\u001a\u00020\u0015J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)H\u0096\u0002J\b\u0010*\u001a\u00020+H\u0016J\b\u0010,\u001a\u00020\u0002H\u0016J\b\u0010-\u001a\u00020\bH\u0016R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u00158\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\u00158\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u001d8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u001f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u00062"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;", "root_span_id", "", "parent_span_id", "current_span_id", "action_id", "", "apiori_cluster", "apiori_info", "request_info", "Lcom/stripe/proto/model/trace/RequestInfoPb;", "livemode", "Lcom/stripe/proto/model/common/Livemode;", "start_time_ms", "total_time_ms", NotificationCompat.CATEGORY_SERVICE, FirebaseAnalytics.Param.METHOD, "request", "raw_request", "Lokio/ByteString;", "response", "raw_response", "exception", "status_code", "version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "tags", "", "subsystem_time", "", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SubsystemTimePb;", "traces", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb;", "unknownFields", "(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/Livemode;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "SpanPointPb", "SubsystemTimePb", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LegacyTraceData extends Message<LegacyTraceData, Builder> {
    public static final ProtoAdapter<LegacyTraceData> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "actionId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String action_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "apioriCluster", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String apiori_cluster;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "apioriInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String apiori_info;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "currentSpanId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final long current_span_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 16, tag = 17)
    public final String exception;

    @WireField(adapter = "com.stripe.proto.model.common.Livemode#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final Livemode livemode;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 12)
    public final String method;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "parentSpanId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final long parent_span_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", jsonName = "rawRequest", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 13, tag = 14)
    public final ByteString raw_request;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BYTES", jsonName = "rawResponse", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 15, tag = 16)
    public final ByteString raw_response;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 13)
    public final String request;

    @WireField(adapter = "com.stripe.proto.model.trace.RequestInfoPb#ADAPTER", jsonName = "requestInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final RequestInfoPb request_info;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 14, tag = 15)
    public final String response;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "rootSpanId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final long root_span_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
    public final String service;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "startTimeMs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final long start_time_ms;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "statusCode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 17, tag = 18)
    public final String status_code;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.LegacyTraceData$SubsystemTimePb#ADAPTER", jsonName = "subsystemTime", label = WireField.Label.REPEATED, schemaIndex = 20, tag = 21)
    public final List<SubsystemTimePb> subsystem_time;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 19, tag = 20)
    public final Map<String, String> tags;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "totalTimeMs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final long total_time_ms;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.LegacyTraceData$SpanPointPb#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 21, tag = 22)
    public final List<SpanPointPb> traces;

    @WireField(adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER", jsonName = "versionInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 18, tag = 19)
    public final VersionInfoPb version_info;

    public LegacyTraceData() {
        this(0L, 0L, 0L, null, null, null, null, null, 0L, 0L, null, null, null, null, null, null, null, null, null, null, null, null, null, 8388607, null);
    }

    public /* synthetic */ LegacyTraceData(long j, long j2, long j3, String str, String str2, String str3, RequestInfoPb requestInfoPb, Livemode livemode, long j4, long j5, String str4, String str5, String str6, ByteString byteString, String str7, ByteString byteString2, String str8, String str9, VersionInfoPb versionInfoPb, Map map, List list, List list2, ByteString byteString3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? 0L : j2, (i & 4) != 0 ? 0L : j3, (i & 8) != 0 ? "" : str, (i & 16) != 0 ? "" : str2, (i & 32) != 0 ? "" : str3, (i & 64) != 0 ? null : requestInfoPb, (i & 128) != 0 ? Livemode.TRUE : livemode, (i & 256) != 0 ? 0L : j4, (i & 512) != 0 ? 0L : j5, (i & 1024) != 0 ? "" : str4, (i & 2048) != 0 ? "" : str5, (i & 4096) != 0 ? "" : str6, (i & 8192) != 0 ? ByteString.EMPTY : byteString, (i & 16384) != 0 ? "" : str7, (i & 32768) != 0 ? ByteString.EMPTY : byteString2, (i & 65536) != 0 ? "" : str8, (i & 131072) == 0 ? str9 : "", (i & 262144) != 0 ? null : versionInfoPb, (i & 524288) != 0 ? MapsKt.emptyMap() : map, (i & 1048576) != 0 ? CollectionsKt.emptyList() : list, (i & 2097152) != 0 ? CollectionsKt.emptyList() : list2, (i & 4194304) != 0 ? ByteString.EMPTY : byteString3);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LegacyTraceData(long j, long j2, long j3, String action_id, String apiori_cluster, String apiori_info, RequestInfoPb requestInfoPb, Livemode livemode, long j4, long j5, String service, String method, String request, ByteString raw_request, String response, ByteString raw_response, String exception, String status_code, VersionInfoPb versionInfoPb, Map<String, String> tags, List<SubsystemTimePb> subsystem_time, List<SpanPointPb> traces, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(action_id, "action_id");
        Intrinsics.checkNotNullParameter(apiori_cluster, "apiori_cluster");
        Intrinsics.checkNotNullParameter(apiori_info, "apiori_info");
        Intrinsics.checkNotNullParameter(livemode, "livemode");
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(raw_request, "raw_request");
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(raw_response, "raw_response");
        Intrinsics.checkNotNullParameter(exception, "exception");
        Intrinsics.checkNotNullParameter(status_code, "status_code");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(subsystem_time, "subsystem_time");
        Intrinsics.checkNotNullParameter(traces, "traces");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.root_span_id = j;
        this.parent_span_id = j2;
        this.current_span_id = j3;
        this.action_id = action_id;
        this.apiori_cluster = apiori_cluster;
        this.apiori_info = apiori_info;
        this.request_info = requestInfoPb;
        this.livemode = livemode;
        this.start_time_ms = j4;
        this.total_time_ms = j5;
        this.service = service;
        this.method = method;
        this.request = request;
        this.raw_request = raw_request;
        this.response = response;
        this.raw_response = raw_response;
        this.exception = exception;
        this.status_code = status_code;
        this.version_info = versionInfoPb;
        this.tags = Internal.immutableCopyOf("tags", tags);
        this.subsystem_time = Internal.immutableCopyOf("subsystem_time", subsystem_time);
        this.traces = Internal.immutableCopyOf("traces", traces);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.root_span_id = this.root_span_id;
        builder.parent_span_id = this.parent_span_id;
        builder.current_span_id = this.current_span_id;
        builder.action_id = this.action_id;
        builder.apiori_cluster = this.apiori_cluster;
        builder.apiori_info = this.apiori_info;
        builder.request_info = this.request_info;
        builder.livemode = this.livemode;
        builder.start_time_ms = this.start_time_ms;
        builder.total_time_ms = this.total_time_ms;
        builder.service = this.service;
        builder.method = this.method;
        builder.request = this.request;
        builder.raw_request = this.raw_request;
        builder.response = this.response;
        builder.raw_response = this.raw_response;
        builder.exception = this.exception;
        builder.status_code = this.status_code;
        builder.version_info = this.version_info;
        builder.tags = this.tags;
        builder.subsystem_time = this.subsystem_time;
        builder.traces = this.traces;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof LegacyTraceData)) {
            return false;
        }
        LegacyTraceData legacyTraceData = (LegacyTraceData) other;
        return Intrinsics.areEqual(unknownFields(), legacyTraceData.unknownFields()) && this.root_span_id == legacyTraceData.root_span_id && this.parent_span_id == legacyTraceData.parent_span_id && this.current_span_id == legacyTraceData.current_span_id && Intrinsics.areEqual(this.action_id, legacyTraceData.action_id) && Intrinsics.areEqual(this.apiori_cluster, legacyTraceData.apiori_cluster) && Intrinsics.areEqual(this.apiori_info, legacyTraceData.apiori_info) && Intrinsics.areEqual(this.request_info, legacyTraceData.request_info) && this.livemode == legacyTraceData.livemode && this.start_time_ms == legacyTraceData.start_time_ms && this.total_time_ms == legacyTraceData.total_time_ms && Intrinsics.areEqual(this.service, legacyTraceData.service) && Intrinsics.areEqual(this.method, legacyTraceData.method) && Intrinsics.areEqual(this.request, legacyTraceData.request) && Intrinsics.areEqual(this.raw_request, legacyTraceData.raw_request) && Intrinsics.areEqual(this.response, legacyTraceData.response) && Intrinsics.areEqual(this.raw_response, legacyTraceData.raw_response) && Intrinsics.areEqual(this.exception, legacyTraceData.exception) && Intrinsics.areEqual(this.status_code, legacyTraceData.status_code) && Intrinsics.areEqual(this.version_info, legacyTraceData.version_info) && Intrinsics.areEqual(this.tags, legacyTraceData.tags) && Intrinsics.areEqual(this.subsystem_time, legacyTraceData.subsystem_time) && Intrinsics.areEqual(this.traces, legacyTraceData.traces);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((((((unknownFields().hashCode() * 37) + Long.hashCode(this.root_span_id)) * 37) + Long.hashCode(this.parent_span_id)) * 37) + Long.hashCode(this.current_span_id)) * 37) + this.action_id.hashCode()) * 37) + this.apiori_cluster.hashCode()) * 37) + this.apiori_info.hashCode()) * 37;
        RequestInfoPb requestInfoPb = this.request_info;
        int iHashCode2 = (((((((((((((((((((((((iHashCode + (requestInfoPb != null ? requestInfoPb.hashCode() : 0)) * 37) + this.livemode.hashCode()) * 37) + Long.hashCode(this.start_time_ms)) * 37) + Long.hashCode(this.total_time_ms)) * 37) + this.service.hashCode()) * 37) + this.method.hashCode()) * 37) + this.request.hashCode()) * 37) + this.raw_request.hashCode()) * 37) + this.response.hashCode()) * 37) + this.raw_response.hashCode()) * 37) + this.exception.hashCode()) * 37) + this.status_code.hashCode()) * 37;
        VersionInfoPb versionInfoPb = this.version_info;
        int iHashCode3 = ((((((iHashCode2 + (versionInfoPb != null ? versionInfoPb.hashCode() : 0)) * 37) + this.tags.hashCode()) * 37) + this.subsystem_time.hashCode()) * 37) + this.traces.hashCode();
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("root_span_id=" + this.root_span_id);
        arrayList2.add("parent_span_id=" + this.parent_span_id);
        arrayList2.add("current_span_id=" + this.current_span_id);
        arrayList2.add("action_id=" + Internal.sanitize(this.action_id));
        arrayList2.add("apiori_cluster=" + Internal.sanitize(this.apiori_cluster));
        arrayList2.add("apiori_info=" + Internal.sanitize(this.apiori_info));
        if (this.request_info != null) {
            arrayList2.add("request_info=" + this.request_info);
        }
        arrayList2.add("livemode=" + this.livemode);
        arrayList2.add("start_time_ms=" + this.start_time_ms);
        arrayList2.add("total_time_ms=" + this.total_time_ms);
        arrayList2.add("service=" + Internal.sanitize(this.service));
        arrayList2.add("method=" + Internal.sanitize(this.method));
        arrayList2.add("request=" + Internal.sanitize(this.request));
        arrayList2.add("raw_request=" + this.raw_request);
        arrayList2.add("response=" + Internal.sanitize(this.response));
        arrayList2.add("raw_response=" + this.raw_response);
        arrayList2.add("exception=" + Internal.sanitize(this.exception));
        arrayList2.add("status_code=" + Internal.sanitize(this.status_code));
        if (this.version_info != null) {
            arrayList2.add("version_info=" + this.version_info);
        }
        if (!this.tags.isEmpty()) {
            arrayList2.add("tags=" + this.tags);
        }
        if (!this.subsystem_time.isEmpty()) {
            arrayList2.add("subsystem_time=" + this.subsystem_time);
        }
        if (!this.traces.isEmpty()) {
            arrayList2.add("traces=" + this.traces);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "LegacyTraceData{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LegacyTraceData copy$default(LegacyTraceData legacyTraceData, long j, long j2, long j3, String str, String str2, String str3, RequestInfoPb requestInfoPb, Livemode livemode, long j4, long j5, String str4, String str5, String str6, ByteString byteString, String str7, ByteString byteString2, String str8, String str9, VersionInfoPb versionInfoPb, Map map, List list, List list2, ByteString byteString3, int i, Object obj) {
        long j6;
        long j7;
        long j8 = (i & 1) != 0 ? legacyTraceData.root_span_id : j;
        long j9 = (i & 2) != 0 ? legacyTraceData.parent_span_id : j2;
        long j10 = (i & 4) != 0 ? legacyTraceData.current_span_id : j3;
        String str10 = (i & 8) != 0 ? legacyTraceData.action_id : str;
        String str11 = (i & 16) != 0 ? legacyTraceData.apiori_cluster : str2;
        String str12 = (i & 32) != 0 ? legacyTraceData.apiori_info : str3;
        RequestInfoPb requestInfoPb2 = (i & 64) != 0 ? legacyTraceData.request_info : requestInfoPb;
        Livemode livemode2 = (i & 128) != 0 ? legacyTraceData.livemode : livemode;
        long j11 = (i & 256) != 0 ? legacyTraceData.start_time_ms : j4;
        if ((i & 512) != 0) {
            j6 = j8;
            j7 = legacyTraceData.total_time_ms;
        } else {
            j6 = j8;
            j7 = j5;
        }
        long j12 = j7;
        String str13 = (i & 1024) != 0 ? legacyTraceData.service : str4;
        return legacyTraceData.copy(j6, j9, j10, str10, str11, str12, requestInfoPb2, livemode2, j11, j12, str13, (i & 2048) != 0 ? legacyTraceData.method : str5, (i & 4096) != 0 ? legacyTraceData.request : str6, (i & 8192) != 0 ? legacyTraceData.raw_request : byteString, (i & 16384) != 0 ? legacyTraceData.response : str7, (i & 32768) != 0 ? legacyTraceData.raw_response : byteString2, (i & 65536) != 0 ? legacyTraceData.exception : str8, (i & 131072) != 0 ? legacyTraceData.status_code : str9, (i & 262144) != 0 ? legacyTraceData.version_info : versionInfoPb, (i & 524288) != 0 ? legacyTraceData.tags : map, (i & 1048576) != 0 ? legacyTraceData.subsystem_time : list, (i & 2097152) != 0 ? legacyTraceData.traces : list2, (i & 4194304) != 0 ? legacyTraceData.unknownFields() : byteString3);
    }

    public final LegacyTraceData copy(long root_span_id, long parent_span_id, long current_span_id, String action_id, String apiori_cluster, String apiori_info, RequestInfoPb request_info, Livemode livemode, long start_time_ms, long total_time_ms, String service, String method, String request, ByteString raw_request, String response, ByteString raw_response, String exception, String status_code, VersionInfoPb version_info, Map<String, String> tags, List<SubsystemTimePb> subsystem_time, List<SpanPointPb> traces, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(action_id, "action_id");
        Intrinsics.checkNotNullParameter(apiori_cluster, "apiori_cluster");
        Intrinsics.checkNotNullParameter(apiori_info, "apiori_info");
        Intrinsics.checkNotNullParameter(livemode, "livemode");
        Intrinsics.checkNotNullParameter(service, "service");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(raw_request, "raw_request");
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(raw_response, "raw_response");
        Intrinsics.checkNotNullParameter(exception, "exception");
        Intrinsics.checkNotNullParameter(status_code, "status_code");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(subsystem_time, "subsystem_time");
        Intrinsics.checkNotNullParameter(traces, "traces");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new LegacyTraceData(root_span_id, parent_span_id, current_span_id, action_id, apiori_cluster, apiori_info, request_info, livemode, start_time_ms, total_time_ms, service, method, request, raw_request, response, raw_response, exception, status_code, version_info, tags, subsystem_time, traces, unknownFields);
    }

    /* JADX INFO: compiled from: LegacyTraceData.kt */
    @kotlin.Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\b\u0010$\u001a\u00020\u0002H\u0016J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\tJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0005J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\tJ\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0005J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\tJ\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0005J\u0014\u0010\u001a\u001a\u00020\u00002\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bJ\u001a\u0010\u001d\u001a\u00020\u00002\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u001eJ\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\tJ\u0014\u0010 \u001a\u00020\u00002\f\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u001bJ\u0010\u0010\"\u001a\u00020\u00002\b\u0010\"\u001a\u0004\u0018\u00010#R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u001e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001f\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;", "()V", "action_id", "", "apiori_cluster", "apiori_info", "current_span_id", "", "exception", "livemode", "Lcom/stripe/proto/model/common/Livemode;", FirebaseAnalytics.Param.METHOD, "parent_span_id", "raw_request", "Lokio/ByteString;", "raw_response", "request", "request_info", "Lcom/stripe/proto/model/trace/RequestInfoPb;", "response", "root_span_id", NotificationCompat.CATEGORY_SERVICE, "start_time_ms", "status_code", "subsystem_time", "", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SubsystemTimePb;", "tags", "", "total_time_ms", "traces", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb;", "version_info", "Lcom/stripe/proto/model/common/VersionInfoPb;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<LegacyTraceData, Builder> {
        public long current_span_id;
        public long parent_span_id;
        public RequestInfoPb request_info;
        public long root_span_id;
        public long start_time_ms;
        public long total_time_ms;
        public VersionInfoPb version_info;
        public String action_id = "";
        public String apiori_cluster = "";
        public String apiori_info = "";
        public Livemode livemode = Livemode.TRUE;
        public String service = "";
        public String method = "";
        public String request = "";
        public ByteString raw_request = ByteString.EMPTY;
        public String response = "";
        public ByteString raw_response = ByteString.EMPTY;
        public String exception = "";
        public String status_code = "";
        public Map<String, String> tags = MapsKt.emptyMap();
        public List<SubsystemTimePb> subsystem_time = CollectionsKt.emptyList();
        public List<SpanPointPb> traces = CollectionsKt.emptyList();

        public final Builder root_span_id(long root_span_id) {
            this.root_span_id = root_span_id;
            return this;
        }

        public final Builder parent_span_id(long parent_span_id) {
            this.parent_span_id = parent_span_id;
            return this;
        }

        public final Builder current_span_id(long current_span_id) {
            this.current_span_id = current_span_id;
            return this;
        }

        public final Builder action_id(String action_id) {
            Intrinsics.checkNotNullParameter(action_id, "action_id");
            this.action_id = action_id;
            return this;
        }

        public final Builder apiori_cluster(String apiori_cluster) {
            Intrinsics.checkNotNullParameter(apiori_cluster, "apiori_cluster");
            this.apiori_cluster = apiori_cluster;
            return this;
        }

        public final Builder apiori_info(String apiori_info) {
            Intrinsics.checkNotNullParameter(apiori_info, "apiori_info");
            this.apiori_info = apiori_info;
            return this;
        }

        public final Builder request_info(RequestInfoPb request_info) {
            this.request_info = request_info;
            return this;
        }

        public final Builder livemode(Livemode livemode) {
            Intrinsics.checkNotNullParameter(livemode, "livemode");
            this.livemode = livemode;
            return this;
        }

        public final Builder start_time_ms(long start_time_ms) {
            this.start_time_ms = start_time_ms;
            return this;
        }

        public final Builder total_time_ms(long total_time_ms) {
            this.total_time_ms = total_time_ms;
            return this;
        }

        public final Builder service(String service) {
            Intrinsics.checkNotNullParameter(service, "service");
            this.service = service;
            return this;
        }

        public final Builder method(String method) {
            Intrinsics.checkNotNullParameter(method, "method");
            this.method = method;
            return this;
        }

        public final Builder request(String request) {
            Intrinsics.checkNotNullParameter(request, "request");
            this.request = request;
            return this;
        }

        public final Builder raw_request(ByteString raw_request) {
            Intrinsics.checkNotNullParameter(raw_request, "raw_request");
            this.raw_request = raw_request;
            return this;
        }

        public final Builder response(String response) {
            Intrinsics.checkNotNullParameter(response, "response");
            this.response = response;
            return this;
        }

        public final Builder raw_response(ByteString raw_response) {
            Intrinsics.checkNotNullParameter(raw_response, "raw_response");
            this.raw_response = raw_response;
            return this;
        }

        public final Builder exception(String exception) {
            Intrinsics.checkNotNullParameter(exception, "exception");
            this.exception = exception;
            return this;
        }

        public final Builder status_code(String status_code) {
            Intrinsics.checkNotNullParameter(status_code, "status_code");
            this.status_code = status_code;
            return this;
        }

        public final Builder version_info(VersionInfoPb version_info) {
            this.version_info = version_info;
            return this;
        }

        public final Builder tags(Map<String, String> tags) {
            Intrinsics.checkNotNullParameter(tags, "tags");
            this.tags = tags;
            return this;
        }

        public final Builder subsystem_time(List<SubsystemTimePb> subsystem_time) {
            Intrinsics.checkNotNullParameter(subsystem_time, "subsystem_time");
            Internal.checkElementsNotNull(subsystem_time);
            this.subsystem_time = subsystem_time;
            return this;
        }

        public final Builder traces(List<SpanPointPb> traces) {
            Intrinsics.checkNotNullParameter(traces, "traces");
            Internal.checkElementsNotNull(traces);
            this.traces = traces;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public LegacyTraceData build() {
            return new LegacyTraceData(this.root_span_id, this.parent_span_id, this.current_span_id, this.action_id, this.apiori_cluster, this.apiori_info, this.request_info, this.livemode, this.start_time_ms, this.total_time_ms, this.service, this.method, this.request, this.raw_request, this.response, this.raw_response, this.exception, this.status_code, this.version_info, this.tags, this.subsystem_time, this.traces, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: LegacyTraceData.kt */
    @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ LegacyTraceData build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(LegacyTraceData.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<LegacyTraceData>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.LegacyTraceData$Companion$ADAPTER$1

            /* JADX INFO: renamed from: tagsAdapter$delegate, reason: from kotlin metadata */
            private final Lazy tagsAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends String>>>() { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.LegacyTraceData$Companion$ADAPTER$1$tagsAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends String>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, ProtoAdapter.STRING);
                }
            });

            private final ProtoAdapter<Map<String, String>> getTagsAdapter() {
                return (ProtoAdapter) this.tagsAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(LegacyTraceData value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.root_span_id != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(1, Long.valueOf(value.root_span_id));
                }
                if (value.parent_span_id != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(2, Long.valueOf(value.parent_span_id));
                }
                if (value.current_span_id != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(3, Long.valueOf(value.current_span_id));
                }
                if (!Intrinsics.areEqual(value.action_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.action_id);
                }
                if (!Intrinsics.areEqual(value.apiori_cluster, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.apiori_cluster);
                }
                if (!Intrinsics.areEqual(value.apiori_info, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.apiori_info);
                }
                if (value.request_info != null) {
                    size += RequestInfoPb.ADAPTER.encodedSizeWithTag(7, value.request_info);
                }
                if (value.livemode != Livemode.TRUE) {
                    size += Livemode.ADAPTER.encodedSizeWithTag(8, value.livemode);
                }
                if (value.start_time_ms != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(9, Long.valueOf(value.start_time_ms));
                }
                if (value.total_time_ms != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(10, Long.valueOf(value.total_time_ms));
                }
                if (!Intrinsics.areEqual(value.service, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(11, value.service);
                }
                if (!Intrinsics.areEqual(value.method, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(12, value.method);
                }
                if (!Intrinsics.areEqual(value.request, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(13, value.request);
                }
                if (!Intrinsics.areEqual(value.raw_request, ByteString.EMPTY)) {
                    size += ProtoAdapter.BYTES.encodedSizeWithTag(14, value.raw_request);
                }
                if (!Intrinsics.areEqual(value.response, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(15, value.response);
                }
                if (!Intrinsics.areEqual(value.raw_response, ByteString.EMPTY)) {
                    size += ProtoAdapter.BYTES.encodedSizeWithTag(16, value.raw_response);
                }
                if (!Intrinsics.areEqual(value.exception, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(17, value.exception);
                }
                if (!Intrinsics.areEqual(value.status_code, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(18, value.status_code);
                }
                if (value.version_info != null) {
                    size += VersionInfoPb.ADAPTER.encodedSizeWithTag(19, value.version_info);
                }
                return size + getTagsAdapter().encodedSizeWithTag(20, value.tags) + LegacyTraceData.SubsystemTimePb.ADAPTER.asRepeated().encodedSizeWithTag(21, value.subsystem_time) + LegacyTraceData.SpanPointPb.ADAPTER.asRepeated().encodedSizeWithTag(22, value.traces);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, LegacyTraceData value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.root_span_id != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.root_span_id));
                }
                if (value.parent_span_id != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 2, Long.valueOf(value.parent_span_id));
                }
                if (value.current_span_id != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 3, Long.valueOf(value.current_span_id));
                }
                if (!Intrinsics.areEqual(value.action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.action_id);
                }
                if (!Intrinsics.areEqual(value.apiori_cluster, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.apiori_cluster);
                }
                if (!Intrinsics.areEqual(value.apiori_info, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.apiori_info);
                }
                if (value.request_info != null) {
                    RequestInfoPb.ADAPTER.encodeWithTag(writer, 7, value.request_info);
                }
                if (value.livemode != Livemode.TRUE) {
                    Livemode.ADAPTER.encodeWithTag(writer, 8, value.livemode);
                }
                if (value.start_time_ms != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 9, Long.valueOf(value.start_time_ms));
                }
                if (value.total_time_ms != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 10, Long.valueOf(value.total_time_ms));
                }
                if (!Intrinsics.areEqual(value.service, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 11, value.service);
                }
                if (!Intrinsics.areEqual(value.method, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 12, value.method);
                }
                if (!Intrinsics.areEqual(value.request, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 13, value.request);
                }
                if (!Intrinsics.areEqual(value.raw_request, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 14, value.raw_request);
                }
                if (!Intrinsics.areEqual(value.response, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 15, value.response);
                }
                if (!Intrinsics.areEqual(value.raw_response, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 16, value.raw_response);
                }
                if (!Intrinsics.areEqual(value.exception, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 17, value.exception);
                }
                if (!Intrinsics.areEqual(value.status_code, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 18, value.status_code);
                }
                if (value.version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 19, value.version_info);
                }
                getTagsAdapter().encodeWithTag(writer, 20, value.tags);
                LegacyTraceData.SubsystemTimePb.ADAPTER.asRepeated().encodeWithTag(writer, 21, value.subsystem_time);
                LegacyTraceData.SpanPointPb.ADAPTER.asRepeated().encodeWithTag(writer, 22, value.traces);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, LegacyTraceData value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                LegacyTraceData.SpanPointPb.ADAPTER.asRepeated().encodeWithTag(writer, 22, value.traces);
                LegacyTraceData.SubsystemTimePb.ADAPTER.asRepeated().encodeWithTag(writer, 21, value.subsystem_time);
                getTagsAdapter().encodeWithTag(writer, 20, value.tags);
                if (value.version_info != null) {
                    VersionInfoPb.ADAPTER.encodeWithTag(writer, 19, value.version_info);
                }
                if (!Intrinsics.areEqual(value.status_code, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 18, value.status_code);
                }
                if (!Intrinsics.areEqual(value.exception, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 17, value.exception);
                }
                if (!Intrinsics.areEqual(value.raw_response, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 16, value.raw_response);
                }
                if (!Intrinsics.areEqual(value.response, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 15, value.response);
                }
                if (!Intrinsics.areEqual(value.raw_request, ByteString.EMPTY)) {
                    ProtoAdapter.BYTES.encodeWithTag(writer, 14, value.raw_request);
                }
                if (!Intrinsics.areEqual(value.request, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 13, value.request);
                }
                if (!Intrinsics.areEqual(value.method, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 12, value.method);
                }
                if (!Intrinsics.areEqual(value.service, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 11, value.service);
                }
                if (value.total_time_ms != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 10, Long.valueOf(value.total_time_ms));
                }
                if (value.start_time_ms != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 9, Long.valueOf(value.start_time_ms));
                }
                if (value.livemode != Livemode.TRUE) {
                    Livemode.ADAPTER.encodeWithTag(writer, 8, value.livemode);
                }
                if (value.request_info != null) {
                    RequestInfoPb.ADAPTER.encodeWithTag(writer, 7, value.request_info);
                }
                if (!Intrinsics.areEqual(value.apiori_info, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.apiori_info);
                }
                if (!Intrinsics.areEqual(value.apiori_cluster, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.apiori_cluster);
                }
                if (!Intrinsics.areEqual(value.action_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.action_id);
                }
                if (value.current_span_id != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 3, Long.valueOf(value.current_span_id));
                }
                if (value.parent_span_id != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 2, Long.valueOf(value.parent_span_id));
                }
                if (value.root_span_id != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.root_span_id));
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public LegacyTraceData decode(ProtoReader reader) throws IOException {
                ByteString byteString;
                LinkedHashMap linkedHashMap;
                ArrayList arrayList;
                Intrinsics.checkNotNullParameter(reader, "reader");
                Livemode livemode = Livemode.TRUE;
                ByteString byteString2 = ByteString.EMPTY;
                ByteString byteString3 = ByteString.EMPTY;
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                Livemode livemodeDecode = livemode;
                long jLongValue = 0;
                long jLongValue2 = 0;
                long jLongValue3 = 0;
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                String strDecode6 = strDecode5;
                String strDecode7 = strDecode6;
                String strDecode8 = strDecode7;
                String strDecode9 = strDecode8;
                RequestInfoPb requestInfoPbDecode = null;
                VersionInfoPb versionInfoPbDecode = null;
                ByteString byteStringDecode = byteString3;
                long jLongValue4 = 0;
                long jLongValue5 = 0;
                ByteString byteStringDecode2 = byteString2;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                byteString = byteStringDecode2;
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                jLongValue4 = ProtoAdapter.INT64.decode(reader).longValue();
                                byteStringDecode2 = byteString;
                                break;
                            case 2:
                                byteString = byteStringDecode2;
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                jLongValue5 = ProtoAdapter.INT64.decode(reader).longValue();
                                byteStringDecode2 = byteString;
                                break;
                            case 3:
                                byteString = byteStringDecode2;
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                                byteStringDecode2 = byteString;
                                break;
                            case 4:
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 7:
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                requestInfoPbDecode = RequestInfoPb.ADAPTER.decode(reader);
                                break;
                            case 8:
                                try {
                                    livemodeDecode = Livemode.ADAPTER.decode(reader);
                                    linkedHashMap = linkedHashMap2;
                                    arrayList = arrayList2;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    byteString = byteStringDecode2;
                                    linkedHashMap = linkedHashMap2;
                                    arrayList = arrayList2;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                    byteStringDecode2 = byteString;
                                }
                                break;
                            case 9:
                                jLongValue2 = ProtoAdapter.INT64.decode(reader).longValue();
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                break;
                            case 10:
                                jLongValue3 = ProtoAdapter.INT64.decode(reader).longValue();
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                break;
                            case 11:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                break;
                            case 12:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                break;
                            case 13:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                break;
                            case 14:
                                byteStringDecode2 = ProtoAdapter.BYTES.decode(reader);
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                break;
                            case 15:
                                strDecode7 = ProtoAdapter.STRING.decode(reader);
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                break;
                            case 16:
                                byteStringDecode = ProtoAdapter.BYTES.decode(reader);
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                break;
                            case 17:
                                strDecode8 = ProtoAdapter.STRING.decode(reader);
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                break;
                            case 18:
                                strDecode9 = ProtoAdapter.STRING.decode(reader);
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                break;
                            case 19:
                                versionInfoPbDecode = VersionInfoPb.ADAPTER.decode(reader);
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                break;
                            case 20:
                                linkedHashMap2.putAll(getTagsAdapter().decode(reader));
                                byteString = byteStringDecode2;
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                byteStringDecode2 = byteString;
                                break;
                            case 21:
                                arrayList2.add(LegacyTraceData.SubsystemTimePb.ADAPTER.decode(reader));
                                byteString = byteStringDecode2;
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                byteStringDecode2 = byteString;
                                break;
                            case 22:
                                arrayList3.add(LegacyTraceData.SpanPointPb.ADAPTER.decode(reader));
                                byteString = byteStringDecode2;
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                byteStringDecode2 = byteString;
                                break;
                            default:
                                byteString = byteStringDecode2;
                                linkedHashMap = linkedHashMap2;
                                arrayList = arrayList2;
                                reader.readUnknownField(iNextTag);
                                byteStringDecode2 = byteString;
                                break;
                        }
                        linkedHashMap2 = linkedHashMap;
                        arrayList2 = arrayList;
                    } else {
                        return new LegacyTraceData(jLongValue4, jLongValue5, jLongValue, strDecode, strDecode2, strDecode3, requestInfoPbDecode, livemodeDecode, jLongValue2, jLongValue3, strDecode4, strDecode5, strDecode6, byteStringDecode2, strDecode7, byteStringDecode, strDecode8, strDecode9, versionInfoPbDecode, linkedHashMap2, arrayList2, arrayList3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public LegacyTraceData redact(LegacyTraceData value) {
                Intrinsics.checkNotNullParameter(value, "value");
                RequestInfoPb requestInfoPb = value.request_info;
                RequestInfoPb requestInfoPbRedact = requestInfoPb != null ? RequestInfoPb.ADAPTER.redact(requestInfoPb) : null;
                VersionInfoPb versionInfoPb = value.version_info;
                return LegacyTraceData.copy$default(value, 0L, 0L, 0L, null, null, null, requestInfoPbRedact, null, 0L, 0L, null, null, null, null, null, null, null, null, versionInfoPb != null ? VersionInfoPb.ADAPTER.redact(versionInfoPb) : null, null, Internal.m361redactElements(value.subsystem_time, LegacyTraceData.SubsystemTimePb.ADAPTER), Internal.m361redactElements(value.traces, LegacyTraceData.SpanPointPb.ADAPTER), ByteString.EMPTY, 786367, null);
            }
        };
    }

    /* JADX INFO: compiled from: LegacyTraceData.kt */
    @kotlin.Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B-\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ.\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SubsystemTimePb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SubsystemTimePb$Builder;", "subsystem", "", "time", "", "calls", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;JJLokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SubsystemTimePb extends Message<SubsystemTimePb, Builder> {
        public static final ProtoAdapter<SubsystemTimePb> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final long calls;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String subsystem;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final long time;

        public SubsystemTimePb() {
            this(null, 0L, 0L, null, 15, null);
        }

        public /* synthetic */ SubsystemTimePb(String str, long j, long j2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? 0L : j2, (i & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SubsystemTimePb(String subsystem, long j, long j2, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(subsystem, "subsystem");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.subsystem = subsystem;
            this.time = j;
            this.calls = j2;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.subsystem = this.subsystem;
            builder.time = this.time;
            builder.calls = this.calls;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof SubsystemTimePb)) {
                return false;
            }
            SubsystemTimePb subsystemTimePb = (SubsystemTimePb) other;
            return Intrinsics.areEqual(unknownFields(), subsystemTimePb.unknownFields()) && Intrinsics.areEqual(this.subsystem, subsystemTimePb.subsystem) && this.time == subsystemTimePb.time && this.calls == subsystemTimePb.calls;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((((unknownFields().hashCode() * 37) + this.subsystem.hashCode()) * 37) + Long.hashCode(this.time)) * 37) + Long.hashCode(this.calls);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("subsystem=" + Internal.sanitize(this.subsystem));
            arrayList2.add("time=" + this.time);
            arrayList2.add("calls=" + this.calls);
            return CollectionsKt.joinToString$default(arrayList, ", ", "SubsystemTimePb{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ SubsystemTimePb copy$default(SubsystemTimePb subsystemTimePb, String str, long j, long j2, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = subsystemTimePb.subsystem;
            }
            if ((i & 2) != 0) {
                j = subsystemTimePb.time;
            }
            if ((i & 4) != 0) {
                j2 = subsystemTimePb.calls;
            }
            if ((i & 8) != 0) {
                byteString = subsystemTimePb.unknownFields();
            }
            ByteString byteString2 = byteString;
            return subsystemTimePb.copy(str, j, j2, byteString2);
        }

        public final SubsystemTimePb copy(String subsystem, long time, long calls, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(subsystem, "subsystem");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new SubsystemTimePb(subsystem, time, calls, unknownFields);
        }

        /* JADX INFO: compiled from: LegacyTraceData.kt */
        @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SubsystemTimePb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SubsystemTimePb;", "()V", "calls", "", "subsystem", "", "time", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<SubsystemTimePb, Builder> {
            public long calls;
            public String subsystem = "";
            public long time;

            public final Builder subsystem(String subsystem) {
                Intrinsics.checkNotNullParameter(subsystem, "subsystem");
                this.subsystem = subsystem;
                return this;
            }

            public final Builder time(long time) {
                this.time = time;
                return this;
            }

            public final Builder calls(long calls) {
                this.calls = calls;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public SubsystemTimePb build() {
                return new SubsystemTimePb(this.subsystem, this.time, this.calls, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: LegacyTraceData.kt */
        @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SubsystemTimePb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SubsystemTimePb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SubsystemTimePb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ SubsystemTimePb build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SubsystemTimePb.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<SubsystemTimePb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.LegacyTraceData$SubsystemTimePb$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(LegacyTraceData.SubsystemTimePb value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.subsystem, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.subsystem);
                    }
                    if (value.time != 0) {
                        size += ProtoAdapter.INT64.encodedSizeWithTag(2, Long.valueOf(value.time));
                    }
                    return value.calls != 0 ? size + ProtoAdapter.INT64.encodedSizeWithTag(3, Long.valueOf(value.calls)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, LegacyTraceData.SubsystemTimePb value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.subsystem, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.subsystem);
                    }
                    if (value.time != 0) {
                        ProtoAdapter.INT64.encodeWithTag(writer, 2, Long.valueOf(value.time));
                    }
                    if (value.calls != 0) {
                        ProtoAdapter.INT64.encodeWithTag(writer, 3, Long.valueOf(value.calls));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, LegacyTraceData.SubsystemTimePb value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.calls != 0) {
                        ProtoAdapter.INT64.encodeWithTag(writer, 3, Long.valueOf(value.calls));
                    }
                    if (value.time != 0) {
                        ProtoAdapter.INT64.encodeWithTag(writer, 2, Long.valueOf(value.time));
                    }
                    if (Intrinsics.areEqual(value.subsystem, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.subsystem);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public LegacyTraceData.SubsystemTimePb redact(LegacyTraceData.SubsystemTimePb value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return LegacyTraceData.SubsystemTimePb.copy$default(value, null, 0L, 0L, ByteString.EMPTY, 7, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public LegacyTraceData.SubsystemTimePb decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    long jLongValue = 0;
                    long jLongValue2 = 0;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new LegacyTraceData.SubsystemTimePb(strDecode, jLongValue, jLongValue2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                        } else if (iNextTag == 3) {
                            jLongValue2 = ProtoAdapter.INT64.decode(reader).longValue();
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: LegacyTraceData.kt */
    @kotlin.Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u0015\u0016\u0017\u0018B1\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ2\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$Builder;", "time_offset_ms", "", "log_point", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;", "meter_point", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$MeterPoint;", "unknownFields", "Lokio/ByteString;", "(ILcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$MeterPoint;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "LogPoint", "MeterPoint", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SpanPointPb extends Message<SpanPointPb, Builder> {
        public static final ProtoAdapter<SpanPointPb> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.LegacyTraceData$SpanPointPb$LogPoint#ADAPTER", jsonName = "logPoint", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final LogPoint log_point;

        @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.LegacyTraceData$SpanPointPb$MeterPoint#ADAPTER", jsonName = "meterPoint", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final MeterPoint meter_point;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "timeOffsetMs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final int time_offset_ms;

        public SpanPointPb() {
            this(0, null, null, null, 15, null);
        }

        public /* synthetic */ SpanPointPb(int i, LogPoint logPoint, MeterPoint meterPoint, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? null : logPoint, (i2 & 4) != 0 ? null : meterPoint, (i2 & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SpanPointPb(int i, LogPoint logPoint, MeterPoint meterPoint, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.time_offset_ms = i;
            this.log_point = logPoint;
            this.meter_point = meterPoint;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.time_offset_ms = this.time_offset_ms;
            builder.log_point = this.log_point;
            builder.meter_point = this.meter_point;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof SpanPointPb)) {
                return false;
            }
            SpanPointPb spanPointPb = (SpanPointPb) other;
            return Intrinsics.areEqual(unknownFields(), spanPointPb.unknownFields()) && this.time_offset_ms == spanPointPb.time_offset_ms && Intrinsics.areEqual(this.log_point, spanPointPb.log_point) && Intrinsics.areEqual(this.meter_point, spanPointPb.meter_point);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((unknownFields().hashCode() * 37) + Integer.hashCode(this.time_offset_ms)) * 37;
            LogPoint logPoint = this.log_point;
            int iHashCode2 = (iHashCode + (logPoint != null ? logPoint.hashCode() : 0)) * 37;
            MeterPoint meterPoint = this.meter_point;
            int iHashCode3 = iHashCode2 + (meterPoint != null ? meterPoint.hashCode() : 0);
            this.hashCode = iHashCode3;
            return iHashCode3;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("time_offset_ms=" + this.time_offset_ms);
            if (this.log_point != null) {
                arrayList2.add("log_point=" + this.log_point);
            }
            if (this.meter_point != null) {
                arrayList2.add("meter_point=" + this.meter_point);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "SpanPointPb{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ SpanPointPb copy$default(SpanPointPb spanPointPb, int i, LogPoint logPoint, MeterPoint meterPoint, ByteString byteString, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = spanPointPb.time_offset_ms;
            }
            if ((i2 & 2) != 0) {
                logPoint = spanPointPb.log_point;
            }
            if ((i2 & 4) != 0) {
                meterPoint = spanPointPb.meter_point;
            }
            if ((i2 & 8) != 0) {
                byteString = spanPointPb.unknownFields();
            }
            return spanPointPb.copy(i, logPoint, meterPoint, byteString);
        }

        public final SpanPointPb copy(int time_offset_ms, LogPoint log_point, MeterPoint meter_point, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new SpanPointPb(time_offset_ms, log_point, meter_point, unknownFields);
        }

        /* JADX INFO: compiled from: LegacyTraceData.kt */
        @kotlin.Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb;", "()V", "log_point", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;", "meter_point", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$MeterPoint;", "time_offset_ms", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<SpanPointPb, Builder> {
            public LogPoint log_point;
            public MeterPoint meter_point;
            public int time_offset_ms;

            public final Builder time_offset_ms(int time_offset_ms) {
                this.time_offset_ms = time_offset_ms;
                return this;
            }

            public final Builder log_point(LogPoint log_point) {
                this.log_point = log_point;
                return this;
            }

            public final Builder meter_point(MeterPoint meter_point) {
                this.meter_point = meter_point;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public SpanPointPb build() {
                return new SpanPointPb(this.time_offset_ms, this.log_point, this.meter_point, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: LegacyTraceData.kt */
        @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ SpanPointPb build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SpanPointPb.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<SpanPointPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.LegacyTraceData$SpanPointPb$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(LegacyTraceData.SpanPointPb value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.time_offset_ms != 0) {
                        size += ProtoAdapter.INT32.encodedSizeWithTag(1, Integer.valueOf(value.time_offset_ms));
                    }
                    if (value.log_point != null) {
                        size += LegacyTraceData.SpanPointPb.LogPoint.ADAPTER.encodedSizeWithTag(2, value.log_point);
                    }
                    return value.meter_point != null ? size + LegacyTraceData.SpanPointPb.MeterPoint.ADAPTER.encodedSizeWithTag(3, value.meter_point) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, LegacyTraceData.SpanPointPb value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.time_offset_ms != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.time_offset_ms));
                    }
                    if (value.log_point != null) {
                        LegacyTraceData.SpanPointPb.LogPoint.ADAPTER.encodeWithTag(writer, 2, value.log_point);
                    }
                    if (value.meter_point != null) {
                        LegacyTraceData.SpanPointPb.MeterPoint.ADAPTER.encodeWithTag(writer, 3, value.meter_point);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, LegacyTraceData.SpanPointPb value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.meter_point != null) {
                        LegacyTraceData.SpanPointPb.MeterPoint.ADAPTER.encodeWithTag(writer, 3, value.meter_point);
                    }
                    if (value.log_point != null) {
                        LegacyTraceData.SpanPointPb.LogPoint.ADAPTER.encodeWithTag(writer, 2, value.log_point);
                    }
                    if (value.time_offset_ms != 0) {
                        ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.time_offset_ms));
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public LegacyTraceData.SpanPointPb redact(LegacyTraceData.SpanPointPb value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    LegacyTraceData.SpanPointPb.LogPoint logPoint = value.log_point;
                    LegacyTraceData.SpanPointPb.LogPoint logPointRedact = logPoint != null ? LegacyTraceData.SpanPointPb.LogPoint.ADAPTER.redact(logPoint) : null;
                    LegacyTraceData.SpanPointPb.MeterPoint meterPoint = value.meter_point;
                    return LegacyTraceData.SpanPointPb.copy$default(value, 0, logPointRedact, meterPoint != null ? LegacyTraceData.SpanPointPb.MeterPoint.ADAPTER.redact(meterPoint) : null, ByteString.EMPTY, 1, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public LegacyTraceData.SpanPointPb decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    int iIntValue = 0;
                    LegacyTraceData.SpanPointPb.LogPoint logPointDecode = null;
                    LegacyTraceData.SpanPointPb.MeterPoint meterPointDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new LegacyTraceData.SpanPointPb(iIntValue, logPointDecode, meterPointDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                        } else if (iNextTag == 2) {
                            logPointDecode = LegacyTraceData.SpanPointPb.LogPoint.ADAPTER.decode(reader);
                        } else if (iNextTag == 3) {
                            meterPointDecode = LegacyTraceData.SpanPointPb.MeterPoint.ADAPTER.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }

        /* JADX INFO: compiled from: LegacyTraceData.kt */
        @kotlin.Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ8\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0004H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0006H\u0016R\u0010\u0010\b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;", "log_level", "", "tag", "", "message", "exception", "unknownFields", "Lokio/ByteString;", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class LogPoint extends Message<LogPoint, Builder> {
            public static final ProtoAdapter<LogPoint> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
            public final String exception;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "logLevel", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final int log_level;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
            public final String message;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
            public final String tag;

            public LogPoint() {
                this(0, null, null, null, null, 31, null);
            }

            public /* synthetic */ LogPoint(int i, String str, String str2, String str3, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? "" : str, (i2 & 4) != 0 ? "" : str2, (i2 & 8) != 0 ? "" : str3, (i2 & 16) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public LogPoint(int i, String tag, String message, String exception, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(tag, "tag");
                Intrinsics.checkNotNullParameter(message, "message");
                Intrinsics.checkNotNullParameter(exception, "exception");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.log_level = i;
                this.tag = tag;
                this.message = message;
                this.exception = exception;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.log_level = this.log_level;
                builder.tag = this.tag;
                builder.message = this.message;
                builder.exception = this.exception;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof LogPoint)) {
                    return false;
                }
                LogPoint logPoint = (LogPoint) other;
                return Intrinsics.areEqual(unknownFields(), logPoint.unknownFields()) && this.log_level == logPoint.log_level && Intrinsics.areEqual(this.tag, logPoint.tag) && Intrinsics.areEqual(this.message, logPoint.message) && Intrinsics.areEqual(this.exception, logPoint.exception);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (((((((unknownFields().hashCode() * 37) + Integer.hashCode(this.log_level)) * 37) + this.tag.hashCode()) * 37) + this.message.hashCode()) * 37) + this.exception.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = arrayList;
                arrayList2.add("log_level=" + this.log_level);
                arrayList2.add("tag=" + Internal.sanitize(this.tag));
                arrayList2.add("message=" + Internal.sanitize(this.message));
                arrayList2.add("exception=" + Internal.sanitize(this.exception));
                return CollectionsKt.joinToString$default(arrayList, ", ", "LogPoint{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ LogPoint copy$default(LogPoint logPoint, int i, String str, String str2, String str3, ByteString byteString, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    i = logPoint.log_level;
                }
                if ((i2 & 2) != 0) {
                    str = logPoint.tag;
                }
                if ((i2 & 4) != 0) {
                    str2 = logPoint.message;
                }
                if ((i2 & 8) != 0) {
                    str3 = logPoint.exception;
                }
                if ((i2 & 16) != 0) {
                    byteString = logPoint.unknownFields();
                }
                ByteString byteString2 = byteString;
                String str4 = str2;
                return logPoint.copy(i, str, str4, str3, byteString2);
            }

            public final LogPoint copy(int log_level, String tag, String message, String exception, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(tag, "tag");
                Intrinsics.checkNotNullParameter(message, "message");
                Intrinsics.checkNotNullParameter(exception, "exception");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new LogPoint(log_level, tag, message, exception, unknownFields);
            }

            /* JADX INFO: compiled from: LegacyTraceData.kt */
            @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;", "()V", "exception", "", "log_level", "", "message", "tag", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<LogPoint, Builder> {
                public int log_level;
                public String tag = "";
                public String message = "";
                public String exception = "";

                public final Builder log_level(int log_level) {
                    this.log_level = log_level;
                    return this;
                }

                public final Builder tag(String tag) {
                    Intrinsics.checkNotNullParameter(tag, "tag");
                    this.tag = tag;
                    return this;
                }

                public final Builder message(String message) {
                    Intrinsics.checkNotNullParameter(message, "message");
                    this.message = message;
                    return this;
                }

                public final Builder exception(String exception) {
                    Intrinsics.checkNotNullParameter(exception, "exception");
                    this.exception = exception;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public LogPoint build() {
                    return new LogPoint(this.log_level, this.tag, this.message, this.exception, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: LegacyTraceData.kt */
            @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ LogPoint build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(LogPoint.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<LogPoint>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.LegacyTraceData$SpanPointPb$LogPoint$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(LegacyTraceData.SpanPointPb.LogPoint value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (value.log_level != 0) {
                            size += ProtoAdapter.INT32.encodedSizeWithTag(1, Integer.valueOf(value.log_level));
                        }
                        if (!Intrinsics.areEqual(value.tag, "")) {
                            size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.tag);
                        }
                        if (!Intrinsics.areEqual(value.message, "")) {
                            size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.message);
                        }
                        return !Intrinsics.areEqual(value.exception, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(4, value.exception) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, LegacyTraceData.SpanPointPb.LogPoint value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.log_level != 0) {
                            ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.log_level));
                        }
                        if (!Intrinsics.areEqual(value.tag, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 2, value.tag);
                        }
                        if (!Intrinsics.areEqual(value.message, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 3, value.message);
                        }
                        if (!Intrinsics.areEqual(value.exception, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 4, value.exception);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, LegacyTraceData.SpanPointPb.LogPoint value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (!Intrinsics.areEqual(value.exception, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 4, value.exception);
                        }
                        if (!Intrinsics.areEqual(value.message, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 3, value.message);
                        }
                        if (!Intrinsics.areEqual(value.tag, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 2, value.tag);
                        }
                        if (value.log_level != 0) {
                            ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.log_level));
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public LegacyTraceData.SpanPointPb.LogPoint redact(LegacyTraceData.SpanPointPb.LogPoint value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return LegacyTraceData.SpanPointPb.LogPoint.copy$default(value, 0, null, null, null, ByteString.EMPTY, 15, null);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public LegacyTraceData.SpanPointPb.LogPoint decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        int iIntValue = 0;
                        String strDecode2 = "";
                        String strDecode3 = strDecode2;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new LegacyTraceData.SpanPointPb.LogPoint(iIntValue, strDecode, strDecode2, strDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                            } else if (iNextTag == 2) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else if (iNextTag == 3) {
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                            } else if (iNextTag == 4) {
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }

        /* JADX INFO: compiled from: LegacyTraceData.kt */
        @kotlin.Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$MeterPoint;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$MeterPoint$Builder;", "event_name", "", "elapsed_ms", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;JLokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class MeterPoint extends Message<MeterPoint, Builder> {
            public static final ProtoAdapter<MeterPoint> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "elapsedMs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
            public final long elapsed_ms;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "eventName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final String event_name;

            public MeterPoint() {
                this(null, 0L, null, 7, null);
            }

            public /* synthetic */ MeterPoint(String str, long j, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public MeterPoint(String event_name, long j, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(event_name, "event_name");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.event_name = event_name;
                this.elapsed_ms = j;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.event_name = this.event_name;
                builder.elapsed_ms = this.elapsed_ms;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof MeterPoint)) {
                    return false;
                }
                MeterPoint meterPoint = (MeterPoint) other;
                return Intrinsics.areEqual(unknownFields(), meterPoint.unknownFields()) && Intrinsics.areEqual(this.event_name, meterPoint.event_name) && this.elapsed_ms == meterPoint.elapsed_ms;
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (((unknownFields().hashCode() * 37) + this.event_name.hashCode()) * 37) + Long.hashCode(this.elapsed_ms);
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = arrayList;
                arrayList2.add("event_name=" + Internal.sanitize(this.event_name));
                arrayList2.add("elapsed_ms=" + this.elapsed_ms);
                return CollectionsKt.joinToString$default(arrayList, ", ", "MeterPoint{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ MeterPoint copy$default(MeterPoint meterPoint, String str, long j, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = meterPoint.event_name;
                }
                if ((i & 2) != 0) {
                    j = meterPoint.elapsed_ms;
                }
                if ((i & 4) != 0) {
                    byteString = meterPoint.unknownFields();
                }
                return meterPoint.copy(str, j, byteString);
            }

            public final MeterPoint copy(String event_name, long elapsed_ms, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(event_name, "event_name");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new MeterPoint(event_name, elapsed_ms, unknownFields);
            }

            /* JADX INFO: compiled from: LegacyTraceData.kt */
            @kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$MeterPoint$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$MeterPoint;", "()V", "elapsed_ms", "", "event_name", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<MeterPoint, Builder> {
                public long elapsed_ms;
                public String event_name = "";

                public final Builder event_name(String event_name) {
                    Intrinsics.checkNotNullParameter(event_name, "event_name");
                    this.event_name = event_name;
                    return this;
                }

                public final Builder elapsed_ms(long elapsed_ms) {
                    this.elapsed_ms = elapsed_ms;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public MeterPoint build() {
                    return new MeterPoint(this.event_name, this.elapsed_ms, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: LegacyTraceData.kt */
            @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$MeterPoint$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$MeterPoint;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$MeterPoint$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ MeterPoint build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(MeterPoint.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<MeterPoint>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.LegacyTraceData$SpanPointPb$MeterPoint$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(LegacyTraceData.SpanPointPb.MeterPoint value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (!Intrinsics.areEqual(value.event_name, "")) {
                            size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.event_name);
                        }
                        return value.elapsed_ms != 0 ? size + ProtoAdapter.INT64.encodedSizeWithTag(2, Long.valueOf(value.elapsed_ms)) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, LegacyTraceData.SpanPointPb.MeterPoint value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (!Intrinsics.areEqual(value.event_name, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 1, value.event_name);
                        }
                        if (value.elapsed_ms != 0) {
                            ProtoAdapter.INT64.encodeWithTag(writer, 2, Long.valueOf(value.elapsed_ms));
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, LegacyTraceData.SpanPointPb.MeterPoint value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (value.elapsed_ms != 0) {
                            ProtoAdapter.INT64.encodeWithTag(writer, 2, Long.valueOf(value.elapsed_ms));
                        }
                        if (Intrinsics.areEqual(value.event_name, "")) {
                            return;
                        }
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.event_name);
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public LegacyTraceData.SpanPointPb.MeterPoint redact(LegacyTraceData.SpanPointPb.MeterPoint value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return LegacyTraceData.SpanPointPb.MeterPoint.copy$default(value, null, 0L, ByteString.EMPTY, 3, null);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public LegacyTraceData.SpanPointPb.MeterPoint decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        long jLongValue = 0;
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new LegacyTraceData.SpanPointPb.MeterPoint(strDecode, jLongValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else if (iNextTag == 2) {
                                jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }
                };
            }
        }
    }
}
