.class public final Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderInfoControllerFactory;
.super Ljava/lang/Object;
.source "BbposConnectionAndInfoModule_ProvideBbposReaderInfoControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;",
        ">;"
    }
.end annotation


# instance fields
.field private final deviceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
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
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderInfoControllerFactory;->deviceControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderInfoControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            ">;)",
            "Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderInfoControllerFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderInfoControllerFactory;

    invoke-direct {v0, p0}, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderInfoControllerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBbposReaderInfoController(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;)Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;
    .locals 1

    .line 48
    sget-object v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule;->INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule;

    invoke-virtual {v0, p0}, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule;->provideBbposReaderInfoController(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;)Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderInfoControllerFactory;->deviceControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    invoke-static {v0}, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderInfoControllerFactory;->provideBbposReaderInfoController(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;)Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderInfoControllerFactory;->get()Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;

    move-result-object v0

    return-object v0
.end method
