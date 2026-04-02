.class public final Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler_Factory;
.super Ljava/lang/Object;
.source "CancelledHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final discoveryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateInstaller;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler_Factory;->discoveryControllerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler_Factory;->updateInstallerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateInstaller;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler_Factory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler_Factory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;Lcom/stripe/core/readerupdate/UpdateInstaller;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;
    .locals 1

    .line 50
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;-><init>(Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;Lcom/stripe/core/readerupdate/UpdateInstaller;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler_Factory;->discoveryControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler_Factory;->updateInstallerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/readerupdate/UpdateInstaller;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler_Factory;->newInstance(Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;Lcom/stripe/core/readerupdate/UpdateInstaller;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler_Factory;->get()Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;

    move-result-object v0

    return-object v0
.end method
