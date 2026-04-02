.class public final Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;
.super Ljava/lang/Object;
.source "IpReaderModule_ProvideIpReaderControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;",
        ">;"
    }
.end annotation


# instance fields
.field private final apiClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private final apiRequestFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final crpcServiceResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver<",
            "Lcom/stripe/proto/api/sdk/JackRabbitApi;",
            ">;>;"
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

.field private final ioCoroutineDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final jackrabbitClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;",
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

.field private final module:Lcom/stripe/stripeterminal/dagger/IpReaderModule;

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

.field private final terminalStatusManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;"
        }
    .end annotation
.end field

.field private final terminalsdkCrpcRequestContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final unacknowledgedReaderEventsHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/IpReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/IpReaderModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver<",
            "Lcom/stripe/proto/api/sdk/JackRabbitApi;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->module:Lcom/stripe/stripeterminal/dagger/IpReaderModule;

    .line 81
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->apiClientProvider:Ljavax/inject/Provider;

    .line 82
    iput-object p3, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->crpcServiceResolverProvider:Ljavax/inject/Provider;

    .line 83
    iput-object p4, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->terminalsdkCrpcRequestContextProvider:Ljavax/inject/Provider;

    .line 84
    iput-object p5, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->apiRequestFactoryProvider:Ljavax/inject/Provider;

    .line 85
    iput-object p6, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    .line 86
    iput-object p7, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->ioCoroutineDispatcherProvider:Ljavax/inject/Provider;

    .line 87
    iput-object p8, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->terminalStatusManagerProvider:Ljavax/inject/Provider;

    .line 88
    iput-object p9, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->readerActivatorProvider:Ljavax/inject/Provider;

    .line 89
    iput-object p10, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->offlineStatusDetailsListenerProvider:Ljavax/inject/Provider;

    .line 90
    iput-object p11, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->unacknowledgedReaderEventsHandlerProvider:Ljavax/inject/Provider;

    .line 91
    iput-object p12, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->jackrabbitClientProvider:Ljavax/inject/Provider;

    .line 92
    iput-object p13, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/IpReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/IpReaderModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver<",
            "Lcom/stripe/proto/api/sdk/JackRabbitApi;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;"
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;

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

    invoke-direct/range {v0 .. v13}, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;-><init>(Lcom/stripe/stripeterminal/dagger/IpReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideIpReaderController(Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/IpReaderModule;",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
            "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver<",
            "Lcom/stripe/proto/api/sdk/JackRabbitApi;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;",
            "Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;",
            "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;",
            "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;"
        }
    .end annotation

    .line 124
    invoke-virtual/range {p0 .. p12}, Lcom/stripe/stripeterminal/dagger/IpReaderModule;->provideIpReaderController(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;
    .locals 13

    .line 97
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->module:Lcom/stripe/stripeterminal/dagger/IpReaderModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->apiClientProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    iget-object v2, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->crpcServiceResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;

    iget-object v3, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->terminalsdkCrpcRequestContextProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;

    iget-object v4, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->apiRequestFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    iget-object v5, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    iget-object v6, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->ioCoroutineDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v7, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->terminalStatusManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    iget-object v8, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->readerActivatorProvider:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;

    iget-object v9, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->offlineStatusDetailsListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;

    iget-object v10, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->unacknowledgedReaderEventsHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;

    iget-object v11, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->jackrabbitClientProvider:Ljavax/inject/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    iget-object v12, p0, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static/range {v0 .. v12}, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->provideIpReaderController(Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->get()Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    move-result-object v0

    return-object v0
.end method
