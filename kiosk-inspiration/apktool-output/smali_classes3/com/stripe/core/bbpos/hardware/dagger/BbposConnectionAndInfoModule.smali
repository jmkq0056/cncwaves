.class public final Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule;
.super Ljava/lang/Object;
.source "BbposConnectionAndInfoModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposConnectionAndInfoModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposConnectionAndInfoModule.kt\ncom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,54:1\n16#2:55\n*S KotlinDebug\n*F\n+ 1 BbposConnectionAndInfoModule.kt\ncom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule\n*L\n32#1:55\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\rB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule;",
        "",
        "()V",
        "provideBbposReaderConnectionController",
        "Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;",
        "deviceController",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
        "usbManager",
        "Landroid/hardware/usb/UsbManager;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideBbposReaderInfoController",
        "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;",
        "Bindings",
        "hardware_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule;

    invoke-direct {v0}, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule;-><init>()V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule;->INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideBbposReaderConnectionController(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Landroid/hardware/usb/UsbManager;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "deviceController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usbManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;

    .line 55
    const-class v1, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p3

    .line 29
    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;-><init>(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Landroid/hardware/usb/UsbManager;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v0
.end method

.method public final provideBbposReaderInfoController(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;)Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "deviceController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;

    invoke-direct {v0, p1}, Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;-><init>(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;)V

    return-object v0
.end method
