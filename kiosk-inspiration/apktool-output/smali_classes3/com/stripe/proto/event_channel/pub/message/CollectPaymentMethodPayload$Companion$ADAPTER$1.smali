.class public final Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "CollectPaymentMethodPayload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollectPaymentMethodPayload.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectPaymentMethodPayload.kt\ncom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,664:1\n463#2,7:665\n1#3:672\n*S KotlinDebug\n*F\n+ 1 CollectPaymentMethodPayload.kt\ncom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Companion$ADAPTER$1\n*L\n586#1:665,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;",
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
            "Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 498
    const-string v6, "uppsala/src/main/proto/com/stripe/event_channel/pub/message/commands.proto"

    .line 492
    const-string v3, "type.googleapis.com/com.stripe.event_channel.pub.message.CollectPaymentMethodPayload"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;
    .locals 27

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    check-cast v10, Ljava/util/List;

    .line 577
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->REQUEST_DYNAMIC_CURRENCY_CONVERSION_PAYMENT_METHOD_OPTIONS_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    .line 578
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v2

    check-cast v13, Ljava/util/List;

    .line 585
    sget-object v2, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    .line 665
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v3

    const-string v5, ""

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v23, v0

    move-object v9, v5

    move-wide v11, v6

    move-object v14, v8

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object v5, v2

    move-object v6, v9

    move-object v7, v6

    move-object v8, v7

    .line 667
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    packed-switch v2, :pswitch_data_0

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 618
    invoke-virtual {v1, v2}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 614
    :pswitch_0
    :try_start_0
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v24, v5

    .line 616
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v5, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 612
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/AmountDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    goto :goto_0

    :pswitch_2
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 611
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :pswitch_3
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 610
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_0

    :pswitch_4
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 609
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_0

    :pswitch_5
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 608
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Surcharge;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_0

    :pswitch_6
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 607
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 606
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 602
    :try_start_1
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v23, v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 604
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v5, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 600
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 596
    :try_start_2
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/RoutingPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1, v10}, Lcom/squareup/wire/ProtoAdapter;->tryDecode(Lcom/squareup/wire/ProtoReader;Ljava/util/List;)V
    :try_end_2
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    .line 598
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v5, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 594
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 593
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 592
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 591
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    .line 590
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 589
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    move-wide v11, v5

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    goto/16 :goto_0

    :pswitch_11
    move-object/from16 v24, v5

    move-object/from16 v26, v7

    .line 588
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_0

    :goto_1
    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    goto/16 :goto_0

    :cond_0
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    .line 671
    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v0

    .line 621
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    .line 622
    move-object/from16 v2, v25

    check-cast v2, Ljava/lang/String;

    .line 624
    move-object/from16 v5, v26

    check-cast v5, Ljava/lang/String;

    .line 625
    move-object v6, v14

    check-cast v6, Ljava/lang/Boolean;

    .line 626
    move-object v7, v15

    check-cast v7, Ljava/lang/Boolean;

    .line 627
    check-cast v16, Ljava/lang/Long;

    .line 628
    check-cast v17, Ljava/lang/Boolean;

    .line 630
    check-cast v18, Ljava/lang/Boolean;

    .line 631
    check-cast v23, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    .line 633
    move-object v14, v8

    check-cast v14, Ljava/lang/String;

    .line 634
    move-object/from16 v15, v19

    check-cast v15, Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    .line 635
    check-cast v20, Ljava/lang/Boolean;

    .line 636
    check-cast v21, Ljava/lang/Boolean;

    .line 637
    check-cast v9, Ljava/lang/String;

    .line 638
    move-object/from16 v19, v22

    check-cast v19, Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    .line 639
    move-object/from16 v3, v24

    check-cast v3, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    move-object/from16 v8, v16

    move-object/from16 v16, v20

    move-object/from16 v20, v3

    move-wide v3, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v23

    move-object/from16 v18, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v21

    move-object/from16 v21, v0

    .line 621
    invoke-direct/range {v1 .. v21}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Surcharge;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AmountDetails;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Lokio/ByteString;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
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

    .line 492
    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_intent_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_intent_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 525
    :cond_0
    iget-wide v2, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->charge_amount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->charge_amount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 526
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->currency:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->currency:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 527
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->skip_tipping:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->skip_tipping:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 528
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->moto:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->moto:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 529
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->tip_eligible_amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 530
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 531
    :cond_6
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/RoutingPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 532
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 533
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    sget-object v2, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->REQUEST_DYNAMIC_CURRENCY_CONVERSION_PAYMENT_METHOD_OPTIONS_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    if-eq v0, v2, :cond_8

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 534
    :cond_8
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_method_types:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 535
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge_notice:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge_notice:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 536
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Surcharge;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 537
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 538
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 539
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage_str:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage_str:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 540
    :cond_d
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/AmountDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x11

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 541
    :cond_e
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    if-eq v0, v1, :cond_f

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x12

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 542
    :cond_f
    invoke-virtual {p2}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 492
    check-cast p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 547
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x12

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 548
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/AmountDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x11

    iget-object v2, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 549
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage_str:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage_str:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 550
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 551
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 552
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Surcharge;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 553
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge_notice:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge_notice:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 554
    :cond_6
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_method_types:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 555
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    sget-object v2, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->REQUEST_DYNAMIC_CURRENCY_CONVERSION_PAYMENT_METHOD_OPTIONS_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    if-eq v0, v2, :cond_7

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 556
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 557
    :cond_8
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/RoutingPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 558
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 559
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->tip_eligible_amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 560
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->moto:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->moto:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 561
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->skip_tipping:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->skip_tipping:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 562
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->currency:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->currency:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 563
    :cond_d
    iget-wide v2, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->charge_amount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->charge_amount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 564
    :cond_e
    iget-object v0, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_intent_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_intent_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 492
    check-cast p2, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;)I
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p1}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 502
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_intent_id:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_intent_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 503
    :cond_0
    iget-wide v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->charge_amount:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->charge_amount:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 504
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->currency:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->currency:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 505
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->skip_tipping:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->skip_tipping:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 506
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->moto:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->moto:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 507
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x6

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->tip_eligible_amount:Ljava/lang/Long;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 508
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 509
    :cond_6
    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/RoutingPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 510
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 511
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    sget-object v3, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->REQUEST_DYNAMIC_CURRENCY_CONVERSION_PAYMENT_METHOD_OPTIONS_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    if-eq v1, v3, :cond_8

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xa

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 512
    :cond_8
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v3, 0xb

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_method_types:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 513
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge_notice:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xc

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge_notice:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 514
    :cond_9
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/Surcharge;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xd

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 515
    :cond_a
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xe

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 516
    :cond_b
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xf

    iget-object v4, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 517
    :cond_c
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage_str:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage_str:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 518
    :cond_d
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/AmountDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x11

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 519
    :cond_e
    iget-object v1, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    sget-object v2, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    if-eq v1, v2, :cond_f

    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x12

    iget-object p1, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_f
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 492
    check-cast p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;
    .locals 24

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->skip_tipping:Ljava/lang/Boolean;

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

    .line 646
    :goto_0
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->moto:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, v2

    .line 647
    :goto_1
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v0, :cond_2

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object v8, v2

    .line 648
    :goto_2
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v9, v0

    goto :goto_3

    :cond_3
    move-object v9, v2

    .line 649
    :goto_3
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v11, v0

    goto :goto_4

    :cond_4
    move-object v11, v2

    .line 650
    :goto_4
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    if-eqz v0, :cond_5

    sget-object v3, Lcom/stripe/proto/event_channel/pub/message/Surcharge;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    move-object v15, v0

    goto :goto_5

    :cond_5
    move-object v15, v2

    .line 651
    :goto_5
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v16, v0

    goto :goto_6

    :cond_6
    move-object/from16 v16, v2

    .line 652
    :goto_6
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v17, v0

    goto :goto_7

    :cond_7
    move-object/from16 v17, v2

    .line 653
    :goto_7
    iget-object v0, v1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    if-eqz v0, :cond_8

    sget-object v2, Lcom/stripe/proto/event_channel/pub/message/AmountDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    :cond_8
    move-object/from16 v19, v2

    .line 654
    sget-object v21, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const v22, 0x28e87

    const/16 v23, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    .line 644
    invoke-static/range {v1 .. v23}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->copy$default(Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Surcharge;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AmountDetails;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 492
    check-cast p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    move-result-object p1

    return-object p1
.end method
