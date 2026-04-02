.class public final Lcom/stripe/proto/model/config/RabbitClientConfig$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "RabbitClientConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/RabbitClientConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/config/RabbitClientConfig;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRabbitClientConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RabbitClientConfig.kt\ncom/stripe/proto/model/config/RabbitClientConfig$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,994:1\n463#2,7:995\n1#3:1002\n*S KotlinDebug\n*F\n+ 1 RabbitClientConfig.kt\ncom/stripe/proto/model/config/RabbitClientConfig$Companion$ADAPTER$1\n*L\n865#1:995,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/config/RabbitClientConfig$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/config/RabbitClientConfig;",
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
            "Lcom/stripe/proto/model/config/RabbitClientConfig;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 749
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/config/armada_config.proto"

    .line 743
    const-string v3, "type.googleapis.com/com.stripe.proto.model.config.RabbitClientConfig"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/RabbitClientConfig;
    .locals 33

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 841
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 843
    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 846
    sget-object v3, Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;->UNKNOWN:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    .line 849
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v4

    check-cast v15, Ljava/util/List;

    .line 854
    sget-object v4, Lcom/stripe/proto/model/payments/PaymentProcessor;->UNKNOWN_PROCESSOR:Lcom/stripe/proto/model/payments/PaymentProcessor;

    .line 855
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 995
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, ""

    move-object/from16 v29, v0

    move-object v11, v8

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move/from16 v25, v9

    move/from16 v26, v25

    move/from16 v27, v26

    move-object/from16 v28, v10

    move-object v8, v4

    move-object/from16 v9, v24

    move-object v10, v9

    move-object v4, v3

    move-object v3, v2

    .line 997
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 900
    invoke-virtual {v1, v2}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_2

    .line 899
    :pswitch_1
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    goto :goto_1

    .line 898
    :pswitch_2
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    goto :goto_1

    .line 897
    :pswitch_3
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    goto :goto_1

    .line 896
    :pswitch_4
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_1

    .line 895
    :pswitch_5
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_1

    .line 894
    :pswitch_6
    sget-object v0, Lcom/stripe/proto/model/config/MagstripeConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_1

    .line 893
    :pswitch_7
    sget-object v0, Lcom/stripe/proto/model/config/TimeWindowConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_1

    .line 892
    :pswitch_8
    sget-object v0, Lcom/stripe/proto/model/config/RebootTimeWindowConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_1

    .line 891
    :pswitch_9
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    :goto_1
    move-object/from16 v31, v5

    goto/16 :goto_3

    .line 890
    :pswitch_a
    sget-object v0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    goto/16 :goto_2

    .line 886
    :pswitch_b
    :try_start_0
    sget-object v0, Lcom/stripe/proto/model/payments/PaymentProcessor;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v30, v3

    .line 888
    sget-object v3, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_c
    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 884
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    goto/16 :goto_3

    :pswitch_d
    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 883
    sget-object v0, Lcom/stripe/proto/model/config/PinpadImageAssets;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    goto/16 :goto_3

    :pswitch_e
    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 882
    sget-object v0, Lcom/stripe/proto/model/common/IntervalPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    goto/16 :goto_3

    :pswitch_f
    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 881
    sget-object v0, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    goto/16 :goto_3

    :pswitch_10
    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 871
    sget-object v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    goto/16 :goto_3

    :pswitch_11
    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 869
    sget-object v0, Lcom/stripe/proto/model/config/ClientVisualConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    goto/16 :goto_3

    :pswitch_12
    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 879
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move/from16 v27, v0

    goto/16 :goto_3

    :pswitch_13
    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 880
    sget-object v0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_14
    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 878
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move/from16 v26, v0

    goto/16 :goto_3

    :pswitch_15
    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 874
    :try_start_1
    sget-object v0, Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v0

    move-object/from16 v3, v30

    goto :goto_3

    :catch_1
    move-exception v0

    .line 876
    sget-object v3, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_16
    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 872
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move/from16 v25, v0

    goto :goto_3

    :pswitch_17
    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 870
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    goto :goto_3

    :pswitch_18
    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 868
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v0

    goto :goto_3

    :pswitch_19
    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 867
    sget-object v0, Lcom/stripe/proto/model/config/RabbitUxAssets;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto :goto_3

    :goto_2
    move-object/from16 v3, v30

    move-object/from16 v4, v32

    :goto_3
    move-object/from16 v5, v31

    goto/16 :goto_0

    :cond_0
    move-object/from16 v30, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 1001
    invoke-virtual {v1, v6, v7}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v0

    .line 903
    new-instance v5, Lcom/stripe/proto/model/config/RabbitClientConfig;

    .line 904
    move-object v6, v9

    check-cast v6, Lcom/stripe/proto/model/config/RabbitUxAssets;

    .line 905
    move-object/from16 v7, v29

    check-cast v7, Lokio/ByteString;

    .line 906
    check-cast v10, Lcom/stripe/proto/model/config/ClientVisualConfig;

    .line 907
    move-object/from16 v9, v30

    check-cast v9, Lokio/ByteString;

    .line 908
    check-cast v11, Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    .line 910
    move-object/from16 v4, v32

    check-cast v4, Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    .line 914
    check-cast v12, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    .line 915
    check-cast v13, Lcom/stripe/proto/model/common/IntervalPb;

    .line 916
    check-cast v14, Lcom/stripe/proto/model/config/PinpadImageAssets;

    .line 917
    check-cast v28, Ljava/lang/String;

    .line 918
    check-cast v8, Lcom/stripe/proto/model/payments/PaymentProcessor;

    .line 920
    check-cast v16, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    .line 921
    check-cast v17, Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    .line 922
    check-cast v18, Lcom/stripe/proto/model/config/TimeWindowConfig;

    .line 923
    check-cast v19, Lcom/stripe/proto/model/config/MagstripeConfig;

    .line 924
    check-cast v20, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    .line 925
    check-cast v21, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    .line 926
    check-cast v22, Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    .line 927
    move-object/from16 v29, v23

    check-cast v29, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    .line 928
    move-object/from16 v30, v24

    check-cast v30, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    move-object/from16 v23, v17

    move-object/from16 v24, v18

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    move/from16 v13, v26

    move/from16 v14, v27

    move-object/from16 v26, v20

    move-object/from16 v27, v21

    move-object/from16 v21, v31

    move-object/from16 v31, v0

    move-object/from16 v20, v8

    move-object v8, v10

    move-object v10, v11

    move/from16 v11, v25

    move-object/from16 v25, v19

    move-object/from16 v19, v28

    move-object/from16 v28, v22

    move-object/from16 v22, v16

    move-object/from16 v16, v12

    move-object v12, v4

    .line 903
    invoke-direct/range {v5 .. v31}, Lcom/stripe/proto/model/config/RabbitClientConfig;-><init>(Lcom/stripe/proto/model/config/RabbitUxAssets;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientVisualConfig;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientCheckoutOptions;ILcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;ZZLjava/util/List;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/IntervalPb;Lcom/stripe/proto/model/config/PinpadImageAssets;Ljava/lang/String;Lcom/stripe/proto/model/payments/PaymentProcessor;Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/RebootTimeWindowConfig;Lcom/stripe/proto/model/config/TimeWindowConfig;Lcom/stripe/proto/model/config/MagstripeConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;)V

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_16
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
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 743
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/RabbitClientConfig$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/RabbitClientConfig;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/RabbitClientConfig;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 782
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/config/RabbitUxAssets;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 783
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_assets:Lokio/ByteString;

    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_assets:Lokio/ByteString;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 784
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/config/ClientVisualConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 785
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_flags:Lokio/ByteString;

    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_flags:Lokio/ByteString;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 786
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 787
    :cond_4
    iget v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->heartbeat_interval_seconds:I

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->heartbeat_interval_seconds:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 788
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->payment_processor:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    sget-object v1, Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;->UNKNOWN:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->payment_processor:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 789
    :cond_6
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_identity_token:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_identity_token:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 790
    :cond_7
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_cardholder_name:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_cardholder_name:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 791
    :cond_8
    sget-object v0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->gift_card_bin_entries:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 792
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 793
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->reset_window:Lcom/stripe/proto/model/common/IntervalPb;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/stripe/proto/model/common/IntervalPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->reset_window:Lcom/stripe/proto/model/common/IntervalPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 794
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/stripe/proto/model/config/PinpadImageAssets;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 795
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->bin_config_rule_checksum:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->bin_config_rule_checksum:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 796
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->emv_processor:Lcom/stripe/proto/model/payments/PaymentProcessor;

    sget-object v1, Lcom/stripe/proto/model/payments/PaymentProcessor;->UNKNOWN_PROCESSOR:Lcom/stripe/proto/model/payments/PaymentProcessor;

    if-eq v0, v1, :cond_d

    sget-object v0, Lcom/stripe/proto/model/payments/PaymentProcessor;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->emv_processor:Lcom/stripe/proto/model/payments/PaymentProcessor;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 797
    :cond_d
    sget-object v0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0x11

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->card_bin_entries:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 798
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x13

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 799
    :cond_e
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/stripe/proto/model/config/RebootTimeWindowConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x14

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 800
    :cond_f
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/stripe/proto/model/config/TimeWindowConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x15

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 801
    :cond_10
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/stripe/proto/model/config/MagstripeConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x17

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 802
    :cond_11
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x18

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 803
    :cond_12
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x19

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 804
    :cond_13
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1a

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 805
    :cond_14
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1b

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 806
    :cond_15
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1c

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 807
    :cond_16
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/RabbitClientConfig;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 743
    check-cast p2, Lcom/stripe/proto/model/config/RabbitClientConfig;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/RabbitClientConfig$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/RabbitClientConfig;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/RabbitClientConfig;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 811
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/RabbitClientConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 812
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1c

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 813
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1b

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 814
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x1a

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 815
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x19

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 816
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x18

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 817
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/model/config/MagstripeConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x17

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 818
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/proto/model/config/TimeWindowConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x15

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 819
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/stripe/proto/model/config/RebootTimeWindowConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x14

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 820
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x13

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 821
    :cond_8
    sget-object v0, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0x11

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->card_bin_entries:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 822
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->emv_processor:Lcom/stripe/proto/model/payments/PaymentProcessor;

    sget-object v1, Lcom/stripe/proto/model/payments/PaymentProcessor;->UNKNOWN_PROCESSOR:Lcom/stripe/proto/model/payments/PaymentProcessor;

    if-eq v0, v1, :cond_9

    sget-object v0, Lcom/stripe/proto/model/payments/PaymentProcessor;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->emv_processor:Lcom/stripe/proto/model/payments/PaymentProcessor;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 823
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->bin_config_rule_checksum:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->bin_config_rule_checksum:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 824
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/stripe/proto/model/config/PinpadImageAssets;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 825
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->reset_window:Lcom/stripe/proto/model/common/IntervalPb;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/stripe/proto/model/common/IntervalPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->reset_window:Lcom/stripe/proto/model/common/IntervalPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 826
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 827
    :cond_d
    sget-object v0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->gift_card_bin_entries:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 828
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_cardholder_name:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_cardholder_name:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 829
    :cond_e
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_identity_token:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_identity_token:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 830
    :cond_f
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->payment_processor:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    sget-object v1, Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;->UNKNOWN:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    if-eq v0, v1, :cond_10

    sget-object v0, Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->payment_processor:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 831
    :cond_10
    iget v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->heartbeat_interval_seconds:I

    if-eqz v0, :cond_11

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->heartbeat_interval_seconds:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 832
    :cond_11
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 833
    :cond_12
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_flags:Lokio/ByteString;

    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_flags:Lokio/ByteString;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 834
    :cond_13
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/stripe/proto/model/config/ClientVisualConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 835
    :cond_14
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_assets:Lokio/ByteString;

    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_assets:Lokio/ByteString;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 836
    :cond_15
    iget-object v0, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/stripe/proto/model/config/RabbitUxAssets;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 743
    check-cast p2, Lcom/stripe/proto/model/config/RabbitClientConfig;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/RabbitClientConfig$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/RabbitClientConfig;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/config/RabbitClientConfig;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    invoke-virtual {p1}, Lcom/stripe/proto/model/config/RabbitClientConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 753
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stripe/proto/model/config/RabbitUxAssets;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 754
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_assets:Lokio/ByteString;

    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_assets:Lokio/ByteString;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 755
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/stripe/proto/model/config/ClientVisualConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 756
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_flags:Lokio/ByteString;

    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BYTES:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_options_flags:Lokio/ByteString;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 757
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 758
    :cond_4
    iget v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->heartbeat_interval_seconds:I

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->heartbeat_interval_seconds:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 759
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->payment_processor:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    sget-object v2, Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;->UNKNOWN:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    if-eq v1, v2, :cond_6

    sget-object v1, Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->payment_processor:Lcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 760
    :cond_6
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_identity_token:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_identity_token:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 761
    :cond_7
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_cardholder_name:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->return_cardholder_name:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 762
    :cond_8
    sget-object v1, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->gift_card_bin_entries:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 763
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 764
    :cond_9
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->reset_window:Lcom/stripe/proto/model/common/IntervalPb;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/stripe/proto/model/common/IntervalPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->reset_window:Lcom/stripe/proto/model/common/IntervalPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 765
    :cond_a
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/stripe/proto/model/config/PinpadImageAssets;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 766
    :cond_b
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->bin_config_rule_checksum:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->bin_config_rule_checksum:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 767
    :cond_c
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->emv_processor:Lcom/stripe/proto/model/payments/PaymentProcessor;

    sget-object v2, Lcom/stripe/proto/model/payments/PaymentProcessor;->UNKNOWN_PROCESSOR:Lcom/stripe/proto/model/payments/PaymentProcessor;

    if-eq v1, v2, :cond_d

    sget-object v1, Lcom/stripe/proto/model/payments/PaymentProcessor;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->emv_processor:Lcom/stripe/proto/model/payments/PaymentProcessor;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 768
    :cond_d
    sget-object v1, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/16 v2, 0x11

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->card_bin_entries:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 769
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x13

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 770
    :cond_e
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/stripe/proto/model/config/RebootTimeWindowConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x14

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 771
    :cond_f
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;

    if-eqz v1, :cond_10

    sget-object v1, Lcom/stripe/proto/model/config/TimeWindowConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x15

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 772
    :cond_10
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;

    if-eqz v1, :cond_11

    sget-object v1, Lcom/stripe/proto/model/config/MagstripeConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x17

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 773
    :cond_11
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    if-eqz v1, :cond_12

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x18

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 774
    :cond_12
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    if-eqz v1, :cond_13

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x19

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 775
    :cond_13
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    if-eqz v1, :cond_14

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x1a

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 776
    :cond_14
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    if-eqz v1, :cond_15

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x1b

    iget-object v3, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 777
    :cond_15
    iget-object v1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    if-eqz v1, :cond_16

    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x1c

    iget-object p1, p1, Lcom/stripe/proto/model/config/RabbitClientConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_16
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 743
    check-cast p1, Lcom/stripe/proto/model/config/RabbitClientConfig;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/RabbitClientConfig$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/config/RabbitClientConfig;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/config/RabbitClientConfig;)Lcom/stripe/proto/model/config/RabbitClientConfig;
    .locals 30

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 934
    iget-object v0, v1, Lcom/stripe/proto/model/config/RabbitClientConfig;->ux_assets:Lcom/stripe/proto/model/config/RabbitUxAssets;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/stripe/proto/model/config/RabbitUxAssets;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/RabbitUxAssets;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 935
    :goto_0
    iget-object v3, v1, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_visual_config:Lcom/stripe/proto/model/config/ClientVisualConfig;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/stripe/proto/model/config/ClientVisualConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/model/config/ClientVisualConfig;

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 936
    :goto_1
    iget-object v3, v1, Lcom/stripe/proto/model/config/RabbitClientConfig;->client_checkout_options:Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    if-eqz v3, :cond_2

    sget-object v5, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    move-object v6, v3

    goto :goto_2

    :cond_2
    move-object v6, v2

    .line 937
    :goto_2
    iget-object v3, v1, Lcom/stripe/proto/model/config/RabbitClientConfig;->gift_card_bin_entries:Ljava/util/List;

    sget-object v5, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v3, v5}, Lcom/squareup/wire/internal/Internal;->-redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v11

    .line 938
    iget-object v3, v1, Lcom/stripe/proto/model/config/RabbitClientConfig;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v3, :cond_3

    sget-object v5, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    move-object v12, v3

    goto :goto_3

    :cond_3
    move-object v12, v2

    .line 939
    :goto_3
    iget-object v3, v1, Lcom/stripe/proto/model/config/RabbitClientConfig;->reset_window:Lcom/stripe/proto/model/common/IntervalPb;

    if-eqz v3, :cond_4

    sget-object v5, Lcom/stripe/proto/model/common/IntervalPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/model/common/IntervalPb;

    move-object v13, v3

    goto :goto_4

    :cond_4
    move-object v13, v2

    .line 940
    :goto_4
    iget-object v3, v1, Lcom/stripe/proto/model/config/RabbitClientConfig;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    if-eqz v3, :cond_5

    sget-object v5, Lcom/stripe/proto/model/config/PinpadImageAssets;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/model/config/PinpadImageAssets;

    move-object v14, v3

    goto :goto_5

    :cond_5
    move-object v14, v2

    .line 941
    :goto_5
    iget-object v3, v1, Lcom/stripe/proto/model/config/RabbitClientConfig;->card_bin_entries:Ljava/util/List;

    sget-object v5, Lcom/stripe/proto/model/payments/BinTablePb$CardBinEntry;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v3, v5}, Lcom/squareup/wire/internal/Internal;->-redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v17

    .line 942
    iget-object v3, v1, Lcom/stripe/proto/model/config/RabbitClientConfig;->tipping_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    if-eqz v3, :cond_6

    sget-object v5, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    move-object/from16 v18, v3

    goto :goto_6

    :cond_6
    move-object/from16 v18, v2

    .line 943
    :goto_6
    iget-object v3, v1, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_time_window:Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    if-eqz v3, :cond_7

    sget-object v5, Lcom/stripe/proto/model/config/RebootTimeWindowConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/model/config/RebootTimeWindowConfig;

    move-object/from16 v19, v3

    goto :goto_7

    :cond_7
    move-object/from16 v19, v2

    .line 944
    :goto_7
    iget-object v3, v1, Lcom/stripe/proto/model/config/RabbitClientConfig;->reboot_schedule:Lcom/stripe/proto/model/config/TimeWindowConfig;

    if-eqz v3, :cond_8

    sget-object v5, Lcom/stripe/proto/model/config/TimeWindowConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/model/config/TimeWindowConfig;

    move-object/from16 v20, v3

    goto :goto_8

    :cond_8
    move-object/from16 v20, v2

    .line 945
    :goto_8
    iget-object v3, v1, Lcom/stripe/proto/model/config/RabbitClientConfig;->magstripe_config:Lcom/stripe/proto/model/config/MagstripeConfig;

    if-eqz v3, :cond_9

    sget-object v5, Lcom/stripe/proto/model/config/MagstripeConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/model/config/MagstripeConfig;

    move-object/from16 v21, v3

    goto :goto_9

    :cond_9
    move-object/from16 v21, v2

    .line 946
    :goto_9
    iget-object v3, v1, Lcom/stripe/proto/model/config/RabbitClientConfig;->offline_configuration:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    if-eqz v3, :cond_a

    sget-object v5, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    move-object/from16 v22, v3

    goto :goto_a

    :cond_a
    move-object/from16 v22, v2

    .line 947
    :goto_a
    iget-object v3, v1, Lcom/stripe/proto/model/config/RabbitClientConfig;->forms_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    if-eqz v3, :cond_b

    sget-object v5, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;

    move-object/from16 v23, v3

    goto :goto_b

    :cond_b
    move-object/from16 v23, v2

    .line 948
    :goto_b
    iget-object v3, v1, Lcom/stripe/proto/model/config/RabbitClientConfig;->lpm_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    if-eqz v3, :cond_c

    sget-object v5, Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;

    move-object/from16 v24, v3

    goto :goto_c

    :cond_c
    move-object/from16 v24, v2

    .line 949
    :goto_c
    iget-object v3, v1, Lcom/stripe/proto/model/config/RabbitClientConfig;->wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    if-eqz v3, :cond_d

    sget-object v5, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    move-object/from16 v25, v3

    goto :goto_d

    :cond_d
    move-object/from16 v25, v2

    .line 950
    :goto_d
    iget-object v3, v1, Lcom/stripe/proto/model/config/RabbitClientConfig;->app_theme_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    if-eqz v3, :cond_e

    sget-object v2, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    :cond_e
    move-object/from16 v26, v2

    .line 951
    sget-object v27, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v28, 0x61ea

    const/16 v29, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v2, v0

    .line 933
    invoke-static/range {v1 .. v29}, Lcom/stripe/proto/model/config/RabbitClientConfig;->copy$default(Lcom/stripe/proto/model/config/RabbitClientConfig;Lcom/stripe/proto/model/config/RabbitUxAssets;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientVisualConfig;Lokio/ByteString;Lcom/stripe/proto/model/config/ClientCheckoutOptions;ILcom/stripe/proto/model/config/RabbitClientConfig$DeprecatedPaymentProcessor;ZZLjava/util/List;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/IntervalPb;Lcom/stripe/proto/model/config/PinpadImageAssets;Ljava/lang/String;Lcom/stripe/proto/model/payments/PaymentProcessor;Ljava/util/List;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/model/config/RebootTimeWindowConfig;Lcom/stripe/proto/model/config/TimeWindowConfig;Lcom/stripe/proto/model/config/MagstripeConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LpmConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/RabbitClientConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 743
    check-cast p1, Lcom/stripe/proto/model/config/RabbitClientConfig;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/RabbitClientConfig$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/config/RabbitClientConfig;)Lcom/stripe/proto/model/config/RabbitClientConfig;

    move-result-object p1

    return-object p1
.end method
