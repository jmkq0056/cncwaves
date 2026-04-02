.class public final Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "CreatePaymentIntentResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreatePaymentIntentResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreatePaymentIntentResponse.kt\ncom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,293:1\n463#2,7:294\n1#3:301\n*S KotlinDebug\n*F\n+ 1 CreatePaymentIntentResponse.kt\ncom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Companion$ADAPTER$1\n*L\n257#1:294,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/sdk/CreatePaymentIntentResponse$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;",
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
            "Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 221
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/api/sdk/jack_rabbit_service.proto"

    .line 215
    const-string v3, "type.googleapis.com/com.stripe.proto.api.sdk.CreatePaymentIntentResponse"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;
    .locals 14

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    .line 296
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    const/4 v8, 0x4

    if-eq v7, v8, :cond_1

    const/4 v8, 0x5

    if-eq v7, v8, :cond_0

    .line 264
    invoke-virtual {p1, v7}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 263
    :cond_0
    sget-object v6, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 262
    :cond_1
    sget-object v5, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 261
    :cond_2
    sget-object v4, Lcom/stripe/proto/model/rest/ErrorWrapper;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 260
    :cond_3
    sget-object v3, Lcom/stripe/proto/model/sdk/Error;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 259
    :cond_4
    sget-object v2, Lcom/stripe/proto/model/rest/PaymentIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 300
    :cond_5
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v13

    .line 267
    new-instance v7, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;

    .line 268
    move-object v8, v2

    check-cast v8, Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 269
    move-object v9, v3

    check-cast v9, Lcom/stripe/proto/model/sdk/Error;

    .line 270
    move-object v10, v4

    check-cast v10, Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 271
    move-object v11, v5

    check-cast v11, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;

    .line 272
    move-object v12, v6

    check-cast v12, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    .line 267
    invoke-direct/range {v7 .. v13}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;-><init>(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lokio/ByteString;)V

    return-object v7
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 215
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->options:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->options:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 235
    :cond_0
    sget-object v0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 236
    sget-object v0, Lcom/stripe/proto/model/rest/PaymentIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 237
    sget-object v0, Lcom/stripe/proto/model/sdk/Error;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->error:Lcom/stripe/proto/model/sdk/Error;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 238
    sget-object v0, Lcom/stripe/proto/model/rest/ErrorWrapper;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 239
    invoke-virtual {p2}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 215
    check-cast p2, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 244
    sget-object v0, Lcom/stripe/proto/model/rest/ErrorWrapper;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 245
    sget-object v0, Lcom/stripe/proto/model/sdk/Error;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->error:Lcom/stripe/proto/model/sdk/Error;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 246
    sget-object v0, Lcom/stripe/proto/model/rest/PaymentIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 247
    sget-object v0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 248
    iget-object v0, p2, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->options:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object p2, p2, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->options:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 215
    check-cast p2, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 225
    sget-object v1, Lcom/stripe/proto/model/rest/PaymentIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 226
    sget-object v1, Lcom/stripe/proto/model/sdk/Error;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->error:Lcom/stripe/proto/model/sdk/Error;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 227
    sget-object v1, Lcom/stripe/proto/model/rest/ErrorWrapper;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->options:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->options:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_0
    sget-object v1, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 215
    check-cast p1, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;
    .locals 9

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object v0, p1, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/proto/model/rest/PaymentIntent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/PaymentIntent;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 279
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->error:Lcom/stripe/proto/model/sdk/Error;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/stripe/proto/model/sdk/Error;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/sdk/Error;

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 280
    :goto_1
    iget-object v0, p1, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/stripe/proto/model/rest/ErrorWrapper;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/ErrorWrapper;

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, v1

    .line 281
    :goto_2
    iget-object v0, p1, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->options:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, v1

    .line 282
    :goto_3
    iget-object v0, p1, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    :cond_4
    move-object v7, v1

    .line 283
    sget-object v8, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v2, p1

    .line 277
    invoke-virtual/range {v2 .. v8}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;->copy(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 215
    check-cast p1, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;

    move-result-object p1

    return-object p1
.end method
