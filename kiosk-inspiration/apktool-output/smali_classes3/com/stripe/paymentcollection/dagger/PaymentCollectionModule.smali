.class public final Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;
.super Ljava/lang/Object;
.source "PaymentCollectionModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule;,
        Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentCollectionModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentCollectionModule.kt\ncom/stripe/paymentcollection/dagger/PaymentCollectionModule\n+ 2 Logger.kt\ncom/stripe/paymentcollection/log/LoggerKt\n*L\n1#1,192:1\n17#2:193\n17#2:194\n*S KotlinDebug\n*F\n+ 1 PaymentCollectionModule.kt\ncom/stripe/paymentcollection/dagger/PaymentCollectionModule\n*L\n72#1:193\n122#1:194\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0001\u00a2\u0006\u0002\u0008\u0008Jg\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0001\u00a2\u0006\u0002\u0008 J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\nH\u0007J\u0008\u0010$\u001a\u00020\u000eH\u0007J\'\u0010%\u001a\u00020&2\u0008\u0008\u0001\u0010\'\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020)2\u0006\u0010\u001e\u001a\u00020\u001fH\u0001\u00a2\u0006\u0002\u0008*J\r\u0010+\u001a\u00020)H\u0001\u00a2\u0006\u0002\u0008,J\u0010\u0010-\u001a\u00020.2\u0006\u0010#\u001a\u00020\nH\u0007J\u001e\u0010/\u001a\u00020\u001b2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u0002010\u00062\u0006\u00102\u001a\u000203H\u0007J\u0010\u00104\u001a\u0002052\u0006\u00106\u001a\u000207H\u0007J\u0010\u00108\u001a\u00020\u001f2\u0006\u00109\u001a\u00020:H\u0007\u00a8\u0006;"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;",
        "",
        "()V",
        "providePaymentCollectionContextFactory",
        "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;",
        "paymentCollectionStateMachine",
        "Ljavax/inject/Provider;",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;",
        "providePaymentCollectionContextFactory$wiring",
        "providePaymentCollectionCoordinator",
        "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;",
        "paymentCollector",
        "Lcom/stripe/hardware/paymentcollection/PaymentCollector;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "settingsRepository",
        "Lcom/stripe/paymentcollection/SettingsRepository;",
        "localeManager",
        "Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;",
        "eventLoggers",
        "Lcom/stripe/paymentcollection/metrics/EventLoggers;",
        "transactionRepository",
        "Lcom/stripe/paymentcollection/TransactionRepository;",
        "paymentCollectionContextFactory",
        "deviceInfoRepository",
        "Lcom/stripe/device/DeviceInfoRepository;",
        "paymentCollectionFeatureFlagRepository",
        "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;",
        "transactionListener",
        "Lcom/stripe/paymentcollection/TransactionListener;",
        "loggerFactory",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;",
        "providePaymentCollectionCoordinator$wiring",
        "providePaymentCollectionEventDelegate",
        "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;",
        "coordinator",
        "providePaymentCollectionScope",
        "providePaymentCollectionStateTimer",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
        "scope",
        "timeoutSupplier",
        "Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;",
        "providePaymentCollectionStateTimer$wiring",
        "providePaymentCollectionTimeoutSupplier",
        "providePaymentCollectionTimeoutSupplier$wiring",
        "providePaymentEventReceiver",
        "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;",
        "providesFeatureFlagRepository",
        "readerFeatureFlags",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "sharedPrefs",
        "Lcom/stripe/jvmcore/storage/SharedPrefs;",
        "providesManualEntryEventReceiver",
        "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;",
        "stateMachine",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;",
        "providesPaymentCollectionLoggerFactory",
        "terminalLoggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "wiring"
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
.field public static final INSTANCE:Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;


