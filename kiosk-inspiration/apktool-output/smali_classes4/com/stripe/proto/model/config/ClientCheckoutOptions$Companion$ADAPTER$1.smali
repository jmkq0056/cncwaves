.class public final Lcom/stripe/proto/model/config/ClientCheckoutOptions$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ClientCheckoutOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/ClientCheckoutOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/config/ClientCheckoutOptions;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClientCheckoutOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClientCheckoutOptions.kt\ncom/stripe/proto/model/config/ClientCheckoutOptions$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,631:1\n463#2,7:632\n1#3:639\n*S KotlinDebug\n*F\n+ 1 ClientCheckoutOptions.kt\ncom/stripe/proto/model/config/ClientCheckoutOptions$Companion$ADAPTER$1\n*L\n564#1:632,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/config/ClientCheckoutOptions$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/config/ClientCheckoutOptions;",
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
            "Lcom/stripe/proto/model/config/ClientCheckoutOptions;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 484
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/message/config/config_model.proto"

    .line 478
    const-string v3, "type.googleapis.com/com.stripe.proto.model.config.ClientCheckoutOptions"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/ClientCheckoutOptions;
    .locals 37

    move-object/from16 v1, p1

    const-string v0, "reader"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    sget-object v0, Lcom/stripe/proto/model/config/Locale;->INVALID_LOCALE:Lcom/stripe/proto/model/config/Locale;

    .line 632
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v8, v4

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-wide/from16 v19, v5

    move-wide/from16 v21, v19

    move-wide/from16 v24, v21

    move-wide/from16 v26, v24

    move/from16 v30, v7

    move-object v4, v0

    move-object v5, v14

    move-object v6, v5

    move-object v7, v6

    .line 634
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v15

    const/4 v0, -0x1

    if-eq v15, v0, :cond_0

    packed-switch v15, :pswitch_data_0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 586
    invoke-virtual {v1, v15}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_2

    .line 585
    :pswitch_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    goto :goto_0

    .line 584
    :pswitch_1
    sget-object v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    .line 583
    :pswitch_2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    .line 574
    :pswitch_3
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 579
    :pswitch_4
    :try_start_0
    sget-object v0, Lcom/stripe/proto/model/config/Locale;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v16, v4

    .line 581
    sget-object v4, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v15, v4, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_5
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 577
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    :pswitch_6
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 576
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move/from16 v30, v0

    goto :goto_0

    :pswitch_7
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 575
    sget-object v0, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 573
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-wide/from16 v26, v4

    goto :goto_1

    :pswitch_9
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 572
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-wide/from16 v24, v4

    goto :goto_1

    :pswitch_a
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 571
    sget-object v0, Lcom/stripe/proto/model/config/DeviceTraceLevel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 570
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-wide/from16 v21, v4

    goto :goto_1

    :pswitch_c
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 569
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    move-wide/from16 v19, v4

    :goto_1
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 568
    sget-object v0, Lcom/stripe/proto/model/config/ContactEmvConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 567
    sget-object v0, Lcom/stripe/proto/model/config/ContactEmvConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v16, v4

    move-object/from16 v18, v6

    .line 566
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_0

    :goto_2
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    goto/16 :goto_0

    :cond_0
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 638
    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v36

    .line 589
    new-instance v15, Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    .line 590
    move-object/from16 v5, v17

    check-cast v5, Ljava/lang/Integer;

    .line 591
    move-object/from16 v17, v18

    check-cast v17, Lcom/stripe/proto/model/config/ContactEmvConfig;

    .line 592
    move-object/from16 v18, v7

    check-cast v18, Lcom/stripe/proto/model/config/ContactEmvConfig;

    .line 595
    move-object/from16 v23, v8

    check-cast v23, Lcom/stripe/proto/model/config/DeviceTraceLevel;

    .line 598
    move-object/from16 v28, v9

    check-cast v28, Ljava/lang/Boolean;

    .line 599
    move-object/from16 v29, v10

    check-cast v29, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    .line 601
    move-object/from16 v31, v11

    check-cast v31, Ljava/lang/Boolean;

    .line 602
    move-object/from16 v32, v16

    check-cast v32, Lcom/stripe/proto/model/config/Locale;

    .line 603
    move-object/from16 v33, v12

    check-cast v33, Ljava/lang/Boolean;

    .line 604
    move-object/from16 v34, v13

    check-cast v34, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    .line 605
    move-object/from16 v35, v14

    check-cast v35, Ljava/lang/Boolean;

    move-object/from16 v16, v5

    .line 589
    invoke-direct/range {v15 .. v36}, Lcom/stripe/proto/model/config/ClientCheckoutOptions;-><init>(Ljava/lang/Integer;Lcom/stripe/proto/model/config/ContactEmvConfig;Lcom/stripe/proto/model/config/ContactEmvConfig;JJLcom/stripe/proto/model/config/DeviceTraceLevel;JJLjava/lang/Boolean;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;ZLjava/lang/Boolean;Lcom/stripe/proto/model/config/Locale;Ljava/lang/Boolean;Lcom/stripe/proto/model/config/VectorRegionalConfiguration;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v15

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 478
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/ClientCheckoutOptions;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->volume:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->volume:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 509
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/config/ContactEmvConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 510
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/config/ContactEmvConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 511
    :cond_2
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->signature_threshold:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->signature_threshold:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 512
    :cond_3
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->refund_signature_threshold:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->refund_signature_threshold:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x5

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 513
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/model/config/DeviceTraceLevel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v4, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    invoke-virtual {v0, p1, v1, v4}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 514
    :cond_5
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->summary_delay:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->summary_delay:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 515
    :cond_6
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->confirm_amount_threshold:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->confirm_amount_threshold:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 516
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->collect_signature_on_swipe:Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->collect_signature_on_swipe:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 517
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 518
    :cond_9
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->redact_masked_pan_to_last_4:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->redact_masked_pan_to_last_4:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 519
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->disable_screen_dimming:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->disable_screen_dimming:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 520
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->default_locale:Lcom/stripe/proto/model/config/Locale;

    sget-object v1, Lcom/stripe/proto/model/config/Locale;->INVALID_LOCALE:Lcom/stripe/proto/model/config/Locale;

    if-eq v0, v1, :cond_c

    sget-object v0, Lcom/stripe/proto/model/config/Locale;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->default_locale:Lcom/stripe/proto/model/config/Locale;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 521
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->allow_tipping:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->allow_tipping:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 522
    :cond_d
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 523
    :cond_e
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 524
    :cond_f
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 478
    check-cast p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/config/ClientCheckoutOptions;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/ClientCheckoutOptions;)V
    .locals 6

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 529
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 530
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 531
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->allow_tipping:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->allow_tipping:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 532
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->default_locale:Lcom/stripe/proto/model/config/Locale;

    sget-object v1, Lcom/stripe/proto/model/config/Locale;->INVALID_LOCALE:Lcom/stripe/proto/model/config/Locale;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/stripe/proto/model/config/Locale;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->default_locale:Lcom/stripe/proto/model/config/Locale;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 533
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->disable_screen_dimming:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->disable_screen_dimming:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 534
    :cond_4
    iget-boolean v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->redact_masked_pan_to_last_4:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v1, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->redact_masked_pan_to_last_4:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 535
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 536
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->collect_signature_on_swipe:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->collect_signature_on_swipe:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 537
    :cond_7
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->confirm_amount_threshold:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->confirm_amount_threshold:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 538
    :cond_8
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->summary_delay:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->summary_delay:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 539
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/stripe/proto/model/config/DeviceTraceLevel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v4, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    invoke-virtual {v0, p1, v1, v4}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 540
    :cond_a
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->refund_signature_threshold:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v4, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->refund_signature_threshold:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x5

    invoke-virtual {v0, p1, v4, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 541
    :cond_b
    iget-wide v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->signature_threshold:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v1, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->signature_threshold:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 542
    :cond_c
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/stripe/proto/model/config/ContactEmvConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 543
    :cond_d
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/stripe/proto/model/config/ContactEmvConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 544
    :cond_e
    iget-object v0, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->volume:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->volume:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 478
    check-cast p2, Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/config/ClientCheckoutOptions;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/config/ClientCheckoutOptions;)I
    .locals 7

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p1}, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 488
    iget-object v1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->volume:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->volume:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 489
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/model/config/ContactEmvConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 490
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/stripe/proto/model/config/ContactEmvConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 491
    :cond_2
    iget-wide v1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->signature_threshold:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->signature_threshold:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 492
    :cond_3
    iget-wide v1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->refund_signature_threshold:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->refund_signature_threshold:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x5

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 493
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/stripe/proto/model/config/DeviceTraceLevel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v5, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    invoke-virtual {v1, v2, v5}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 494
    :cond_5
    iget-wide v1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->summary_delay:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->summary_delay:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x7

    invoke-virtual {v1, v5, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 495
    :cond_6
    iget-wide v1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->confirm_amount_threshold:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64:Lcom/squareup/wire/ProtoAdapter;

    iget-wide v2, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->confirm_amount_threshold:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 496
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->collect_signature_on_swipe:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->collect_signature_on_swipe:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 497
    :cond_8
    iget-object v1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 498
    :cond_9
    iget-boolean v1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->redact_masked_pan_to_last_4:Z

    if-eqz v1, :cond_a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-boolean v2, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->redact_masked_pan_to_last_4:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 499
    :cond_a
    iget-object v1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->disable_screen_dimming:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->disable_screen_dimming:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 500
    :cond_b
    iget-object v1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->default_locale:Lcom/stripe/proto/model/config/Locale;

    sget-object v2, Lcom/stripe/proto/model/config/Locale;->INVALID_LOCALE:Lcom/stripe/proto/model/config/Locale;

    if-eq v1, v2, :cond_c

    sget-object v1, Lcom/stripe/proto/model/config/Locale;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->default_locale:Lcom/stripe/proto/model/config/Locale;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 501
    :cond_c
    iget-object v1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->allow_tipping:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->allow_tipping:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 502
    :cond_d
    iget-object v1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object v3, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 503
    :cond_e
    iget-object v1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object p1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_f
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 478
    check-cast p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/config/ClientCheckoutOptions;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/config/ClientCheckoutOptions;)Lcom/stripe/proto/model/config/ClientCheckoutOptions;
    .locals 25

    move-object/from16 v1, p1

    const-string v0, "value"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    iget-object v0, v1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->volume:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 612
    :goto_0
    iget-object v3, v1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/stripe/proto/model/config/ContactEmvConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/model/config/ContactEmvConfig;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 613
    :goto_1
    iget-object v4, v1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/stripe/proto/model/config/ContactEmvConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/model/config/ContactEmvConfig;

    goto :goto_2

    :cond_2
    move-object v4, v2

    .line 614
    :goto_2
    iget-object v5, v1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    if-eqz v5, :cond_3

    sget-object v6, Lcom/stripe/proto/model/config/DeviceTraceLevel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/model/config/DeviceTraceLevel;

    move-object v9, v5

    goto :goto_3

    :cond_3
    move-object v9, v2

    .line 615
    :goto_3
    iget-object v5, v1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->collect_signature_on_swipe:Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    move-object v14, v5

    goto :goto_4

    :cond_4
    move-object v14, v2

    .line 616
    :goto_4
    iget-object v5, v1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    if-eqz v5, :cond_5

    sget-object v6, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    move-object v15, v5

    goto :goto_5

    :cond_5
    move-object v15, v2

    .line 617
    :goto_5
    iget-object v5, v1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->disable_screen_dimming:Ljava/lang/Boolean;

    if-eqz v5, :cond_6

    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    move-object/from16 v17, v5

    goto :goto_6

    :cond_6
    move-object/from16 v17, v2

    .line 618
    :goto_6
    iget-object v5, v1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->allow_tipping:Ljava/lang/Boolean;

    if-eqz v5, :cond_7

    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    move-object/from16 v19, v5

    goto :goto_7

    :cond_7
    move-object/from16 v19, v2

    .line 619
    :goto_7
    iget-object v5, v1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    if-eqz v5, :cond_8

    sget-object v6, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    move-object/from16 v20, v5

    goto :goto_8

    :cond_8
    move-object/from16 v20, v2

    .line 620
    :goto_8
    iget-object v5, v1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

    if-eqz v5, :cond_9

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    :cond_9
    move-object/from16 v21, v2

    .line 621
    sget-object v22, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v23, 0x14d8

    const/16 v24, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v2, v0

    .line 610
    invoke-static/range {v1 .. v24}, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->copy$default(Lcom/stripe/proto/model/config/ClientCheckoutOptions;Ljava/lang/Integer;Lcom/stripe/proto/model/config/ContactEmvConfig;Lcom/stripe/proto/model/config/ContactEmvConfig;JJLcom/stripe/proto/model/config/DeviceTraceLevel;JJLjava/lang/Boolean;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;ZLjava/lang/Boolean;Lcom/stripe/proto/model/config/Locale;Ljava/lang/Boolean;Lcom/stripe/proto/model/config/VectorRegionalConfiguration;Ljava/lang/Boolean;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 478
    check-cast p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/config/ClientCheckoutOptions;)Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    move-result-object p1

    return-object p1
.end method
