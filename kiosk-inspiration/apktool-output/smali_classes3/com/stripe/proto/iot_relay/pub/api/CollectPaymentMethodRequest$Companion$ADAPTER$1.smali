.class public final Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "CollectPaymentMethodRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollectPaymentMethodRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectPaymentMethodRequest.kt\ncom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,788:1\n463#2,7:789\n1#3:796\n*S KotlinDebug\n*F\n+ 1 CollectPaymentMethodRequest.kt\ncom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Companion$ADAPTER$1\n*L\n703#1:789,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;",
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
            "Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 599
    const-string v6, "uppsala/src/main/proto/com/stripe/iot_relay/pub/api/server_driven_api_service.proto"

    .line 593
    const-string v3, "type.googleapis.com/com.stripe.iot_relay.pub.api.CollectPaymentMethodRequest"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;
    .locals 31

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    check-cast v14, Ljava/util/List;

    .line 695
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->REQUEST_DYNAMIC_CURRENCY_CONVERSION_PAYMENT_METHOD_OPTIONS_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    .line 696
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 702
    sget-object v3, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    .line 789
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v4

    const-string v6, ""

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v27, v0

    move-object v10, v6

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v15, v13

    move-object/from16 v16, v15

    move-wide/from16 v17, v7

    move-object/from16 v19, v9

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object v6, v3

    move-object/from16 v7, v16

    move-object v8, v7

    move-object v9, v8

    .line 791
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    packed-switch v3, :pswitch_data_0

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 739
    invoke-virtual {v1, v3}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 735
    :pswitch_0
    :try_start_0
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v28, v6

    .line 737
    sget-object v6, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v3, v6, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 733
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    goto :goto_0

    :pswitch_2
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 732
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_0

    :pswitch_3
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 731
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    goto :goto_0

    :pswitch_4
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 730
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    goto :goto_0

    :pswitch_5
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 729
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    goto :goto_0

    :pswitch_6
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 728
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 724
    :try_start_1
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v27, v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 726
    sget-object v6, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v3, v6, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 722
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 721
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 717
    :try_start_2
    sget-object v0, Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1, v14}, Lcom/squareup/wire/ProtoAdapter;->tryDecode(Lcom/squareup/wire/ProtoReader;Ljava/util/List;)V
    :try_end_2
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    .line 719
    sget-object v6, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v3, v6, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 715
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 714
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 713
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 712
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 711
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 710
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    goto/16 :goto_0

    :pswitch_11
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 709
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    goto/16 :goto_0

    :pswitch_12
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 708
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    move-wide/from16 v17, v6

    move-object/from16 v6, v28

    move-object/from16 v7, v29

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 707
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_0

    :pswitch_14
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    .line 706
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_0

    :pswitch_15
    move-object/from16 v28, v6

    move-object/from16 v30, v8

    .line 705
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_0

    :goto_1
    move-object/from16 v6, v28

    move-object/from16 v7, v29

    move-object/from16 v8, v30

    goto/16 :goto_0

    :cond_0
    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    .line 795
    invoke-virtual {v1, v4, v5}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v0

    .line 742
    new-instance v1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;

    .line 743
    move-object/from16 v7, v29

    check-cast v7, Ljava/lang/String;

    .line 744
    move-object/from16 v3, v30

    check-cast v3, Ljava/lang/String;

    .line 745
    move-object v4, v9

    check-cast v4, Ljava/lang/String;

    .line 747
    check-cast v10, Ljava/lang/String;

    .line 748
    move-object/from16 v8, v19

    check-cast v8, Ljava/lang/Boolean;

    .line 749
    move-object/from16 v9, v20

    check-cast v9, Ljava/lang/Boolean;

    .line 750
    check-cast v21, Ljava/lang/Long;

    .line 751
    check-cast v11, Ljava/lang/String;

    .line 752
    check-cast v22, Ljava/lang/Boolean;

    .line 753
    check-cast v12, Ljava/lang/String;

    .line 755
    check-cast v13, Ljava/lang/String;

    .line 756
    check-cast v23, Ljava/lang/Boolean;

    .line 757
    check-cast v27, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    .line 759
    move-object/from16 v19, v15

    check-cast v19, Ljava/lang/String;

    .line 760
    move-object/from16 v20, v24

    check-cast v20, Ljava/lang/Boolean;

    .line 761
    check-cast v25, Ljava/lang/Boolean;

    .line 762
    check-cast v16, Ljava/lang/String;

    .line 763
    check-cast v26, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    .line 764
    move-object/from16 v24, v28

    check-cast v24, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    move-object v15, v13

    move-wide/from16 v5, v17

    move-object/from16 v17, v27

    move-object/from16 v18, v2

    move-object v2, v7

    move-object v7, v10

    move-object v13, v12

    move-object/from16 v10, v21

    move-object/from16 v12, v22

    move-object/from16 v21, v25

    move-object/from16 v25, v0

    move-object/from16 v22, v16

    move-object/from16 v16, v23

    move-object/from16 v23, v26

    .line 742
    invoke-direct/range {v1 .. v25}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

    .line 593
    invoke-virtual {p0, p1}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->device_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->device_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 630
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 631
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 632
    :cond_2
    iget-wide v2, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->charge_amount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->charge_amount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 633
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->currency:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->currency:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 634
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->skip_tipping:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->skip_tipping:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 635
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->moto:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->moto:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 636
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 637
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->terminal_action_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 638
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 639
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->reader_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->reader_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 640
    :cond_a
    sget-object v0, Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 641
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_account:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_account:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 642
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 643
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    sget-object v2, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->REQUEST_DYNAMIC_CURRENCY_CONVERSION_PAYMENT_METHOD_OPTIONS_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    if-eq v0, v2, :cond_d

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 644
    :cond_d
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0x10

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_method_types:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 645
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x11

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 646
    :cond_e
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x12

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 647
    :cond_f
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x13

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 648
    :cond_10
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage_str:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x14

    iget-object v2, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage_str:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 649
    :cond_11
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x15

    iget-object v2, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 650
    :cond_12
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    if-eq v0, v1, :cond_13

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x16

    iget-object v2, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 651
    :cond_13
    invoke-virtual {p2}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 593
    check-cast p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    invoke-virtual {p2}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 656
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x16

    iget-object v2, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 657
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x15

    iget-object v2, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 658
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage_str:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x14

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage_str:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 659
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x13

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 660
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x12

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 661
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x11

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 662
    :cond_5
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0x10

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_method_types:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 663
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    sget-object v2, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->REQUEST_DYNAMIC_CURRENCY_CONVERSION_PAYMENT_METHOD_OPTIONS_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    if-eq v0, v2, :cond_6

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 664
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 665
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_account:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_account:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 666
    :cond_8
    sget-object v0, Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 667
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->reader_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->reader_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 668
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 669
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->terminal_action_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 670
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 671
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->moto:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->moto:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 672
    :cond_d
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->skip_tipping:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->skip_tipping:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 673
    :cond_e
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->currency:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->currency:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 674
    :cond_f
    iget-wide v2, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->charge_amount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_10

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->charge_amount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 675
    :cond_10
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 676
    :cond_11
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 677
    :cond_12
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->device_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->device_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_13
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 593
    check-cast p2, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;)I
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    invoke-virtual {p1}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 603
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->device_id:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->device_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 604
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 605
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 606
    :cond_2
    iget-wide v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->charge_amount:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->charge_amount:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 607
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->currency:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->currency:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 608
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->skip_tipping:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x6

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->skip_tipping:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 609
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->moto:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->moto:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 610
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 611
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->terminal_action_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 612
    :cond_8
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xa

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 613
    :cond_9
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->reader_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xb

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->reader_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 614
    :cond_a
    sget-object v1, Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v3, 0xc

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 615
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_account:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xd

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_account:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 616
    :cond_b
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xe

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 617
    :cond_c
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    sget-object v3, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->REQUEST_DYNAMIC_CURRENCY_CONVERSION_PAYMENT_METHOD_OPTIONS_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    if-eq v1, v3, :cond_d

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xf

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 618
    :cond_d
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v3, 0x10

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_method_types:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 619
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x11

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 620
    :cond_e
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x12

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 621
    :cond_f
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v1, :cond_10

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x13

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 622
    :cond_10
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage_str:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x14

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage_str:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 623
    :cond_11
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    if-eqz v1, :cond_12

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x15

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 624
    :cond_12
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    sget-object v2, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    if-eq v1, v2, :cond_13

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x16

    iget-object p1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_13
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 593
    check-cast p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;
    .locals 28

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 770
    iget-object v0, v1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->skip_tipping:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object v8, v2

    .line 771
    :goto_0
    iget-object v0, v1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->moto:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object v9, v2

    .line 772
    :goto_1
    iget-object v0, v1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v0, :cond_2

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v10, v0

    goto :goto_2

    :cond_2
    move-object v10, v2

    .line 773
    :goto_2
    iget-object v0, v1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v12, v0

    goto :goto_3

    :cond_3
    move-object v12, v2

    .line 774
    :goto_3
    iget-object v0, v1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v16, v0

    goto :goto_4

    :cond_4
    move-object/from16 v16, v2

    .line 775
    :goto_4
    iget-object v0, v1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v20, v0

    goto :goto_5

    :cond_5
    move-object/from16 v20, v2

    .line 776
    :goto_5
    iget-object v0, v1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v21, v0

    goto :goto_6

    :cond_6
    move-object/from16 v21, v2

    .line 777
    :goto_6
    iget-object v0, v1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    if-eqz v0, :cond_7

    sget-object v2, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    :cond_7
    move-object/from16 v23, v2

    .line 778
    sget-object v25, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const v26, 0x29dd1f

    const/16 v27, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    .line 769
    invoke-static/range {v1 .. v27}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->copy$default(Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 593
    check-cast p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;

    move-result-object p1

    return-object p1
.end method
