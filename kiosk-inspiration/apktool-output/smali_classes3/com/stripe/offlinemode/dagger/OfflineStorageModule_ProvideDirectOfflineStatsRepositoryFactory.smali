.class public final Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory;
.super Ljava/lang/Object;
.source "OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final ioDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final networkStatusFlowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;>;"
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ioDispatcherProvider",
            "offlineRepositoryProvider",
            "networkStatusFlowProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory;->ioDispatcherProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p2, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory;->offlineRepositoryProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p3, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory;->networkStatusFlowProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ioDispatcherProvider",
            "offlineRepositoryProvider",
            "networkStatusFlowProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;>;)",
            "Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDirectOfflineStatsRepository(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/offlinemode/storage/OfflineRepository;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ioDispatcher",
            "offlineRepository",
            "networkStatusFlowProvider"
        }
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

    .line 65
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineStorageModule;

    invoke-virtual {v0, p0, p1, p2}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule;->provideDirectOfflineStatsRepository(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/offlinemode/storage/OfflineRepository;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory;->ioDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v1, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory;->offlineRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/offlinemode/storage/OfflineRepository;

    iget-object v2, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory;->networkStatusFlowProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory;->provideDirectOfflineStatsRepository(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/offlinemode/storage/OfflineRepository;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory;->get()Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;

    move-result-object v0

    return-object v0
.end method
