.class public final Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ClientVersionSpecPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/ClientVersionSpecPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0012\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
        "()V",
        "asset_version",
        "Lcom/stripe/proto/model/common/DeviceAssetInfo;",
        "asset_version_metadata",
        "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;",
        "client_upgrade_arg",
        "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;",
        "install_type",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;",
        "presigned_url",
        "Lcom/stripe/proto/model/common/UrlPb;",
        "version_info",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "version_metadata",
        "Lcom/stripe/proto/model/common/SignedAssetPb;",
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
.field public asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;

.field public asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

.field public client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

.field public install_type:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

.field public presigned_url:Lcom/stripe/proto/model/common/UrlPb;

.field public version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

.field public version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 187
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 201
    sget-object v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;->INCREMENTAL:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    iput-object v0, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->install_type:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    return-void
.end method


# virtual methods
.method public final asset_version(Lcom/stripe/proto/model/common/DeviceAssetInfo;)Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    return-object p0
.end method

.method public final asset_version_metadata(Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;)Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->build()Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/ClientVersionSpecPb;
    .locals 9

    .line 266
    new-instance v0, Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 267
    iget-object v1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 268
    iget-object v2, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    .line 269
    iget-object v3, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;

    .line 270
    iget-object v4, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->presigned_url:Lcom/stripe/proto/model/common/UrlPb;

    .line 271
    iget-object v5, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->install_type:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    .line 272
    iget-object v6, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->asset_version:Lcom/stripe/proto/model/common/DeviceAssetInfo;

    .line 273
    iget-object v7, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->asset_version_metadata:Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    .line 274
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v8

    .line 266
    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/model/common/ClientVersionSpecPb;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/model/common/SignedAssetPb;Lcom/stripe/proto/model/common/UrlPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;Lcom/stripe/proto/model/common/DeviceAssetInfo;Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;Lokio/ByteString;)V

    return-object v0
.end method

.method public final client_upgrade_arg(Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;)Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->client_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    return-object p0
.end method

.method public final install_type(Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;)Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;
    .locals 1

    const-string v0, "install_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iput-object p1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->install_type:Lcom/stripe/proto/model/common/ClientVersionSpecPb$InstallType;

    return-object p0
.end method

.method public final presigned_url(Lcom/stripe/proto/model/common/UrlPb;)Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->presigned_url:Lcom/stripe/proto/model/common/UrlPb;

    return-object p0
.end method

.method public final version_info(Lcom/stripe/proto/model/common/VersionInfoPb;)Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    return-object p0
.end method

.method public final version_metadata(Lcom/stripe/proto/model/common/SignedAssetPb;)Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "version_metadata is deprecated"
    .end annotation

    .line 230
    iput-object p1, p0, Lcom/stripe/proto/model/common/ClientVersionSpecPb$Builder;->version_metadata:Lcom/stripe/proto/model/common/SignedAssetPb;

    return-object p0
.end method
