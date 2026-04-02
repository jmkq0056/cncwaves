.class public final Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "DownloadAssetsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadAssetsResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadAssetsResponse.kt\ncom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,634:1\n463#2,7:635\n1#3:642\n*S KotlinDebug\n*F\n+ 1 DownloadAssetsResponse.kt\ncom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Companion$ADAPTER$1\n*L\n364#1:635,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;",
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
        "terminal_release"
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
            "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 336
    const-string v6, "src/proto/com/stripe/terminal/terminal/pub/api/armada/armada_service.proto"

    .line 330
    const-string v3, "type.googleapis.com/com.stripe.proto.api.armada.DownloadAssetsResponse.AssetS3UrlContent"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;
    .locals 10

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    sget-object v0, Lcom/stripe/proto/api/armada/AssetType;->ASSET_TYPE_INVALID:Lcom/stripe/proto/api/armada/AssetType;

    .line 635
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    const-string v3, ""

    const/4 v4, 0x0

    .line 637
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 373
    invoke-virtual {p1, v5}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 372
    :cond_0
    sget-object v4, Lcom/stripe/proto/model/common/UrlPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 371
    :cond_1
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 367
    :cond_2
    :try_start_0
    sget-object v6, Lcom/stripe/proto/api/armada/AssetType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v6, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 369
    sget-object v7, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v6, v6, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v5, v7, v6}, Lcom/squareup/wire/ProtoReader;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    goto :goto_0

    .line 641
    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    .line 376
    new-instance v1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;

    .line 377
    check-cast v0, Lcom/stripe/proto/api/armada/AssetType;

    .line 378
    check-cast v3, Ljava/lang/String;

    .line 379
    check-cast v4, Lcom/stripe/proto/model/common/UrlPb;

    .line 376
    invoke-direct {v1, v0, v3, v4, p1}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;-><init>(Lcom/stripe/proto/api/armada/AssetType;Ljava/lang/String;Lcom/stripe/proto/model/common/UrlPb;Lokio/ByteString;)V

    return-object v1
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 330
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    sget-object v1, Lcom/stripe/proto/api/armada/AssetType;->ASSET_TYPE_INVALID:Lcom/stripe/proto/api/armada/AssetType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/proto/api/armada/AssetType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 348
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->checksum:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->checksum:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 349
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/common/UrlPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 350
    :cond_2
    invoke-virtual {p2}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 330
    check-cast p2, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 355
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/common/UrlPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 356
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->checksum:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->checksum:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 357
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    sget-object v1, Lcom/stripe/proto/api/armada/AssetType;->ASSET_TYPE_INVALID:Lcom/stripe/proto/api/armada/AssetType;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/stripe/proto/api/armada/AssetType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 330
    check-cast p2, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 340
    iget-object v1, p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    sget-object v2, Lcom/stripe/proto/api/armada/AssetType;->ASSET_TYPE_INVALID:Lcom/stripe/proto/api/armada/AssetType;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/stripe/proto/api/armada/AssetType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->checksum:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->checksum:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 342
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/stripe/proto/model/common/UrlPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object p1, p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 330
    check-cast p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;
    .locals 8

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    iget-object v0, p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/stripe/proto/model/common/UrlPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/common/UrlPb;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 386
    sget-object v5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .line 384
    invoke-static/range {v1 .. v7}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->copy$default(Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;Lcom/stripe/proto/api/armada/AssetType;Ljava/lang/String;Lcom/stripe/proto/model/common/UrlPb;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 330
    check-cast p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;

    move-result-object p1

    return-object p1
.end method
