.class public final Lcom/stripe/bbpos/sdk/StartEmvRequest$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "StartEmvRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/StartEmvRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/bbpos/sdk/StartEmvRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStartEmvRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartEmvRequest.kt\ncom/stripe/bbpos/sdk/StartEmvRequest$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n*L\n1#1,663:1\n463#2,7:664\n*S KotlinDebug\n*F\n+ 1 StartEmvRequest.kt\ncom/stripe/bbpos/sdk/StartEmvRequest$Companion$ADAPTER$1\n*L\n584#1:664,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/bbpos/sdk/StartEmvRequest$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/bbpos/sdk/StartEmvRequest;",
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
        "sdk-protos_release"
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
            "Lcom/stripe/bbpos/sdk/StartEmvRequest;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 492
    const-string v6, "com/stripe/bbpos/sdk/start_emv.proto"

    .line 486
    const-string v3, "type.googleapis.com/StartEmvRequest"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/bbpos/sdk/StartEmvRequest;
    .locals 28

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    sget-object v0, Lcom/stripe/bbpos/sdk/TransactionType;->TRANSACTION_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/TransactionType;

    .line 566
    sget-object v2, Lcom/stripe/bbpos/sdk/CheckCardMode;->CHECK_CARD_MODE_UNKNOWN:Lcom/stripe/bbpos/sdk/CheckCardMode;

    .line 576
    sget-object v3, Lcom/stripe/bbpos/sdk/QuickChipOption;->QUICK_CHIP_OPTION_UNKNOWN:Lcom/stripe/bbpos/sdk/QuickChipOption;

    .line 664
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v4

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    move-object/from16 v21, v0

    move v10, v6

    move v11, v10

    move v13, v11

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v20, v17

    move/from16 v24, v20

    move/from16 v25, v24

    move-object v9, v8

    move-object v12, v9

    move-object/from16 v18, v12

    move-object/from16 v19, v18

    move-object v6, v3

    move-object v8, v7

    move-object v3, v2

    .line 666
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    packed-switch v2, :pswitch_data_0

    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    .line 625
    invoke-virtual {v1, v2}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 624
    :pswitch_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_0

    .line 623
    :pswitch_1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move/from16 v25, v0

    goto :goto_0

    .line 622
    :pswitch_2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move/from16 v24, v0

    goto :goto_0

    .line 618
    :pswitch_3
    :try_start_0
    sget-object v0, Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v18, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v22, v3

    .line 620
    sget-object v3, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    .line 613
    :try_start_1
    sget-object v0, Lcom/stripe/bbpos/sdk/DomesticDebitPriority;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v12, v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 615
    sget-object v3, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    .line 611
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    .line 610
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move/from16 v20, v0

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    .line 606
    :try_start_2
    sget-object v0, Lcom/stripe/bbpos/sdk/QuickChipOption;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v0

    move-object/from16 v3, v22

    goto/16 :goto_3

    :catch_2
    move-exception v0

    .line 608
    sget-object v3, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    .line 604
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    .line 603
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move/from16 v17, v0

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    .line 602
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move/from16 v16, v0

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    .line 601
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move v15, v0

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    .line 600
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move v14, v0

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    .line 599
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v13, v0

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v22, v3

    move-object/from16 v23, v6

    .line 598
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    .line 597
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move v11, v0

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    .line 596
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move v10, v0

    goto/16 :goto_0

    :pswitch_11
    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    .line 592
    :try_start_3
    sget-object v0, Lcom/stripe/bbpos/sdk/CheckCardMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v3, v0

    goto :goto_2

    :catch_3
    move-exception v0

    .line 594
    sget-object v3, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_12
    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    .line 587
    :try_start_4
    sget-object v0, Lcom/stripe/bbpos/sdk/TransactionType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v21, v0

    goto :goto_1

    :catch_4
    move-exception v0

    .line 589
    sget-object v3, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    :goto_1
    move-object/from16 v3, v22

    :goto_2
    move-object/from16 v6, v23

    :goto_3
    move-object/from16 v7, v26

    goto/16 :goto_0

    :cond_0
    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v26, v7

    .line 670
    invoke-virtual {v1, v4, v5}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v27

    .line 628
    new-instance v7, Lcom/stripe/bbpos/sdk/StartEmvRequest;

    .line 629
    check-cast v21, Lcom/stripe/bbpos/sdk/TransactionType;

    .line 630
    move-object/from16 v3, v22

    check-cast v3, Lcom/stripe/bbpos/sdk/CheckCardMode;

    .line 633
    move-object/from16 v0, v26

    check-cast v0, Ljava/lang/String;

    .line 639
    check-cast v8, Ljava/lang/String;

    .line 640
    move-object/from16 v6, v23

    check-cast v6, Lcom/stripe/bbpos/sdk/QuickChipOption;

    .line 642
    check-cast v9, Ljava/lang/String;

    .line 643
    move-object/from16 v22, v12

    check-cast v22, Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

    .line 644
    move-object/from16 v23, v18

    check-cast v23, Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;

    .line 647
    move-object/from16 v26, v19

    check-cast v26, Ljava/lang/Integer;

    move-object v12, v0

    move-object/from16 v19, v6

    move-object/from16 v18, v8

    move-object/from16 v8, v21

    move-object/from16 v21, v9

    move-object v9, v3

    .line 628
    invoke-direct/range {v7 .. v27}, Lcom/stripe/bbpos/sdk/StartEmvRequest;-><init>(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;IILjava/lang/String;ZIIIILjava/lang/String;Lcom/stripe/bbpos/sdk/QuickChipOption;ZLjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;Lokio/ByteString;)V

    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 486
    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/sdk/StartEmvRequest$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/bbpos/sdk/StartEmvRequest;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/bbpos/sdk/StartEmvRequest;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->transactionType:Lcom/stripe/bbpos/sdk/TransactionType;

    sget-object v1, Lcom/stripe/bbpos/sdk/TransactionType;->TRANSACTION_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/TransactionType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/bbpos/sdk/TransactionType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->transactionType:Lcom/stripe/bbpos/sdk/TransactionType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 520
    :cond_0
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    sget-object v1, Lcom/stripe/bbpos/sdk/CheckCardMode;->CHECK_CARD_MODE_UNKNOWN:Lcom/stripe/bbpos/sdk/CheckCardMode;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/stripe/bbpos/sdk/CheckCardMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 521
    :cond_1
    iget v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyCode:I

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 522
    :cond_2
    iget v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyExponent:I

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyExponent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 523
    :cond_3
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->amount:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->amount:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 524
    :cond_4
    iget-boolean v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->disableQuickChip:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->disableQuickChip:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 525
    :cond_5
    iget v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardTimeout:I

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 526
    :cond_6
    iget v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectApplicationTimeout:I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectApplicationTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 527
    :cond_7
    iget v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectAccountTypeTimeout:I

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectAccountTypeTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 528
    :cond_8
    iget v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->onlineProcessTimeout:I

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->onlineProcessTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 529
    :cond_9
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalTime:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalTime:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 530
    :cond_a
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->quickChipOption:Lcom/stripe/bbpos/sdk/QuickChipOption;

    sget-object v1, Lcom/stripe/bbpos/sdk/QuickChipOption;->QUICK_CHIP_OPTION_UNKNOWN:Lcom/stripe/bbpos/sdk/QuickChipOption;

    if-eq v0, v1, :cond_b

    sget-object v0, Lcom/stripe/bbpos/sdk/QuickChipOption;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->quickChipOption:Lcom/stripe/bbpos/sdk/QuickChipOption;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 531
    :cond_b
    iget-boolean v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isMerchantChoiceRouting:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isMerchantChoiceRouting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 532
    :cond_c
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalCapabilitiesOverride:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 533
    sget-object v0, Lcom/stripe/bbpos/sdk/DomesticDebitPriority;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->domesticDebitPriority:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 534
    sget-object v0, Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->contactlessOnlinePinOption:Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 535
    iget-boolean v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->forcePinEntry:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->forcePinEntry:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 536
    :cond_d
    iget-boolean v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isAccessiblePinPad:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isAccessiblePinPad:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 537
    :cond_e
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x13

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->pinEntryTimeout:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 538
    invoke-virtual {p2}, Lcom/stripe/bbpos/sdk/StartEmvRequest;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 486
    check-cast p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/bbpos/sdk/StartEmvRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/bbpos/sdk/StartEmvRequest;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/bbpos/sdk/StartEmvRequest;)V
    .locals 4

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Lcom/stripe/bbpos/sdk/StartEmvRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 543
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x13

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->pinEntryTimeout:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 544
    iget-boolean v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isAccessiblePinPad:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isAccessiblePinPad:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 545
    :cond_0
    iget-boolean v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->forcePinEntry:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->forcePinEntry:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 546
    :cond_1
    sget-object v0, Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->contactlessOnlinePinOption:Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 547
    sget-object v0, Lcom/stripe/bbpos/sdk/DomesticDebitPriority;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->domesticDebitPriority:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 548
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalCapabilitiesOverride:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 549
    iget-boolean v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isMerchantChoiceRouting:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isMerchantChoiceRouting:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 550
    :cond_2
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->quickChipOption:Lcom/stripe/bbpos/sdk/QuickChipOption;

    sget-object v1, Lcom/stripe/bbpos/sdk/QuickChipOption;->QUICK_CHIP_OPTION_UNKNOWN:Lcom/stripe/bbpos/sdk/QuickChipOption;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/stripe/bbpos/sdk/QuickChipOption;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->quickChipOption:Lcom/stripe/bbpos/sdk/QuickChipOption;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 551
    :cond_3
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalTime:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalTime:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 552
    :cond_4
    iget v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->onlineProcessTimeout:I

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->onlineProcessTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 553
    :cond_5
    iget v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectAccountTypeTimeout:I

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectAccountTypeTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 554
    :cond_6
    iget v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectApplicationTimeout:I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectApplicationTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 555
    :cond_7
    iget v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardTimeout:I

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 556
    :cond_8
    iget-boolean v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->disableQuickChip:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->disableQuickChip:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 557
    :cond_9
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->amount:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->amount:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 558
    :cond_a
    iget v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyExponent:I

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyExponent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 559
    :cond_b
    iget v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyCode:I

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 560
    :cond_c
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    sget-object v1, Lcom/stripe/bbpos/sdk/CheckCardMode;->CHECK_CARD_MODE_UNKNOWN:Lcom/stripe/bbpos/sdk/CheckCardMode;

    if-eq v0, v1, :cond_d

    sget-object v0, Lcom/stripe/bbpos/sdk/CheckCardMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 561
    :cond_d
    iget-object v0, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->transactionType:Lcom/stripe/bbpos/sdk/TransactionType;

    sget-object v1, Lcom/stripe/bbpos/sdk/TransactionType;->TRANSACTION_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/TransactionType;

    if-eq v0, v1, :cond_e

    sget-object v0, Lcom/stripe/bbpos/sdk/TransactionType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;->transactionType:Lcom/stripe/bbpos/sdk/TransactionType;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 486
    check-cast p2, Lcom/stripe/bbpos/sdk/StartEmvRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/bbpos/sdk/StartEmvRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/bbpos/sdk/StartEmvRequest;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/bbpos/sdk/StartEmvRequest;)I
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/StartEmvRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 496
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->transactionType:Lcom/stripe/bbpos/sdk/TransactionType;

    sget-object v2, Lcom/stripe/bbpos/sdk/TransactionType;->TRANSACTION_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/TransactionType;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/stripe/bbpos/sdk/TransactionType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->transactionType:Lcom/stripe/bbpos/sdk/TransactionType;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 497
    :cond_0
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    sget-object v2, Lcom/stripe/bbpos/sdk/CheckCardMode;->CHECK_CARD_MODE_UNKNOWN:Lcom/stripe/bbpos/sdk/CheckCardMode;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/stripe/bbpos/sdk/CheckCardMode;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 498
    :cond_1
    iget v1, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyCode:I

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 499
    :cond_2
    iget v1, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyExponent:I

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->currencyExponent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 500
    :cond_3
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->amount:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->amount:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 501
    :cond_4
    iget-boolean v1, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->disableQuickChip:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->disableQuickChip:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 502
    :cond_5
    iget v1, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardTimeout:I

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->checkCardTimeout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 503
    :cond_6
    iget v1, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectApplicationTimeout:I

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectApplicationTimeout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 504
    :cond_7
    iget v1, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectAccountTypeTimeout:I

    if-eqz v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->selectAccountTypeTimeout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 505
    :cond_8
    iget v1, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->onlineProcessTimeout:I

    if-eqz v1, :cond_9

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->onlineProcessTimeout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v1, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 506
    :cond_9
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalTime:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalTime:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 507
    :cond_a
    iget-object v1, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->quickChipOption:Lcom/stripe/bbpos/sdk/QuickChipOption;

    sget-object v2, Lcom/stripe/bbpos/sdk/QuickChipOption;->QUICK_CHIP_OPTION_UNKNOWN:Lcom/stripe/bbpos/sdk/QuickChipOption;

    if-eq v1, v2, :cond_b

    sget-object v1, Lcom/stripe/bbpos/sdk/QuickChipOption;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->quickChipOption:Lcom/stripe/bbpos/sdk/QuickChipOption;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 508
    :cond_b
    iget-boolean v1, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isMerchantChoiceRouting:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isMerchantChoiceRouting:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 509
    :cond_c
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->terminalCapabilitiesOverride:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 510
    sget-object v1, Lcom/stripe/bbpos/sdk/DomesticDebitPriority;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->domesticDebitPriority:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 511
    sget-object v1, Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->contactlessOnlinePinOption:Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 512
    iget-boolean v1, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->forcePinEntry:Z

    if-eqz v1, :cond_d

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->forcePinEntry:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 513
    :cond_d
    iget-boolean v1, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isAccessiblePinPad:Z

    if-eqz v1, :cond_e

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->isAccessiblePinPad:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 514
    :cond_e
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x13

    iget-object p1, p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;->pinEntryTimeout:Ljava/lang/Integer;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 486
    check-cast p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/sdk/StartEmvRequest$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/bbpos/sdk/StartEmvRequest;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/bbpos/sdk/StartEmvRequest;)Lcom/stripe/bbpos/sdk/StartEmvRequest;
    .locals 24

    const-string v0, "value"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    sget-object v21, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const v22, 0x7ffff

    const/16 v23, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 652
    invoke-static/range {v1 .. v23}, Lcom/stripe/bbpos/sdk/StartEmvRequest;->copy$default(Lcom/stripe/bbpos/sdk/StartEmvRequest;Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;IILjava/lang/String;ZIIIILjava/lang/String;Lcom/stripe/bbpos/sdk/QuickChipOption;ZLjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/bbpos/sdk/StartEmvRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 486
    check-cast p1, Lcom/stripe/bbpos/sdk/StartEmvRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/sdk/StartEmvRequest$Companion$ADAPTER$1;->redact(Lcom/stripe/bbpos/sdk/StartEmvRequest;)Lcom/stripe/bbpos/sdk/StartEmvRequest;

    move-result-object p1

    return-object p1
.end method
