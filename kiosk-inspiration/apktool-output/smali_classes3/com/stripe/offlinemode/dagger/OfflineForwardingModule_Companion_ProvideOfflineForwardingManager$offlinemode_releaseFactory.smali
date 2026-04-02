.class public final Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;
.super Ljava/lang/Object;
.source "OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final apiClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;",
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

.field private final credentialsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final discreteLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final endToEndLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final listenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
            ">;"
        }
    .end annotation
.end field

.field private final networkConnectivityFlowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final networkStatusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineConfigHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineForwardingDelayCalculatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final traceLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "apiClientProvider",
            "offlineRepositoryProvider",
            "networkConnectivityFlowProvider",
            "dispatcherProvider",
            "listenerProvider",
            "networkStatusProvider",
            "offlineForwardingDelayCalculatorProvider",
            "offlineConfigHelperProvider",
            "credentialsProvider",
            "clockProvider",
            "endToEndLoggerProvider",
            "discreteLoggerProvider",
            "traceLoggerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->apiClientProvider:Ljavax/inject/Provider;

    .line 86
    iput-object p2, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->offlineRepositoryProvider:Ljavax/inject/Provider;

    .line 87
    iput-object p3, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->networkConnectivityFlowProvider:Ljavax/inject/Provider;

    .line 88
    iput-object p4, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->dispatcherProvider:Ljavax/inject/Provider;

    .line 89
    iput-object p5, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->listenerProvider:Ljavax/inject/Provider;

    .line 90
    iput-object p6, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->networkStatusProvider:Ljavax/inject/Provider;

    .line 91
    iput-object p7, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->offlineForwardingDelayCalculatorProvider:Ljavax/inject/Provider;

    .line 92
    iput-object p8, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->offlineConfigHelperProvider:Ljavax/inject/Provider;

    .line 93
    iput-object p9, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->credentialsProvider:Ljavax/inject/Provider;

    .line 94
    iput-object p10, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->clockProvider:Ljavax/inject/Provider;

    .line 95
    iput-object p11, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->endToEndLoggerProvider:Ljavax/inject/Provider;

    .line 96
    iput-object p12, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->discreteLoggerProvider:Ljavax/inject/Provider;

    .line 97
    iput-object p13, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->traceLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "apiClientProvider",
            "offlineRepositoryProvider",
            "networkConnectivityFlowProvider",
            "dispatcherProvider",
            "listenerProvider",
            "networkStatusProvider",
            "offlineForwardingDelayCalculatorProvider",
            "offlineConfigHelperProvider",
            "credentialsProvider",
            "clockProvider",
            "endToEndLoggerProvider",
            "discreteLoggerProvider",
            "traceLoggerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
            ">;)",
            "Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;"
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideOfflineForwardingManager$offlinemode_release(Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;Lcom/stripe/offlinemode/storage/OfflineRepository;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/external/callable/OfflineListener;Ljavax/inject/Provider;Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;)Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "apiClient",
            "offlineRepository",
            "networkConnectivityFlow",
            "dispatcher",
            "listener",
            "networkStatusProvider",
            "offlineForwardingDelayCalculator",
            "offlineConfigHelper",
            "credentialsProvider",
            "clock",
            "endToEndLogger",
            "discreteLogger",
            "traceLogger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope$Builder;",
            ">;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
            ")",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;"
        }
    .end annotation

    .line 130
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule;->Companion:Lcom/stripe/offlinemode/dagger/OfflineForwardingModule$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule$Companion;->provideOfflineForwardingManager$offlinemode_release(Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;Lcom/stripe/offlinemode/storage/OfflineRepository;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/external/callable/OfflineListener;Ljavax/inject/Provider;Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;)Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;
    .locals 14

    .line 102
    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->apiClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->offlineRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/offlinemode/storage/OfflineRepository;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->networkConnectivityFlowProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->dispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->listenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    iget-object v6, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->networkStatusProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->offlineForwardingDelayCalculatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->offlineConfigHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->credentialsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/stripe/time/Clock;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->endToEndLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/stripe/jvmcore/logging/HealthLogger;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->discreteLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/stripe/jvmcore/logging/HealthLogger;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->traceLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    invoke-static/range {v1 .. v13}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->provideOfflineForwardingManager$offlinemode_release(Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;Lcom/stripe/offlinemode/storage/OfflineRepository;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/external/callable/OfflineListener;Ljavax/inject/Provider;Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;)Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->get()Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;

    move-result-object v0

    return-object v0
.end method
