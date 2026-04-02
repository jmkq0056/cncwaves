.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "LegacyTraceData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u0008\u0010$\u001a\u00020\u0002H\u0016J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\tJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005J\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0005J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\tJ\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0005J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\tJ\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0005J\u0014\u0010\u001a\u001a\u00020\u00002\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bJ\u001a\u0010\u001d\u001a\u00020\u00002\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u001eJ\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\tJ\u0014\u0010 \u001a\u00020\u00002\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u001bJ\u0010\u0010\"\u001a\u00020\u00002\u0008\u0010\"\u001a\u0004\u0018\u00010#R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u001e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001f\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;",
        "()V",
        "action_id",
        "",
        "apiori_cluster",
        "apiori_info",
        "current_span_id",
        "",
        "exception",
        "livemode",
        "Lcom/stripe/proto/model/common/Livemode;",
        "method",
        "parent_span_id",
        "raw_request",
        "Lokio/ByteString;",
        "raw_response",
        "request",
        "request_info",
        "Lcom/stripe/proto/model/trace/RequestInfoPb;",
        "response",
        "root_span_id",
        "service",
        "start_time_ms",
        "status_code",
        "subsystem_time",
        "",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SubsystemTimePb;",
        "tags",
        "",
        "total_time_ms",
        "traces",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb;",
        "version_info",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "build",
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


# instance fields
.field public action_id:Ljava/lang/String;

.field public apiori_cluster:Ljava/lang/String;

.field public apiori_info:Ljava/lang/String;

.field public current_span_id:J

.field public exception:Ljava/lang/String;

.field public livemode:Lcom/stripe/proto/model/common/Livemode;

.field public method:Ljava/lang/String;

.field public parent_span_id:J

.field public raw_request:Lokio/ByteString;

.field public raw_response:Lokio/ByteString;

.field public request:Ljava/lang/String;

.field public request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

.field public response:Ljava/lang/String;

.field public root_span_id:J

.field public service:Ljava/lang/String;

.field public start_time_ms:J

.field public status_code:Ljava/lang/String;

.field public subsystem_time:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SubsystemTimePb;",
            ">;"
        }
    .end annotation
.end field

.field public tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public total_time_ms:J

.field public traces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb;",
            ">;"
        }
    .end annotation
.end field

.field public version_info:Lcom/stripe/proto/model/common/VersionInfoPb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 432
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 443
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->action_id:Ljava/lang/String;

    .line 446
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->apiori_cluster:Ljava/lang/String;

    .line 449
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->apiori_info:Ljava/lang/String;

    .line 455
    sget-object v1, Lcom/stripe/proto/model/common/Livemode;->TRUE:Lcom/stripe/proto/model/common/Livemode;

    iput-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->livemode:Lcom/stripe/proto/model/common/Livemode;

    .line 464
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->service:Ljava/lang/String;

    .line 467
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->method:Ljava/lang/String;

    .line 470
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->request:Ljava/lang/String;

    .line 473
    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->raw_request:Lokio/ByteString;

    .line 476
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->response:Ljava/lang/String;

    .line 479
    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->raw_response:Lokio/ByteString;

    .line 482
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->exception:Ljava/lang/String;

    .line 485
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->status_code:Ljava/lang/String;

    .line 491
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->tags:Ljava/util/Map;

    .line 494
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->subsystem_time:Ljava/util/List;

    .line 497
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->traces:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final action_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 1

    const-string v0, "action_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->action_id:Ljava/lang/String;

    return-object p0
.end method

