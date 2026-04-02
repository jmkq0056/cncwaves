.class public final Lcom/stripe/offlinemode/dagger/OfflineStorageModule;
.super Ljava/lang/Object;
.source "OfflineStorageModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/core/storage/dagger/AndroidStorageModule;,
        Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;,
        Lcom/stripe/offlinemode/dagger/OfflineStorageModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/dagger/OfflineStorageModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineStorageModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineStorageModule.kt\ncom/stripe/offlinemode/dagger/OfflineStorageModule\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,171:1\n16#2:172\n16#2:173\n*S KotlinDebug\n*F\n+ 1 OfflineStorageModule.kt\ncom/stripe/offlinemode/dagger/OfflineStorageModule\n*L\n60#1:172\n130#1:173\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u00013B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0004H\u0007J \u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J2\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0013\u001a\u00020\t2\u0014\u0008\u0001\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00160\u0015H\u0007J \u0010\u0018\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J>\u0010\u001b\u001a\u00020\u001c2\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u001e2\"\u0010\u001f\u001a\u001e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$0 j\u0002`%2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007Jf\u0010&\u001a\u00020\r2\u0006\u0010\'\u001a\u00020\u001c2\"\u0010\u001f\u001a\u001e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$0 j\u0002`%2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0008\u0008\u0001\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u0007\u00a8\u00064"
    }
    d2 = {
        "Lcom/stripe/offlinemode/dagger/OfflineStorageModule;",
        "",
        "()V",
        "provideCoroutineDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "provideCoroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "dispatcher",
        "provideDefaultOfflineRepository",
        "Lcom/stripe/offlinemode/storage/OfflineRepository;",
        "unsupportedOfflineRepository",
        "Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;",
        "defaultOfflineRepositoryFactory",
        "Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideDirectOfflineStatsRepository",
        "Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;",
        "ioDispatcher",
        "offlineRepository",
        "networkStatusFlowProvider",
        "Ljavax/inject/Provider;",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        "provideForwardingOfflineRepository",
        "forwardingLogger",
        "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
        "provideOfflineDatabaseProvider",
        "Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;",
        "context",
        "Landroid/content/Context;",
        "discreteLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;",
        "provideOfflineRepositoryFactory",
        "offlineDatabaseProvider",
        "cipherProvider",
        "Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;",
        "keyProvider",
        "Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;",
        "offlineRequestHelper",
        "Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;",
        "offlineDispatcher",
        "offlineKeyValueStore",
        "Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "Bindings",
        "offlinemode_release"
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
.field public static final INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineStorageModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule;

    invoke-direct {v0}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule;-><init>()V

    sput-object v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineStorageModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideCoroutineDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 2
    .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 68
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public final provideCoroutineScope(Lkotlinx/coroutines/CoroutineDispatcher;)Lkotlinx/coroutines/CoroutineScope;
    .locals 2
    .param p1    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 77
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    const-string v1, "Offline"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    return-object p1
.end method

.method public final provideDefaultOfflineRepository(Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/offlinemode/storage/OfflineRepository;
    .locals 2
    .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "unsupportedOfflineRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultOfflineRepositoryFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;

    .line 173
    const-class v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p3

    check-cast p3, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    .line 127
    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;-><init>(Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;)V

    check-cast v0, Lcom/stripe/offlinemode/storage/OfflineRepository;

    return-object v0
.end method

.method public final provideDirectOfflineStatsRepository(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/offlinemode/storage/OfflineRepository;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;
    .locals 3
    .param p1    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/offlinemode/storage/OfflineRepository;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .param p3    # Ljavax/inject/Provider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;>;)",
            "Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "ioDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkStatusFlowProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    new-instance v0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 157
    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    .line 156
    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/offlinemode/storage/OfflineRepository;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public final provideForwardingOfflineRepository(Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;)Lcom/stripe/offlinemode/storage/OfflineRepository;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/OfflineForwarding;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "unsupportedOfflineRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultOfflineRepositoryFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forwardingLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;

    .line 145
    check-cast p3, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    .line 142
    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;-><init>(Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;)V

    check-cast v0, Lcom/stripe/offlinemode/storage/OfflineRepository;

    return-object v0
.end method

.method public final provideOfflineDatabaseProvider(Landroid/content/Context;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")",
            "Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discreteLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v1, Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider;

    .line 172
    const-class v0, Lcom/stripe/offlinemode/storage/OfflineDatabase;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    .line 57
    invoke-direct/range {v1 .. v7}, Lcom/stripe/offlinemode/storage/DefaultOfflineDatabaseProvider;-><init>(Landroid/content/Context;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;

    return-object v1
.end method

.method public final provideOfflineRepositoryFactory(Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;Lcom/stripe/time/Clock;)Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;
    .locals 10
    .param p6    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;",
            "Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;",
            "Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;",
            "Lcom/stripe/time/Clock;",
            ")",
            "Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "offlineDatabaseProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discreteLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cipherProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineRequestHelper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineDispatcher"

    move-object/from16 v6, p6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineKeyValueStore"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v1, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;

    move-object v2, p1

    move-object v9, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v9}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;-><init>(Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/HealthLogger;)V

    check-cast v1, Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;

    return-object v1
.end method