# direct methods
.method public static synthetic $r8$lambda$UK2KHYm_0PosrtP2cR2G0QXCvkw(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;->providesPaymentCollectionLoggerFactory$lambda$0(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;

    invoke-direct {v0}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;-><init>()V

    sput-object v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;->INSTANCE:Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final providesPaymentCollectionLoggerFactory$lambda$0(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;
    .locals 1

    const-string v0, "$terminalLoggerFactory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-interface {p0, p1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p0

    invoke-static {p0}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModuleKt;->asPaymentCollectionLogger(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final providePaymentCollectionContextFactory$wiring(Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;",
            ">;)",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;"
        }
    .end annotation

    const-string v0, "paymentCollectionStateMachine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule$providePaymentCollectionContextFactory$1;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule$providePaymentCollectionContextFactory$1;-><init>(Ljavax/inject/Provider;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;

    return-object v0
.end method

.method public final providePaymentCollectionCoordinator$wiring(Lcom/stripe/hardware/paymentcollection/PaymentCollector;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/paymentcollection/SettingsRepository;Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;Lcom/stripe/paymentcollection/metrics/EventLoggers;Lcom/stripe/paymentcollection/TransactionRepository;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;Lcom/stripe/paymentcollection/TransactionListener;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;
    .locals 14
    .param p2    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/PaymentCollection;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    move-object/from16 v0, p11

    const-string v1, "paymentCollector"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "coroutineScope"

    move-object/from16 v4, p2

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "settingsRepository"

    move-object/from16 v5, p3

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "localeManager"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventLoggers"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "transactionRepository"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "paymentCollectionContextFactory"

    move-object/from16 v9, p7

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deviceInfoRepository"

    move-object/from16 v10, p8

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "paymentCollectionFeatureFlagRepository"

    move-object/from16 v11, p9

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "transactionListener"

    move-object/from16 v12, p10

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "loggerFactory"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v2, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    .line 194
    const-class v1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v13

    move-object v3, p1

    .line 111
    invoke-direct/range {v2 .. v13}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;-><init>(Lcom/stripe/hardware/paymentcollection/PaymentCollector;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/paymentcollection/SettingsRepository;Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;Lcom/stripe/paymentcollection/metrics/EventLoggers;Lcom/stripe/paymentcollection/TransactionRepository;Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;Lcom/stripe/device/DeviceInfoRepository;Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;Lcom/stripe/paymentcollection/TransactionListener;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    return-object v2
.end method

.method public final providePaymentCollectionEventDelegate(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "coordinator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;

    return-object p1
.end method

.method public final providePaymentCollectionScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 3
    .annotation runtime Lcom/stripe/jvmcore/dagger/PaymentCollection;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 142
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 144
    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/CoroutineName;

    const-string v2, "PaymentCollection"

    invoke-direct {v1, v2}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public final providePaymentCollectionStateTimer$wiring(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;
    .locals 2
    .param p1    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/PaymentCollection;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeoutSupplier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer;

    .line 193
    const-class v1, Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object p3

    .line 69
    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    return-object v0
.end method

.method public final providePaymentCollectionTimeoutSupplier$wiring()Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    .line 59
    new-instance v0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionTimeoutSupplier;

    invoke-direct {v0}, Lcom/stripe/paymentcollection/DefaultPaymentCollectionTimeoutSupplier;-><init>()V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;

    return-object v0
.end method

.method public final providePaymentEventReceiver(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;)Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "coordinator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    check-cast p1, Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;

    return-object p1
.end method

.method public final providesFeatureFlagRepository(Ljavax/inject/Provider;Lcom/stripe/jvmcore/storage/SharedPrefs;)Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            ")",
            "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;"
        }
    .end annotation

    const-string v0, "readerFeatureFlags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPrefs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionFeatureFlagRepository;

    invoke-direct {v0, p1, p2}, Lcom/stripe/paymentcollection/DefaultPaymentCollectionFeatureFlagRepository;-><init>(Ljavax/inject/Provider;Lcom/stripe/jvmcore/storage/SharedPrefs;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    return-object v0
.end method

.method public final providesManualEntryEventReceiver(Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;)Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "stateMachine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    check-cast p1, Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;

    return-object p1
.end method

.method public final providesPaymentCollectionLoggerFactory(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    const-string v0, "terminalLoggerFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    new-instance v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    return-object v0
.end method
