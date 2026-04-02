.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "Metadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMetadata.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Metadata.kt\ncom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,261:1\n463#2,7:262\n*S KotlinDebug\n*F\n+ 1 Metadata.kt\ncom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Companion$ADAPTER$1\n*L\n178#1:262,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;",
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
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 150
    const-string v6, "src/proto/com/stripe/terminal/clientlogger/pub/message/observability_schema/observability_schema_model.proto"

    .line 144
    const-string v3, "type.googleapis.com/com.stripe.terminal.clientlogger.pub.message.observability_schema.Metadata"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;
    .locals 13

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;->LEVEL_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;

    .line 262
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-string v5, ""

    move-wide v11, v3

    move-object v4, v5

    move-wide v5, v11

    :goto_0
    move-object v3, v0

    .line 264
    :goto_1
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v7

    const/4 v0, -0x1

    if-eq v7, v0, :cond_3

    const/4 v0, 0x1

    if-eq v7, v0, :cond_2

    const/4 v0, 0x2

    if-eq v7, v0, :cond_1

    const/4 v0, 0x3

    if-eq v7, v0, :cond_0

    .line 187
    invoke-virtual {p1, v7}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_1

    .line 186
    :cond_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    .line 182
    :cond_1
    :try_start_0
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 184
    sget-object v8, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v9, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v7, v8, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 180
    :cond_2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    goto :goto_1

    .line 268
    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v9

    move-object p1, v4

    .line 190
    new-instance v4, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;

    .line 192
    move-object v7, v3

    check-cast v7, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;

    .line 193
    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    .line 190
    invoke-direct/range {v4 .. v9}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;-><init>(JLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;Ljava/lang/String;Lokio/ByteString;)V

    return-object v4
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-wide v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->client_timestamp_ms:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->client_timestamp_ms:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 162
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->level:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;->LEVEL_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->level:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 163
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->logger_name:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->logger_name:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 164
    :cond_2
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 144
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 169
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->logger_name:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->logger_name:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 170
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->level:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;->LEVEL_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->level:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 171
    :cond_1
    iget-wide v0, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->client_timestamp_ms:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->client_timestamp_ms:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 144
    check-cast p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 154
    iget-wide v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->client_timestamp_ms:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->client_timestamp_ms:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->level:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;

    sget-object v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;->LEVEL_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->level:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->logger_name:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->logger_name:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 144
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;
    .locals 9

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    sget-object v6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 198
    invoke-static/range {v1 .. v8}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;->copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;JLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 144
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;

    move-result-object p1

    return-object p1
.end method
