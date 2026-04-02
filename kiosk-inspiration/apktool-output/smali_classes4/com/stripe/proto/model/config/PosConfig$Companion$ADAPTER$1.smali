.class public final Lcom/stripe/proto/model/config/PosConfig$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "PosConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/PosConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/config/PosConfig;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPosConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PosConfig.kt\ncom/stripe/proto/model/config/PosConfig$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,521:1\n463#2,7:522\n1#3:529\n*S KotlinDebug\n*F\n+ 1 PosConfig.kt\ncom/stripe/proto/model/config/PosConfig$Companion$ADAPTER$1\n*L\n442#1:522,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/config/PosConfig$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/config/PosConfig;",
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
            "Lcom/stripe/proto/model/config/PosConfig;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 382
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/config/armada_config.proto"

    .line 376
    const-string v3, "type.googleapis.com/com.stripe.proto.model.config.PosConfig"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/PosConfig;
    .locals 19

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    sget-object v0, Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;->ILLEGAL:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    .line 438
    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 522
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    move v8, v5

    move v9, v8

    move v10, v9

    move-object v11, v6

    move-object v12, v7

    move-object v13, v12

    move-object v14, v13

    move-object v5, v2

    move v7, v10

    :goto_0
    move-object v2, v0

    .line 524
    :goto_1
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v15

    const/4 v0, -0x1

    if-eq v15, v0, :cond_0

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 459
    invoke-virtual {v1, v15}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_2

    .line 453
    :pswitch_1
    sget-object v0, Lcom/stripe/proto/model/config/DeviceTraceLevel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    .line 454
    :pswitch_2
    sget-object v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    goto :goto_1

    .line 449
    :pswitch_3
    :try_start_0
    sget-object v0, Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v16, v2

    .line 451
    sget-object v2, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v15, v2, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 458
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    goto :goto_1

    :pswitch_5
    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 457
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    goto :goto_1

    :pswitch_6
    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 456
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    goto :goto_1

    :pswitch_7
    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 446
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move v9, v0

    goto :goto_1

    :pswitch_8
    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 445
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move v8, v0

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 447
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v10, v0

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v16, v2

    move-object/from16 v18, v6

    .line 455
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 444
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move v7, v0

    goto/16 :goto_1

    :goto_2
    move-object/from16 v2, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    goto/16 :goto_1

    :cond_0
    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 528
    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v0

    .line 462
    new-instance v6, Lcom/stripe/proto/model/config/PosConfig;

    .line 467
    move-object/from16 v2, v16

    check-cast v2, Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    .line 468
    move-object/from16 v1, v18

    check-cast v1, Lcom/stripe/proto/model/config/DeviceTraceLevel;

    .line 469
    check-cast v11, Lcom/stripe/proto/model/config/RabbitClientConfig;

    .line 470
    move-object/from16 v5, v17

    check-cast v5, Lokio/ByteString;

    .line 471
    move-object v15, v12

    check-cast v15, Ljava/lang/String;

    .line 472
    move-object/from16 v16, v13

    check-cast v16, Ljava/lang/String;

    .line 473
    move-object/from16 v17, v14

    check-cast v17, Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v12, v1

    move-object v14, v5

    move-object v13, v11

    move-object v11, v2

    .line 462
    invoke-direct/range {v6 .. v18}, Lcom/stripe/proto/model/config/PosConfig;-><init>(IIIZLcom/stripe/proto/model/config/PosConfig$PosTraceLevel;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/RabbitClientConfig;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 376
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/PosConfig$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/PosConfig;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/PosConfig;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    iget v0, p2, Lcom/stripe/proto/model/config/PosConfig;->heartbeat_interval_seconds:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/proto/model/config/PosConfig;->heartbeat_interval_seconds:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 402
    :cond_0
    iget v0, p2, Lcom/stripe/proto/model/config/PosConfig;->reachability_threshold:I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/proto/model/config/PosConfig;->reachability_threshold:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 403
    :cond_1
    iget v0, p2, Lcom/stripe/proto/model/config/PosConfig;->unreachability_threshold:I

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/proto/model/config/PosConfig;->unreachability_threshold:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 404
    :cond_2
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/PosConfig;->loyalty_collection_enabled:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/PosConfig;->loyalty_collection_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 405
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/config/PosConfig;->pos_trace_level:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    sget-object v1, Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;->ILLEGAL:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    if-eq v0, v1, :cond_4

    sget-object v0, Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/config/PosConfig;->pos_trace_level:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 406
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/config/PosConfig;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/model/config/DeviceTraceLevel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/model/config/PosConfig;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 407
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/config/PosConfig;->rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/config/PosConfig;->rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 408
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/config/PosConfig;->beacon_config_deprecated_120716:Lokio/ByteString;

    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/config/PosConfig;->beacon_config_deprecated_120716:Lokio/ByteString;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 409
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/config/PosConfig;->store_id_deprecated_280115:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/stripe/proto/model/config/PosConfig;->store_id_deprecated_280115:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 410
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/model/config/PosConfig;->merchant_id_deprecated_280115:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/stripe/proto/model/config/PosConfig;->merchant_id_deprecated_280115:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 411
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/model/config/PosConfig;->derived_session_token_deprecated_20170224:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/config/PosConfig;->derived_session_token_deprecated_20170224:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 412
    :cond_a
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/PosConfig;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 376
    check-cast p2, Lcom/stripe/proto/model/config/PosConfig;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/PosConfig$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/PosConfig;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/PosConfig;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/PosConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 417
    iget-object v0, p2, Lcom/stripe/proto/model/config/PosConfig;->derived_session_token_deprecated_20170224:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/stripe/proto/model/config/PosConfig;->derived_session_token_deprecated_20170224:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 418
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/config/PosConfig;->merchant_id_deprecated_280115:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/stripe/proto/model/config/PosConfig;->merchant_id_deprecated_280115:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 419
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/config/PosConfig;->store_id_deprecated_280115:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/config/PosConfig;->store_id_deprecated_280115:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 420
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/config/PosConfig;->beacon_config_deprecated_120716:Lokio/ByteString;

    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/config/PosConfig;->beacon_config_deprecated_120716:Lokio/ByteString;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 421
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/config/PosConfig;->rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/model/config/RabbitClientConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/config/PosConfig;->rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 422
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/config/PosConfig;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/model/config/DeviceTraceLevel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/model/config/PosConfig;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 423
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/config/PosConfig;->pos_trace_level:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    sget-object v1, Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;->ILLEGAL:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/config/PosConfig;->pos_trace_level:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 424
    :cond_6
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/PosConfig;->loyalty_collection_enabled:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/PosConfig;->loyalty_collection_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 425
    :cond_7
    iget v0, p2, Lcom/stripe/proto/model/config/PosConfig;->unreachability_threshold:I

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/proto/model/config/PosConfig;->unreachability_threshold:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 426
    :cond_8
    iget v0, p2, Lcom/stripe/proto/model/config/PosConfig;->reachability_threshold:I

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/proto/model/config/PosConfig;->reachability_threshold:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 427
    :cond_9
    iget v0, p2, Lcom/stripe/proto/model/config/PosConfig;->heartbeat_interval_seconds:I

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget p2, p2, Lcom/stripe/proto/model/config/PosConfig;->heartbeat_interval_seconds:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 376
    check-cast p2, Lcom/stripe/proto/model/config/PosConfig;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/PosConfig$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/PosConfig;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/config/PosConfig;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Lcom/stripe/proto/model/config/PosConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 386
    iget v1, p1, Lcom/stripe/proto/model/config/PosConfig;->heartbeat_interval_seconds:I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p1, Lcom/stripe/proto/model/config/PosConfig;->heartbeat_interval_seconds:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 387
    :cond_0
    iget v1, p1, Lcom/stripe/proto/model/config/PosConfig;->reachability_threshold:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p1, Lcom/stripe/proto/model/config/PosConfig;->reachability_threshold:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 388
    :cond_1
    iget v1, p1, Lcom/stripe/proto/model/config/PosConfig;->unreachability_threshold:I

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p1, Lcom/stripe/proto/model/config/PosConfig;->unreachability_threshold:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    :cond_2
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/PosConfig;->loyalty_collection_enabled:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/PosConfig;->loyalty_collection_enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 390
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/model/config/PosConfig;->pos_trace_level:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    sget-object v2, Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;->ILLEGAL:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    if-eq v1, v2, :cond_4

    sget-object v1, Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/model/config/PosConfig;->pos_trace_level:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 391
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/model/config/PosConfig;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/stripe/proto/model/config/DeviceTraceLevel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/stripe/proto/model/config/PosConfig;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 392
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/model/config/PosConfig;->rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/stripe/proto/model/config/RabbitClientConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/proto/model/config/PosConfig;->rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 393
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/model/config/PosConfig;->beacon_config_deprecated_120716:Lokio/ByteString;

    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/config/PosConfig;->beacon_config_deprecated_120716:Lokio/ByteString;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 394
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/model/config/PosConfig;->store_id_deprecated_280115:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x6

    iget-object v4, p1, Lcom/stripe/proto/model/config/PosConfig;->store_id_deprecated_280115:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    :cond_8
    iget-object v1, p1, Lcom/stripe/proto/model/config/PosConfig;->merchant_id_deprecated_280115:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/stripe/proto/model/config/PosConfig;->merchant_id_deprecated_280115:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 396
    :cond_9
    iget-object v1, p1, Lcom/stripe/proto/model/config/PosConfig;->derived_session_token_deprecated_20170224:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object p1, p1, Lcom/stripe/proto/model/config/PosConfig;->derived_session_token_deprecated_20170224:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_a
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 376
    check-cast p1, Lcom/stripe/proto/model/config/PosConfig;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/PosConfig$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/config/PosConfig;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/config/PosConfig;)Lcom/stripe/proto/model/config/PosConfig;
    .locals 15

    move-object/from16 v0, p1

    const-string v1, "value"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    iget-object v1, v0, Lcom/stripe/proto/model/config/PosConfig;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/stripe/proto/model/config/DeviceTraceLevel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/config/DeviceTraceLevel;

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v2

    .line 480
    :goto_0
    iget-object v1, v0, Lcom/stripe/proto/model/config/PosConfig;->rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/stripe/proto/model/config/RabbitClientConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/proto/model/config/RabbitClientConfig;

    :cond_1
    move-object v7, v2

    .line 481
    sget-object v12, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v13, 0x79f

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 478
    invoke-static/range {v0 .. v14}, Lcom/stripe/proto/model/config/PosConfig;->copy$default(Lcom/stripe/proto/model/config/PosConfig;IIIZLcom/stripe/proto/model/config/PosConfig$PosTraceLevel;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/RabbitClientConfig;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/PosConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 376
    check-cast p1, Lcom/stripe/proto/model/config/PosConfig;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/PosConfig$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/config/PosConfig;)Lcom/stripe/proto/model/config/PosConfig;

    move-result-object p1

    return-object p1
.end method
