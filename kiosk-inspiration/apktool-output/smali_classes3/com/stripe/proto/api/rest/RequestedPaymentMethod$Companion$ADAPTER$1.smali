.class public final Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "RequestedPaymentMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/RequestedPaymentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRequestedPaymentMethod.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RequestedPaymentMethod.kt\ncom/stripe/proto/api/rest/RequestedPaymentMethod$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1861:1\n463#2,7:1862\n1#3:1869\n*S KotlinDebug\n*F\n+ 1 RequestedPaymentMethod.kt\ncom/stripe/proto/api/rest/RequestedPaymentMethod$Companion$ADAPTER$1\n*L\n291#1:1862,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/rest/RequestedPaymentMethod$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
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
            "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 251
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/api/rest/mainland_requests.proto"

    .line 245
    const-string v3, "type.googleapis.com/com.stripe.proto.api.rest.RequestedPaymentMethod"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "reader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1862
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    .line 1864
    :goto_0
    invoke-virtual {v0}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    packed-switch v9, :pswitch_data_0

    .line 299
    invoke-virtual {v0, v9}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 298
    :pswitch_0
    sget-object v8, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 297
    :pswitch_1
    sget-object v7, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 296
    :pswitch_2
    sget-object v6, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 295
    :pswitch_3
    sget-object v5, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 294
    :pswitch_4
    sget-object v4, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 293
    :pswitch_5
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 1868
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v16

    .line 302
    new-instance v9, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 303
    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    .line 304
    move-object v11, v4

    check-cast v11, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    .line 305
    move-object v12, v5

    check-cast v12, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    .line 306
    move-object v13, v6

    check-cast v13, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;

    .line 307
    move-object v14, v7

    check-cast v14, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;

    .line 308
    move-object v15, v8

    check-cast v15, Ljava/lang/String;

    .line 302
    invoke-direct/range {v9 .. v16}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;-><init>(Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;Lokio/ByteString;)V

    return-object v9

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 245
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->type:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 266
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 267
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->interac_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->interac_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 268
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 269
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->billing_details:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->billing_details:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 270
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->allow_redisplay:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->allow_redisplay:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 271
    :cond_5
    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 245
    check-cast p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 276
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->allow_redisplay:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->allow_redisplay:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 277
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->billing_details:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->billing_details:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 278
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 279
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->interac_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->interac_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 280
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 281
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->type:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->type:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 245
    check-cast p2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 255
    iget-object v1, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 256
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 257
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->interac_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->interac_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 258
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 259
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->billing_details:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->billing_details:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 260
    :cond_4
    iget-object v1, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->allow_redisplay:Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object p1, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->allow_redisplay:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_5
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 245
    check-cast p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;
    .locals 10

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iget-object v0, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->type:Ljava/lang/String;

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

    .line 315
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 316
    :goto_1
    iget-object v0, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->interac_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, v1

    .line 317
    :goto_2
    iget-object v0, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->card:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, v1

    .line 318
    :goto_3
    iget-object v0, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->billing_details:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;

    if-eqz v0, :cond_4

    sget-object v2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;

    move-object v7, v0

    goto :goto_4

    :cond_4
    move-object v7, v1

    .line 319
    :goto_4
    iget-object v0, p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->allow_redisplay:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_5
    move-object v8, v1

    .line 320
    sget-object v9, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v2, p1

    .line 313
    invoke-virtual/range {v2 .. v9}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->copy(Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 245
    check-cast p1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object p1

    return-object p1
.end method
