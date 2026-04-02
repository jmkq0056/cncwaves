.class public final Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;
.super Lcom/squareup/wire/Message;
.source "DownloadAssetsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/DownloadAssetsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetS3UrlContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;,
        Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;",
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B/\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ0\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;",
        "asset_type",
        "Lcom/stripe/proto/api/armada/AssetType;",
        "checksum",
        "",
        "presigned_s3_url",
        "Lcom/stripe/proto/model/common/UrlPb;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/api/armada/AssetType;Ljava/lang/String;Lcom/stripe/proto/model/common/UrlPb;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
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


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final asset_type:Lcom/stripe/proto/api/armada/AssetType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.armada.AssetType#ADAPTER"
        jsonName = "assetType"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final checksum:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.UrlPb#ADAPTER"
        jsonName = "presignedS3Url"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->Companion:Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Companion;

    .line 331
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 330
    const-class v1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 334
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 330
    new-instance v3, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;-><init>(Lcom/stripe/proto/api/armada/AssetType;Ljava/lang/String;Lcom/stripe/proto/model/common/UrlPb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/api/armada/AssetType;Ljava/lang/String;Lcom/stripe/proto/model/common/UrlPb;Lokio/ByteString;)V
    .locals 1

    const-string v0, "asset_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checksum"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 205
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    .line 217
    iput-object p2, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->checksum:Ljava/lang/String;

    .line 228
    iput-object p3, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/api/armada/AssetType;Ljava/lang/String;Lcom/stripe/proto/model/common/UrlPb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 213
    sget-object p1, Lcom/stripe/proto/api/armada/AssetType;->ASSET_TYPE_INVALID:Lcom/stripe/proto/api/armada/AssetType;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 224
    const-string p2, ""

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 237
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 201
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;-><init>(Lcom/stripe/proto/api/armada/AssetType;Ljava/lang/String;Lcom/stripe/proto/model/common/UrlPb;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;Lcom/stripe/proto/api/armada/AssetType;Ljava/lang/String;Lcom/stripe/proto/model/common/UrlPb;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 279
    iget-object p1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 280
    iget-object p2, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->checksum:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 281
    iget-object p3, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 282
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 278
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->copy(Lcom/stripe/proto/api/armada/AssetType;Ljava/lang/String;Lcom/stripe/proto/model/common/UrlPb;Lokio/ByteString;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/api/armada/AssetType;Ljava/lang/String;Lcom/stripe/proto/model/common/UrlPb;Lokio/ByteString;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;
    .locals 1

    const-string v0, "asset_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checksum"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    new-instance v0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;-><init>(Lcom/stripe/proto/api/armada/AssetType;Ljava/lang/String;Lcom/stripe/proto/model/common/UrlPb;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 250
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;

    invoke-virtual {p1}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    if-eq v1, v3, :cond_3

    return v2

    .line 253
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->checksum:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->checksum:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 254
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    iget-object p1, p1, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 259
    iget v0, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->hashCode:I

    if-nez v0, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 262
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    invoke-virtual {v1}, Lcom/stripe/proto/api/armada/AssetType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 263
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->checksum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 264
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/UrlPb;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 265
    iput v0, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->hashCode:I

    :cond_1
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->newBuilder()Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;
    .locals 2

    .line 240
    new-instance v0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;-><init>()V

    .line 241
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    .line 242
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->checksum:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;->checksum:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    iput-object v1, v0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    .line 244
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 272
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "asset_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checksum="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->checksum:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v2, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "presigned_s3_url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "AssetS3UrlContent{"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
