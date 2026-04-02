.class public final Lcom/stripe/loggingmodels/MeterPoint;
.super Ljava/lang/Object;
.source "MeterPoint.kt"

# interfaces
.implements Lcom/stripe/loggingmodels/SpanPoint;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0011\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0001H\u0096\u0002J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00d6\u0001J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0017J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\t\u0010\u001f\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/loggingmodels/MeterPoint;",
        "Lcom/stripe/loggingmodels/SpanPoint;",
        "eventName",
        "",
        "offsetMs",
        "",
        "elapsedMs",
        "",
        "(Ljava/lang/String;IJ)V",
        "getElapsedMs",
        "()J",
        "getEventName",
        "()Ljava/lang/String;",
        "getOffsetMs",
        "()I",
        "compareTo",
        "other",
        "component1",
        "component2",
        "component3",
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
.field private final elapsedMs:J

.field private final eventName:Ljava/lang/String;

.field private final offsetMs:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/stripe/loggingmodels/MeterPoint;->eventName:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/stripe/loggingmodels/MeterPoint;->offsetMs:I

    .line 10
    iput-wide p3, p0, Lcom/stripe/loggingmodels/MeterPoint;->elapsedMs:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/loggingmodels/MeterPoint;Ljava/lang/String;IJILjava/lang/Object;)Lcom/stripe/loggingmodels/MeterPoint;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/stripe/loggingmodels/MeterPoint;->eventName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/stripe/loggingmodels/MeterPoint;->offsetMs:I

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-wide p3, p0, Lcom/stripe/loggingmodels/MeterPoint;->elapsedMs:J

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/loggingmodels/MeterPoint;->copy(Ljava/lang/String;IJ)Lcom/stripe/loggingmodels/MeterPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/stripe/loggingmodels/SpanPoint;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/stripe/loggingmodels/MeterPoint;->getOffsetMs()I

    move-result v0

    invoke-interface {p1}, Lcom/stripe/loggingmodels/SpanPoint;->getOffsetMs()I

    move-result p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 7
    check-cast p1, Lcom/stripe/loggingmodels/SpanPoint;

    invoke-virtual {p0, p1}, Lcom/stripe/loggingmodels/MeterPoint;->compareTo(Lcom/stripe/loggingmodels/SpanPoint;)I

    move-result p1

    return p1
.end method

.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/loggingmodels/MeterPoint;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/stripe/loggingmodels/MeterPoint;->offsetMs:I

    return v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/loggingmodels/MeterPoint;->elapsedMs:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;IJ)Lcom/stripe/loggingmodels/MeterPoint;
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/loggingmodels/MeterPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/loggingmodels/MeterPoint;-><init>(Ljava/lang/String;IJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/loggingmodels/MeterPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/loggingmodels/MeterPoint;

    iget-object v1, p0, Lcom/stripe/loggingmodels/MeterPoint;->eventName:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/loggingmodels/MeterPoint;->eventName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/stripe/loggingmodels/MeterPoint;->offsetMs:I

    iget v3, p1, Lcom/stripe/loggingmodels/MeterPoint;->offsetMs:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/stripe/loggingmodels/MeterPoint;->elapsedMs:J

    iget-wide v5, p1, Lcom/stripe/loggingmodels/MeterPoint;->elapsedMs:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getElapsedMs()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/stripe/loggingmodels/MeterPoint;->elapsedMs:J

    return-wide v0
.end method

.method public final getEventName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/stripe/loggingmodels/MeterPoint;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getOffsetMs()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/stripe/loggingmodels/MeterPoint;->offsetMs:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/loggingmodels/MeterPoint;->eventName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/loggingmodels/MeterPoint;->offsetMs:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/stripe/loggingmodels/MeterPoint;->elapsedMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toClientLoggerProto()Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;
    .locals 9

    .line 24
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;

    .line 25
    invoke-virtual {p0}, Lcom/stripe/loggingmodels/MeterPoint;->getOffsetMs()I

    move-result v1

    .line 26
    new-instance v2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$MeterPoint;

    .line 27
    iget-object v3, p0, Lcom/stripe/loggingmodels/MeterPoint;->eventName:Ljava/lang/String;

    .line 28
    iget-wide v4, p0, Lcom/stripe/loggingmodels/MeterPoint;->elapsedMs:J

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 26
    invoke-direct/range {v2 .. v8}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$MeterPoint;-><init>(Ljava/lang/String;JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v5, 0xa

    move-object v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;-><init>(ILcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$LogPoint;Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb$MeterPoint;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public toGatorProto()Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;
    .locals 9
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated data type. Should be migrated to clientlogger"
    .end annotation

    .line 14
    new-instance v0, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;

    .line 15
    invoke-virtual {p0}, Lcom/stripe/loggingmodels/MeterPoint;->getOffsetMs()I

    move-result v1

    .line 16
    new-instance v2, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;

    .line 17
    iget-object v3, p0, Lcom/stripe/loggingmodels/MeterPoint;->eventName:Ljava/lang/String;

    .line 18
    iget-wide v4, p0, Lcom/stripe/loggingmodels/MeterPoint;->elapsedMs:J

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 16
    invoke-direct/range {v2 .. v8}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;-><init>(Ljava/lang/String;JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v5, 0xa

    move-object v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb;-><init>(ILcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$LogPoint;Lcom/stripe/proto/api/gator/ReportedSpanPb$SpanPointPb$MeterPoint;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public toLegacyTraceProto()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb;
    .locals 9

    .line 34
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb;

    .line 35
    invoke-virtual {p0}, Lcom/stripe/loggingmodels/MeterPoint;->getOffsetMs()I

    move-result v1

    .line 36
    new-instance v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$MeterPoint;

    .line 37
    iget-object v3, p0, Lcom/stripe/loggingmodels/MeterPoint;->eventName:Ljava/lang/String;

    .line 38
    iget-wide v4, p0, Lcom/stripe/loggingmodels/MeterPoint;->elapsedMs:J

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 36
    invoke-direct/range {v2 .. v8}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$MeterPoint;-><init>(Ljava/lang/String;JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v5, 0xa

    move-object v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 34
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb;-><init>(ILcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$LogPoint;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/LegacyTraceData$SpanPointPb$MeterPoint;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MeterPoint(eventName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/loggingmodels/MeterPoint;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offsetMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/loggingmodels/MeterPoint;->offsetMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", elapsedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/stripe/loggingmodels/MeterPoint;->elapsedMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
