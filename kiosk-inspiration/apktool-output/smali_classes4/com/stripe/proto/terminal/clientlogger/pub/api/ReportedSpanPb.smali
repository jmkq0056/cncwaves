.class public final Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;
.super Lcom/squareup/wire/Message;
.source "ReportedSpanPb.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;,
        Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion;,
        Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;,
        Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 12\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u00040123B\u0093\u0002\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\u0014\u0008\u0002\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u001d\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u0012\u000e\u0008\u0002\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!\u0012\u000e\u0008\u0002\u0010#\u001a\u0008\u0012\u0004\u0012\u00020$0!\u0012\u0008\u0008\u0002\u0010%\u001a\u00020\u0015\u00a2\u0006\u0002\u0010&J\u0094\u0002\u0010\'\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00082\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0014\u0008\u0002\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u001d2\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u000e\u0008\u0002\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!2\u000e\u0008\u0002\u0010#\u001a\u0008\u0012\u0004\u0012\u00020$0!2\u0008\u0008\u0002\u0010%\u001a\u00020\u0015J\u0013\u0010(\u001a\u00020)2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0096\u0002J\u0008\u0010,\u001a\u00020-H\u0016J\u0008\u0010.\u001a\u00020\u0002H\u0016J\u0008\u0010/\u001a\u00020\u0008H\u0016R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u00158\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\u00158\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u001d8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010#\u001a\u0008\u0012\u0004\u0012\u00020$0!8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;",
        "root_span_id",
        "",
        "parent_span_id",
        "current_span_id",
        "action_id",
        "",
        "apiori_cluster",
        "apiori_info",
        "request_info",
        "Lcom/stripe/proto/model/trace/RequestInfoPb;",
        "livemode",
        "Lcom/stripe/proto/model/common/Livemode;",
        "start_time_ms",
        "total_time_ms",
        "service",
        "method",
        "request",
        "raw_request",
        "Lokio/ByteString;",
        "response",
        "raw_response",
        "exception",
        "status_code",
        "version_info",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "tags",
        "",
        "additional_context",
        "Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;",
        "subsystem_time",
        "",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;",
        "traces",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;",
        "unknownFields",
        "(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/Livemode;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "SpanPointPb",
        "SubsystemTimePb",
        "terminal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final action_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "actionId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x1d
    .end annotation
.end field

.field public final additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.AdditionalContext#ADAPTER"
        jsonName = "additionalContext"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x14
        tag = 0x20
    .end annotation
.end field

.field public final apiori_cluster:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "apioriCluster"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x1e
    .end annotation
.end field

.field public final apiori_info:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "apioriInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x1f
    .end annotation
.end field

.field public final current_span_id:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "currentSpanId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x1c
    .end annotation
.end field

.field public final exception:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x10
        tag = 0xb
    .end annotation
.end field

.field public final livemode:Lcom/stripe/proto/model/common/Livemode;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.Livemode#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x11
    .end annotation
.end field

.field public final method:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xb
        tag = 0x8
    .end annotation
.end field

.field public final parent_span_id:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "parentSpanId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x1b
    .end annotation
.end field

.field public final raw_request:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BYTES"
        jsonName = "rawRequest"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xd
        tag = 0xe
    .end annotation
.end field

.field public final raw_response:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BYTES"
        jsonName = "rawResponse"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xf
        tag = 0x10
    .end annotation
.end field

.field public final request:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xc
        tag = 0x9
    .end annotation
.end field

.field public final request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.trace.RequestInfoPb#ADAPTER"
        jsonName = "requestInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x3
    .end annotation
.end field

.field public final response:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xe
        tag = 0xa
    .end annotation
.end field

.field public final root_span_id:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "rootSpanId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1a
    .end annotation
.end field

.field public final service:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0x7
    .end annotation
.end field

.field public final start_time_ms:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "startTimeMs"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x5
    .end annotation
.end field

.field public final status_code:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "statusCode"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x11
        tag = 0x15
    .end annotation
.end field

