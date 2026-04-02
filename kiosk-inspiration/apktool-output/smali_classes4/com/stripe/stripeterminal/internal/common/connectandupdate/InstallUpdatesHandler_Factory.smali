.class public final Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler_Factory;
.super Ljava/lang/Object;
.source "InstallUpdatesHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final updateInstallerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateInstaller;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateInstaller;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler_Factory;->updateInstallerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateInstaller;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler_Factory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler_Factory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/core/readerupdate/UpdateInstaller;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;
    .locals 1

    .line 44
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;-><init>(Lcom/stripe/core/readerupdate/UpdateInstaller;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler_Factory;->updateInstallerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/readerupdate/UpdateInstaller;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler_Factory;->newInstance(Lcom/stripe/core/readerupdate/UpdateInstaller;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler_Factory;->get()Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;

    move-result-object v0

    return-object v0
.end method
