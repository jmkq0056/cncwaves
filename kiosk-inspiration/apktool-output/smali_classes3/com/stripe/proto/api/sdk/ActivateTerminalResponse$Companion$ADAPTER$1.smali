.class public final Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ActivateTerminalResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivateTerminalResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivateTerminalResponse.kt\ncom/stripe/proto/api/sdk/ActivateTerminalResponse$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,541:1\n463#2,7:542\n1#3:549\n*S KotlinDebug\n*F\n+ 1 ActivateTerminalResponse.kt\ncom/stripe/proto/api/sdk/ActivateTerminalResponse$Companion$ADAPTER$1\n*L\n486#1:542,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/sdk/ActivateTerminalResponse$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;",
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
            "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 422
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/api/sdk/jack_rabbit_service.proto"

    .line 416
    const-string v3, "type.googleapis.com/com.stripe.proto.api.sdk.ActivateTerminalResponse"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;
    .locals 29

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    sget-object v0, Lcom/stripe/proto/api/sdk/NetworkStatus;->NETWORK_STATUS_INVALID:Lcom/stripe/proto/api/sdk/NetworkStatus;

    .line 542
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v9, v5

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move/from16 v18, v6

    move-wide/from16 v23, v7

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_0
    move-object v4, v0

    .line 544
    :goto_1
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v14

    const/4 v0, -0x1

    if-eq v14, v0, :cond_0

    packed-switch v14, :pswitch_data_0

    move-object/from16 v17, v4

    move-object/from16 v16, v5

    .line 504
    invoke-virtual {v1, v14}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_2

    .line 500
    :pswitch_0
    :try_start_0
    sget-object v0, Lcom/stripe/proto/api/sdk/NetworkStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 502
    sget-object v15, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    move-object/from16 v17, v4

    move-object/from16 v16, v5

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v14, v15, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    move-object/from16 v17, v4

    move-object/from16 v16, v5

    .line 498
    sget-object v0, Lcom/stripe/proto/api/sdk/OfflineStats;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    goto :goto_1

    :pswitch_2
    move-object/from16 v17, v4

    move-object/from16 v16, v5

    .line 497
    sget-object v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    goto :goto_1

    :pswitch_3
    move-object/from16 v17, v4

    move-object/from16 v16, v5

    .line 496
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-wide/from16 v23, v4

    :goto_2
    move-object/from16 v5, v16

    move-object/from16 v4, v17

    goto :goto_1

    :pswitch_4
    move-object/from16 v17, v4

    move-object/from16 v16, v5

    .line 495
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    goto :goto_1

    :pswitch_5
    move-object/from16 v17, v4

    move-object/from16 v16, v5

    .line 494
    sget-object v0, Lcom/stripe/proto/model/sdk/ReaderVersion;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    goto :goto_1

    :pswitch_6
    move-object/from16 v17, v4

    move-object/from16 v16, v5

    .line 493
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :pswitch_7
    move-object/from16 v17, v4

    move-object/from16 v16, v5

    .line 492
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v17, v4

    move-object/from16 v16, v5

    .line 491
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move/from16 v18, v0

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v17, v4

    move-object/from16 v16, v5

    .line 490
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v17, v4

    move-object/from16 v16, v5

    .line 489
    sget-object v0, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v17, v4

    .line 488
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_1

    :cond_0
    move-object/from16 v17, v4

    move-object/from16 v16, v5

    .line 548
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v28

    .line 507
    new-instance v14, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    .line 508
    move-object/from16 v15, v16

    check-cast v15, Ljava/lang/String;

    .line 509
    move-object/from16 v16, v9

    check-cast v16, Lcom/stripe/proto/model/sdk/SystemContext;

    .line 510
    check-cast v6, Ljava/lang/String;

    .line 512
    move-object/from16 v19, v7

    check-cast v19, Ljava/lang/String;

    .line 513
    move-object/from16 v20, v8

    check-cast v20, Ljava/lang/String;

    .line 514
    move-object/from16 v21, v10

    check-cast v21, Lcom/stripe/proto/model/sdk/ReaderVersion;

    .line 515
    move-object/from16 v22, v11

    check-cast v22, Ljava/lang/String;

    .line 517
    move-object/from16 v25, v12

    check-cast v25, Lcom/stripe/proto/model/merchant/ApiLocationPb;

    .line 518
    move-object/from16 v26, v13

    check-cast v26, Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 519
    move-object/from16 v27, v17

    check-cast v27, Lcom/stripe/proto/api/sdk/NetworkStatus;

    move-object/from16 v17, v6

    .line 507
    invoke-direct/range {v14 .. v28}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/ReaderVersion;Ljava/lang/String;JLcom/stripe/proto/model/merchant/ApiLocationPb;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/NetworkStatus;Lokio/ByteString;)V

    return-object v14

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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 416
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->session_token:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->session_token:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 443
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 444
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->store_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->store_name:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 445
    :cond_2
    iget-boolean v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->livemode:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->livemode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 446
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->sdk_rpc_session:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->sdk_rpc_session:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 447
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->request_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->request_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 448
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->version:Lcom/stripe/proto/model/sdk/ReaderVersion;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/proto/model/sdk/ReaderVersion;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->version:Lcom/stripe/proto/model/sdk/ReaderVersion;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 449
    :cond_6
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->account_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 450
    iget-wide v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->canonical_reader_version:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->canonical_reader_version:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 451
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 452
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/stripe/proto/api/sdk/OfflineStats;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 453
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    sget-object v1, Lcom/stripe/proto/api/sdk/NetworkStatus;->NETWORK_STATUS_INVALID:Lcom/stripe/proto/api/sdk/NetworkStatus;

    if-eq v0, v1, :cond_a

    sget-object v0, Lcom/stripe/proto/api/sdk/NetworkStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 454
    :cond_a
    invoke-virtual {p2}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 416
    check-cast p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 459
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    sget-object v1, Lcom/stripe/proto/api/sdk/NetworkStatus;->NETWORK_STATUS_INVALID:Lcom/stripe/proto/api/sdk/NetworkStatus;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/api/sdk/NetworkStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 460
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/api/sdk/OfflineStats;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 461
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 462
    :cond_2
    iget-wide v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->canonical_reader_version:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->canonical_reader_version:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 463
    :cond_3
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->account_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 464
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->version:Lcom/stripe/proto/model/sdk/ReaderVersion;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/model/sdk/ReaderVersion;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->version:Lcom/stripe/proto/model/sdk/ReaderVersion;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 465
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->request_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->request_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 466
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->sdk_rpc_session:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->sdk_rpc_session:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 467
    :cond_6
    iget-boolean v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->livemode:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->livemode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 468
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->store_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->store_name:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 469
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 470
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->session_token:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->session_token:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 416
    check-cast p2, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 426
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->session_token:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->session_token:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 427
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 428
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->store_name:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->store_name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 429
    :cond_2
    iget-boolean v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->livemode:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->livemode:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 430
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->sdk_rpc_session:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->sdk_rpc_session:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 431
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->request_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->request_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->version:Lcom/stripe/proto/model/sdk/ReaderVersion;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/stripe/proto/model/sdk/ReaderVersion;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->version:Lcom/stripe/proto/model/sdk/ReaderVersion;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 433
    :cond_6
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->account_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 434
    iget-wide v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->canonical_reader_version:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->canonical_reader_version:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 435
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    :cond_8
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/stripe/proto/api/sdk/OfflineStats;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 437
    :cond_9
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    sget-object v2, Lcom/stripe/proto/api/sdk/NetworkStatus;->NETWORK_STATUS_INVALID:Lcom/stripe/proto/api/sdk/NetworkStatus;

    if-eq v1, v2, :cond_a

    sget-object v1, Lcom/stripe/proto/api/sdk/NetworkStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_a
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 416
    check-cast p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;
    .locals 18

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    iget-object v0, v1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/sdk/SystemContext;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 528
    :goto_0
    iget-object v0, v1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->version:Lcom/stripe/proto/model/sdk/ReaderVersion;

    if-eqz v0, :cond_1

    sget-object v4, Lcom/stripe/proto/model/sdk/ReaderVersion;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/sdk/ReaderVersion;

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object v8, v2

    .line 529
    :goto_1
    iget-object v0, v1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v0, :cond_2

    sget-object v4, Lcom/stripe/proto/model/merchant/ApiLocationPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;

    move-object v12, v0

    goto :goto_2

    :cond_2
    move-object v12, v2

    .line 530
    :goto_2
    iget-object v0, v1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/stripe/proto/api/sdk/OfflineStats;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/proto/api/sdk/OfflineStats;

    :cond_3
    move-object v13, v2

    .line 531
    sget-object v15, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v16, 0x9ac

    const/16 v17, 0x0

    .line 524
    const-string v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v14, 0x0

    invoke-static/range {v1 .. v17}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->copy$default(Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;Ljava/lang/String;Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/ReaderVersion;Ljava/lang/String;JLcom/stripe/proto/model/merchant/ApiLocationPb;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/NetworkStatus;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 416
    check-cast p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    move-result-object p1

    return-object p1
.end method
