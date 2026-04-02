.class public final Lcom/stripe/core/bbpos/BbposDeviceOtaController_Factory;
.super Ljava/lang/Object;
.source "BbposDeviceOtaController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/bbpos/BbposDeviceOtaController;",
        ">;"
    }
.end annotation


# instance fields
.field private final controllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;",
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
            "Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/core/bbpos/BbposDeviceOtaController_Factory;->controllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/BbposDeviceOtaController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;",
            ">;)",
            "Lcom/stripe/core/bbpos/BbposDeviceOtaController_Factory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/stripe/core/bbpos/BbposDeviceOtaController_Factory;

    invoke-direct {v0, p0}, Lcom/stripe/core/bbpos/BbposDeviceOtaController_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;)Lcom/stripe/core/bbpos/BbposDeviceOtaController;
    .locals 1

    .line 44
    new-instance v0, Lcom/stripe/core/bbpos/BbposDeviceOtaController;

    invoke-direct {v0, p0}, Lcom/stripe/core/bbpos/BbposDeviceOtaController;-><init>(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/core/bbpos/BbposDeviceOtaController;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceOtaController_Factory;->controllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-static {v0}, Lcom/stripe/core/bbpos/BbposDeviceOtaController_Factory;->newInstance(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;)Lcom/stripe/core/bbpos/BbposDeviceOtaController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/BbposDeviceOtaController_Factory;->get()Lcom/stripe/core/bbpos/BbposDeviceOtaController;

    move-result-object v0

    return-object v0
.end method
