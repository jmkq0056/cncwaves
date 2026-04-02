.class public final Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;
.super Ljava/lang/Object;
.source "BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessibilityCheckerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;",
            ">;"
        }
    .end annotation
.end field

.field private final appScopeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;"
        }
    .end annotation
.end field

.field private final cardRemovalCheckerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;",
            ">;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final controllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final featureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final healthLoggerBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final ioDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final pinButtonsRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->controllerProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p2, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->clockProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p3, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->appScopeProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p4, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->ioDispatcherProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p5, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->healthLoggerBuilderProvider:Ljavax/inject/Provider;

    .line 73
    iput-object p6, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->pinButtonsRepositoryProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p7, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    .line 75
    iput-object p8, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->cardRemovalCheckerProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p9, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->accessibilityCheckerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;",
            ">;)",
            "Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providePaymentCollector$hardware_release(Ldagger/Lazy;Lcom/stripe/time/Clock;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;Ljavax/inject/Provider;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;)Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;
    .locals 10
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

    .line 100
    sget-object v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule;->INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule;->providePaymentCollector$hardware_release(Ldagger/Lazy;Lcom/stripe/time/Clock;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;Ljavax/inject/Provider;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;)Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;
    .locals 10

    .line 81
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->controllerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/time/Clock;

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->appScopeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->ioDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->healthLoggerBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->pinButtonsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;

    iget-object v7, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->cardRemovalCheckerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->accessibilityCheckerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;

    invoke-static/range {v1 .. v9}, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->providePaymentCollector$hardware_release(Ldagger/Lazy;Lcom/stripe/time/Clock;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;Ljavax/inject/Provider;Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;)Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->get()Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;

    move-result-object v0

    return-object v0
.end method
