.class public final Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;
.super Ljava/lang/Object;
.source "DirectOfflineStatusDetailsRepository.kt"

# interfaces
.implements Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0014\u0008\u0001\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007\u00a2\u0006\u0002\u0010\nJ\n\u0010\u0011\u001a\u0004\u0018\u00010\u000eH\u0016R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;",
        "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "offlineRepository",
        "Lcom/stripe/offlinemode/storage/OfflineRepository;",
        "networkStatusFlowProvider",
        "Ljavax/inject/Provider;",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/offlinemode/storage/OfflineRepository;Ljavax/inject/Provider;)V",
        "cachedNetworkStatus",
        "offlineStatusDetailsStateFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
        "getOfflineStatusDetailsStateFlow",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "requestOfflineStatusDetailsUpdate",
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


# instance fields
.field private cachedNetworkStatus:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

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

.field private final offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

.field private final offlineStatusDetailsStateFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/offlinemode/storage/OfflineRepository;Ljavax/inject/Provider;)V
    .locals 4
    .param p2    # Lcom/stripe/offlinemode/storage/OfflineRepository;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .param p3    # Ljavax/inject/Provider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkStatusFlowProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    .line 22
    iput-object p3, p0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;->networkStatusFlowProvider:Ljavax/inject/Provider;

    .line 25
    sget-object v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;->cachedNetworkStatus:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    .line 27
    invoke-interface {p2}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getOfflineRequestStatsFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    .line 28
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "get(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lkotlinx/coroutines/flow/Flow;

    .line 26
    new-instance v0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1;-><init>(Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    .line 40
    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->getEagerly()Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object p3

    .line 42
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    .line 41
    new-instance v2, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;-><init>(IILjava/util/Map;Lcom/stripe/stripeterminal/external/models/NetworkStatus;)V

    .line 38
    invoke-static {p2, p1, p3, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;->offlineStatusDetailsStateFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public static final synthetic access$setCachedNetworkStatus$p(Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;Lcom/stripe/stripeterminal/external/models/NetworkStatus;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;->cachedNetworkStatus:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    return-void
.end method


# virtual methods
.method public getOfflineStatusDetailsStateFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;->offlineStatusDetailsStateFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public requestOfflineStatusDetailsUpdate()Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;
    .locals 5

    .line 50
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->forceBlockingUpdateOfflinePaymentStats()Lcom/stripe/offlinemode/storage/OfflineEntityStats;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->getSetupIntentCount()I

    move-result v1

    .line 53
    invoke-virtual {v0}, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->getPaymentIntentCount()I

    move-result v2

    .line 54
    invoke-virtual {v0}, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->getPaymentIntentAmountsByCurrency()Ljava/util/Map;

    move-result-object v0

    .line 55
    iget-object v3, p0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;->cachedNetworkStatus:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    .line 51
    new-instance v4, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    invoke-direct {v4, v2, v1, v0, v3}, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;-><init>(IILjava/util/Map;Lcom/stripe/stripeterminal/external/models/NetworkStatus;)V

    return-object v4

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
