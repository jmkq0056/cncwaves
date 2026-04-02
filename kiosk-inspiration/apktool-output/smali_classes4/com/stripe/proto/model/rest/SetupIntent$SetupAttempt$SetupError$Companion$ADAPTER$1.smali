.class public final Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SetupIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSetupIntent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SetupIntent.kt\ncom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2430:1\n463#2,7:2431\n1#3:2438\n*S KotlinDebug\n*F\n+ 1 SetupIntent.kt\ncom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Companion$ADAPTER$1\n*L\n2383#1:2431,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;",
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
            "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 2335
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/model/rest/mainland_payments.proto"

    .line 2329
    const-string v3, "type.googleapis.com/com.stripe.proto.model.rest.SetupIntent.SetupAttempt.SetupError"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;
    .locals 21

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

    .line 2433
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    packed-switch v11, :pswitch_data_0

    .line 2393
    invoke-virtual {v0, v11}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 2392
    :pswitch_0
    sget-object v10, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v10, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 2391
    :pswitch_1
    sget-object v9, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v9, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 2390
    :pswitch_2
    sget-object v8, Lcom/stripe/proto/model/rest/PaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 2389
    :pswitch_3
    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 2388
    :pswitch_4
    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 2387
    :pswitch_5
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 2386
    :pswitch_6
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 2385
    :pswitch_7
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 2437
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v20

    .line 2396
    new-instance v11, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    .line 2397
    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    .line 2398
    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    .line 2399
    move-object v14, v5

    check-cast v14, Ljava/lang/String;

    .line 2400
    move-object v15, v6

    check-cast v15, Ljava/lang/String;

    .line 2401
    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/String;

    .line 2402
    move-object/from16 v17, v8

    check-cast v17, Lcom/stripe/proto/model/rest/PaymentMethod;

    .line 2403
    move-object/from16 v18, v9

    check-cast v18, Ljava/lang/String;

    .line 2404
    move-object/from16 v19, v10

    check-cast v19, Ljava/lang/String;

    .line 2396
    invoke-direct/range {v11 .. v20}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 2329
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2351
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->code:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->code:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 2352
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->decline_code:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->decline_code:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 2353
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->doc_url:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->doc_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 2354
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->message:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->message:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 2355
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->param_:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->param_:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 2356
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/stripe/proto/model/rest/PaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 2357
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method_type:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method_type:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 2358
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->type:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->type:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 2359
    :cond_7
    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 2329
    check-cast p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2363
    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 2364
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->type:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 2365
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method_type:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method_type:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 2366
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/rest/PaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 2367
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->param_:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->param_:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 2368
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->message:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->message:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 2369
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->doc_url:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->doc_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 2370
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->decline_code:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->decline_code:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 2371
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->code:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->code:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 2329
    check-cast p2, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2338
    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 2339
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->code:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->code:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2340
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->decline_code:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->decline_code:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2341
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->doc_url:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->doc_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2342
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->message:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2343
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->param_:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->param_:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2344
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2345
    :cond_5
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method_type:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method_type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2346
    :cond_6
    iget-object v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->type:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object p1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_7
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 2329
    check-cast p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;
    .locals 12

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2410
    iget-object v0, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->code:Ljava/lang/String;

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

    .line 2411
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->decline_code:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 2412
    :goto_1
    iget-object v0, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->doc_url:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, v1

    .line 2413
    :goto_2
    iget-object v0, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->message:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, v1

    .line 2414
    :goto_3
    iget-object v0, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->param_:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    goto :goto_4

    :cond_4
    move-object v7, v1

    .line 2415
    :goto_4
    iget-object v0, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method:Lcom/stripe/proto/model/rest/PaymentMethod;

    if-eqz v0, :cond_5

    sget-object v2, Lcom/stripe/proto/model/rest/PaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/PaymentMethod;

    move-object v8, v0

    goto :goto_5

    :cond_5
    move-object v8, v1

    .line 2416
    :goto_5
    iget-object v0, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->payment_method_type:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    goto :goto_6

    :cond_6
    move-object v9, v1

    .line 2417
    :goto_6
    iget-object v0, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->type:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_7
    move-object v10, v1

    .line 2418
    sget-object v11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v2, p1

    .line 2409
    invoke-virtual/range {v2 .. v11}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2329
    check-cast p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    move-result-object p1

    return-object p1
.end method
