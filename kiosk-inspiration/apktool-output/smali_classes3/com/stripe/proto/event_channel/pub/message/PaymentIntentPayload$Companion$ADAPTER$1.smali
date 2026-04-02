.class public final Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "PaymentIntentPayload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentIntentPayload.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentIntentPayload.kt\ncom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,568:1\n463#2,7:569\n1#3:576\n*S KotlinDebug\n*F\n+ 1 PaymentIntentPayload.kt\ncom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Companion$ADAPTER$1\n*L\n502#1:569,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;",
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
            "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 426
    const-string v6, "uppsala/src/main/proto/com/stripe/event_channel/pub/message/commands.proto"

    .line 420
    const-string v3, "type.googleapis.com/com.stripe.event_channel.pub.message.PaymentIntentPayload"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;
    .locals 24

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    check-cast v10, Ljava/util/List;

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    check-cast v12, Ljava/util/List;

    .line 500
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    .line 569
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const-string v4, ""

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v20, v0

    move-object v8, v4

    move-wide v13, v5

    move-object v9, v7

    move-object v11, v9

    move-object v15, v11

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object v5, v8

    move-object v6, v5

    move-object v7, v6

    .line 571
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v0, -0x1

    if-eq v4, v0, :cond_0

    packed-switch v4, :pswitch_data_0

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 527
    invoke-virtual {v1, v4}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 526
    :pswitch_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 522
    :pswitch_1
    :try_start_0
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v20, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v21, v5

    .line 524
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v4, v5, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    .line 520
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :pswitch_3
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 519
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_0

    :pswitch_4
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 518
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_0

    :pswitch_5
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 517
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 516
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 512
    :try_start_1
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/RoutingPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1, v10}, Lcom/squareup/wire/ProtoAdapter;->tryDecode(Lcom/squareup/wire/ProtoReader;Ljava/util/List;)V
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 514
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v4, v5, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 510
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 509
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 508
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 507
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v21, v5

    move-object/from16 v23, v7

    .line 506
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 505
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-wide v13, v4

    move-object/from16 v5, v21

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 504
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_0

    :goto_1
    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    goto/16 :goto_0

    :cond_0
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 575
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v0

    .line 530
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    .line 531
    move-object/from16 v2, v21

    check-cast v2, Ljava/lang/String;

    .line 533
    move-object/from16 v5, v22

    check-cast v5, Ljava/lang/String;

    .line 534
    move-object v6, v9

    check-cast v6, Ljava/lang/Boolean;

    .line 535
    move-object v7, v11

    check-cast v7, Ljava/lang/Boolean;

    .line 536
    check-cast v15, Ljava/lang/Long;

    .line 537
    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/Boolean;

    .line 539
    move-object/from16 v11, v17

    check-cast v11, Ljava/lang/Boolean;

    .line 541
    check-cast v18, Ljava/lang/Boolean;

    .line 542
    check-cast v19, Ljava/lang/Boolean;

    .line 543
    move-object/from16 v3, v23

    check-cast v3, Ljava/lang/String;

    .line 544
    move-object/from16 v16, v20

    check-cast v16, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    .line 545
    move-object/from16 v17, v8

    check-cast v17, Ljava/lang/String;

    move-object v8, v15

    move-object v15, v3

    move-wide v3, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    move-object/from16 v18, v0

    .line 530
    invoke-direct/range {v1 .. v18}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

    .line 420
    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_intent_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_intent_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 450
    :cond_0
    iget-wide v2, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->charge_amount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->charge_amount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 451
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->currency:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->currency:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 452
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->skip_tipping:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->skip_tipping:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 453
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->moto:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->moto:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 454
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->tip_eligible_amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 455
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 456
    :cond_6
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/RoutingPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 457
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 458
    :cond_7
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_method_types:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 459
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 460
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 461
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage_str:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage_str:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 462
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    sget-object v2, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    if-eq v0, v2, :cond_b

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 463
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->return_url:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->return_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 464
    :cond_c
    invoke-virtual {p2}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 420
    check-cast p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 469
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->return_url:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->return_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 470
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    sget-object v2, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 471
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage_str:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage_str:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 472
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 473
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 474
    :cond_4
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_method_types:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 475
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 476
    :cond_5
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/RoutingPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 477
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 478
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->tip_eligible_amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 479
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->moto:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->moto:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 480
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->skip_tipping:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->skip_tipping:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 481
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->currency:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->currency:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 482
    :cond_a
    iget-wide v2, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->charge_amount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->charge_amount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 483
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_intent_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_intent_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 420
    check-cast p2, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;)I
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 430
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_intent_id:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_intent_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 431
    :cond_0
    iget-wide v3, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->charge_amount:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v3, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->charge_amount:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->currency:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->currency:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 433
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->skip_tipping:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->skip_tipping:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 434
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->moto:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->moto:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 435
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x6

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->tip_eligible_amount:Ljava/lang/Long;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 437
    :cond_6
    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/RoutingPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 438
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 439
    :cond_7
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v3, 0xa

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_method_types:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 440
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xb

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 441
    :cond_8
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xc

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 442
    :cond_9
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage_str:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xd

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage_str:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 443
    :cond_a
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    if-eq v1, v3, :cond_b

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xe

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 444
    :cond_b
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->return_url:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object p1, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->return_url:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_c
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 420
    check-cast p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;
    .locals 21

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->skip_tipping:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v2

    .line 552
    :goto_0
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->moto:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, v2

    .line 553
    :goto_1
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v0, :cond_2

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object v8, v2

    .line 554
    :goto_2
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v9, v0

    goto :goto_3

    :cond_3
    move-object v9, v2

    .line 555
    :goto_3
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v11, v0

    goto :goto_4

    :cond_4
    move-object v11, v2

    .line 556
    :goto_4
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v13, v0

    goto :goto_5

    :cond_5
    move-object v13, v2

    .line 557
    :goto_5
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    :cond_6
    move-object v14, v2

    .line 558
    sget-object v18, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v19, 0x7287

    const/16 v20, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 550
    invoke-static/range {v1 .. v20}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->copy$default(Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 420
    check-cast p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    move-result-object p1

    return-object p1
.end method
