.class public final Lcom/stripe/proto/model/rest/CardPaymentMethod$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "CardPaymentMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/CardPaymentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/rest/CardPaymentMethod;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardPaymentMethod.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardPaymentMethod.kt\ncom/stripe/proto/model/rest/CardPaymentMethod$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,686:1\n463#2,7:687\n1#3:694\n*S KotlinDebug\n*F\n+ 1 CardPaymentMethod.kt\ncom/stripe/proto/model/rest/CardPaymentMethod$Companion$ADAPTER$1\n*L\n441#1:687,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/rest/CardPaymentMethod$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/rest/CardPaymentMethod;",
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
            "Lcom/stripe/proto/model/rest/CardPaymentMethod;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 381
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/model/rest/mainland_payments.proto"

    .line 375
    const-string v3, "type.googleapis.com/com.stripe.proto.model.rest.CardPaymentMethod"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/rest/CardPaymentMethod;
    .locals 27

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
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

    .line 689
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    packed-switch v14, :pswitch_data_0

    .line 454
    invoke-virtual {v0, v14}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 453
    :pswitch_0
    sget-object v13, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v13, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_0

    .line 452
    :pswitch_1
    sget-object v12, Lcom/stripe/proto/model/rest/ThreeDSecure;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v12, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_0

    .line 451
    :pswitch_2
    sget-object v11, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v11, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_0

    .line 450
    :pswitch_3
    sget-object v10, Lcom/stripe/proto/model/rest/GeneratedFrom;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v10, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 449
    :pswitch_4
    sget-object v9, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 448
    :pswitch_5
    sget-object v8, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 447
    :pswitch_6
    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 446
    :pswitch_7
    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 445
    :pswitch_8
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 444
    :pswitch_9
    sget-object v4, Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 443
    :pswitch_a
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 693
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v26

    .line 457
    new-instance v14, Lcom/stripe/proto/model/rest/CardPaymentMethod;

    .line 458
    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    .line 459
    move-object/from16 v16, v4

    check-cast v16, Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;

    .line 460
    move-object/from16 v17, v5

    check-cast v17, Ljava/lang/String;

    .line 461
    move-object/from16 v18, v6

    check-cast v18, Ljava/lang/Integer;

    .line 462
    move-object/from16 v19, v7

    check-cast v19, Ljava/lang/Integer;

    .line 463
    move-object/from16 v20, v8

    check-cast v20, Ljava/lang/String;

    .line 464
    move-object/from16 v21, v9

    check-cast v21, Ljava/lang/String;

    .line 465
    move-object/from16 v22, v10

    check-cast v22, Lcom/stripe/proto/model/rest/GeneratedFrom;

    .line 466
    move-object/from16 v23, v11

    check-cast v23, Ljava/lang/String;

    .line 467
    move-object/from16 v24, v12

    check-cast v24, Lcom/stripe/proto/model/rest/ThreeDSecure;

    .line 468
    move-object/from16 v25, v13

    check-cast v25, Ljava/lang/String;

    .line 457
    invoke-direct/range {v14 .. v26}, Lcom/stripe/proto/model/rest/CardPaymentMethod;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/GeneratedFrom;Ljava/lang/String;Lcom/stripe/proto/model/rest/ThreeDSecure;Ljava/lang/String;Lokio/ByteString;)V

    return-object v14

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

    .line 375
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/CardPaymentMethod$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/rest/CardPaymentMethod;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/rest/CardPaymentMethod;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->brand:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->brand:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 401
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->checks:Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->checks:Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 402
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->country:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->country:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 403
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->exp_month:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->exp_month:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 404
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->exp_year:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->exp_year:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 405
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->fingerprint:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 406
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->funding:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->funding:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 407
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->generated_from:Lcom/stripe/proto/model/rest/GeneratedFrom;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/stripe/proto/model/rest/GeneratedFrom;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->generated_from:Lcom/stripe/proto/model/rest/GeneratedFrom;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 408
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->last4:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->last4:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 409
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->three_d_secure_usage:Lcom/stripe/proto/model/rest/ThreeDSecure;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/stripe/proto/model/rest/ThreeDSecure;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->three_d_secure_usage:Lcom/stripe/proto/model/rest/ThreeDSecure;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 410
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->wallet:Ljava/lang/String;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->wallet:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 411
    :cond_a
    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/CardPaymentMethod;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 375
    check-cast p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/rest/CardPaymentMethod$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/rest/CardPaymentMethod;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/rest/CardPaymentMethod;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/CardPaymentMethod;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 416
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->wallet:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->wallet:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 417
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->three_d_secure_usage:Lcom/stripe/proto/model/rest/ThreeDSecure;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/rest/ThreeDSecure;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->three_d_secure_usage:Lcom/stripe/proto/model/rest/ThreeDSecure;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 418
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->last4:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->last4:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 419
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->generated_from:Lcom/stripe/proto/model/rest/GeneratedFrom;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/model/rest/GeneratedFrom;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->generated_from:Lcom/stripe/proto/model/rest/GeneratedFrom;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 420
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->funding:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->funding:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 421
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->fingerprint:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->fingerprint:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 422
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->exp_year:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->exp_year:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 423
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->exp_month:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->exp_month:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 424
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->country:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->country:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 425
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->checks:Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->checks:Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 426
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->brand:Ljava/lang/String;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;->brand:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 375
    check-cast p2, Lcom/stripe/proto/model/rest/CardPaymentMethod;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/rest/CardPaymentMethod$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/rest/CardPaymentMethod;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/rest/CardPaymentMethod;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/CardPaymentMethod;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 385
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->brand:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 386
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->checks:Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->checks:Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 387
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->country:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->country:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 388
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->exp_month:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->exp_month:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 389
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->exp_year:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT32_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->exp_year:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 390
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->fingerprint:Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->fingerprint:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 391
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->funding:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->funding:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 392
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->generated_from:Lcom/stripe/proto/model/rest/GeneratedFrom;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/stripe/proto/model/rest/GeneratedFrom;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->generated_from:Lcom/stripe/proto/model/rest/GeneratedFrom;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 393
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->last4:Ljava/lang/String;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->last4:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 394
    :cond_8
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->three_d_secure_usage:Lcom/stripe/proto/model/rest/ThreeDSecure;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/stripe/proto/model/rest/ThreeDSecure;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->three_d_secure_usage:Lcom/stripe/proto/model/rest/ThreeDSecure;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 395
    :cond_9
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->wallet:Ljava/lang/String;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object p1, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->wallet:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_a
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 375
    check-cast p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/CardPaymentMethod$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/rest/CardPaymentMethod;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/rest/CardPaymentMethod;)Lcom/stripe/proto/model/rest/CardPaymentMethod;
    .locals 13

    const-string v1, "value"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    iget-object v1, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->brand:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 475
    :goto_0
    iget-object v3, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->checks:Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 476
    :goto_1
    iget-object v4, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->country:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v4}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, v2

    .line 480
    :goto_2
    iget-object v5, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->funding:Ljava/lang/String;

    if-eqz v5, :cond_3

    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v7, v5

    goto :goto_3

    :cond_3
    move-object v7, v2

    .line 481
    :goto_3
    iget-object v5, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->generated_from:Lcom/stripe/proto/model/rest/GeneratedFrom;

    if-eqz v5, :cond_4

    sget-object v6, Lcom/stripe/proto/model/rest/GeneratedFrom;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/model/rest/GeneratedFrom;

    move-object v8, v5

    goto :goto_4

    :cond_4
    move-object v8, v2

    .line 482
    :goto_4
    iget-object v5, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->last4:Ljava/lang/String;

    if-eqz v5, :cond_5

    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v9, v5

    goto :goto_5

    :cond_5
    move-object v9, v2

    .line 483
    :goto_5
    iget-object v5, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->three_d_secure_usage:Lcom/stripe/proto/model/rest/ThreeDSecure;

    if-eqz v5, :cond_6

    sget-object v6, Lcom/stripe/proto/model/rest/ThreeDSecure;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/model/rest/ThreeDSecure;

    move-object v10, v5

    goto :goto_6

    :cond_6
    move-object v10, v2

    .line 484
    :goto_6
    iget-object v5, p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;->wallet:Ljava/lang/String;

    if-eqz v5, :cond_7

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v5}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_7
    move-object v11, v2

    .line 485
    sget-object v12, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v2, v3

    move-object v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    .line 473
    invoke-virtual/range {v0 .. v12}, Lcom/stripe/proto/model/rest/CardPaymentMethod;->copy(Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/GeneratedFrom;Ljava/lang/String;Lcom/stripe/proto/model/rest/ThreeDSecure;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/CardPaymentMethod;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 375
    check-cast p1, Lcom/stripe/proto/model/rest/CardPaymentMethod;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/CardPaymentMethod$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/rest/CardPaymentMethod;)Lcom/stripe/proto/model/rest/CardPaymentMethod;

    move-result-object p1

    return-object p1
.end method
