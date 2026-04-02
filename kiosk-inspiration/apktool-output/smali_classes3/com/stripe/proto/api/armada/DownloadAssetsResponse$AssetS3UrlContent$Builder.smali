.class public final Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DownloadAssetsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;",
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;",
        "()V",
        "asset_type",
        "Lcom/stripe/proto/api/armada/AssetType;",
        "checksum",
        "",
        "presigned_s3_url",
        "Lcom/stripe/proto/model/common/UrlPb;",
        "build",
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


# instance fields
.field public asset_type:Lcom/stripe/proto/api/armada/AssetType;

.field public checksum:Ljava/lang/String;

.field public presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 285
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 287
    sget-object v0, Lcom/stripe/proto/api/armada/AssetType;->ASSET_TYPE_INVALID:Lcom/stripe/proto/api/armada/AssetType;

    iput-object v0, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    .line 290
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;->checksum:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final asset_type(Lcom/stripe/proto/api/armada/AssetType;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;
    .locals 1

    const-string v0, "asset_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 285
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;->build()Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;
    .locals 5

    .line 319
    new-instance v0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;

    .line 320
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    .line 321
    iget-object v2, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;->checksum:Ljava/lang/String;

    .line 322
    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    .line 323
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 319
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;-><init>(Lcom/stripe/proto/api/armada/AssetType;Ljava/lang/String;Lcom/stripe/proto/model/common/UrlPb;Lokio/ByteString;)V

    return-object v0
.end method

.method public final checksum(Ljava/lang/String;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;
    .locals 1

    const-string v0, "checksum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;->checksum:Ljava/lang/String;

    return-object p0
.end method

.method public final presigned_s3_url(Lcom/stripe/proto/model/common/UrlPb;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent$Builder;->presigned_s3_url:Lcom/stripe/proto/model/common/UrlPb;

    return-object p0
.end method
