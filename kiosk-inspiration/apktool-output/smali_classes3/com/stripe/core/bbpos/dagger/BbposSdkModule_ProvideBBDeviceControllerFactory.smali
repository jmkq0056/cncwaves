.class public final Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerFactory;
.super Ljava/lang/Object;
.source "BbposSdkModule_ProvideBBDeviceControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController;",
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

.field private final listenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/core/bbpos/dagger/BbposSdkModule;


# direct methods
.method public constructor <init>(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/bbpos/dagger/BbposSdkModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerFactory;->module:Lcom/stripe/core/bbpos/dagger/BbposSdkModule;

    .line 39
    iput-object p2, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerFactory;->listenerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/bbpos/dagger/BbposSdkModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;",
            ">;)",
            "Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerFactory;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerFactory;-><init>(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBBDeviceController(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Landroid/content/Context;Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;)Lcom/stripe/bbpos/bbdevice/BBDeviceController;
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule;->provideBBDeviceController(Landroid/content/Context;Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;)Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/bbpos/bbdevice/BBDeviceController;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerFactory;->module:Lcom/stripe/core/bbpos/dagger/BbposSdkModule;

    iget-object v1, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerFactory;->listenerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;

    invoke-static {v0, v1, v2}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerFactory;->provideBBDeviceController(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Landroid/content/Context;Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;)Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerFactory;->get()Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    move-result-object v0

    return-object v0
.end method
