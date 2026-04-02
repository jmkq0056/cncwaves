.class public final Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "PaymentIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentIntent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentIntent.kt\ncom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2555:1\n463#2,7:2556\n1#3:2563\n*S KotlinDebug\n*F\n+ 1 PaymentIntent.kt\ncom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Companion$ADAPTER$1\n*L\n2060#1:2556,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;",
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
            "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 2024
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/model/rest/mainland_payments.proto"

    .line 2018
    const-string v3, "type.googleapis.com/com.stripe.proto.model.rest.PaymentIntent.NextAction.WechatPayDisplayQrCode"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;
    .locals 14

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2556
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    .line 2558
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

    .line 2067
    invoke-virtual {p1, v7}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 2066
    :cond_0
    sget-object v6, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 2065
    :cond_1
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 2064
    :cond_2
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 2063
    :cond_3
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 2062
    :cond_4
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 2562
    :cond_5
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object v13

    .line 2070
    new-instance v7, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    .line 2071
    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 2072
    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    .line 2073
    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    .line 2074
    move-object v11, v5

    check-cast v11, Ljava/lang/String;

    .line 2075
    move-object v12, v6

    check-cast v12, Ljava/lang/String;

    .line 2070
    invoke-direct/range {v7 .. v13}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v7
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 2018
    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2037
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->data_:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->data_:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 2038
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->hosted_instructions_url:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->hosted_instructions_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 2039
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_data_url:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_data_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 2040
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_png:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_png:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 2041
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_svg:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_svg:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 2042
    :cond_4
    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 2018
    check-cast p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2046
    invoke-virtual {p2}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 2047
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_svg:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_svg:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 2048
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_png:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_png:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 2049
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_data_url:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_data_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 2050
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->hosted_instructions_url:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->hosted_instructions_url:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 2051
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->data_:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->data_:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 2018
    check-cast p2, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2027
    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 2028
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->data_:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->data_:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2029
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->hosted_instructions_url:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->hosted_instructions_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2030
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_data_url:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_data_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2031
    :cond_2
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_png:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_png:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2032
    :cond_3
    iget-object v1, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_svg:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object p1, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_svg:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_4
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 2018
    check-cast p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;
    .locals 9

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2081
    iget-object v0, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->data_:Ljava/lang/String;

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

    .line 2082
    :goto_0
    iget-object v0, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->hosted_instructions_url:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 2083
    :goto_1
    iget-object v0, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_data_url:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, v1

    .line 2084
    :goto_2
    iget-object v0, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_png:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, v1

    .line 2085
    :goto_3
    iget-object v0, p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->image_url_svg:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_4
    move-object v7, v1

    .line 2086
    sget-object v8, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v2, p1

    .line 2080
    invoke-virtual/range {v2 .. v8}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2018
    check-cast p1, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;)Lcom/stripe/proto/model/rest/PaymentIntent$NextAction$WechatPayDisplayQrCode;

    move-result-object p1

    return-object p1
.end method
