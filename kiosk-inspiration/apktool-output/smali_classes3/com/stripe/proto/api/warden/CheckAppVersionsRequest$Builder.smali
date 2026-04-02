.class public final Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CheckAppVersionsRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;",
        "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0008\u0010\u0015\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u001c\u0010\u000b\u001a\u00020\u00002\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u000cH\u0007J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0010\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0010\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\rH\u0007J\u0016\u0010\u0013\u001a\u00020\u00002\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0005H\u0007R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;",
        "()V",
        "asset_versions",
        "",
        "Lcom/stripe/proto/model/common/DeviceAssetInfo;",
        "capabilities",
        "Lcom/stripe/proto/api/warden/ReaderCapabilities;",
        "device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "environment_variables",
        "",
        "",
        "is_debug",
        "",
        "lane_status",
        "Lcom/stripe/proto/model/common/LaneStatus;",
        "store_id",
        "version_info",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
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
.field public asset_versions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/DeviceAssetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;

.field public device_info:Lcom/stripe/proto/model/common/DeviceInfo;

.field public environment_variables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public is_debug:Z

.field public lane_status:Lcom/stripe/proto/model/common/LaneStatus;

.field public store_id:Ljava/lang/String;

.field public version_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 217
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->store_id:Ljava/lang/String;

    .line 225
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->version_info:Ljava/util/List;

    .line 228
    sget-object v0, Lcom/stripe/proto/model/common/LaneStatus;->OPEN:Lcom/stripe/proto/model/common/LaneStatus;

    iput-object v0, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    .line 234
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->asset_versions:Ljava/util/List;

    .line 237
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->environment_variables:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final asset_versions(Ljava/util/List;)Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/DeviceAssetInfo;",
            ">;)",
            "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;"
        }
    .end annotation

    const-string v0, "asset_versions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 289
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->asset_versions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->build()Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;
    .locals 10

    .line 310
    new-instance v0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;

    .line 311
    iget-object v1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->store_id:Ljava/lang/String;

    .line 312
    iget-object v2, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 313
    iget-object v3, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->version_info:Ljava/util/List;

    .line 314
    iget-object v4, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    .line 315
    iget-boolean v5, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->is_debug:Z

    .line 316
    iget-object v6, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->asset_versions:Ljava/util/List;

    .line 317
    iget-object v7, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->environment_variables:Ljava/util/Map;

    .line 318
    iget-object v8, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;

    .line 319
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v9

    .line 310
    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lcom/stripe/proto/model/common/LaneStatus;ZLjava/util/List;Ljava/util/Map;Lcom/stripe/proto/api/warden/ReaderCapabilities;Lokio/ByteString;)V

    return-object v0
.end method

.method public final capabilities(Lcom/stripe/proto/api/warden/ReaderCapabilities;)Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->capabilities:Lcom/stripe/proto/api/warden/ReaderCapabilities;

    return-object p0
.end method

.method public final device_info(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method

.method public final environment_variables(Ljava/util/Map;)Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "environment_variables is deprecated"
    .end annotation

    const-string v0, "environment_variables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->environment_variables:Ljava/util/Map;

    return-object p0
.end method

.method public final is_debug(Z)Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "is_debug is deprecated"
    .end annotation

    .line 280
    iput-boolean p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->is_debug:Z

    return-object p0
.end method

.method public final lane_status(Lcom/stripe/proto/model/common/LaneStatus;)Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "lane_status is deprecated"
    .end annotation

    const-string v0, "lane_status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->lane_status:Lcom/stripe/proto/model/common/LaneStatus;

    return-object p0
.end method

.method public final store_id(Ljava/lang/String;)Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "store_id is deprecated"
    .end annotation

    const-string v0, "store_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->store_id:Ljava/lang/String;

    return-object p0
.end method

.method public final version_info(Ljava/util/List;)Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            ">;)",
            "Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "version_info is deprecated"
    .end annotation

    const-string v0, "version_info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 262
    iput-object p1, p0, Lcom/stripe/proto/api/warden/CheckAppVersionsRequest$Builder;->version_info:Ljava/util/List;

    return-object p0
.end method
