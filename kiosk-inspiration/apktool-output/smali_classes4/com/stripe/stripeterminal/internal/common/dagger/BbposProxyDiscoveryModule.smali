.class public final Lcom/stripe/stripeterminal/internal/common/dagger/BbposProxyDiscoveryModule;
.super Ljava/lang/Object;
.source "BbposProxyDiscoveryModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/stripeterminal/internal/common/dagger/BbposProxyDiscoveryModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/dagger/BbposProxyDiscoveryModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposProxyDiscoveryModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposProxyDiscoveryModule.kt\ncom/stripe/stripeterminal/internal/common/dagger/BbposProxyDiscoveryModule\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,44:1\n16#2:45\n*S KotlinDebug\n*F\n+ 1 BbposProxyDiscoveryModule.kt\ncom/stripe/stripeterminal/internal/common/dagger/BbposProxyDiscoveryModule\n*L\n34#1:45\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\rB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/dagger/BbposProxyDiscoveryModule;",
        "",
        "()V",
        "provideDiscoveryController",
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;",
        "defaultBluetoothDiscoveryController",
        "Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;",
        "bbposBluetoothDiscoveryController",
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;",
        "usbDiscoveryController",
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "Bindings",
        "common_publish"
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/BbposProxyDiscoveryModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposProxyDiscoveryModule;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposProxyDiscoveryModule;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/BbposProxyDiscoveryModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/BbposProxyDiscoveryModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideDiscoveryController(Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "defaultBluetoothDiscoveryController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bbposBluetoothDiscoveryController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usbDiscoveryController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;

    .line 45
    const-class v1, Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p4

    .line 30
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;-><init>(Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v0
.end method
