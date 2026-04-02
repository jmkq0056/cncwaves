.class public final Lcom/stripe/core/bbpos/BbposDeviceOtaController;
.super Ljava/lang/Object;
.source "BbposDeviceOtaController.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0008J\u001a\u0010\n\u001a\u00020\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u0008J\u001a\u0010\u000c\u001a\u00020\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u0008J\u001a\u0010\r\u001a\u00020\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u0008J\u001a\u0010\u000e\u001a\u00020\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\u0008J\u0006\u0010\u000f\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/BbposDeviceOtaController;",
        "",
        "controller",
        "Lcom/bbpos/bbdevice/ota/BBDeviceOTAController;",
        "(Lcom/bbpos/bbdevice/ota/BBDeviceOTAController;)V",
        "getTargetVersionWithData",
        "",
        "data",
        "Ljava/util/Hashtable;",
        "",
        "setTargetVersionWithData",
        "input",
        "startRemoteConfigUpdate",
        "startRemoteFirmwareUpdate",
        "startRemoteKeyInjection",
        "stop",
        "sdk_release"
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
.field private final controller:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;


# direct methods
.method public constructor <init>(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/stripe/core/bbpos/BbposDeviceOtaController;->controller:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    return-void
.end method


# virtual methods
.method public final getTargetVersionWithData(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/OTAServerURLNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;,
            Lcom/stripe/bbpos/bbdevice/ota/NoInternetConnectionException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceOtaController;->controller:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->getTargetVersionWithData(Ljava/util/Hashtable;)V

    return-void
.end method

.method public final setTargetVersionWithData(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/OTAServerURLNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;,
            Lcom/stripe/bbpos/bbdevice/ota/NoInternetConnectionException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceOtaController;->controller:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->setTargetVersionWithData(Ljava/util/Hashtable;)V

    return-void
.end method

.method public final startRemoteConfigUpdate(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/OTAServerURLNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;,
            Lcom/stripe/bbpos/bbdevice/ota/NoInternetConnectionException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceOtaController;->controller:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->startRemoteConfigUpdate(Ljava/util/Hashtable;)V

    return-void
.end method

.method public final startRemoteFirmwareUpdate(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/OTAServerURLNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;,
            Lcom/stripe/bbpos/bbdevice/ota/NoInternetConnectionException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceOtaController;->controller:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->startRemoteFirmwareUpdate(Ljava/util/Hashtable;)V

    return-void
.end method

.method public final startRemoteKeyInjection(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/OTAServerURLNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;,
            Lcom/stripe/bbpos/bbdevice/ota/NoInternetConnectionException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceOtaController;->controller:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->startRemoteKeyInjection(Ljava/util/Hashtable;)V

    return-void
.end method

.method public final stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceOtaController;->controller:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->stop()V

    return-void
.end method
