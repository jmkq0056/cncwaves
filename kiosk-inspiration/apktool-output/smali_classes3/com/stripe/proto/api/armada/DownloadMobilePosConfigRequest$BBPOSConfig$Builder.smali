.class public final Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DownloadMobilePosConfigRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;",
        "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;",
        "()V",
        "config_version",
        "",
        "firmware_version",
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
.field public config_version:Ljava/lang/String;

.field public firmware_version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 283
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 285
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig$Builder;->firmware_version:Ljava/lang/String;

    .line 288
    iput-object v0, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig$Builder;->config_version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig$Builder;->build()Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;
    .locals 4

    .line 300
    new-instance v0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;

    .line 301
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig$Builder;->firmware_version:Ljava/lang/String;

    .line 302
    iget-object v2, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig$Builder;->config_version:Ljava/lang/String;

    .line 303
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 300
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final config_version(Ljava/lang/String;)Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig$Builder;
    .locals 1

    const-string v0, "config_version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig$Builder;->config_version:Ljava/lang/String;

    return-object p0
.end method

.method public final firmware_version(Ljava/lang/String;)Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig$Builder;
    .locals 1

    const-string v0, "firmware_version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadMobilePosConfigRequest$BBPOSConfig$Builder;->firmware_version:Ljava/lang/String;

    return-object p0
.end method
