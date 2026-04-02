.class public final Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;
.super Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;
.source "ConnectAndUpdateStates.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;",
        "updateInstaller",
        "Lcom/stripe/core/readerupdate/UpdateInstaller;",
        "(Lcom/stripe/core/readerupdate/UpdateInstaller;)V",
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
.field private final updateInstaller:Lcom/stripe/core/readerupdate/UpdateInstaller;


# direct methods
.method public constructor <init>(Lcom/stripe/core/readerupdate/UpdateInstaller;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "updateInstaller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;->INSTALL_UPDATES:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateHandler;-><init>(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;)V

    .line 209
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;->updateInstaller:Lcom/stripe/core/readerupdate/UpdateInstaller;

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->getUpdateSummary()Lcom/stripe/core/readerupdate/UpdateSummary;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 213
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;->updateInstaller:Lcom/stripe/core/readerupdate/UpdateInstaller;

    invoke-virtual {p2, p1}, Lcom/stripe/core/readerupdate/UpdateInstaller;->install(Lcom/stripe/core/readerupdate/UpdateSummary;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 207
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;

    check-cast p2, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;->onEnter(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateState;)V

    return-void
.end method
