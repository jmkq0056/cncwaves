.class public final Lcom/stripe/core/bbpos/dagger/BbposSdkModule;
.super Ljava/lang/Object;
.source "BbposSdkModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/core/bbpos/dagger/BbposInvocationRecorderModule;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposSdkModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposSdkModule.kt\ncom/stripe/core/bbpos/dagger/BbposSdkModule\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,68:1\n16#2:69\n16#2:70\n*S KotlinDebug\n*F\n+ 1 BbposSdkModule.kt\ncom/stripe/core/bbpos/dagger/BbposSdkModule\n*L\n45#1:69\n59#1:70\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J \u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007J/\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0001\u00a2\u0006\u0002\u0008\u0014J\r\u0010\u0015\u001a\u00020\u000cH\u0001\u00a2\u0006\u0002\u0008\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/dagger/BbposSdkModule;",
        "",
        "()V",
        "provideBBDeviceController",
        "Lcom/bbpos/bbdevice/BBDeviceController;",
        "context",
        "Landroid/content/Context;",
        "listener",
        "Lcom/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;",
        "provideBBDeviceControllerListener",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
        "deviceInfoCache",
        "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideBbposDeviceController",
        "Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;",
        "appScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "controller",
        "provideBbposDeviceController$sdk_release",
        "provideDeviceInfoCache",
        "provideDeviceInfoCache$sdk_release",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideBBDeviceController(Landroid/content/Context;Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;)Lcom/stripe/bbpos/bbdevice/BBDeviceController;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {p1, p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->getInstance(Landroid/content/Context;Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;)Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    move-result-object p1

    const-string p2, "getInstance(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final provideBBDeviceControllerListener(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;

    .line 69
    const-class v1, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p3

    .line 42
    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;-><init>(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    check-cast v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;

    return-object v0
.end method

.method public final provideBbposDeviceController$sdk_release(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/bbpos/bbdevice/BBDeviceController;Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;
    .locals 2
    .param p1    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/AppScope;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "appScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoCache"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;

    .line 70
    const-class v1, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p4

    .line 55
    invoke-direct {v0, p2, p3, p1, p4}, Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;-><init>(Lcom/stripe/bbpos/bbdevice/BBDeviceController;Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v0
.end method

.method public final provideDeviceInfoCache$sdk_release()Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 65
    new-instance v0, Lcom/stripe/core/bbpos/mappers/DefaultDeviceInfoCache;

    invoke-direct {v0}, Lcom/stripe/core/bbpos/mappers/DefaultDeviceInfoCache;-><init>()V

    check-cast v0, Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;

    return-object v0
.end method
