.class public final Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ProxySpanPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProxySpanPb.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProxySpanPb.kt\ncom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,268:1\n463#2,7:269\n1#3:276\n*S KotlinDebug\n*F\n+ 1 ProxySpanPb.kt\ncom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb$Companion$ADAPTER$1\n*L\n235#1:269,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;",
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
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 199
    const-string v6, "src/proto/com/stripe/terminal/clientlogger/pub/api/client_logger_service.proto"

    .line 193
    const-string v3, "type.googleapis.com/com.stripe.terminal.clientlogger.pub.api.ProxySpanPb"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;
    .locals 14

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    const-string v2, ""

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v3

    move-object v6, v5

    move-object v3, v4

    .line 271
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    const/4 v8, 0x4

    if-eq v7, v8, :cond_1

    const/4 v8, 0x5

    if-eq v7, v8, :cond_0

    .line 242
    invoke-virtual {p1, v7}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 241
    :cond_0
    sget-object v6, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 240
    :cond_1
    sget-object v5, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 239
    :cond_2
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 238
    :cond_3
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 237
    :cond_4
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 275
    :cond_5
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v13

    .line 245
    new-instance v7, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;

    .line 246
    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 247
    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    .line 248
    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    .line 249
    move-object v11, v5

    check-cast v11, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    .line 250
    move-object v12, v6

    check-cast v12, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;

    .line 245
    invoke-direct/range {v7 .. v13}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;Lokio/ByteString;)V

    return-object v7
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 193
    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->origin_role:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->origin_role:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 213
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->origin_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->origin_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 214
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->origin_ip:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->origin_ip:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 215
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->trace:Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->trace:Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 216
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->client_summary:Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->client_summary:Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 217
    :cond_4
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 193
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 222
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->client_summary:Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->client_summary:Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 223
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->trace:Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->trace:Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 224
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->origin_ip:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->origin_ip:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 225
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->origin_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->origin_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 226
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->origin_role:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->origin_role:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 193
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 203
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->origin_role:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->origin_role:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 204
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->origin_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->origin_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 205
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->origin_ip:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->origin_ip:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 206
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->trace:Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->trace:Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->client_summary:Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->client_summary:Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_4
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 193
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;
    .locals 11

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v0, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->trace:Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v1

    .line 257
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->client_summary:Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;

    :cond_1
    move-object v7, v1

    .line 258
    sget-object v8, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    .line 255
    invoke-static/range {v2 .. v10}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 193
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;

    move-result-object p1

    return-object p1
.end method
