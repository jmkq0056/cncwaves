.class public final Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "DiscoverLocationsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiscoverLocationsResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverLocationsResponse.kt\ncom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,319:1\n463#2,7:320\n1#3:327\n*S KotlinDebug\n*F\n+ 1 DiscoverLocationsResponse.kt\ncom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair$Companion$ADAPTER$1\n*L\n291#1:320,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;",
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
            "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 267
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/api/rest/mainland_requests.proto"

    .line 261
    const-string v3, "type.googleapis.com/com.stripe.proto.api.rest.DiscoverLocationsResponse.ReaderLocationPair"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;
    .locals 6

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 320
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 322
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 295
    invoke-virtual {p1, v4}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 294
    :cond_0
    sget-object v3, Lcom/stripe/proto/model/merchant/ApiLocationPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 293
    :cond_1
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    .line 298
    new-instance v1, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;

    .line 300
    check-cast v3, Lcom/stripe/proto/model/merchant/ApiLocationPb;

    .line 298
    invoke-direct {v1, v0, v3, p1}, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;-><init>(Ljava/util/List;Lcom/stripe/proto/model/merchant/ApiLocationPb;Lokio/ByteString;)V

    return-object v1
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 261
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;->serial_numbers:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 278
    iget-object v0, p2, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 279
    :cond_0
    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 261
    check-cast p2, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 284
    iget-object v0, p2, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 285
    :cond_0
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;->serial_numbers:Ljava/util/List;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 261
    check-cast p2, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 271
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;->serial_numbers:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    iget-object v1, p1, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object p1, p1, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 261
    check-cast p1, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;)Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iget-object v0, p1, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;->serial_numbers:Ljava/util/List;

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/squareup/wire/internal/Internal;->-redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)Ljava/util/List;

    move-result-object v0

    .line 307
    iget-object v1, p1, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/stripe/proto/model/merchant/ApiLocationPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v1}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/merchant/ApiLocationPb;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 308
    :goto_0
    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 305
    invoke-virtual {p1, v0, v1, v2}, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;->copy(Ljava/util/List;Lcom/stripe/proto/model/merchant/ApiLocationPb;Lokio/ByteString;)Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 261
    check-cast p1, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;)Lcom/stripe/proto/api/rest/DiscoverLocationsResponse$ReaderLocationPair;

    move-result-object p1

    return-object p1
.end method
