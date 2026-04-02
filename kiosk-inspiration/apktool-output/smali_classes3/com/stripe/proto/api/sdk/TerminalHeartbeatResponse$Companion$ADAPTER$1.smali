.class public final Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "TerminalHeartbeatResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTerminalHeartbeatResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TerminalHeartbeatResponse.kt\ncom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,360:1\n463#2,7:361\n1#3:368\n*S KotlinDebug\n*F\n+ 1 TerminalHeartbeatResponse.kt\ncom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Companion$ADAPTER$1\n*L\n281#1:361,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/sdk/TerminalHeartbeatResponse$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;",
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
        "internal_release"
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
            "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 241
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/api/sdk/jack_rabbit_service.proto"

    .line 235
    const-string v3, "type.googleapis.com/com.stripe.proto.api.sdk.TerminalHeartbeatResponse"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;
    .locals 17

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;->CONNECTION_TOKEN_STATUS_INVALID:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    .line 278
    sget-object v2, Lcom/stripe/proto/api/sdk/NetworkStatus;->NETWORK_STATUS_INVALID:Lcom/stripe/proto/api/sdk/NetworkStatus;

    .line 361
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v3

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    move-object v8, v6

    move v15, v7

    move-object v6, v5

    move-object v7, v6

    move-object v5, v2

    :goto_0
    move-object v2, v0

    .line 363
    :goto_1
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v9

    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    packed-switch v9, :pswitch_data_0

    .line 297
    invoke-virtual {v1, v9}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_1

    .line 296
    :pswitch_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move v15, v0

    goto :goto_1

    .line 295
    :pswitch_1
    sget-object v0, Lcom/stripe/proto/api/sdk/OfflineStats;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    .line 291
    :pswitch_2
    :try_start_0
    sget-object v0, Lcom/stripe/proto/api/sdk/NetworkStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 293
    sget-object v10, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v9, v10, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 286
    :pswitch_3
    :try_start_1
    sget-object v0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 288
    sget-object v10, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v9, v10, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    .line 284
    :pswitch_4
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    .line 283
    :pswitch_5
    sget-object v0, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    .line 367
    :cond_0
    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v16

    .line 300
    new-instance v9, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;

    .line 301
    move-object v10, v6

    check-cast v10, Lcom/stripe/proto/model/sdk/SystemContext;

    .line 302
    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    .line 303
    move-object v12, v2

    check-cast v12, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    .line 304
    move-object v13, v5

    check-cast v13, Lcom/stripe/proto/api/sdk/NetworkStatus;

    .line 305
    move-object v14, v7

    check-cast v14, Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 300
    invoke-direct/range {v9 .. v16}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;Lcom/stripe/proto/api/sdk/NetworkStatus;Lcom/stripe/proto/api/sdk/OfflineStats;ILokio/ByteString;)V

    return-object v9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 256
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_config_hash:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_config_hash:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 257
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    sget-object v1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;->CONNECTION_TOKEN_STATUS_INVALID:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 258
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    sget-object v1, Lcom/stripe/proto/api/sdk/NetworkStatus;->NETWORK_STATUS_INVALID:Lcom/stripe/proto/api/sdk/NetworkStatus;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/stripe/proto/api/sdk/NetworkStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 259
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/api/sdk/OfflineStats;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 260
    :cond_4
    iget v0, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_events_count:I

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_events_count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 261
    :cond_5
    invoke-virtual {p2}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 235
    check-cast p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 266
    iget v0, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_events_count:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_events_count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 267
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/api/sdk/OfflineStats;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 268
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    sget-object v1, Lcom/stripe/proto/api/sdk/NetworkStatus;->NETWORK_STATUS_INVALID:Lcom/stripe/proto/api/sdk/NetworkStatus;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/stripe/proto/api/sdk/NetworkStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 269
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    sget-object v1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;->CONNECTION_TOKEN_STATUS_INVALID:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 270
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_config_hash:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_config_hash:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 271
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 235
    check-cast p2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 245
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 246
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_config_hash:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_config_hash:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 247
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    sget-object v2, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;->CONNECTION_TOKEN_STATUS_INVALID:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    sget-object v2, Lcom/stripe/proto/api/sdk/NetworkStatus;->NETWORK_STATUS_INVALID:Lcom/stripe/proto/api/sdk/NetworkStatus;

    if-eq v1, v2, :cond_3

    sget-object v1, Lcom/stripe/proto/api/sdk/NetworkStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/stripe/proto/api/sdk/OfflineStats;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 250
    :cond_4
    iget v1, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_events_count:I

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget p1, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_events_count:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_5
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 235
    check-cast p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;)Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;
    .locals 12

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    iget-object v0, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/sdk/SystemContext;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 313
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/stripe/proto/api/sdk/OfflineStats;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/proto/api/sdk/OfflineStats;

    :cond_1
    move-object v7, v1

    .line 314
    sget-object v9, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v10, 0x2e

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    .line 311
    invoke-static/range {v2 .. v11}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->copy$default(Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;Lcom/stripe/proto/api/sdk/NetworkStatus;Lcom/stripe/proto/api/sdk/OfflineStats;ILokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 235
    check-cast p1, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;)Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;

    move-result-object p1

    return-object p1
.end method
