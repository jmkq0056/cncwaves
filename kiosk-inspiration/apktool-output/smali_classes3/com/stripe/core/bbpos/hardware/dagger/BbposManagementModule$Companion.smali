.class public final Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule$Companion;
.super Ljava/lang/Object;
.source "BbposManagementModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposManagementModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposManagementModule.kt\ncom/stripe/core/bbpos/hardware/dagger/BbposManagementModule$Companion\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,34:1\n16#2:35\n*S KotlinDebug\n*F\n+ 1 BbposManagementModule.kt\ncom/stripe/core/bbpos/hardware/dagger/BbposManagementModule$Companion\n*L\n29#1:35\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0001\u00a2\u0006\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule$Companion;",
        "",
        "()V",
        "provideObservabilityListener",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
        "healthLoggerBuilder",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "structuredEventLogger",
        "Lcom/stripe/loggingmodels/StructuredEventLogger;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideObservabilityListener$hardware_release",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/core/bbpos/hardware/dagger/BbposManagementModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideObservabilityListener$hardware_release(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/loggingmodels/StructuredEventLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;
    .locals 2
    .annotation runtime Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule$ObservabilityHandler;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "healthLoggerBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "structuredEventLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper;

    .line 27
    invoke-static {p1}, Lcom/stripe/core/bbpos/hardware/BbposSdkLoggerKt;->buildsBbposSdkEventLogger(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    .line 35
    const-class v1, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p3

    .line 26
    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/core/bbpos/hardware/ObservabilityDeviceListenerWrapper;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/StructuredEventLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    check-cast v0, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    return-object v0
.end method
