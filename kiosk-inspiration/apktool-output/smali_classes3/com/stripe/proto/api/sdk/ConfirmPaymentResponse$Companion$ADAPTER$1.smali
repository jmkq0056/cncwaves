.class public final Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ConfirmPaymentResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfirmPaymentResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfirmPaymentResponse.kt\ncom/stripe/proto/api/sdk/ConfirmPaymentResponse$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,510:1\n463#2,7:511\n1#3:518\n*S KotlinDebug\n*F\n+ 1 ConfirmPaymentResponse.kt\ncom/stripe/proto/api/sdk/ConfirmPaymentResponse$Companion$ADAPTER$1\n*L\n454#1:511,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/sdk/ConfirmPaymentResponse$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;",
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
            "Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 394
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/api/sdk/jack_rabbit_service.proto"

    .line 388
    const-string v3, "type.googleapis.com/com.stripe.proto.api.sdk.ConfirmPaymentResponse"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;
    .locals 28

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const/4 v0, 0x0

    const-string v4, ""

    move-object v5, v0

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v4

    move-object v4, v13

    .line 513
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v15

    const/4 v0, -0x1

    if-eq v15, v0, :cond_0

    packed-switch v15, :pswitch_data_0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 471
    invoke-virtual {v1, v15}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 467
    :pswitch_0
    :try_start_0
    sget-object v0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v16, v4

    .line 469
    sget-object v4, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v15, v4, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 465
    sget-object v0, Lcom/stripe/proto/api/sdk/OfflineStats;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    :pswitch_2
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 464
    sget-object v0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    :pswitch_3
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 463
    sget-object v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    :pswitch_4
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 462
    sget-object v0, Lcom/stripe/proto/model/sdk/DeclinedCharge;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :pswitch_5
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 461
    sget-object v0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :pswitch_6
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 460
    sget-object v0, Lcom/stripe/proto/model/sdk/Error;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 459
    sget-object v0, Lcom/stripe/proto/model/rest/ErrorWrapper;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v16, v4

    move-object/from16 v18, v6

    .line 458
    sget-object v0, Lcom/stripe/proto/model/rest/PaymentIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 457
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 456
    sget-object v0, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_0

    :goto_1
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    goto/16 :goto_0

    :cond_0
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 517
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v27

    .line 474
    new-instance v15, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;

    .line 475
    check-cast v16, Lcom/stripe/proto/model/sdk/SystemContext;

    .line 476
    check-cast v14, Ljava/lang/String;

    .line 477
    move-object/from16 v5, v17

    check-cast v5, Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 478
    move-object/from16 v19, v18

    check-cast v19, Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 479
    move-object/from16 v20, v7

    check-cast v20, Lcom/stripe/proto/model/sdk/Error;

    .line 480
    move-object/from16 v21, v8

    check-cast v21, Lcom/stripe/proto/model/sdk/ProcessedCharge;

    .line 481
    move-object/from16 v22, v9

    check-cast v22, Lcom/stripe/proto/model/sdk/DeclinedCharge;

    .line 482
    move-object/from16 v23, v10

    check-cast v23, Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    .line 483
    move-object/from16 v24, v11

    check-cast v24, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    .line 484
    move-object/from16 v25, v12

    check-cast v25, Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 485
    move-object/from16 v26, v13

    check-cast v26, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    move-object/from16 v18, v5

    move-object/from16 v17, v14

    .line 474
    invoke-direct/range {v15 .. v27}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/sdk/ProcessedCharge;Lcom/stripe/proto/model/sdk/DeclinedCharge;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lokio/ByteString;)V

    return-object v15

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 388
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 414
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->request_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->request_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 415
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 416
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/model/sdk/DeclinedCharge;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 417
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 418
    :cond_4
    sget-object v0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 419
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/api/sdk/OfflineStats;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 420
    :cond_5
    sget-object v0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 421
    sget-object v0, Lcom/stripe/proto/model/rest/PaymentIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 422
    sget-object v0, Lcom/stripe/proto/model/rest/ErrorWrapper;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 423
    sget-object v0, Lcom/stripe/proto/model/sdk/Error;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 424
    invoke-virtual {p2}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 388
    check-cast p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 429
    sget-object v0, Lcom/stripe/proto/model/sdk/Error;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 430
    sget-object v0, Lcom/stripe/proto/model/rest/ErrorWrapper;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 431
    sget-object v0, Lcom/stripe/proto/model/rest/PaymentIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 432
    sget-object v0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 433
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/api/sdk/OfflineStats;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 434
    :cond_0
    sget-object v0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 435
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 436
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/sdk/DeclinedCharge;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 437
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/model/sdk/ProcessedCharge;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 438
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->request_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->request_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 439
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 388
    check-cast p2, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 398
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 399
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->request_id:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->request_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 400
    :cond_1
    sget-object v1, Lcom/stripe/proto/model/rest/PaymentIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 401
    sget-object v1, Lcom/stripe/proto/model/rest/ErrorWrapper;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 402
    sget-object v1, Lcom/stripe/proto/model/sdk/Error;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 403
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/stripe/proto/model/sdk/ProcessedCharge;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 404
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/stripe/proto/model/sdk/DeclinedCharge;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 405
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 406
    :cond_4
    sget-object v1, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 407
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/stripe/proto/api/sdk/OfflineStats;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 408
    :cond_5
    sget-object v1, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 388
    check-cast p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;)Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;
    .locals 15

    move-object/from16 v0, p1

    const-string v1, "value"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    iget-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/sdk/SystemContext;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 492
    :goto_0
    iget-object v3, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirmed_payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/stripe/proto/model/rest/PaymentIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/model/rest/PaymentIntent;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 493
    :goto_1
    iget-object v4, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/stripe/proto/model/rest/ErrorWrapper;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/model/rest/ErrorWrapper;

    goto :goto_2

    :cond_2
    move-object v4, v2

    .line 494
    :goto_2
    iget-object v5, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    if-eqz v5, :cond_3

    sget-object v6, Lcom/stripe/proto/model/sdk/Error;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/model/sdk/Error;

    goto :goto_3

    :cond_3
    move-object v5, v2

    .line 495
    :goto_3
    iget-object v6, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->processed_charge:Lcom/stripe/proto/model/sdk/ProcessedCharge;

    if-eqz v6, :cond_4

    sget-object v7, Lcom/stripe/proto/model/sdk/ProcessedCharge;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/proto/model/sdk/ProcessedCharge;

    goto :goto_4

    :cond_4
    move-object v6, v2

    .line 496
    :goto_4
    iget-object v7, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->declined_charge:Lcom/stripe/proto/model/sdk/DeclinedCharge;

    if-eqz v7, :cond_5

    sget-object v8, Lcom/stripe/proto/model/sdk/DeclinedCharge;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v7}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/proto/model/sdk/DeclinedCharge;

    goto :goto_5

    :cond_5
    move-object v7, v2

    .line 497
    :goto_5
    iget-object v8, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->options:Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    if-eqz v8, :cond_6

    sget-object v9, Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v8}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;

    goto :goto_6

    :cond_6
    move-object v8, v2

    .line 498
    :goto_6
    iget-object v9, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    if-eqz v9, :cond_7

    sget-object v10, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v10, v9}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    goto :goto_7

    :cond_7
    move-object v9, v2

    .line 499
    :goto_7
    iget-object v10, v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-eqz v10, :cond_8

    sget-object v2, Lcom/stripe/proto/api/sdk/OfflineStats;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/api/sdk/OfflineStats;

    :cond_8
    move-object v10, v2

    .line 500
    sget-object v12, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v13, 0x402

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 490
    invoke-static/range {v0 .. v14}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;->copy$default(Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/sdk/ProcessedCharge;Lcom/stripe/proto/model/sdk/DeclinedCharge;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 388
    check-cast p1, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;)Lcom/stripe/proto/api/sdk/ConfirmPaymentResponse;

    move-result-object p1

    return-object p1
.end method
