.class public final Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideBBDeviceOTAControllerFactory;
.super Ljava/lang/Object;
.source "BbposUpdateModule_ProvideBBDeviceOTAControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController;",
            ">;"
        }
    .end annotation
.end field

.field private final listenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/BbposOtaListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/BbposOtaListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideBBDeviceOTAControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideBBDeviceOTAControllerFactory;->listenerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p3, p0, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideBBDeviceOTAControllerFactory;->deviceControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideBBDeviceOTAControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/BbposOtaListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController;",
            ">;)",
            "Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideBBDeviceOTAControllerFactory;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideBBDeviceOTAControllerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideBBDeviceOTAControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBBDeviceOTAController(Landroid/content/Context;Lcom/stripe/core/bbpos/BbposOtaListener;Lcom/stripe/bbpos/bbdevice/BBDeviceController;)Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;
    .locals 1

    .line 58
    sget-object v0, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule;->INSTANCE:Lcom/stripe/core/bbpos/dagger/BbposUpdateModule;

    invoke-virtual {v0, p0, p1, p2}, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule;->provideBBDeviceOTAController(Landroid/content/Context;Lcom/stripe/core/bbpos/BbposOtaListener;Lcom/stripe/bbpos/bbdevice/BBDeviceController;)Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideBBDeviceOTAControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideBBDeviceOTAControllerFactory;->listenerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/bbpos/BbposOtaListener;

    iget-object v2, p0, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideBBDeviceOTAControllerFactory;->deviceControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-static {v0, v1, v2}, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideBBDeviceOTAControllerFactory;->provideBBDeviceOTAController(Landroid/content/Context;Lcom/stripe/core/bbpos/BbposOtaListener;Lcom/stripe/bbpos/bbdevice/BBDeviceController;)Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideBBDeviceOTAControllerFactory;->get()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    move-result-object v0

    return-object v0
.end method
