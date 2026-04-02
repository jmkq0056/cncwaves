.class public final Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory;
.super Ljava/lang/Object;
.source "BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;",
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

.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final usbManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/usb/UsbManager;",
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
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/usb/UsbManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory;->deviceControllerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory;->usbManagerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p3, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/usb/UsbManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBbposReaderConnectionController(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Landroid/hardware/usb/UsbManager;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;
    .locals 1

    .line 59
    sget-object v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule;->INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule;

    invoke-virtual {v0, p0, p1, p2}, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule;->provideBbposReaderConnectionController(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Landroid/hardware/usb/UsbManager;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory;->deviceControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory;->usbManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1, v2}, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory;->provideBbposReaderConnectionController(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Landroid/hardware/usb/UsbManager;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory;->get()Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;

    move-result-object v0

    return-object v0
.end method
