.class public final Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory;
.super Ljava/lang/Object;
.source "JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final directOfflineStatusDetailsRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;",
            ">;"
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

.field private final module:Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;

.field private final offlineListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteOfflineStatisticsRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory;->module:Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;

    .line 48
    iput-object p2, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory;->remoteOfflineStatisticsRepositoryProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p3, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory;->directOfflineStatusDetailsRepositoryProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory;->offlineListenerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p5, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory;->dispatcherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;)",
            "Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory;-><init>(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideCompositeOfflineStatsRepository(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;Lkotlinx/coroutines/CoroutineDispatcher;)Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;
    .locals 0

    .line 73
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;->provideCompositeOfflineStatsRepository(Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;Lkotlinx/coroutines/CoroutineDispatcher;)Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory;->module:Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;

    iget-object v1, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory;->remoteOfflineStatisticsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;

    iget-object v2, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory;->directOfflineStatusDetailsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;

    iget-object v3, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory;->offlineListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;

    iget-object v4, p0, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory;->dispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory;->provideCompositeOfflineStatsRepository(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;Lkotlinx/coroutines/CoroutineDispatcher;)Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory;->get()Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;

    move-result-object v0

    return-object v0
.end method