.method public final apiori_cluster(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 1

    const-string v0, "apiori_cluster"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->apiori_cluster:Ljava/lang/String;

    return-object p0
.end method

.method public final apiori_info(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 1

    const-string v0, "apiori_info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->apiori_info:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 432
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;
    .locals 35

    move-object/from16 v0, p0

    .line 666
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;

    .line 667
    iget-wide v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->root_span_id:J

    .line 668
    iget-wide v4, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->parent_span_id:J

    .line 669
    iget-wide v6, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->current_span_id:J

    .line 670
    iget-object v8, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->action_id:Ljava/lang/String;

    .line 671
    iget-object v9, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->apiori_cluster:Ljava/lang/String;

    .line 672
    iget-object v10, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->apiori_info:Ljava/lang/String;

    .line 673
    iget-object v11, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    .line 674
    iget-object v12, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->livemode:Lcom/stripe/proto/model/common/Livemode;

    .line 675
    iget-wide v13, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->start_time_ms:J

    move-object v15, v1

    move-wide/from16 v16, v2

    .line 676
    iget-wide v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->total_time_ms:J

    .line 677
    iget-object v3, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->service:Ljava/lang/String;

    move-wide/from16 v18, v1

    .line 678
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->method:Ljava/lang/String;

    .line 679
    iget-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->request:Ljava/lang/String;

    move-object/from16 v20, v1

    .line 680
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->raw_request:Lokio/ByteString;

    move-object/from16 v21, v1

    .line 681
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->response:Ljava/lang/String;

    move-object/from16 v22, v1

    .line 682
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->raw_response:Lokio/ByteString;

    move-object/from16 v23, v1

    .line 683
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->exception:Ljava/lang/String;

    move-object/from16 v24, v1

    .line 684
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->status_code:Ljava/lang/String;

    move-object/from16 v25, v1

    .line 685
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    move-object/from16 v26, v1

    .line 686
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->tags:Ljava/util/Map;

    move-object/from16 v27, v1

    .line 687
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->subsystem_time:Ljava/util/List;

    move-object/from16 v28, v1

    .line 688
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->traces:Ljava/util/List;

    .line 689
    invoke-virtual {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v29

    move-object/from16 v30, v28

    move-object/from16 v28, v1

    move-object v1, v15

    move-wide/from16 v31, v18

    move-object/from16 v19, v2

    move-object/from16 v18, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v30

    move-wide/from16 v33, v16

    move-object/from16 v17, v3

    move-wide/from16 v2, v33

    move-wide/from16 v15, v31

    .line 666
    invoke-direct/range {v1 .. v29}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/Livemode;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V

    move-object v15, v1

    return-object v15
.end method

.method public final current_span_id(J)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 0

    .line 519
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->current_span_id:J

    return-object p0
.end method

.method public final exception(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->exception:Ljava/lang/String;

    return-object p0
.end method

.method public final livemode(Lcom/stripe/proto/model/common/Livemode;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 1

    const-string v0, "livemode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->livemode:Lcom/stripe/proto/model/common/Livemode;

    return-object p0
.end method

.method public final method(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 1

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public final parent_span_id(J)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 0

    .line 511
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->parent_span_id:J

    return-object p0
.end method

.method public final raw_request(Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 1

    const-string v0, "raw_request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->raw_request:Lokio/ByteString;

    return-object p0
.end method

.method public final raw_response(Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 1

    const-string v0, "raw_response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->raw_response:Lokio/ByteString;

    return-object p0
.end method

.method public final request(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->request:Ljava/lang/String;

    return-object p0
.end method

.method public final request_info(Lcom/stripe/proto/model/trace/RequestInfoPb;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    return-object p0
.end method

.method public final response(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->response:Ljava/lang/String;

    return-object p0
.end method

.method public final root_span_id(J)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 0

    .line 503
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->root_span_id:J

    return-object p0
.end method

.method public final service(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->service:Ljava/lang/String;

    return-object p0
.end method

.method public final start_time_ms(J)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 0

    .line 567
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->start_time_ms:J

    return-object p0
.end method

.method public final status_code(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 1

    const-string v0, "status_code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->status_code:Ljava/lang/String;

    return-object p0
.end method

.method public final subsystem_time(Ljava/util/List;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SubsystemTimePb;",
            ">;)",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;"
        }
    .end annotation

    const-string v0, "subsystem_time"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 656
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->subsystem_time:Ljava/util/List;

    return-object p0
.end method

.method public final tags(Ljava/util/Map;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;"
        }
    .end annotation

    const-string v0, "tags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->tags:Ljava/util/Map;

    return-object p0
.end method

.method public final total_time_ms(J)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 0

    .line 575
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->total_time_ms:J

    return-object p0
.end method

.method public final traces(Ljava/util/List;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb;",
            ">;)",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;"
        }
    .end annotation

    const-string v0, "traces"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 662
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->traces:Ljava/util/List;

    return-object p0
.end method

.method public final version_info(Lcom/stripe/proto/model/common/VersionInfoPb;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$Builder;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    return-object p0
.end method
