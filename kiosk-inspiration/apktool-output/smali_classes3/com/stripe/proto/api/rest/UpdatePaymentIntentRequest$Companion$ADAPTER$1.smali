.class public final Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "UpdatePaymentIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdatePaymentIntentRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdatePaymentIntentRequest.kt\ncom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,307:1\n463#2,7:308\n1#3:315\n*S KotlinDebug\n*F\n+ 1 UpdatePaymentIntentRequest.kt\ncom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Companion$ADAPTER$1\n*L\n269#1:308,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/rest/UpdatePaymentIntentRequest$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;",
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
            "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 229
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/api/rest/mainland_requests.proto"

    .line 223
    const-string v3, "type.googleapis.com/com.stripe.proto.api.rest.UpdatePaymentIntentRequest"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;
    .locals 10

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 308
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    .line 310
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    packed-switch v8, :pswitch_data_0

    .line 277
    invoke-virtual {p1, v8}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 276
    :pswitch_0
    sget-object v7, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v7, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 275
    :pswitch_1
    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 274
    :pswitch_2
    sget-object v5, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 273
    :pswitch_3
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 272
    :pswitch_4
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 271
    :pswitch_5
    sget-object v8, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v8, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v8

    .line 280
    new-instance v1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;

    .line 282
    check-cast v3, Ljava/lang/Long;

    .line 283
    check-cast v4, Ljava/lang/String;

    .line 284
    check-cast v5, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 285
    check-cast v6, Ljava/lang/Long;

    .line 286
    check-cast v7, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;

    .line 280
    invoke-direct/range {v1 .. v8}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;-><init>(Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;Lokio/ByteString;)V

    return-object v1

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

    .line 223
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->expand:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 244
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->amount:Ljava/lang/Long;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 245
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->id:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 246
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 247
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 248
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 249
    :cond_4
    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 223
    check-cast p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 254
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 255
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 256
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 257
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->id:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 258
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->amount:Ljava/lang/Long;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->amount:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 259
    :cond_4
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->expand:Ljava/util/List;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 223
    check-cast p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 233
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->expand:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 234
    iget-object v1, p1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->amount:Ljava/lang/Long;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->amount:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 235
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->id:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 238
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object p1, p1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_4
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 223
    check-cast p1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;
    .locals 12

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object v0, p1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->amount:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 293
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->id:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 294
    :goto_1
    iget-object v0, p1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v1

    .line 295
    :goto_2
    iget-object v0, p1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->amount_tip:Ljava/lang/Long;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->INT64_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v7, v0

    goto :goto_3

    :cond_3
    move-object v7, v1

    .line 296
    :goto_3
    iget-object v0, p1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->payment_method_options:Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;

    :cond_4
    move-object v8, v1

    .line 297
    sget-object v9, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    .line 291
    invoke-static/range {v2 .. v11}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;->copy$default(Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 223
    check-cast p1, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;)Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;

    move-result-object p1

    return-object p1
.end method
