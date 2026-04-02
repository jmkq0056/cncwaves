.class public final Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DownloadBBPosResourceRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest;",
        "Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest;",
        "()V",
        "device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "resource_type",
        "Lcom/stripe/proto/api/armada/BBPosResourceType;",
        "version",
        "",
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
.field public device_info:Lcom/stripe/proto/model/common/DeviceInfo;

.field public resource_type:Lcom/stripe/proto/api/armada/BBPosResourceType;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 117
    sget-object v0, Lcom/stripe/proto/api/armada/BBPosResourceType;->FIRMWARE:Lcom/stripe/proto/api/armada/BBPosResourceType;

    iput-object v0, p0, Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest$Builder;->resource_type:Lcom/stripe/proto/api/armada/BBPosResourceType;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest$Builder;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest$Builder;->build()Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest;
    .locals 5

    .line 146
    new-instance v0, Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest;

    .line 147
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 148
    iget-object v2, p0, Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest$Builder;->resource_type:Lcom/stripe/proto/api/armada/BBPosResourceType;

    .line 149
    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest$Builder;->version:Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 146
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/armada/BBPosResourceType;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final device_info(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest$Builder;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method

.method public final resource_type(Lcom/stripe/proto/api/armada/BBPosResourceType;)Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest$Builder;
    .locals 1

    const-string v0, "resource_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest$Builder;->resource_type:Lcom/stripe/proto/api/armada/BBPosResourceType;

    return-object p0
.end method

.method public final version(Ljava/lang/String;)Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest$Builder;
    .locals 1

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadBBPosResourceRequest$Builder;->version:Ljava/lang/String;

    return-object p0
.end method
