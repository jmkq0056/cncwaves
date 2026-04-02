.class public final Lcom/stripe/stripeterminal/dagger/IpReaderModule;
.super Ljava/lang/Object;
.source "IpReaderModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002Jp\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u0010\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020 H\u0007J\u0008\u0010!\u001a\u00020 H\u0007\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/IpReaderModule;",
        "",
        "()V",
        "provideIpReaderController",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;",
        "apiClient",
        "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
        "crpcServiceResolver",
        "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;",
        "Lcom/stripe/proto/api/sdk/JackRabbitApi;",
        "terminalsdkCrpcRequestContextProvider",
        "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;",
        "apiRequestFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;",
        "featureFlagsRepository",
        "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
        "ioCoroutineDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "terminalStatusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "readerActivator",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;",
        "offlineStatusDetailsListener",
        "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;",
        "unacknowledgedReaderEventsHandler",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;",
        "jackrabbitClient",
        "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideJackrabbitClient",
        "kmpCrpcClient",
        "Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;",
        "provideKmpCrpcClient",
        "sdkmanager_publish"
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
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideIpReaderController(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;
    .locals 15
    .param p6    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    move-object/from16 v0, p6

    const-string v1, "apiClient"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "crpcServiceResolver"

    move-object/from16 v4, p2

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "terminalsdkCrpcRequestContextProvider"

    move-object/from16 v5, p3

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "apiRequestFactory"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "featureFlagsRepository"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ioCoroutineDispatcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "terminalStatusManager"

    move-object/from16 v9, p7

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "readerActivator"

    move-object/from16 v10, p8

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "offlineStatusDetailsListener"

    move-object/from16 v11, p9

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unacknowledgedReaderEventsHandler"

    move-object/from16 v12, p10

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "jackrabbitClient"

    move-object/from16 v13, p11

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "loggerFactory"

    move-object/from16 v14, p12

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    .line 49
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    .line 43
    invoke-direct/range {v2 .. v14}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;-><init>(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver;Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    return-object v2
.end method

.method public final provideJackrabbitClient(Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;)Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "kmpCrpcClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    invoke-direct {v0, p1}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;)V

    return-object v0
.end method

.method public final provideKmpCrpcClient()Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 70
    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;

    invoke-direct {v0}, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;-><init>()V

    return-object v0
.end method
