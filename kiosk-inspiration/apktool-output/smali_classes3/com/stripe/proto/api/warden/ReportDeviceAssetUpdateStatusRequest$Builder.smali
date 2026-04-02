.class public final Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReportDeviceAssetUpdateStatusRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest;",
        "Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest;",
        "()V",
        "device_asset_update_events",
        "",
        "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;",
        "device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
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
.field public device_asset_update_events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;",
            ">;"
        }
    .end annotation
.end field

.field public device_info:Lcom/stripe/proto/model/common/DeviceInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 105
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest$Builder;->device_asset_update_events:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest$Builder;->build()Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest;
    .locals 4

    .line 121
    new-instance v0, Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest;

    .line 122
    iget-object v1, p0, Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 123
    iget-object v2, p0, Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest$Builder;->device_asset_update_events:Ljava/util/List;

    .line 124
    invoke-virtual {p0}, Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 121
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final device_asset_update_events(Ljava/util/List;)Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/DeviceAssetUpdateEvent;",
            ">;)",
            "Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest$Builder;"
        }
    .end annotation

    const-string v0, "device_asset_update_events"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 117
    iput-object p1, p0, Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest$Builder;->device_asset_update_events:Ljava/util/List;

    return-object p0
.end method

.method public final device_info(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest$Builder;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/stripe/proto/api/warden/ReportDeviceAssetUpdateStatusRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method
