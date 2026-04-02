.class public final Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory;
.super Ljava/lang/Object;
.source "BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final appScopeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;"
        }
    .end annotation
.end field

.field private final controllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceInfoCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;",
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
.method public constructor <init>(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/bbpos/dagger/BbposSdkModule;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory;->module:Lcom/stripe/core/bbpos/dagger/BbposSdkModule;

    .line 47
    iput-object p2, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory;->appScopeProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory;->controllerProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory;->deviceInfoCacheProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p5, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/bbpos/dagger/BbposSdkModule;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory;-><init>(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBbposDeviceController$sdk_release(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/bbpos/bbdevice/BBDeviceController;Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule;->provideBbposDeviceController$sdk_release(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/bbpos/bbdevice/BBDeviceController;Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory;->module:Lcom/stripe/core/bbpos/dagger/BbposSdkModule;

    iget-object v1, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory;->appScopeProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory;->controllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v3, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory;->deviceInfoCacheProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;

    iget-object v4, p0, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory;->provideBbposDeviceController$sdk_release(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/bbpos/bbdevice/BBDeviceController;Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory;->get()Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;

    move-result-object v0

    return-object v0
.end method
