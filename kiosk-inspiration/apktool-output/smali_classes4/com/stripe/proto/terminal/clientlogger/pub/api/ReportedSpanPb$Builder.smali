.class public final Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReportedSpanPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u0008\u0010&\u001a\u00020\u0002H\u0016J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000bJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0005J\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0005J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u000bJ\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0005J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u000bJ\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0005J\u0014\u0010\u001c\u001a\u00020\u00002\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dJ\u001a\u0010\u001f\u001a\u00020\u00002\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050 J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u000bJ\u0014\u0010\"\u001a\u00020\u00002\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\u001dJ\u0010\u0010$\u001a\u00020\u00002\u0008\u0010$\u001a\u0004\u0018\u00010%R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050 8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;",
        "()V",
        "action_id",
        "",
        "additional_context",
        "Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;",
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
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;",
        "tags",
        "",
        "total_time_ms",
        "traces",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;",
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

.field public additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

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
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;",
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
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;",
            ">;"
        }
    .end annotation
.end field

.field public version_info:Lcom/stripe/proto/model/common/VersionInfoPb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 452
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 463
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->action_id:Ljava/lang/String;

    .line 466
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->apiori_cluster:Ljava/lang/String;

    .line 469
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->apiori_info:Ljava/lang/String;

    .line 475
    sget-object v1, Lcom/stripe/proto/model/common/Livemode;->TRUE:Lcom/stripe/proto/model/common/Livemode;

    iput-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->livemode:Lcom/stripe/proto/model/common/Livemode;

    .line 484
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->service:Ljava/lang/String;

    .line 487
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->method:Ljava/lang/String;

    .line 490
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->request:Ljava/lang/String;

    .line 493
    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->raw_request:Lokio/ByteString;

    .line 496
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->response:Ljava/lang/String;

    .line 499
    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->raw_response:Lokio/ByteString;

    .line 502
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->exception:Ljava/lang/String;

    .line 505
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->status_code:Ljava/lang/String;

    .line 511
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->tags:Ljava/util/Map;

    .line 517
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->subsystem_time:Ljava/util/List;

    .line 520
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->traces:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final action_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 1

    const-string v0, "action_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->action_id:Ljava/lang/String;

    return-object p0
.end method

.method public final additional_context(Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 0

    .line 683
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    return-object p0
.end method

.method public final apiori_cluster(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 1

    const-string v0, "apiori_cluster"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->apiori_cluster:Ljava/lang/String;

    return-object p0
.end method

.method public final apiori_info(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 1

    const-string v0, "apiori_info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->apiori_info:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 452
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;
    .locals 36

    move-object/from16 v0, p0

    .line 699
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    .line 700
    iget-wide v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->root_span_id:J

    .line 701
    iget-wide v4, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->parent_span_id:J

    .line 702
    iget-wide v6, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->current_span_id:J

    .line 703
    iget-object v8, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->action_id:Ljava/lang/String;

    .line 704
    iget-object v9, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->apiori_cluster:Ljava/lang/String;

    .line 705
    iget-object v10, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->apiori_info:Ljava/lang/String;

    .line 706
    iget-object v11, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    .line 707
    iget-object v12, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->livemode:Lcom/stripe/proto/model/common/Livemode;

    .line 708
    iget-wide v13, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->start_time_ms:J

    move-object v15, v1

    move-wide/from16 v16, v2

    .line 709
    iget-wide v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->total_time_ms:J

    .line 710
    iget-object v3, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->service:Ljava/lang/String;

    move-wide/from16 v18, v1

    .line 711
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->method:Ljava/lang/String;

    .line 712
    iget-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->request:Ljava/lang/String;

    move-object/from16 v20, v1

    .line 713
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->raw_request:Lokio/ByteString;

    move-object/from16 v21, v1

    .line 714
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->response:Ljava/lang/String;

    move-object/from16 v22, v1

    .line 715
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->raw_response:Lokio/ByteString;

    move-object/from16 v23, v1

    .line 716
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->exception:Ljava/lang/String;

    move-object/from16 v24, v1

    .line 717
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->status_code:Ljava/lang/String;

    move-object/from16 v25, v1

    .line 718
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    move-object/from16 v26, v1

    .line 719
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->tags:Ljava/util/Map;

    move-object/from16 v27, v1

    .line 720
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->additional_context:Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    move-object/from16 v28, v1

    .line 721
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->subsystem_time:Ljava/util/List;

    move-object/from16 v29, v1

    .line 722
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->traces:Ljava/util/List;

    .line 723
    invoke-virtual {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v30

    move-object/from16 v31, v29

    move-object/from16 v29, v1

    move-object v1, v15

    move-wide/from16 v32, v18

    move-object/from16 v19, v2

    move-object/from16 v18, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v31

    move-wide/from16 v34, v16

    move-object/from16 v17, v3

    move-wide/from16 v2, v34

    move-wide/from16 v15, v32

    .line 699
    invoke-direct/range {v1 .. v30}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/Livemode;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V

    move-object v15, v1

    return-object v15
.end method

.method public final current_span_id(J)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 0

    .line 542
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->current_span_id:J

    return-object p0
.end method

.method public final exception(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->exception:Ljava/lang/String;

    return-object p0
.end method

.method public final livemode(Lcom/stripe/proto/model/common/Livemode;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 1

    const-string v0, "livemode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->livemode:Lcom/stripe/proto/model/common/Livemode;

    return-object p0
.end method

.method public final method(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 1

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public final parent_span_id(J)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 0

    .line 534
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->parent_span_id:J

    return-object p0
.end method

.method public final raw_request(Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 1

    const-string v0, "raw_request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->raw_request:Lokio/ByteString;

    return-object p0
.end method

.method public final raw_response(Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 1

    const-string v0, "raw_response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->raw_response:Lokio/ByteString;

    return-object p0
.end method

.method public final request(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->request:Ljava/lang/String;

    return-object p0
.end method

.method public final request_info(Lcom/stripe/proto/model/trace/RequestInfoPb;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    return-object p0
.end method

.method public final response(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->response:Ljava/lang/String;

    return-object p0
.end method

.method public final root_span_id(J)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 0

    .line 526
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->root_span_id:J

    return-object p0
.end method

.method public final service(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->service:Ljava/lang/String;

    return-object p0
.end method

.method public final start_time_ms(J)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 0

    .line 590
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->start_time_ms:J

    return-object p0
.end method

.method public final status_code(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 1

    const-string v0, "status_code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 656
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->status_code:Ljava/lang/String;

    return-object p0
.end method

.method public final subsystem_time(Ljava/util/List;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;",
            ">;)",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;"
        }
    .end annotation

    const-string v0, "subsystem_time"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 689
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->subsystem_time:Ljava/util/List;

    return-object p0
.end method

.method public final tags(Ljava/util/Map;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;"
        }
    .end annotation

    const-string v0, "tags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->tags:Ljava/util/Map;

    return-object p0
.end method

.method public final total_time_ms(J)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 0

    .line 598
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->total_time_ms:J

    return-object p0
.end method

.method public final traces(Ljava/util/List;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;",
            ">;)",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;"
        }
    .end annotation

    const-string v0, "traces"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 694
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 695
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->traces:Ljava/util/List;

    return-object p0
.end method

.method public final version_info(Lcom/stripe/proto/model/common/VersionInfoPb;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;
    .locals 0

    .line 664
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$Builder;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    return-object p0
.end method
