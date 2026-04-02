.class public final Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "QueryPaymentMethodResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQueryPaymentMethodResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryPaymentMethodResponse.kt\ncom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,344:1\n463#2,7:345\n1#3:352\n*S KotlinDebug\n*F\n+ 1 QueryPaymentMethodResponse.kt\ncom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Companion$ADAPTER$1\n*L\n273#1:345,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/sdk/QueryPaymentMethodResponse$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;",
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
            "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 237
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/api/sdk/jack_rabbit_service.proto"

    .line 231
    const-string v3, "type.googleapis.com/com.stripe.proto.api.sdk.QueryPaymentMethodResponse"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;
    .locals 14

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    move-object v5, v4

    move-object v6, v5

    move v11, v3

    move-object v3, v6

    .line 347
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v7

    const/4 v0, -0x1

    if-eq v7, v0, :cond_5

    const/4 v0, 0x1

    if-eq v7, v0, :cond_4

    const/4 v0, 0x2

    if-eq v7, v0, :cond_3

    const/4 v0, 0x3

    if-eq v7, v0, :cond_2

    const/4 v0, 0x5

    if-eq v7, v0, :cond_1

    const/4 v0, 0x6

    if-eq v7, v0, :cond_0

    .line 284
    invoke-virtual {p1, v7}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 283
    :cond_0
    sget-object v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 282
    :cond_1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move v11, v0

    goto :goto_0

    .line 278
    :cond_2
    :try_start_0
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 280
    sget-object v8, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v0, v0, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v9, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v7, v8, v0}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_0

    .line 276
    :cond_3
    sget-object v0, Lcom/stripe/proto/model/sdk/PaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 275
    :cond_4
    sget-object v0, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 351
    :cond_5
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v13

    .line 287
    new-instance v7, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;

    .line 288
    move-object v8, v3

    check-cast v8, Lcom/stripe/proto/model/sdk/SystemContext;

    .line 289
    move-object v9, v4

    check-cast v9, Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 290
    move-object v10, v5

    check-cast v10, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;

    .line 292
    move-object v12, v6

    check-cast v12, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    .line 287
    invoke-direct/range {v7 .. v13}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;ILcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lokio/ByteString;)V

    return-object v7
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 231
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 251
    :cond_0
    iget v0, p2, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->num_of_canceled_payments:I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->num_of_canceled_payments:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 252
    :cond_1
    sget-object v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 253
    sget-object v0, Lcom/stripe/proto/model/sdk/PaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 254
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 255
    invoke-virtual {p2}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 231
    check-cast p2, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 260
    sget-object v0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 261
    sget-object v0, Lcom/stripe/proto/model/sdk/PaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 262
    sget-object v0, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 263
    iget v0, p2, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->num_of_canceled_payments:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v1, p2, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->num_of_canceled_payments:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 264
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 231
    check-cast p2, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 241
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    :cond_0
    sget-object v1, Lcom/stripe/proto/model/sdk/PaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 243
    sget-object v1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    iget v1, p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->num_of_canceled_payments:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->UINT32:Lcom/squareup/wire/ProtoAdapter;

    iget v2, p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->num_of_canceled_payments:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 245
    :cond_1
    sget-object v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 231
    check-cast p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;)Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;
    .locals 11

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iget-object v0, p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/proto/model/sdk/SystemContext;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/sdk/SystemContext;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 299
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/stripe/proto/model/sdk/PaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/sdk/PaymentMethod;

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 300
    :goto_1
    iget-object v0, p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    :cond_2
    move-object v7, v1

    .line 301
    sget-object v8, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    .line 297
    invoke-static/range {v2 .. v10}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->copy$default(Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;ILcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 231
    check-cast p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;)Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;

    move-result-object p1

    return-object p1
.end method
