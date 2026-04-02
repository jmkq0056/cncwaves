.class public final Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ReportedSpanPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReportedSpanPb.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReportedSpanPb.kt\ncom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,1684:1\n463#2,7:1685\n*S KotlinDebug\n*F\n+ 1 ReportedSpanPb.kt\ncom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb$Companion$ADAPTER$1\n*L\n1085#1:1685,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;",
        "decode",
        "reader",
        "Lcom/squareup/wire/ProtoReader;",
        "encode",
        "",
        "writer",
        "Lcom/squareup/wire/ProtoWriter;",
        "value",
        "Lcom/squareup/wire/ReverseProtoWriter;",
        "encodedSize",
        "",
        "redact",
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


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 1057
    const-string v6, "src/proto/com/stripe/terminal/clientlogger/pub/api/client_logger_service.proto"

    .line 1051
    const-string v3, "type.googleapis.com/com.stripe.terminal.clientlogger.pub.api.ReportedSpanPb.SubsystemTimePb"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;
    .locals 10

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1685
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    const-string v2, ""

    const-wide/16 v3, 0x0

    move-wide v5, v3

    move-wide v7, v5

    .line 1687
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 1090
    invoke-virtual {p1, v3}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 1089
    :cond_0
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    move-wide v7, v3

    goto :goto_0

    .line 1088
    :cond_1
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    move-wide v5, v3

    goto :goto_0

    .line 1087
    :cond_2
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1691
    :cond_3
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v9

    .line 1093
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;

    .line 1094
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 1093
    invoke-direct/range {v3 .. v9}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;-><init>(Ljava/lang/String;JJLokio/ByteString;)V

    return-object v3
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 1051
    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->subsystem:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->subsystem:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1069
    :cond_0
    iget-wide v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1070
    :cond_1
    iget-wide v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->calls:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->calls:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1071
    :cond_2
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1051
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 1076
    iget-wide v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->calls:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->calls:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1077
    :cond_0
    iget-wide v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->time:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1078
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->subsystem:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->subsystem:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1051
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;)I
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 1061
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->subsystem:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->subsystem:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1062
    :cond_0
    iget-wide v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->time:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->time:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1063
    :cond_1
    iget-wide v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->calls:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->calls:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 1051
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;
    .locals 10

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    sget-object v7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p1

    .line 1101
    invoke-static/range {v1 .. v9}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;->copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;Ljava/lang/String;JJLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1051
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SubsystemTimePb;

    move-result-object p1

    return-object p1
.end method
