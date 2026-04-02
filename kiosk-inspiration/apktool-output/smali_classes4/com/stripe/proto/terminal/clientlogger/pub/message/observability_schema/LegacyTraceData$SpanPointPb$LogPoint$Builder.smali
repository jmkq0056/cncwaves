.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "LegacyTraceData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;",
        "()V",
        "exception",
        "",
        "log_level",
        "",
        "message",
        "tag",
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
.field public exception:Ljava/lang/String;

.field public log_level:I

.field public message:Ljava/lang/String;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1359
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 1364
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;->tag:Ljava/lang/String;

    .line 1367
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;->message:Ljava/lang/String;

    .line 1370
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;->exception:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1359
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;
    .locals 6

    .line 1404
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;

    .line 1405
    iget v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;->log_level:I

    .line 1406
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;->tag:Ljava/lang/String;

    .line 1407
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;->message:Ljava/lang/String;

    .line 1408
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;->exception:Ljava/lang/String;

    .line 1409
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 1404
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final exception(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1400
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;->exception:Ljava/lang/String;

    return-object p0
.end method

.method public final log_level(I)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;
    .locals 0

    .line 1376
    iput p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;->log_level:I

    return-object p0
.end method

.method public final message(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1392
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final tag(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1384
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method
