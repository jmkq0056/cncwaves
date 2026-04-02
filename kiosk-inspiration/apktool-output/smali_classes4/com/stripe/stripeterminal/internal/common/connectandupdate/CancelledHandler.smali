.class public final Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;
.super Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;
.source "ConnectAndUpdateStates.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;",
        "discoveryController",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;",
        "updateInstaller",
        "Lcom/stripe/core/readerupdate/UpdateInstaller;",
        "(Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;Lcom/stripe/core/readerupdate/UpdateInstaller;)V",
        "onEnter",
        "",
        "current",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;",
        "from",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;",
        "common_publish"
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
.field private final discoveryController:Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;

.field private final updateInstaller:Lcom/stripe/core/readerupdate/UpdateInstaller;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;Lcom/stripe/core/readerupdate/UpdateInstaller;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "discoveryController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateInstaller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->CANCELLED:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;-><init>(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;)V

    .line 253
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;->discoveryController:Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;

    .line 254
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;->updateInstaller:Lcom/stripe/core/readerupdate/UpdateInstaller;

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;)V
    .locals 2

    .line 257
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->INSTALL_UPDATES:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    if-ne p2, p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;->updateInstaller:Lcom/stripe/core/readerupdate/UpdateInstaller;

    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateInstaller;->cancel()V

    :cond_0
    const/4 p1, 0x4

    .line 262
    new-array p1, p1, [Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    const/4 v0, 0x0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->DISCOVER:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->CONNECT:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    aput-object v1, p1, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->DISCONNECT:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    aput-object v1, p1, v0

    const/4 v0, 0x3

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->READER_INFO:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    aput-object v1, p1, v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 263
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;->discoveryController:Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;

    invoke-interface {p1}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;->stopDiscover()V

    .line 266
    :cond_1
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->EMPTY:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    const-string p2, "Transaction cancelled"

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 251
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;

    check-cast p2, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;->onEnter(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;)V

    return-void
.end method
