.class public final Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DownloadMobilePosConfigRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest;",
        "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest;",
        "()V",
        "bbpos_config",
        "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;",
        "config_md5",
        "",
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
.field public bbpos_config:Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;

.field public config_md5:Ljava/lang/String;

.field public device_info:Lcom/stripe/proto/model/common/DeviceInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$Builder;->config_md5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bbpos_config(Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;)Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$Builder;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$Builder;->bbpos_config:Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$Builder;->build()Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest;
    .locals 5

    .line 147
    new-instance v0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest;

    .line 148
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 149
    iget-object v2, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$Builder;->config_md5:Ljava/lang/String;

    .line 150
    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$Builder;->bbpos_config:Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;

    .line 151
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 147
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Ljava/lang/String;Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;Lokio/ByteString;)V

    return-object v0
.end method

.method public final config_md5(Ljava/lang/String;)Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$Builder;
    .locals 1

    const-string v0, "config_md5"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$Builder;->config_md5:Ljava/lang/String;

    return-object p0
.end method

.method public final device_info(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$Builder;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method
