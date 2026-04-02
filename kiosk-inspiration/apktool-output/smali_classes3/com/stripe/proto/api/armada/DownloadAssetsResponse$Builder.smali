.class public final Lcom/stripe/proto/api/armada/DownloadAssetsResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DownloadAssetsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/DownloadAssetsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse;",
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0014\u0010\u0007\u001a\u00020\u00002\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse;",
        "()V",
        "asset_s3url_content",
        "",
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;",
        "inline_assets",
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;",
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
.field public asset_s3url_content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;",
            ">;"
        }
    .end annotation
.end field

.field public inline_assets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 111
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$Builder;->asset_s3url_content:Ljava/util/List;

    .line 114
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$Builder;->inline_assets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final asset_s3url_content(Ljava/util/List;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$AssetS3UrlContent;",
            ">;)",
            "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$Builder;"
        }
    .end annotation

    const-string v0, "asset_s3url_content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 121
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$Builder;->asset_s3url_content:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$Builder;->build()Lcom/stripe/proto/api/armada/DownloadAssetsResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/DownloadAssetsResponse;
    .locals 4

    .line 134
    new-instance v0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse;

    .line 135
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$Builder;->asset_s3url_content:Ljava/util/List;

    .line 136
    iget-object v2, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$Builder;->inline_assets:Ljava/util/List;

    .line 137
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 134
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse;-><init>(Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final inline_assets(Ljava/util/List;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;",
            ">;)",
            "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$Builder;"
        }
    .end annotation

    const-string v0, "inline_assets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 130
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$Builder;->inline_assets:Ljava/util/List;

    return-object p0
.end method
