.class public final Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DownloadAssetsRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor;",
        "Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor;",
        "()V",
        "asset_type",
        "Lcom/stripe/proto/api/armada/AssetType;",
        "checksum",
        "",
        "font_bundle",
        "Lcom/stripe/proto/model/config/FontBundle;",
        "image_id",
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

.field public font_bundle:Lcom/stripe/proto/model/config/FontBundle;

.field public image_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 284
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 286
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;->checksum:Ljava/lang/String;

    .line 289
    sget-object v1, Lcom/stripe/proto/api/armada/AssetType;->ASSET_TYPE_INVALID:Lcom/stripe/proto/api/armada/AssetType;

    iput-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    .line 292
    iput-object v0, p0, Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;->image_id:Ljava/lang/String;

    .line 295
    sget-object v0, Lcom/stripe/proto/model/config/FontBundle;->UNKNOWN:Lcom/stripe/proto/model/config/FontBundle;

    iput-object v0, p0, Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;->font_bundle:Lcom/stripe/proto/model/config/FontBundle;

    return-void
.end method


# virtual methods
.method public final asset_type(Lcom/stripe/proto/api/armada/AssetType;)Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;
    .locals 1

    const-string v0, "asset_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;->build()Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor;
    .locals 6

    .line 329
    new-instance v0, Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor;

    .line 330
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;->checksum:Ljava/lang/String;

    .line 331
    iget-object v2, p0, Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;->asset_type:Lcom/stripe/proto/api/armada/AssetType;

    .line 332
    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;->image_id:Ljava/lang/String;

    .line 333
    iget-object v4, p0, Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;->font_bundle:Lcom/stripe/proto/model/config/FontBundle;

    .line 334
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 329
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor;-><init>(Ljava/lang/String;Lcom/stripe/proto/api/armada/AssetType;Ljava/lang/String;Lcom/stripe/proto/model/config/FontBundle;Lokio/ByteString;)V

    return-object v0
.end method

.method public final checksum(Ljava/lang/String;)Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;
    .locals 1

    const-string v0, "checksum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;->checksum:Ljava/lang/String;

    return-object p0
.end method

.method public final font_bundle(Lcom/stripe/proto/model/config/FontBundle;)Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;
    .locals 1

    const-string v0, "font_bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;->font_bundle:Lcom/stripe/proto/model/config/FontBundle;

    return-object p0
.end method

.method public final image_id(Ljava/lang/String;)Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;
    .locals 1

    const-string v0, "image_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadAssetsRequest$AssetDescriptor$Builder;->image_id:Ljava/lang/String;

    return-object p0
.end method
