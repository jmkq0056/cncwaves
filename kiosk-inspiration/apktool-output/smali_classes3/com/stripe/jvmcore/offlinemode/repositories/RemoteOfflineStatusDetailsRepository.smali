.class public final Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;
.super Ljava/lang/Object;
.source "RemoteOfflineStatusDetailsRepository.kt"

# interfaces
.implements Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;
.implements Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u0016J\u001a\u0010\u0012\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u001c\u0010\u0017\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002J\u0012\u0010\u001a\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00058B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;",
        "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;",
        "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;",
        "()V",
        "value",
        "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
        "cachedOfflineStatusDetails",
        "getCachedOfflineStatusDetails",
        "()Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
        "setCachedOfflineStatusDetails",
        "(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)V",
        "offlineStatusDetailsStateFlow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "getOfflineStatusDetailsStateFlow",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "clear",
        "",
        "requestOfflineStatusDetailsUpdate",
        "saveStats",
        "stats",
        "Lcom/stripe/proto/api/sdk/OfflineStats;",
        "networkStatus",
        "Lcom/stripe/proto/api/sdk/NetworkStatus;",
        "updateCachedDetails",
        "sdkNetworkStatus",
        "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        "updateStats",
        "offlinemode"
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
.field private final offlineStatusDetailsStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;->offlineStatusDetailsStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method private final declared-synchronized getCachedOfflineStatusDetails()Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;
    .locals 1

    monitor-enter p0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;->getOfflineStatusDetailsStateFlow()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final declared-synchronized setCachedOfflineStatusDetails(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)V
    .locals 1

    monitor-enter p0

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;->getOfflineStatusDetailsStateFlow()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final updateCachedDetails(Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/stripeterminal/external/models/NetworkStatus;)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 32
    new-instance v0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    .line 33
    iget v1, p1, Lcom/stripe/proto/api/sdk/OfflineStats;->payments_count:I

    .line 34
    iget v2, p1, Lcom/stripe/proto/api/sdk/OfflineStats;->setup_intents_count:I

    .line 35
    iget-object p1, p1, Lcom/stripe/proto/api/sdk/OfflineStats;->payment_amounts_by_currency:Ljava/util/Map;

    .line 32
    invoke-direct {v0, v1, v2, p1, p2}, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;-><init>(IILjava/util/Map;Lcom/stripe/stripeterminal/external/models/NetworkStatus;)V

    invoke-direct {p0, v0}, Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;->setCachedOfflineStatusDetails(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0}, Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;->setCachedOfflineStatusDetails(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)V

    return-void
.end method

.method public getOfflineStatusDetailsStateFlow()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;->offlineStatusDetailsStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public bridge synthetic getOfflineStatusDetailsStateFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;->getOfflineStatusDetailsStateFlow()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public requestOfflineStatusDetailsUpdate()Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public saveStats(Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/NetworkStatus;)V
    .locals 1

    const-string v0, "networkStatus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {p2}, Lcom/stripe/stripeterminal/internal/common/extensions/NetworkStatusExtensionsKt;->toSdkNetworkStatus(Lcom/stripe/proto/api/sdk/NetworkStatus;)Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;->updateCachedDetails(Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/stripeterminal/external/models/NetworkStatus;)V

    return-void
.end method

.method public updateStats(Lcom/stripe/proto/api/sdk/OfflineStats;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;->getCachedOfflineStatusDetails()Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->getNetworkStatus()Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    .line 45
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;->updateCachedDetails(Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/stripeterminal/external/models/NetworkStatus;)V

    return-void
.end method
