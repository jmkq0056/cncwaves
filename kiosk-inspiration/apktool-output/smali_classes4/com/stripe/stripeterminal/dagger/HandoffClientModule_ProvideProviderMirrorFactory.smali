.class public final Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;
.super Ljava/lang/Object;
.source "HandoffClientModule_ProvideProviderMirrorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;",
        ">;"
    }
.end annotation


# instance fields
.field private final apiRequestFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
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

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final currentActivityTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/CurrentActivityTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final featureFlagsRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final jackRabbitApiRequestFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;",
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

.field private final mainDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/stripeterminal/dagger/HandoffClientModule;

.field private final offlineStatusDetailsListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final readerActivatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;",
            ">;"
        }
    .end annotation
.end field

.field private final readerEventListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteReaderRequestContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final serialSupplierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/SerialSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private final terminalStatusManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/HandoffClientModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/CurrentActivityTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/SerialSupplier;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->module:Lcom/stripe/stripeterminal/dagger/HandoffClientModule;

    .line 88
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->contextProvider:Ljavax/inject/Provider;

    .line 89
    iput-object p3, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->apiRequestFactoryProvider:Ljavax/inject/Provider;

    .line 90
    iput-object p4, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->remoteReaderRequestContextProvider:Ljavax/inject/Provider;

    .line 91
    iput-object p5, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->currentActivityTrackerProvider:Ljavax/inject/Provider;

    .line 92
    iput-object p6, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->terminalStatusManagerProvider:Ljavax/inject/Provider;

    .line 93
    iput-object p7, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->jackRabbitApiRequestFactoryProvider:Ljavax/inject/Provider;

    .line 94
    iput-object p8, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->offlineStatusDetailsListenerProvider:Ljavax/inject/Provider;

    .line 95
    iput-object p9, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->readerEventListenerProvider:Ljavax/inject/Provider;

    .line 96
    iput-object p10, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->readerActivatorProvider:Ljavax/inject/Provider;

    .line 97
    iput-object p11, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->appScopeProvider:Ljavax/inject/Provider;

    .line 98
    iput-object p12, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->mainDispatcherProvider:Ljavax/inject/Provider;

    .line 99
    iput-object p13, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    .line 100
    iput-object p14, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    .line 101
    iput-object p15, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->serialSupplierProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/HandoffClientModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/CurrentActivityTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/device/SerialSupplier;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;"
        }
    .end annotation

    .line 122
    new-instance v0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

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

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;-><init>(Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideProviderMirror(Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Landroid/content/Context;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;Lcom/stripe/stripeterminal/internal/common/CurrentActivityTracker;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/device/SerialSupplier;)Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;
    .locals 0

    .line 134
    invoke-virtual/range {p0 .. p14}, Lcom/stripe/stripeterminal/dagger/HandoffClientModule;->provideProviderMirror(Landroid/content/Context;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;Lcom/stripe/stripeterminal/internal/common/CurrentActivityTracker;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/device/SerialSupplier;)Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;
    .locals 15

    .line 106
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->module:Lcom/stripe/stripeterminal/dagger/HandoffClientModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->apiRequestFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    iget-object v3, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->remoteReaderRequestContextProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;

    iget-object v4, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->currentActivityTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/stripeterminal/internal/common/CurrentActivityTracker;

    iget-object v5, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->terminalStatusManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    iget-object v6, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->jackRabbitApiRequestFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    iget-object v7, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->offlineStatusDetailsListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;

    iget-object v8, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->readerEventListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;

    iget-object v9, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->readerActivatorProvider:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;

    iget-object v10, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->appScopeProvider:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    iget-object v11, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->mainDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v12, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    iget-object v13, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    iget-object v14, p0, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->serialSupplierProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/stripe/core/device/SerialSupplier;

    invoke-static/range {v0 .. v14}, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->provideProviderMirror(Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Landroid/content/Context;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;Lcom/stripe/stripeterminal/internal/common/CurrentActivityTracker;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/device/SerialSupplier;)Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->get()Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;

    move-result-object v0

    return-object v0
.end method
