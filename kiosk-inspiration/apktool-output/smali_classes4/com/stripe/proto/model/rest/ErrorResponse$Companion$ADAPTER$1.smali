.class public final Lcom/stripe/proto/model/rest/ErrorResponse$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ErrorResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/ErrorResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/rest/ErrorResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nErrorResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ErrorResponse.kt\ncom/stripe/proto/model/rest/ErrorResponse$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,465:1\n463#2,7:466\n1#3:473\n*S KotlinDebug\n*F\n+ 1 ErrorResponse.kt\ncom/stripe/proto/model/rest/ErrorResponse$Companion$ADAPTER$1\n*L\n414#1:466,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/rest/ErrorResponse$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/rest/ErrorResponse;",
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
            "Lcom/stripe/proto/model/rest/ErrorResponse;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 358
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/model/rest/mainland_payments.proto"

    .line 352
    const-string v3, "type.googleapis.com/com.stripe.proto.model.rest.ErrorResponse"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/rest/ErrorResponse;
    .locals 25

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
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

    .line 468
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    packed-switch v13, :pswitch_data_0

    .line 426
    invoke-virtual {v0, v13}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 425
    :pswitch_0
    sget-object v12, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v12, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_0

    .line 424
    :pswitch_1
    sget-object v11, Lcom/stripe/proto/model/rest/PaymentIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v11, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_0

    .line 423
    :pswitch_2
    sget-object v10, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v10, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 422
    :pswitch_3
    sget-object v9, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 421
    :pswitch_4
    sget-object v8, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 420
    :pswitch_5
    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 419
    :pswitch_6
    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 418
    :pswitch_7
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 417
    :pswitch_8
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 416
    :pswitch_9
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 472
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v24

    .line 429
    new-instance v13, Lcom/stripe/proto/model/rest/ErrorResponse;

    .line 430
    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    .line 431
    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    .line 432
    move-object/from16 v16, v5

    check-cast v16, Ljava/lang/String;

    .line 433
    move-object/from16 v17, v6

    check-cast v17, Ljava/lang/String;

    .line 434
    move-object/from16 v18, v7

    check-cast v18, Ljava/lang/String;

    .line 435
    move-object/from16 v19, v8

    check-cast v19, Ljava/lang/String;

    .line 436
    move-object/from16 v20, v9

    check-cast v20, Ljava/lang/String;

    .line 437
    move-object/from16 v21, v10

    check-cast v21, Lcom/stripe/proto/model/rest/Source;

    .line 438
    move-object/from16 v22, v11

    check-cast v22, Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 439
    move-object/from16 v23, v12

    check-cast v23, Lcom/stripe/proto/model/rest/ErrorSetupIntent;

    .line 429
    invoke-direct/range {v13 .. v24}, Lcom/stripe/proto/model/rest/ErrorResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/rest/ErrorSetupIntent;Lokio/ByteString;)V

    return-object v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 352
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/ErrorResponse$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/rest/ErrorResponse;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/rest/ErrorResponse;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->type:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 377
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->charge:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->charge:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 378
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->code:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->code:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 379
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->decline_code:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->decline_code:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 380
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->doc_url:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->doc_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 381
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->message:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 382
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->param_:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->param_:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 383
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->source:Lcom/stripe/proto/model/rest/Source;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 384
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/stripe/proto/model/rest/PaymentIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 385
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->setup_intent:Lcom/stripe/proto/model/rest/ErrorSetupIntent;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->setup_intent:Lcom/stripe/proto/model/rest/ErrorSetupIntent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 386
    :cond_9
    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/ErrorResponse;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 352
    check-cast p2, Lcom/stripe/proto/model/rest/ErrorResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/rest/ErrorResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/rest/ErrorResponse;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/rest/ErrorResponse;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/ErrorResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 391
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->setup_intent:Lcom/stripe/proto/model/rest/ErrorSetupIntent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->setup_intent:Lcom/stripe/proto/model/rest/ErrorSetupIntent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 392
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/rest/PaymentIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 393
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->source:Lcom/stripe/proto/model/rest/Source;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 394
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->param_:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->param_:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 395
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->message:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 396
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->doc_url:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->doc_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 397
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->decline_code:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->decline_code:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 398
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->code:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->code:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 399
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->charge:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->charge:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 400
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->type:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/rest/ErrorResponse;->type:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 352
    check-cast p2, Lcom/stripe/proto/model/rest/ErrorResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/rest/ErrorResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/rest/ErrorResponse;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/rest/ErrorResponse;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/ErrorResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 362
    iget-object v1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 363
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->charge:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->charge:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 364
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->code:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->code:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->decline_code:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->decline_code:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 366
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->doc_url:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->doc_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 367
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->message:Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 368
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->param_:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->param_:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->source:Lcom/stripe/proto/model/rest/Source;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 370
    :cond_7
    iget-object v1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/stripe/proto/model/rest/PaymentIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 371
    :cond_8
    iget-object v1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->setup_intent:Lcom/stripe/proto/model/rest/ErrorSetupIntent;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object p1, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->setup_intent:Lcom/stripe/proto/model/rest/ErrorSetupIntent;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_9
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 352
    check-cast p1, Lcom/stripe/proto/model/rest/ErrorResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/ErrorResponse$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/rest/ErrorResponse;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/rest/ErrorResponse;)Lcom/stripe/proto/model/rest/ErrorResponse;
    .locals 14

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    iget-object v0, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->type:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 446
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->charge:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 447
    :goto_1
    iget-object v0, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->code:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, v1

    .line 448
    :goto_2
    iget-object v0, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->decline_code:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, v1

    .line 449
    :goto_3
    iget-object v0, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->doc_url:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    goto :goto_4

    :cond_4
    move-object v7, v1

    .line 450
    :goto_4
    iget-object v0, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->message:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    goto :goto_5

    :cond_5
    move-object v8, v1

    .line 451
    :goto_5
    iget-object v0, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->param_:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    goto :goto_6

    :cond_6
    move-object v9, v1

    .line 452
    :goto_6
    iget-object v0, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->source:Lcom/stripe/proto/model/rest/Source;

    if-eqz v0, :cond_7

    sget-object v2, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/Source;

    move-object v10, v0

    goto :goto_7

    :cond_7
    move-object v10, v1

    .line 453
    :goto_7
    iget-object v0, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v0, :cond_8

    sget-object v2, Lcom/stripe/proto/model/rest/PaymentIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/PaymentIntent;

    move-object v11, v0

    goto :goto_8

    :cond_8
    move-object v11, v1

    .line 454
    :goto_8
    iget-object v0, p1, Lcom/stripe/proto/model/rest/ErrorResponse;->setup_intent:Lcom/stripe/proto/model/rest/ErrorSetupIntent;

    if-eqz v0, :cond_9

    sget-object v1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/proto/model/rest/ErrorSetupIntent;

    :cond_9
    move-object v12, v1

    .line 455
    sget-object v13, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v2, p1

    .line 444
    invoke-virtual/range {v2 .. v13}, Lcom/stripe/proto/model/rest/ErrorResponse;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/rest/ErrorSetupIntent;Lokio/ByteString;)Lcom/stripe/proto/model/rest/ErrorResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 352
    check-cast p1, Lcom/stripe/proto/model/rest/ErrorResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/ErrorResponse$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/rest/ErrorResponse;)Lcom/stripe/proto/model/rest/ErrorResponse;

    move-result-object p1

    return-object p1
.end method
