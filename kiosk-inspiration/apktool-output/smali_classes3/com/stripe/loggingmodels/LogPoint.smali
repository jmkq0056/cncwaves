.class public final Lcom/stripe/loggingmodels/LogPoint;
.super Ljava/lang/Object;
.source "LogPoint.kt"

# interfaces
.implements Lcom/stripe/loggingmodels/SpanPoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/loggingmodels/LogPoint$LogPointData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001%B)\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0011\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0001H\u0096\u0002J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0008H\u00c6\u0003J5\u0010\u0019\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0008H\u00d6\u0001J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020!H\u0017J\u0008\u0010\"\u001a\u00020#H\u0016J\t\u0010$\u001a\u00020\u0003H\u00d6\u0001R\u0012\u0010\n\u001a\u00060\u000bR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/LogPoint;",
        "Lcom/stripe/loggingmodels/SpanPoint;",
        "message",
        "",
        "exception",
        "logLevel",
        "Lcom/stripe/loggingmodels/LogLevel;",
        "offsetMs",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;I)V",
        "data",
        "Lcom/stripe/loggingmodels/LogPoint$LogPointData;",
        "getException",
        "()Ljava/lang/String;",
        "getLogLevel",
        "()Lcom/stripe/loggingmodels/LogLevel;",
        "getMessage",
        "getOffsetMs",
        "()I",
        "compareTo",
        "other",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "",
        "hashCode",
        "toClientLoggerProto",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;",
        "toGatorProto",
        "Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;",
        "toLegacyTraceProto",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb;",
        "toString",
        "LogPointData",
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
.field private final data:Lcom/stripe/loggingmodels/LogPoint$LogPointData;

.field private final exception:Ljava/lang/String;

.field private final logLevel:Lcom/stripe/loggingmodels/LogLevel;

.field private final message:Ljava/lang/String;

.field private final offsetMs:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;I)V
    .locals 1

    const-string v0, "logLevel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/stripe/loggingmodels/LogPoint;->message:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/stripe/loggingmodels/LogPoint;->exception:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/stripe/loggingmodels/LogPoint;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    .line 16
    iput p4, p0, Lcom/stripe/loggingmodels/LogPoint;->offsetMs:I

    .line 19
    new-instance p4, Lcom/stripe/loggingmodels/LogPoint$LogPointData;

    invoke-static {p3}, Lcom/stripe/loggingmodels/LogLevelHelperKt;->importance(Lcom/stripe/loggingmodels/LogLevel;)I

    move-result p3

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/stripe/loggingmodels/LogPoint$LogPointData;-><init>(Lcom/stripe/loggingmodels/LogPoint;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/stripe/loggingmodels/LogPoint;->data:Lcom/stripe/loggingmodels/LogPoint$LogPointData;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/loggingmodels/LogPoint;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;IILjava/lang/Object;)Lcom/stripe/loggingmodels/LogPoint;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/stripe/loggingmodels/LogPoint;->message:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/stripe/loggingmodels/LogPoint;->exception:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/stripe/loggingmodels/LogPoint;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/stripe/loggingmodels/LogPoint;->offsetMs:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/loggingmodels/LogPoint;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;I)Lcom/stripe/loggingmodels/LogPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/stripe/loggingmodels/SpanPoint;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/stripe/loggingmodels/LogPoint;->getOffsetMs()I

    move-result v0

    invoke-interface {p1}, Lcom/stripe/loggingmodels/SpanPoint;->getOffsetMs()I

    move-result p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/stripe/loggingmodels/SpanPoint;

    invoke-virtual {p0, p1}, Lcom/stripe/loggingmodels/LogPoint;->compareTo(Lcom/stripe/loggingmodels/SpanPoint;)I

    move-result p1

    return p1
.end method

.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/loggingmodels/LogPoint;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/loggingmodels/LogPoint;->exception:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/stripe/loggingmodels/LogLevel;
    .locals 1

    iget-object v0, p0, Lcom/stripe/loggingmodels/LogPoint;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/stripe/loggingmodels/LogPoint;->offsetMs:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;I)Lcom/stripe/loggingmodels/LogPoint;
    .locals 1

    const-string v0, "logLevel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/loggingmodels/LogPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/loggingmodels/LogPoint;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/loggingmodels/LogPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/loggingmodels/LogPoint;

    iget-object v1, p0, Lcom/stripe/loggingmodels/LogPoint;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/loggingmodels/LogPoint;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/loggingmodels/LogPoint;->exception:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/loggingmodels/LogPoint;->exception:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/loggingmodels/LogPoint;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    iget-object v3, p1, Lcom/stripe/loggingmodels/LogPoint;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/stripe/loggingmodels/LogPoint;->offsetMs:I

    iget p1, p1, Lcom/stripe/loggingmodels/LogPoint;->offsetMs:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getException()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/loggingmodels/LogPoint;->exception:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogLevel()Lcom/stripe/loggingmodels/LogLevel;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/loggingmodels/LogPoint;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/loggingmodels/LogPoint;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOffsetMs()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/stripe/loggingmodels/LogPoint;->offsetMs:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/loggingmodels/LogPoint;->message:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/loggingmodels/LogPoint;->exception:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/loggingmodels/LogPoint;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    invoke-virtual {v1}, Lcom/stripe/loggingmodels/LogLevel;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/loggingmodels/LogPoint;->offsetMs:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toClientLoggerProto()Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;
    .locals 7

    .line 30
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;

    .line 31
    invoke-virtual {p0}, Lcom/stripe/loggingmodels/LogPoint;->getOffsetMs()I

    move-result v1

    .line 32
    iget-object v2, p0, Lcom/stripe/loggingmodels/LogPoint;->data:Lcom/stripe/loggingmodels/LogPoint$LogPointData;

    invoke-virtual {v2}, Lcom/stripe/loggingmodels/LogPoint$LogPointData;->toClientLoggerProto()Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$LogPoint;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 30
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;-><init>(ILcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$LogPoint;Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$MeterPoint;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public toGatorProto()Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;
    .locals 7
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated data type. Should be migrated to clientlogger"
    .end annotation

    .line 23
    new-instance v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;

    .line 24
    invoke-virtual {p0}, Lcom/stripe/loggingmodels/LogPoint;->getOffsetMs()I

    move-result v1

    .line 25
    iget-object v2, p0, Lcom/stripe/loggingmodels/LogPoint;->data:Lcom/stripe/loggingmodels/LogPoint$LogPointData;

    invoke-virtual {v2}, Lcom/stripe/loggingmodels/LogPoint$LogPointData;->toGatorProto()Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 23
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;-><init>(ILcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public toLegacyTraceProto()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb;
    .locals 7

    .line 37
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb;

    .line 38
    invoke-virtual {p0}, Lcom/stripe/loggingmodels/LogPoint;->getOffsetMs()I

    move-result v1

    .line 39
    iget-object v2, p0, Lcom/stripe/loggingmodels/LogPoint;->data:Lcom/stripe/loggingmodels/LogPoint$LogPointData;

    invoke-virtual {v2}, Lcom/stripe/loggingmodels/LogPoint$LogPointData;->toLegacyTraceProto()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 37
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb;-><init>(ILcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$MeterPoint;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogPoint(message="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/loggingmodels/LogPoint;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/loggingmodels/LogPoint;->exception:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/loggingmodels/LogPoint;->logLevel:Lcom/stripe/loggingmodels/LogLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offsetMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/loggingmodels/LogPoint;->offsetMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
