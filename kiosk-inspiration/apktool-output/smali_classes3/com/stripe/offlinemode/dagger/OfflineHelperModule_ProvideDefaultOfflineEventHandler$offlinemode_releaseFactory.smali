.class public final Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;
.super Ljava/lang/Object;
.source "OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/offlinemode/DefaultOfflineEventHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final activeLocationConfigRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/ActiveLocationConfigRepository;",
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

.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
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

.field private final offlineDiscreteLoggerProvider:Ljavax/inject/Provider;
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

.field private final offlineForwardingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineIdGeneratorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/OfflineIdGenerator;",
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

.field private final posInfoFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final scopeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;"
        }
    .end annotation
.end field

.field private final stripeNetworkStatusFlowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            0x0
        }
        names = {
            "clockProvider",
            "offlineRepositoryProvider",
            "offlineIdGeneratorProvider",
            "scopeProvider",
            "activeLocationConfigRepositoryProvider",
            "posInfoFactoryProvider",
            "offlineForwardingManagerProvider",
            "offlineConfigHelperProvider",
            "stripeNetworkStatusFlowProvider",
            "offlineDiscreteLoggerProvider",
            "loggerFactoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/OfflineIdGenerator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/ActiveLocationConfigRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->clockProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p2, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->offlineRepositoryProvider:Ljavax/inject/Provider;

    .line 77
    iput-object p3, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->offlineIdGeneratorProvider:Ljavax/inject/Provider;

    .line 78
    iput-object p4, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->scopeProvider:Ljavax/inject/Provider;

    .line 79
    iput-object p5, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->activeLocationConfigRepositoryProvider:Ljavax/inject/Provider;

    .line 80
    iput-object p6, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->posInfoFactoryProvider:Ljavax/inject/Provider;

    .line 81
    iput-object p7, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->offlineForwardingManagerProvider:Ljavax/inject/Provider;

    .line 82
    iput-object p8, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->offlineConfigHelperProvider:Ljavax/inject/Provider;

    .line 83
    iput-object p9, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->stripeNetworkStatusFlowProvider:Ljavax/inject/Provider;

    .line 84
    iput-object p10, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->offlineDiscreteLoggerProvider:Ljavax/inject/Provider;

    .line 85
    iput-object p11, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;
    .locals 12
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
            0x0
        }
        names = {
            "clockProvider",
            "offlineRepositoryProvider",
            "offlineIdGeneratorProvider",
            "scopeProvider",
            "activeLocationConfigRepositoryProvider",
            "posInfoFactoryProvider",
            "offlineForwardingManagerProvider",
            "offlineConfigHelperProvider",
            "stripeNetworkStatusFlowProvider",
            "offlineDiscreteLoggerProvider",
            "loggerFactoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/OfflineIdGenerator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/device/ActiveLocationConfigRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;"
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;

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

    invoke-direct/range {v0 .. v11}, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDefaultOfflineEventHandler$offlinemode_release(Lcom/stripe/time/Clock;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/offlinemode/OfflineIdGenerator;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/device/ActiveLocationConfigRepository;Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lkotlinx/coroutines/flow/Flow;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/offlinemode/DefaultOfflineEventHandler;
    .locals 12
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
            0x0
        }
        names = {
            "clock",
            "offlineRepository",
            "offlineIdGenerator",
            "scope",
            "activeLocationConfigRepository",
            "posInfoFactory",
            "offlineForwardingManager",
            "offlineConfigHelper",
            "stripeNetworkStatusFlow",
            "offlineDiscreteLogger",
            "loggerFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            "Lcom/stripe/offlinemode/OfflineIdGenerator;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/stripe/device/ActiveLocationConfigRepository;",
            "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")",
            "Lcom/stripe/offlinemode/DefaultOfflineEventHandler;"
        }
    .end annotation

    .line 114
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineHelperModule;

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

    invoke-virtual/range {v0 .. v11}, Lcom/stripe/offlinemode/dagger/OfflineHelperModule;->provideDefaultOfflineEventHandler$offlinemode_release(Lcom/stripe/time/Clock;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/offlinemode/OfflineIdGenerator;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/device/ActiveLocationConfigRepository;Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lkotlinx/coroutines/flow/Flow;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/offlinemode/DefaultOfflineEventHandler;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/offlinemode/DefaultOfflineEventHandler;
    .locals 12

    .line 90
    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/time/Clock;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->offlineRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/offlinemode/storage/OfflineRepository;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->offlineIdGeneratorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/offlinemode/OfflineIdGenerator;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->scopeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->activeLocationConfigRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/device/ActiveLocationConfigRepository;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->posInfoFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->offlineForwardingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->offlineConfigHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->stripeNetworkStatusFlowProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lkotlinx/coroutines/flow/Flow;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->offlineDiscreteLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/stripe/jvmcore/logging/HealthLogger;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static/range {v1 .. v11}, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->provideDefaultOfflineEventHandler$offlinemode_release(Lcom/stripe/time/Clock;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/offlinemode/OfflineIdGenerator;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/device/ActiveLocationConfigRepository;Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lkotlinx/coroutines/flow/Flow;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/offlinemode/DefaultOfflineEventHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->get()Lcom/stripe/offlinemode/DefaultOfflineEventHandler;

    move-result-object v0

    return-object v0
.end method