.field public final subsystem_time:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.api.ReportedSpanPb$SubsystemTimePb#ADAPTER"
        jsonName = "subsystemTime"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x15
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;",
            ">;"
        }
    .end annotation
.end field

.field public final tags:Ljava/util/Map;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0x13
        tag = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final total_time_ms:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "totalTimeMs"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0x6
    .end annotation
.end field

.field public final traces:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.api.ReportedSpanPb$SpanPointPb#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x16
        tag = 0xc
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;",
            ">;"
        }
    .end annotation
.end field

.field public final version_info:Lcom/stripe/proto/model/common/VersionInfoPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.VersionInfoPb#ADAPTER"
        jsonName = "versionInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x12
        tag = 0xd
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->Companion:Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion;

    .line 730
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 729
    const-class v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 733
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 729
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 32

    const v30, 0xffffff

    const/16 v31, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v31}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/Livemode;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;Ljava/util/List;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/Livemode;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/trace/RequestInfoPb;",
            "Lcom/stripe/proto/model/common/Livemode;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;",
            ">;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p11

    move-object/from16 v5, p16

    move-object/from16 v6, p17

    move-object/from16 v7, p18

    move-object/from16 v8, p19

    move-object/from16 v9, p20

    move-object/from16 v10, p21

    move-object/from16 v11, p22

    move-object/from16 v12, p23

    move-object/from16 v13, p25

    move-object/from16 v14, p27

    move-object/from16 v15, p28

    const-string v0, "action_id"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiori_cluster"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiori_info"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "livemode"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "raw_request"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "raw_response"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status_code"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v0

    const-string v0, "subsystem_time"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v0

    const-string v0, "traces"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v18, v0

    const-string v0, "unknownFields"

    move-object/from16 v15, p29

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    move-object/from16 v14, p0

    invoke-direct {v14, v0, v15}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    move-wide/from16 v12, p1

    .line 41
    iput-wide v12, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->root_span_id:J

    move-wide/from16 v12, p3

    .line 53
    iput-wide v12, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->parent_span_id:J

    move-wide/from16 v12, p5

    .line 65
    iput-wide v12, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->current_span_id:J

    .line 77
    iput-object v1, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->action_id:Ljava/lang/String;

    .line 89
    iput-object v2, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_cluster:Ljava/lang/String;

    .line 101
    iput-object v3, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_info:Ljava/lang/String;

    move-object/from16 v0, p10

    .line 113
    iput-object v0, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    .line 125
    iput-object v4, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->livemode:Lcom/stripe/proto/model/common/Livemode;

    move-wide/from16 v0, p12

    .line 136
    iput-wide v0, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->start_time_ms:J

    move-wide/from16 v0, p14

    .line 148
    iput-wide v0, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->total_time_ms:J

    .line 160
    iput-object v5, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->service:Ljava/lang/String;

    .line 168
    iput-object v6, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->method:Ljava/lang/String;

    .line 179
    iput-object v7, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request:Ljava/lang/String;

    .line 190
    iput-object v8, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_request:Lokio/ByteString;

    .line 202
    iput-object v9, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->response:Ljava/lang/String;

    .line 213
    iput-object v10, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_response:Lokio/ByteString;

    .line 225
    iput-object v11, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->exception:Ljava/lang/String;

    move-object/from16 v12, p23

    .line 233
    iput-object v12, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->status_code:Ljava/lang/String;

    move-object/from16 v0, p24

    .line 245
    iput-object v0, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    move-object/from16 v0, p26

    .line 260
    iput-object v0, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    move-object/from16 v13, p25

    move-object/from16 v0, v16

    .line 284
    invoke-static {v0, v13}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->tags:Ljava/util/Map;

    move-object/from16 v0, p27

    move-object/from16 v1, v17

    .line 295
    invoke-static {v1, v0}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->subsystem_time:Ljava/util/List;

    move-object/from16 v15, p28

    move-object/from16 v0, v18

    .line 304
    invoke-static {v0, v15}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v14, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->traces:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/Livemode;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;Ljava/util/List;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 26

    move/from16 v0, p30

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const-wide/16 v6, 0x0

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    const-wide/16 v8, 0x0

    goto :goto_2

    :cond_2
    move-wide/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x8

    .line 37
    const-string v10, ""

    if-eqz v1, :cond_3

    move-object v1, v10

    goto :goto_3

    :cond_3
    move-object/from16 v1, p7

    :goto_3
    and-int/lit8 v11, v0, 0x10

    if-eqz v11, :cond_4

    move-object v11, v10

    goto :goto_4

    :cond_4
    move-object/from16 v11, p8

    :goto_4
    and-int/lit8 v12, v0, 0x20

    if-eqz v12, :cond_5

    move-object v12, v10

    goto :goto_5

    :cond_5
    move-object/from16 v12, p9

    :goto_5
    and-int/lit8 v13, v0, 0x40

    if-eqz v13, :cond_6

    const/4 v13, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v13, p10

    :goto_6
    and-int/lit16 v15, v0, 0x80

    if-eqz v15, :cond_7

    .line 132
    sget-object v15, Lcom/stripe/proto/model/common/Livemode;->TRUE:Lcom/stripe/proto/model/common/Livemode;

    goto :goto_7

    :cond_7
    move-object/from16 v15, p11

    :goto_7
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_8

    const-wide/16 v2, 0x0

    goto :goto_8

    :cond_8
    move-wide/from16 v2, p12

    :goto_8
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_9

    const-wide/16 v16, 0x0

    goto :goto_9

    :cond_9
    move-wide/from16 v16, p14

    :goto_9
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_a

    move-object v14, v10

    goto :goto_a

    :cond_a
    move-object/from16 v14, p16

    :goto_a
    move-object/from16 p2, v1

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_b

    move-object v1, v10

    goto :goto_b

    :cond_b
    move-object/from16 v1, p17

    :goto_b
    move-object/from16 p3, v1

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_c

    move-object v1, v10

    goto :goto_c

    :cond_c
    move-object/from16 v1, p18

    :goto_c
    move-object/from16 p4, v1

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_d

    .line 198
    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_d

    :cond_d
    move-object/from16 v1, p19

    :goto_d
    move-object/from16 p5, v1

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    move-object v1, v10

    goto :goto_e

    :cond_e
    move-object/from16 v1, p20

    :goto_e
    const v18, 0x8000

    and-int v18, v0, v18

    if-eqz v18, :cond_f

    .line 221
    sget-object v18, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_f

    :cond_f
    move-object/from16 v18, p21

    :goto_f
    const/high16 v19, 0x10000

    and-int v19, v0, v19

    if-eqz v19, :cond_10

    move-object/from16 v19, v10

    goto :goto_10

    :cond_10
    move-object/from16 v19, p22

    :goto_10
    const/high16 v20, 0x20000

    and-int v20, v0, v20

    if-eqz v20, :cond_11

    goto :goto_11

    :cond_11
    move-object/from16 v10, p23

    :goto_11
    const/high16 v20, 0x40000

    and-int v20, v0, v20

    if-eqz v20, :cond_12

    const/16 v20, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v20, p24

    :goto_12
    const/high16 v21, 0x80000

    and-int v21, v0, v21

    if-eqz v21, :cond_13

    .line 254
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v21

    goto :goto_13

    :cond_13
    move-object/from16 v21, p25

    :goto_13
    const/high16 v22, 0x100000

    and-int v22, v0, v22

    if-eqz v22, :cond_14

    const/16 v22, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v22, p26

    :goto_14
    const/high16 v23, 0x200000

    and-int v23, v0, v23

    if-eqz v23, :cond_15

    .line 269
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v23

    goto :goto_15

    :cond_15
    move-object/from16 v23, p27

    :goto_15
    const/high16 v24, 0x400000

    and-int v24, v0, v24

    if-eqz v24, :cond_16

    .line 270
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v24

    goto :goto_16

    :cond_16
    move-object/from16 v24, p28

    :goto_16
    const/high16 v25, 0x800000

    and-int v0, v0, v25

    if-eqz v0, :cond_17

    .line 271
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p30, v0

    goto :goto_17

    :cond_17
    move-object/from16 p30, p29

    :goto_17
    move-object/from16 p1, p0

    move-object/from16 p8, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-object/from16 p21, v1

    move-wide/from16 p13, v2

    move-wide/from16 p2, v4

    move-wide/from16 p4, v6

    move-wide/from16 p6, v8

    move-object/from16 p24, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    move-object/from16 p17, v14

    move-object/from16 p12, v15

    move-wide/from16 p15, v16

    move-object/from16 p22, v18

    move-object/from16 p23, v19

    move-object/from16 p25, v20

    move-object/from16 p26, v21

    move-object/from16 p27, v22

    move-object/from16 p28, v23

    move-object/from16 p29, v24

    .line 37
    invoke-direct/range {p1 .. p30}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/Livemode;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/Livemode;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;Ljava/util/List;Ljava/util/List;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p30

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 426
    iget-wide v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->root_span_id:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    .line 427
    iget-wide v4, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->parent_span_id:J

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    .line 428
    iget-wide v6, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->current_span_id:J

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p5

    :goto_2
    and-int/lit8 v8, v1, 0x8

    if-eqz v8, :cond_3

    .line 429
    iget-object v8, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->action_id:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v8, p7

    :goto_3
    and-int/lit8 v9, v1, 0x10

    if-eqz v9, :cond_4

    .line 430
    iget-object v9, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_cluster:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v9, p8

    :goto_4
    and-int/lit8 v10, v1, 0x20

    if-eqz v10, :cond_5

    .line 431
    iget-object v10, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_info:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v10, p9

    :goto_5
    and-int/lit8 v11, v1, 0x40

    if-eqz v11, :cond_6

    .line 432
    iget-object v11, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    goto :goto_6

    :cond_6
    move-object/from16 v11, p10

    :goto_6
    and-int/lit16 v12, v1, 0x80

    if-eqz v12, :cond_7

    .line 433
    iget-object v12, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->livemode:Lcom/stripe/proto/model/common/Livemode;

    goto :goto_7

    :cond_7
    move-object/from16 v12, p11

    :goto_7
    and-int/lit16 v13, v1, 0x100

    if-eqz v13, :cond_8

    .line 434
    iget-wide v13, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->start_time_ms:J

    goto :goto_8

    :cond_8
    move-wide/from16 v13, p12

    :goto_8
    and-int/lit16 v15, v1, 0x200

    if-eqz v15, :cond_9

    move-wide v15, v2

    .line 435
    iget-wide v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->total_time_ms:J

    goto :goto_9

    :cond_9
    move-wide v15, v2

    move-wide/from16 v2, p14

    :goto_9
    move-wide/from16 p1, v2

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_a

    .line 436
    iget-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->service:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v2, p16

    :goto_a
    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_b

    .line 437
    iget-object v3, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->method:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v3, p17

    :goto_b
    move-object/from16 p3, v2

    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_c

    .line 438
    iget-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v2, p18

    :goto_c
    move-object/from16 p4, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    .line 439
    iget-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_request:Lokio/ByteString;

    goto :goto_d

    :cond_d
    move-object/from16 v2, p19

    :goto_d
    move-object/from16 p5, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 440
    iget-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->response:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p20

    :goto_e
    const v17, 0x8000

    and-int v17, v1, v17

    if-eqz v17, :cond_f

    .line 441
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_response:Lokio/ByteString;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p21

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, p30, v17

    move-object/from16 p6, v1

    if-eqz v17, :cond_10

    .line 442
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->exception:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p22

    :goto_10
    const/high16 v17, 0x20000

    and-int v17, p30, v17

    move-object/from16 p7, v1

    if-eqz v17, :cond_11

    .line 443
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->status_code:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p23

    :goto_11
    const/high16 v17, 0x40000

    and-int v17, p30, v17

    move-object/from16 p8, v1

    if-eqz v17, :cond_12

    .line 444
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p24

    :goto_12
    const/high16 v17, 0x80000

    and-int v17, p30, v17

    move-object/from16 p9, v1

    if-eqz v17, :cond_13

    .line 445
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->tags:Ljava/util/Map;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p25

    :goto_13
    const/high16 v17, 0x100000

    and-int v17, p30, v17

    move-object/from16 p10, v1

    if-eqz v17, :cond_14

    .line 446
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p26

    :goto_14
    const/high16 v17, 0x200000

    and-int v17, p30, v17

    move-object/from16 p11, v1

    if-eqz v17, :cond_15

    .line 447
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->subsystem_time:Ljava/util/List;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p27

    :goto_15
    const/high16 v17, 0x400000

    and-int v17, p30, v17

    move-object/from16 p12, v1

    if-eqz v17, :cond_16

    .line 448
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->traces:Ljava/util/List;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p28

    :goto_16
    const/high16 v17, 0x800000

    and-int v17, p30, v17

    if-eqz v17, :cond_17

    .line 449
    invoke-virtual {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->unknownFields()Lokio/ByteString;

    move-result-object v17

    move-object/from16 p30, v17

    goto :goto_17

    :cond_17
    move-object/from16 p30, p29

    :goto_17
    move-wide/from16 p15, p1

    move-object/from16 p17, p3

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-object/from16 p22, p6

    move-object/from16 p23, p7

    move-object/from16 p24, p8

    move-object/from16 p25, p9

    move-object/from16 p26, p10

    move-object/from16 p27, p11

    move-object/from16 p28, p12

    move-object/from16 p1, v0

    move-object/from16 p29, v1

    move-object/from16 p21, v2

    move-object/from16 p18, v3

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-wide/from16 p13, v13

    move-wide/from16 p2, v15

    .line 425
    invoke-virtual/range {p1 .. p30}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->copy(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/Livemode;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/Livemode;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/trace/RequestInfoPb;",
            "Lcom/stripe/proto/model/common/Livemode;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;",
            ">;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;",
            ">;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;"
        }
    .end annotation

    const-string v0, "action_id"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiori_cluster"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiori_info"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "livemode"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    move-object/from16 v2, p17

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    move-object/from16 v3, p18

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "raw_request"

    move-object/from16 v4, p19

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    move-object/from16 v5, p20

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "raw_response"

    move-object/from16 v6, p21

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    move-object/from16 v7, p22

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status_code"

    move-object/from16 v11, p23

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    move-object/from16 v13, p25

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subsystem_time"

    move-object/from16 v14, p27

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traces"

    move-object/from16 v15, p28

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v1, p29

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    move-object/from16 v17, p16

    move-object/from16 v25, p24

    move-object/from16 v27, p26

    move-object/from16 v30, p29

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v11

    move-object/from16 v26, v13

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v11, p10

    move-wide/from16 v13, p12

    move-wide/from16 v15, p14

    invoke-direct/range {v1 .. v30}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/Livemode;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 337
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 338
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 339
    :cond_2
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->root_span_id:J

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->root_span_id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 340
    :cond_3
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->parent_span_id:J

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->parent_span_id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    .line 341
    :cond_4
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->current_span_id:J

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->current_span_id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    .line 342
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->action_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->action_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 343
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_cluster:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_cluster:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 344
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_info:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_info:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 345
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 346
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->livemode:Lcom/stripe/proto/model/common/Livemode;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->livemode:Lcom/stripe/proto/model/common/Livemode;

    if-eq v1, v3, :cond_a

    return v2

    .line 347
    :cond_a
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->start_time_ms:J

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->start_time_ms:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_b

    return v2

    .line 348
    :cond_b
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->total_time_ms:J

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->total_time_ms:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    return v2

    .line 349
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->service:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->service:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 350
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->method:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->method:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 351
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 352
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_request:Lokio/ByteString;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_request:Lokio/ByteString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 353
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->response:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->response:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 354
    :cond_11
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_response:Lokio/ByteString;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_response:Lokio/ByteString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 355
    :cond_12
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->exception:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->exception:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    .line 356
    :cond_13
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->status_code:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->status_code:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 357
    :cond_14
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    .line 358
    :cond_15
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->tags:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->tags:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    .line 359
    :cond_16
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    .line 360
    :cond_17
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->subsystem_time:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->subsystem_time:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    .line 361
    :cond_18
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->traces:Ljava/util/List;

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->traces:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    return v2

    :cond_19
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 366
    iget v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->hashCode:I

    if-nez v0, :cond_3

    .line 368
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 369
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->root_span_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 370
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->parent_span_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 371
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->current_span_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 372
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->action_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 373
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_cluster:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 374
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_info:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 375
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/trace/RequestInfoPb;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 376
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->livemode:Lcom/stripe/proto/model/common/Livemode;

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/Livemode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 377
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->start_time_ms:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 378
    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->total_time_ms:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 379
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->service:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 380
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->method:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 381
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 382
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_request:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 383
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->response:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 384
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_response:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 385
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->exception:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 386
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->status_code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 387
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/VersionInfoPb;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 388
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->tags:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 389
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 390
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->subsystem_time:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 391
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->traces:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 392
    iput v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->hashCode:I

    :cond_3
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 3

    .line 307
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;-><init>()V

    .line 308
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->root_span_id:J

    iput-wide v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->root_span_id:J

    .line 309
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->parent_span_id:J

    iput-wide v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->parent_span_id:J

    .line 310
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->current_span_id:J

    iput-wide v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->current_span_id:J

    .line 311
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->action_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->action_id:Ljava/lang/String;

    .line 312
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_cluster:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->apiori_cluster:Ljava/lang/String;

    .line 313
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_info:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->apiori_info:Ljava/lang/String;

    .line 314
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    .line 315
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->livemode:Lcom/stripe/proto/model/common/Livemode;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->livemode:Lcom/stripe/proto/model/common/Livemode;

    .line 316
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->start_time_ms:J

    iput-wide v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->start_time_ms:J

    .line 317
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->total_time_ms:J

    iput-wide v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->total_time_ms:J

    .line 318
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->service:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->service:Ljava/lang/String;

    .line 319
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->method:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->method:Ljava/lang/String;

    .line 320
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->request:Ljava/lang/String;

    .line 321
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_request:Lokio/ByteString;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->raw_request:Lokio/ByteString;

    .line 322
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->response:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->response:Ljava/lang/String;

    .line 323
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_response:Lokio/ByteString;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->raw_response:Lokio/ByteString;

    .line 324
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->exception:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->exception:Ljava/lang/String;

    .line 325
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->status_code:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->status_code:Ljava/lang/String;

    .line 326
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 327
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->tags:Ljava/util/Map;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->tags:Ljava/util/Map;

    .line 328
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    .line 329
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->subsystem_time:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->subsystem_time:Ljava/util/List;

    .line 330
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->traces:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->traces:Ljava/util/List;

    .line 331
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 399
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "root_span_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->root_span_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parent_span_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->parent_span_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "current_span_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->current_span_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->action_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "apiori_cluster="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_cluster:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "apiori_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->apiori_info:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "livemode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->livemode:Lcom/stripe/proto/model/common/Livemode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start_time_ms="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->start_time_ms:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "total_time_ms="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->total_time_ms:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "service="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->service:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->method:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->request:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "raw_request="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_request:Lokio/ByteString;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "response="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->response:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "raw_response="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->raw_response:Lokio/ByteString;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->exception:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status_code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->status_code:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "version_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->tags:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tags="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->tags:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_2
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "additional_context="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_3
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->subsystem_time:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "subsystem_time="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->subsystem_time:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_4
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->traces:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "traces="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->traces:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_5
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ReportedSpanPb{"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
