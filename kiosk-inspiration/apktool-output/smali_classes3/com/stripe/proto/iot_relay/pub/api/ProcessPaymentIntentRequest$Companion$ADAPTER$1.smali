.class public final Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ProcessPaymentIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProcessPaymentIntentRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProcessPaymentIntentRequest.kt\ncom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,720:1\n463#2,7:721\n1#3:728\n*S KotlinDebug\n*F\n+ 1 ProcessPaymentIntentRequest.kt\ncom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Companion$ADAPTER$1\n*L\n644#1:721,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;",
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
            "Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 548
    const-string v6, "uppsala/src/main/proto/com/stripe/iot_relay/pub/api/server_driven_api_service.proto"

    .line 542
    const-string v3, "type.googleapis.com/com.stripe.iot_relay.pub.api.ProcessPaymentIntentRequest"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;
    .locals 31

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    check-cast v15, Ljava/util/List;

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 642
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    .line 721
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v3

    const-string v5, ""

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v25, v0

    move-object v9, v5

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-wide/from16 v16, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object v6, v14

    move-object v7, v6

    move-object v8, v7

    .line 723
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v5

    const/4 v0, -0x1

    if-eq v5, v0, :cond_0

    packed-switch v5, :pswitch_data_0

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 674
    invoke-virtual {v1, v5}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 673
    :pswitch_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    goto :goto_0

    .line 669
    :pswitch_1
    :try_start_0
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v25, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v26, v6

    .line 671
    sget-object v6, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v5, v6, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 667
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    :pswitch_3
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 666
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    goto :goto_0

    :pswitch_4
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 665
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    goto :goto_0

    :pswitch_5
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 664
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 663
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 659
    :try_start_1
    sget-object v0, Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1, v15}, Lcom/squareup/wire/ProtoAdapter;->tryDecode(Lcom/squareup/wire/ProtoReader;Ljava/util/List;)V
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 661
    sget-object v6, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v5, v6, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 657
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 656
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 655
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 654
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 653
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 652
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 651
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 650
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 649
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    move-wide/from16 v16, v5

    move-object/from16 v6, v26

    goto/16 :goto_0

    :pswitch_11
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    .line 648
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_0

    :pswitch_12
    move-object/from16 v26, v6

    move-object/from16 v28, v8

    .line 647
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 646
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_0

    :goto_1
    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v8, v28

    goto/16 :goto_0

    :cond_0
    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    .line 727
    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v0

    .line 677
    new-instance v1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;

    .line 678
    move-object/from16 v6, v26

    check-cast v6, Ljava/lang/String;

    .line 679
    move-object/from16 v3, v27

    check-cast v3, Ljava/lang/String;

    .line 680
    move-object/from16 v4, v28

    check-cast v4, Ljava/lang/String;

    .line 682
    move-object v7, v9

    check-cast v7, Ljava/lang/String;

    .line 683
    move-object/from16 v8, v18

    check-cast v8, Ljava/lang/Boolean;

    .line 684
    move-object/from16 v9, v19

    check-cast v9, Ljava/lang/Boolean;

    .line 685
    check-cast v20, Ljava/lang/Long;

    .line 686
    check-cast v10, Ljava/lang/String;

    .line 687
    check-cast v21, Ljava/lang/Boolean;

    .line 688
    check-cast v11, Ljava/lang/String;

    .line 689
    check-cast v12, Ljava/lang/String;

    .line 691
    check-cast v22, Ljava/lang/Boolean;

    .line 693
    move-object/from16 v18, v23

    check-cast v18, Ljava/lang/Boolean;

    .line 694
    move-object/from16 v19, v24

    check-cast v19, Ljava/lang/Boolean;

    .line 695
    check-cast v13, Ljava/lang/String;

    .line 696
    check-cast v25, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    .line 697
    check-cast v14, Ljava/lang/String;

    move-wide/from16 v29, v16

    move-object/from16 v17, v2

    move-object v2, v6

    move-wide/from16 v5, v29

    move-object/from16 v23, v11

    move-object v11, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v13

    move-object/from16 v13, v23

    move-object/from16 v23, v0

    move-object/from16 v16, v22

    move-object/from16 v22, v14

    move-object v14, v12

    move-object/from16 v12, v21

    move-object/from16 v21, v25

    .line 677
    invoke-direct/range {v1 .. v23}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 542
    invoke-virtual {p0, p1}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->device_id:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->device_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 577
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 578
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_intent_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_intent_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 579
    :cond_2
    iget-wide v2, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->charge_amount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->charge_amount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 580
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->currency:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->currency:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 581
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->skip_tipping:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->skip_tipping:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 582
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->moto:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->moto:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 583
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->tip_eligible_amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 584
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->terminal_action_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 585
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 586
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->reader_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->reader_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 587
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_account:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_account:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 588
    :cond_b
    sget-object v0, Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0xd

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 589
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 590
    :cond_c
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0xf

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_method_types:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 591
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 592
    :cond_d
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x11

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 593
    :cond_e
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage_str:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x12

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage_str:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 594
    :cond_f
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    sget-object v2, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    if-eq v0, v2, :cond_10

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x13

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 595
    :cond_10
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->return_url:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x14

    iget-object v2, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->return_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 596
    :cond_11
    invoke-virtual {p2}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 542
    check-cast p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 601
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->return_url:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x14

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->return_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 602
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    sget-object v2, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x13

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 603
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage_str:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x12

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage_str:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 604
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x11

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 605
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 606
    :cond_4
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0xf

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_method_types:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 607
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 608
    :cond_5
    sget-object v0, Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v2, 0xd

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 609
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_account:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_account:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 610
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->reader_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->reader_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 611
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 612
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->terminal_action_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 613
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->tip_eligible_amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 614
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->moto:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->moto:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 615
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->skip_tipping:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->skip_tipping:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 616
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->currency:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->currency:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 617
    :cond_d
    iget-wide v2, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->charge_amount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->charge_amount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 618
    :cond_e
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_intent_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_intent_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 619
    :cond_f
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 620
    :cond_10
    iget-object v0, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->device_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->device_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 542
    check-cast p2, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;)I
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    invoke-virtual {p1}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 552
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->device_id:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->device_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 553
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 554
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_intent_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_intent_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 555
    :cond_2
    iget-wide v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->charge_amount:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->charge_amount:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 556
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->currency:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->currency:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 557
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->skip_tipping:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x6

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->skip_tipping:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 558
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->moto:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->moto:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 559
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->tip_eligible_amount:Ljava/lang/Long;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 560
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x9

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->terminal_action_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 561
    :cond_8
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xa

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 562
    :cond_9
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->reader_id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xb

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->reader_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 563
    :cond_a
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_account:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xc

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_account:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 564
    :cond_b
    sget-object v1, Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v3, 0xd

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 565
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0xe

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 566
    :cond_c
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v3, 0xf

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_method_types:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 567
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x10

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 568
    :cond_d
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x11

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 569
    :cond_e
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage_str:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x12

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage_str:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 570
    :cond_f
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    sget-object v3, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    if-eq v1, v3, :cond_10

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v3, 0x13

    iget-object v4, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 571
    :cond_10
    iget-object v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->return_url:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x14

    iget-object p1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->return_url:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_11
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 542
    check-cast p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;)Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;
    .locals 26

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    iget-object v0, v1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->skip_tipping:Ljava/lang/Boolean;

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

    .line 704
    :goto_0
    iget-object v0, v1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->moto:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object v9, v2

    .line 705
    :goto_1
    iget-object v0, v1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v0, :cond_2

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v10, v0

    goto :goto_2

    :cond_2
    move-object v10, v2

    .line 706
    :goto_2
    iget-object v0, v1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v12, v0

    goto :goto_3

    :cond_3
    move-object v12, v2

    .line 707
    :goto_3
    iget-object v0, v1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v16, v0

    goto :goto_4

    :cond_4
    move-object/from16 v16, v2

    .line 708
    :goto_4
    iget-object v0, v1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v18, v0

    goto :goto_5

    :cond_5
    move-object/from16 v18, v2

    .line 709
    :goto_5
    iget-object v0, v1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    :cond_6
    move-object/from16 v19, v2

    .line 710
    sget-object v23, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const v24, 0xe5d1f

    const/16 v25, 0x0

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

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 702
    invoke-static/range {v1 .. v25}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->copy$default(Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 542
    check-cast p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;)Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;

    move-result-object p1

    return-object p1
.end method
