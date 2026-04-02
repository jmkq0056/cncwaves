.class public final Lcom/stripe/stripeterminal/dagger/HandoffClientModule;
.super Ljava/lang/Object;
.source "HandoffClientModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandoffClientModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandoffClientModule.kt\ncom/stripe/stripeterminal/dagger/HandoffClientModule\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,157:1\n16#2:158\n*S KotlinDebug\n*F\n+ 1 HandoffClientModule.kt\ncom/stripe/stripeterminal/dagger/HandoffClientModule\n*L\n144#1:158\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001:\u0001\'B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u001a\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\u0080\u0001\u0010\r\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0001\u0010\u001f\u001a\u00020 2\u0008\u0008\u0001\u0010!\u001a\u00020\"2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0007\u00a8\u0006("
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/HandoffClientModule;",
        "",
        "()V",
        "provideCurrentActivityTracker",
        "Lcom/stripe/stripeterminal/internal/common/CurrentActivityTracker;",
        "provideHandoffConnectionTokenProviderSupplier",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;",
        "providerMirror",
        "Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideHandoffReaderController",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;",
        "provideProviderMirror",
        "context",
        "Landroid/content/Context;",
        "apiRequestFactory",
        "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
        "remoteReaderRequestContextProvider",
        "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;",
        "currentActivityTracker",
        "terminalStatusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "jackRabbitApiRequestFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;",
        "offlineStatusDetailsListener",
        "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;",
        "readerEventListener",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;",
        "readerActivator",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;",
        "appScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "mainDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "featureFlagsRepository",
        "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
        "serialSupplier",
        "Lcom/stripe/core/device/SerialSupplier;",
        "ProviderMirror",
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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideCurrentActivityTracker()Lcom/stripe/stripeterminal/internal/common/CurrentActivityTracker;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 154
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/CurrentActivityTracker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/CurrentActivityTracker;

    return-object v0
.end method

.method public final provideHandoffConnectionTokenProviderSupplier(Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;->provideHandoffConnectionTokenProvider()Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;->provideHandoffConnectionTokenProviderSentinelClass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 141
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier$HandoffClientAvailable;

    .line 158
    const-class v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p2

    .line 141
    invoke-direct {v1, v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier$HandoffClientAvailable;-><init>(Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Ljava/lang/Class;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 137
    check-cast v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;

    return-object v1

    .line 149
    :cond_1
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier$HandoffClientNotAvailable;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier$HandoffClientNotAvailable;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;

    return-object p1
.end method

.method public final provideHandoffReaderController(Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;
    .locals 0
    .annotation runtime Lcom/stripe/stripeterminal/dagger/HandoffReaderController;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;->provideHandoffReaderController()Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final provideProviderMirror(Landroid/content/Context;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;Lcom/stripe/stripeterminal/internal/common/CurrentActivityTracker;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/device/SerialSupplier;)Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;
    .locals 18
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .param p10    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/AppScope;
        .end annotation
    .end param
    .param p11    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Main;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "context"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiRequestFactory"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteReaderRequestContextProvider"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentActivityTracker"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalStatusManager"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jackRabbitApiRequestFactory"

    move-object/from16 v6, p6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineStatusDetailsListener"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerEventListener"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerActivator"

    move-object/from16 v9, p9

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appScope"

    move-object/from16 v10, p10

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainDispatcher"

    move-object/from16 v11, p11

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    move-object/from16 v12, p12

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlagsRepository"

    move-object/from16 v13, p13

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialSupplier"

    move-object/from16 v14, p14

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    :try_start_0
    const-string v0, "com.stripe.stripeterminal.handoffclient.HandoffReaderControllerProvider"

    .line 82
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v15, 0xe

    .line 86
    new-array v15, v15, [Ljava/lang/Class;

    const-class v16, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const-class v16, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    const/16 v17, 0x1

    aput-object v16, v15, v17

    const-class v16, Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;

    const/16 v17, 0x2

    aput-object v16, v15, v17

    const-class v16, Lcom/stripe/stripeterminal/internal/common/CurrentActivityTracker;

    const/16 v17, 0x3

    aput-object v16, v15, v17

    const-class v16, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    const/16 v17, 0x4

    aput-object v16, v15, v17

    const-class v16, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    const/16 v17, 0x5

    aput-object v16, v15, v17

    const-class v16, Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;

    const/16 v17, 0x6

    aput-object v16, v15, v17

    const-class v16, Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;

    const/16 v17, 0x7

    aput-object v16, v15, v17

    const-class v16, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;

    const/16 v17, 0x8

    aput-object v16, v15, v17

    const-class v16, Lkotlinx/coroutines/CoroutineScope;

    const/16 v17, 0x9

    aput-object v16, v15, v17

    const-class v16, Lkotlinx/coroutines/CoroutineDispatcher;

    const/16 v17, 0xa

    aput-object v16, v15, v17

    const-class v16, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    const/16 v17, 0xb

    aput-object v16, v15, v17

    const-class v16, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    const/16 v17, 0xc

    aput-object v16, v15, v17

    const-class v16, Lcom/stripe/core/device/SerialSupplier;

    const/16 v17, 0xd

    aput-object v16, v15, v17

    .line 85
    invoke-virtual {v0, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    .line 101
    new-instance v1, Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;

    .line 102
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 117
    filled-new-array/range {p1 .. p14}, [Ljava/lang/Object;

    move-result-object v2

    .line 103
    invoke-virtual {v15, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "newInstance(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {v1, v0, v2}, Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
