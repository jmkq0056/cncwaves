.class public final Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;
.super Ljava/lang/Object;
.source "PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;",
        ">;"
    }
.end annotation


# instance fields
.field private final coroutineScopeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceInfoRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/DeviceInfoRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final eventLoggersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/EventLoggers;",
            ">;"
        }
    .end annotation
.end field

.field private final localeManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentCollectionContextFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentCollectionFeatureFlagRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentCollectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/hardware/paymentcollection/PaymentCollector;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/SettingsRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final transactionListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/TransactionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final transactionRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/TransactionRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/hardware/paymentcollection/PaymentCollector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/SettingsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/EventLoggers;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/DeviceInfoRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/TransactionListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->paymentCollectorProvider:Ljavax/inject/Provider;

    .line 73
    iput-object p2, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->coroutineScopeProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p3, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->settingsRepositoryProvider:Ljavax/inject/Provider;

    .line 75
    iput-object p4, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->localeManagerProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p5, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->eventLoggersProvider:Ljavax/inject/Provider;

    .line 77
    iput-object p6, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    .line 78
    iput-object p7, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->paymentCollectionContextFactoryProvider:Ljavax/inject/Provider;

    .line 79
    iput-object p8, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->deviceInfoRepositoryProvider:Ljavax/inject/Provider;

    .line 80
    iput-object p9, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->paymentCollectionFeatureFlagRepositoryProvider:Ljavax/inject/Provider;

    .line 81
    iput-object p10, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->transactionListenerProvider:Ljavax/inject/Provider;

    .line 82
    iput-object p11, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/hardware/paymentcollection/PaymentCollector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/SettingsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/metrics/EventLoggers;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/DeviceInfoRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/TransactionListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;",
            ">;)",
            "Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;"
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providePaymentCollectionCoordinator$wiring(Lcom/stripe/hardware/paymentcollection/PaymentCollector;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/paymentcollection/SettingsRepository;Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;Lcom/stripe/paymentcollection/metrics/EventLoggers;Lcom/stripe/paymentcollection/TransactionRepository;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;Lcom/stripe/paymentcollection/TransactionListener;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;
    .locals 12

    .line 113
    sget-object v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;->INSTANCE:Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;->providePaymentCollectionCoordinator$wiring(Lcom/stripe/hardware/paymentcollection/PaymentCollector;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/paymentcollection/SettingsRepository;Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;Lcom/stripe/paymentcollection/metrics/EventLoggers;Lcom/stripe/paymentcollection/TransactionRepository;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;Lcom/stripe/paymentcollection/TransactionListener;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;
    .locals 12

    .line 87
    iget-object v0, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->paymentCollectorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/hardware/paymentcollection/PaymentCollector;

    iget-object v0, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->coroutineScopeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->settingsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/paymentcollection/SettingsRepository;

    iget-object v0, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->localeManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;

    iget-object v0, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->eventLoggersProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/paymentcollection/metrics/EventLoggers;

    iget-object v0, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/paymentcollection/TransactionRepository;

    iget-object v0, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->paymentCollectionContextFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;

    iget-object v0, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->deviceInfoRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/stripe/device/DeviceInfoRepository;

    iget-object v0, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->paymentCollectionFeatureFlagRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    iget-object v0, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->transactionListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/stripe/paymentcollection/TransactionListener;

    iget-object v0, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    invoke-static/range {v1 .. v11}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->providePaymentCollectionCoordinator$wiring(Lcom/stripe/hardware/paymentcollection/PaymentCollector;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/paymentcollection/SettingsRepository;Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;Lcom/stripe/paymentcollection/metrics/EventLoggers;Lcom/stripe/paymentcollection/TransactionRepository;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;Lcom/stripe/paymentcollection/TransactionListener;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->get()Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    move-result-object v0

    return-object v0
.end method
