.class public final Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerListenerFactory;
.super Ljava/lang/Object;
.source "BbposSdkModule_ProvideBBDeviceControllerListenerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final deviceInfoCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;",
            ">;"
        }
    .end annotation
.end field

.field private final listenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
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

.field private final module:Lcom/stripe/core/bbpos/dagger/BbposSdkModule;


# direct methods
.method public constructor <init>(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/bbpos/dagger/BbposSdkModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerListenerFactory;->module:Lcom/stripe/core/bbpos/dagger/BbposSdkModule;

    .line 44
    iput-object p2, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerListenerFactory;->listenerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p3, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerListenerFactory;->deviceInfoCacheProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p4, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerListenerFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerListenerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/bbpos/dagger/BbposSdkModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerListenerFactory;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerListenerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerListenerFactory;-><init>(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBBDeviceControllerListener(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule;->provideBBDeviceControllerListener(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerListenerFactory;->module:Lcom/stripe/core/bbpos/dagger/BbposSdkModule;

    iget-object v1, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerListenerFactory;->listenerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    iget-object v2, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerListenerFactory;->deviceInfoCacheProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;

    iget-object v3, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerListenerFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerListenerFactory;->provideBBDeviceControllerListener(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerListenerFactory;->get()Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;

    move-result-object v0

    return-object v0
.end method
