.class public final Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DownloadAssetsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;",
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;",
        "()V",
        "asset_type",
        "Lcom/stripe/proto/api/armada/AssetType;",
        "bin_config_rules",
        "",
        "Lcom/stripe/proto/model/config/BinConfigRule;",
        "image",
        "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;",
        "localization_bundle",
        "Lcom/stripe/proto/model/config/LocalizationBundlePb;",
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

.field public bin_config_rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/BinConfigRule;",
            ">;"
        }
    .end annotation
.end field

.field public image:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;

.field public localization_bundle:Lcom/stripe/proto/model/config/LocalizationBundlePb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 501
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 503
    sget-object v0, Lcom/stripe/proto/api/armada/AssetType;->ASSET_TYPE_INVALID:Lcom/stripe/proto/api/armada/AssetType;

    iput-object v0, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    .line 509
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;->bin_config_rules:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final asset_type(Lcom/stripe/proto/api/armada/AssetType;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;
    .locals 1

    const-string v0, "asset_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    return-object p0
.end method

.method public final bin_config_rules(Ljava/util/List;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/BinConfigRule;",
            ">;)",
            "Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;"
        }
    .end annotation

    const-string v0, "bin_config_rules"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 535
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;->bin_config_rules:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 501
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;->build()Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;
    .locals 6

    .line 547
    new-instance v0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;

    .line 548
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    .line 549
    iget-object v2, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;->image:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;

    .line 550
    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;->bin_config_rules:Ljava/util/List;

    .line 551
    iget-object v4, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;->localization_bundle:Lcom/stripe/proto/model/config/LocalizationBundlePb;

    .line 552
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 547
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent;-><init>(Lcom/stripe/proto/api/armada/AssetType;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;Ljava/util/List;Lcom/stripe/proto/model/config/LocalizationBundlePb;Lokio/ByteString;)V

    return-object v0
.end method

.method public final image(Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;->image:Lcom/stripe/proto/terminal/terminal/pub/message/common/ImagePb;

    return-object p0
.end method

.method public final localization_bundle(Lcom/stripe/proto/model/config/LocalizationBundlePb;)Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsResponse$InlineAssetContent$Builder;->localization_bundle:Lcom/stripe/proto/model/config/LocalizationBundlePb;

    return-object p0
.end method
