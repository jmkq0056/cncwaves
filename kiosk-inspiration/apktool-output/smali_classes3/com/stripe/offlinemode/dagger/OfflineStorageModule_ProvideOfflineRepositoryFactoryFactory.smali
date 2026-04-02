.class public final Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;
.super Ljava/lang/Object;
.source "OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final cipherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;",
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

.field private final keyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineDatabaseProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineKeyValueStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineRequestHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            0x0
        }
        names = {
            "offlineDatabaseProvider",
            "discreteLoggerProvider",
            "cipherProvider",
            "keyProvider",
            "offlineRequestHelperProvider",
            "offlineDispatcherProvider",
            "offlineKeyValueStoreProvider",
            "clockProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;->offlineDatabaseProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p2, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;->discreteLoggerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p3, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;->cipherProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p4, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;->keyProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p5, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;->offlineRequestHelperProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p6, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;->offlineDispatcherProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p7, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;->offlineKeyValueStoreProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p8, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;->clockProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "offlineDatabaseProvider",
            "discreteLoggerProvider",
            "cipherProvider",
            "keyProvider",
            "offlineRequestHelperProvider",
            "offlineDispatcherProvider",
            "offlineKeyValueStoreProvider",
            "clockProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;)",
            "Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideOfflineRepositoryFactory(Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;Lcom/stripe/time/Clock;)Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "offlineDatabaseProvider",
            "discreteLogger",
            "cipherProvider",
            "keyProvider",
            "offlineRequestHelper",
            "offlineDispatcher",
            "offlineKeyValueStore",
            "clock"
        }
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

    .line 91
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineStorageModule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule;->provideOfflineRepositoryFactory(Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;Lcom/stripe/time/Clock;)Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;
    .locals 9

    .line 72
    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;->offlineDatabaseProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;->discreteLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/jvmcore/logging/HealthLogger;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;->cipherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;->keyProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;->offlineRequestHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;->offlineDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;->offlineKeyValueStoreProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/stripe/time/Clock;

    invoke-static/range {v1 .. v8}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;->provideOfflineRepositoryFactory(Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;Lcom/stripe/time/Clock;)Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;->get()Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;

    move-result-object v0

    return-object v0
.end method
