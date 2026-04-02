.class public final Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DeviceAssetInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/DeviceAssetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/DeviceAssetInfo;",
        "Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/DeviceAssetInfo;",
        "()V",
        "asset_type",
        "Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;",
        "asset_version_id",
        "",
        "installer_package_name",
        "name",
        "version_info",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "build",
        "common_release"
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
.field public asset_type:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

.field public asset_version_id:Ljava/lang/String;

.field public installer_package_name:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public version_info:Lcom/stripe/proto/model/common/VersionInfoPb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 144
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->name:Ljava/lang/String;

    .line 149
    sget-object v1, Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;->ASSET_TYPE_INVALID:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    iput-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->asset_type:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 155
    iput-object v0, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->installer_package_name:Ljava/lang/String;

    .line 158
    iput-object v0, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->asset_version_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final asset_type(Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;)Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;
    .locals 1

    const-string v0, "asset_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->asset_type:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    return-object p0
.end method

.method public final asset_version_id(Ljava/lang/String;)Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;
    .locals 1

    const-string v0, "asset_version_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->asset_version_id:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->build()Lcom/stripe/proto/model/common/DeviceAssetInfo;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/DeviceAssetInfo;
    .locals 7

    .line 193
    new-instance v0, Lcom/stripe/proto/model/common/DeviceAssetInfo;

    .line 194
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->name:Ljava/lang/String;

    .line 195
    iget-object v2, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->asset_type:Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;

    .line 196
    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 197
    iget-object v4, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->installer_package_name:Ljava/lang/String;

    .line 198
    iget-object v5, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->asset_version_id:Ljava/lang/String;

    .line 199
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 193
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/common/DeviceAssetInfo;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceAssetInfo$AssetType;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final installer_package_name(Ljava/lang/String;)Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;
    .locals 1

    const-string v0, "installer_package_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->installer_package_name:Ljava/lang/String;

    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final version_info(Lcom/stripe/proto/model/common/VersionInfoPb;)Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetInfo$Builder;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    return-object p0
.end method
