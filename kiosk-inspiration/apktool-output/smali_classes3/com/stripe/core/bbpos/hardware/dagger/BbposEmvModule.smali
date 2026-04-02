.class public final Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule;
.super Ljava/lang/Object;
.source "BbposEmvModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule$Bindings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u001eB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0001\u00a2\u0006\u0002\u0008\tJe\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00182\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001cH\u0001\u00a2\u0006\u0002\u0008\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule;",
        "",
        "()V",
        "provideCardRemovalChecker",
        "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;",
        "appScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideCardRemovalChecker$hardware_release",
        "providePaymentCollector",
        "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;",
        "lazyController",
        "Ldagger/Lazy;",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "ioDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "healthLoggerBuilder",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "pinButtonsRepository",
        "Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;",
        "featureFlagsProvider",
        "Ljavax/inject/Provider;",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "cardRemovalChecker",
        "accessibilityChecker",
        "Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;",
        "providePaymentCollector$hardware_release",
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
.field public static final INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule;

    invoke-direct {v0}, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule;-><init>()V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule;->INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideCardRemovalChecker$hardware_release(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;
    .locals 1
    .param p1    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/AppScope;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "appScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    return-object v0
.end method

.method public final providePaymentCollector$hardware_release(Ldagger/Lazy;Lcom/stripe/time/Clock;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;Ljavax/inject/Provider;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;)Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;
    .locals 11
    .param p3    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/AppScope;
        .end annotation
    .end param
    .param p4    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            ">;",
            "Lcom/stripe/time/Clock;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            "Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;",
            "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;",
            "Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;",
            ")",
            "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "lazyController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "healthLoggerBuilder"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinButtonsRepository"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlagsProvider"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardRemovalChecker"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessibilityChecker"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v1, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v10}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;-><init>(Ldagger/Lazy;Lcom/stripe/time/Clock;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;Ljavax/inject/Provider;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;)V

    return-object v1
.end method
