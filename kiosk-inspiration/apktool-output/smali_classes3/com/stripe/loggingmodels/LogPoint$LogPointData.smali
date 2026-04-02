.class final Lcom/stripe/loggingmodels/LogPoint$LogPointData;
.super Ljava/lang/Object;
.source "LogPoint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/loggingmodels/LogPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LogPointData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B!\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u0008\u001a\u00020\tJ\u0008\u0010\n\u001a\u00020\u000bH\u0007J\u0006\u0010\u000c\u001a\u00020\rR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/LogPoint$LogPointData;",
        "",
        "message",
        "",
        "exception",
        "logLevel",
        "",
        "(Lcom/stripe/loggingmodels/LogPoint;Ljava/lang/String;Ljava/lang/String;I)V",
        "toClientLoggerProto",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$LogPoint;",
        "toGatorProto",
        "Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;",
        "toLegacyTraceProto",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;",
        "public_release"
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
.field private final exception:Ljava/lang/String;

.field private final logLevel:I

.field private final message:Ljava/lang/String;

.field final synthetic this$0:Lcom/stripe/loggingmodels/LogPoint;


# direct methods
.method public constructor <init>(Lcom/stripe/loggingmodels/LogPoint;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/stripe/loggingmodels/LogPoint$LogPointData;->this$0:Lcom/stripe/loggingmodels/LogPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/stripe/loggingmodels/LogPoint$LogPointData;->message:Ljava/lang/String;

    .line 53
    iput p4, p0, Lcom/stripe/loggingmodels/LogPoint$LogPointData;->logLevel:I

    if-eqz p3, :cond_0

    .line 55
    invoke-static {p3}, Lcom/stripe/strings/StringsExtKt;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/stripe/loggingmodels/LogPoint$LogPointData;->exception:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toClientLoggerProto()Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$LogPoint;
    .locals 8

    .line 67
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$LogPoint;

    .line 68
    iget v1, p0, Lcom/stripe/loggingmodels/LogPoint$LogPointData;->logLevel:I

    .line 69
    iget-object v2, p0, Lcom/stripe/loggingmodels/LogPoint$LogPointData;->message:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    .line 70
    :cond_0
    iget-object v4, p0, Lcom/stripe/loggingmodels/LogPoint$LogPointData;->exception:Ljava/lang/String;

    if-nez v4, :cond_1

    move-object v4, v3

    :cond_1
    const/16 v6, 0x12

    const/4 v7, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 67
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$LogPoint;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final toGatorProto()Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;
    .locals 8
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated data type. Should be migrated to clientlogger"
    .end annotation

    .line 59
    new-instance v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;

    .line 60
    iget v1, p0, Lcom/stripe/loggingmodels/LogPoint$LogPointData;->logLevel:I

    .line 61
    iget-object v2, p0, Lcom/stripe/loggingmodels/LogPoint$LogPointData;->message:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    .line 62
    :cond_0
    iget-object v4, p0, Lcom/stripe/loggingmodels/LogPoint$LogPointData;->exception:Ljava/lang/String;

    if-nez v4, :cond_1

    move-object v4, v3

    :cond_1
    const/16 v6, 0x12

    const/4 v7, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 59
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final toLegacyTraceProto()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;
    .locals 8

    .line 75
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;

    .line 76
    iget v1, p0, Lcom/stripe/loggingmodels/LogPoint$LogPointData;->logLevel:I

    .line 77
    iget-object v2, p0, Lcom/stripe/loggingmodels/LogPoint$LogPointData;->message:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    .line 78
    :cond_0
    iget-object v4, p0, Lcom/stripe/loggingmodels/LogPoint$LogPointData;->exception:Ljava/lang/String;

    if-nez v4, :cond_1

    move-object v4, v3

    :cond_1
    const/16 v6, 0x12

    const/4 v7, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 75
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
