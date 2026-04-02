.class public final Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SetupIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSetupIntent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SetupIntent.kt\ncom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2430:1\n463#2,7:2431\n1#3:2438\n*S KotlinDebug\n*F\n+ 1 SetupIntent.kt\ncom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Companion$ADAPTER$1\n*L\n1655#1:2431,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/rest/SetupIntent$SetupAttempt$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;",
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
            "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 1587
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/model/rest/mainland_payments.proto"

    .line 1581
    const-string v3, "type.googleapis.com/com.stripe.proto.model.rest.SetupIntent.SetupAttempt"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;
    .locals 32

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2431
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    .line 2433
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    move-object/from16 v17, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 1670
    invoke-virtual {v0, v3}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto/16 :goto_1

    .line 1669
    :pswitch_0
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    goto/16 :goto_1

    .line 1668
    :pswitch_1
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    goto/16 :goto_1

    .line 1667
    :pswitch_2
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    goto :goto_1

    .line 1666
    :pswitch_3
    sget-object v3, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    goto :goto_1

    .line 1665
    :pswitch_4
    sget-object v3, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    goto :goto_1

    .line 1664
    :pswitch_5
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    goto :goto_1

    .line 1663
    :pswitch_6
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    .line 1662
    :pswitch_7
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    goto :goto_1

    .line 1661
    :pswitch_8
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    goto :goto_1

    .line 1660
    :pswitch_9
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    .line 1659
    :pswitch_a
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    goto :goto_1

    .line 1658
    :pswitch_b
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    goto :goto_0

    .line 1657
    :pswitch_c
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    :goto_1
    move-object/from16 v4, v17

    goto :goto_0

    .line 2437
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v31

    move-object/from16 v3, v17

    .line 1673
    new-instance v17, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;

    .line 1674
    move-object/from16 v18, v16

    check-cast v18, Ljava/lang/String;

    .line 1675
    move-object/from16 v19, v3

    check-cast v19, Ljava/lang/String;

    .line 1676
    move-object/from16 v20, v5

    check-cast v20, Ljava/lang/String;

    .line 1677
    move-object/from16 v21, v6

    check-cast v21, Ljava/lang/Long;

    .line 1678
    move-object/from16 v22, v7

    check-cast v22, Ljava/lang/String;

    .line 1679
    move-object/from16 v23, v8

    check-cast v23, Ljava/lang/Boolean;

    .line 1680
    move-object/from16 v24, v9

    check-cast v24, Ljava/lang/String;

    .line 1681
    move-object/from16 v25, v10

    check-cast v25, Ljava/lang/String;

    .line 1682
    move-object/from16 v26, v11

    check-cast v26, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    .line 1683
    move-object/from16 v27, v12

    check-cast v27, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    .line 1684
    move-object/from16 v28, v13

    check-cast v28, Ljava/lang/String;

    .line 1685
    move-object/from16 v29, v14

    check-cast v29, Ljava/lang/String;

    .line 1686
    move-object/from16 v30, v15

    check-cast v30, Ljava/lang/String;

    .line 1673
    invoke-direct/range {v17 .. v31}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v17

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1581
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1608
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1609
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->object_:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->object_:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1610
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->application:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->application:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1611
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->created:Ljava/lang/Long;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->created:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1612
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->customer:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->customer:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1613
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->livemode:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1614
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->on_behalf_of:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->on_behalf_of:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1615
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1616
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1617
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1618
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_intent:Ljava/lang/String;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_intent:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1619
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->status:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->status:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1620
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->usage:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->usage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1621
    :cond_c
    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1581
    check-cast p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1625
    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 1626
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->usage:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->usage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1627
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->status:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->status:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1628
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_intent:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_intent:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1629
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1630
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1631
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1632
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->on_behalf_of:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->on_behalf_of:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1633
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->livemode:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1634
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->customer:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->customer:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1635
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->created:Ljava/lang/Long;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->created:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1636
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->application:Ljava/lang/String;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->application:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1637
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->object_:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->object_:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 1638
    :cond_b
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->id:Ljava/lang/String;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1581
    check-cast p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1590
    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 1591
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1592
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->object_:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->object_:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1593
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->application:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->application:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1594
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->created:Ljava/lang/Long;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->created:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1595
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->customer:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->customer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1596
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1597
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->on_behalf_of:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->on_behalf_of:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1598
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1599
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1600
    :cond_8
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1601
    :cond_9
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_intent:Ljava/lang/String;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_intent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1602
    :cond_a
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->status:Ljava/lang/String;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->status:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1603
    :cond_b
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->usage:Ljava/lang/String;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object p1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->usage:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_c
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 1581
    check-cast p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "value"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1692
    iget-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->id:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 1693
    :goto_0
    iget-object v3, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->object_:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 1694
    :goto_1
    iget-object v4, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->application:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, v2

    .line 1695
    :goto_2
    iget-object v5, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->created:Ljava/lang/Long;

    if-eqz v5, :cond_3

    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    goto :goto_3

    :cond_3
    move-object v5, v2

    .line 1696
    :goto_3
    iget-object v6, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->customer:Ljava/lang/String;

    if-eqz v6, :cond_4

    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v6}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, v2

    .line 1697
    :goto_4
    iget-object v7, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->livemode:Ljava/lang/Boolean;

    if-eqz v7, :cond_5

    sget-object v8, Lcom/squareup/wire/ProtoAdapter;->BOOL_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v7}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    move-object v7, v2

    .line 1698
    :goto_5
    iget-object v8, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->on_behalf_of:Ljava/lang/String;

    if-eqz v8, :cond_6

    sget-object v9, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v8}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object v8, v2

    .line 1699
    :goto_6
    iget-object v9, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method:Ljava/lang/String;

    if-eqz v9, :cond_7

    sget-object v10, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v10, v9}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object v9, v2

    .line 1700
    :goto_7
    iget-object v10, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    if-eqz v10, :cond_8

    sget-object v11, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v11, v10}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    goto :goto_8

    :cond_8
    move-object v10, v2

    .line 1701
    :goto_8
    iget-object v11, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    if-eqz v11, :cond_9

    sget-object v12, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v12, v11}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    goto :goto_9

    :cond_9
    move-object v11, v2

    .line 1702
    :goto_9
    iget-object v12, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_intent:Ljava/lang/String;

    if-eqz v12, :cond_a

    sget-object v13, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v13, v12}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object v12, v2

    .line 1703
    :goto_a
    iget-object v13, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->status:Ljava/lang/String;

    if-eqz v13, :cond_b

    sget-object v14, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v14, v13}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object v13, v2

    .line 1704
    :goto_b
    iget-object v14, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->usage:Ljava/lang/String;

    if-eqz v14, :cond_c

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v14}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1705
    :cond_c
    sget-object v14, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v15, v13

    move-object v13, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v15

    .line 1691
    invoke-virtual/range {v0 .. v14}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1581
    check-cast p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;

    move-result-object p1

    return-object p1
.end method
