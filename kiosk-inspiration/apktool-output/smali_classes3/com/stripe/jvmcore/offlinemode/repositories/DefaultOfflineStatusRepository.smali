.class public final Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;
.super Ljava/lang/Object;
.source "DefaultOfflineStatusRepository.kt"

# interfaces
.implements Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0012\u001a\u00020\u000cH\u0016J\u000e\u0010\u0013\u001a\u00020\u0014*\u0004\u0018\u00010\u0014H\u0002R\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;",
        "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;",
        "readerOfflineStatsRepository",
        "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;",
        "sdkOfflineStatsRepository",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "proxyOfflineListener",
        "Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;",
        "(Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;)V",
        "offlineStatusStateFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lcom/stripe/stripeterminal/external/models/OfflineStatus;",
        "getOfflineStatusStateFlow",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "getReaderOfflineStatsRepository",
        "()Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;",
        "getSdkOfflineStatsRepository",
        "requestOfflineStatusStateUpdate",
        "orDefault",
        "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$Companion;

.field private static final EMPTY_OFFLINE_STATUS_DETAILS:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;


# instance fields
.field private final offlineStatusStateFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/stripeterminal/external/models/OfflineStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final proxyOfflineListener:Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;

.field private final readerOfflineStatsRepository:Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;

.field private final sdkOfflineStatsRepository:Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;->Companion:Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$Companion;

    .line 57
    new-instance v0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    .line 60
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 61
    sget-object v2, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    const/4 v3, 0x0

    .line 57
    invoke-direct {v0, v3, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;-><init>(IILjava/util/Map;Lcom/stripe/stripeterminal/external/models/NetworkStatus;)V

    sput-object v0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;->EMPTY_OFFLINE_STATUS_DETAILS:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;)V
    .locals 9

    const-string v0, "readerOfflineStatsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkOfflineStatsRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyOfflineListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;->readerOfflineStatsRepository:Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;

    .line 18
    iput-object p2, p0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;->sdkOfflineStatsRepository:Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;

    .line 20
    iput-object p4, p0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;->proxyOfflineListener:Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;

    .line 24
    invoke-interface {p1}, Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;->getOfflineStatusDetailsStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p4

    check-cast p4, Lkotlinx/coroutines/flow/Flow;

    .line 25
    invoke-interface {p2}, Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;->getOfflineStatusDetailsStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 23
    new-instance v1, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$offlineStatusStateFlow$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$offlineStatusStateFlow$1;-><init>(Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p4, v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    .line 34
    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->getEagerly()Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/stripe/stripeterminal/external/models/OfflineStatus;

    .line 36
    invoke-interface {p1}, Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;->getOfflineStatusDetailsStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    .line 37
    invoke-interface {p2}, Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;->getOfflineStatusDetailsStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    invoke-direct {p0, p2}, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;->orDefault(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    move-result-object p2

    .line 35
    invoke-direct {v1, p1, p2}, Lcom/stripe/stripeterminal/external/models/OfflineStatus;-><init>(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)V

    .line 32
    invoke-static {p4, p3, v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;->offlineStatusStateFlow:Lkotlinx/coroutines/flow/StateFlow;

    .line 51
    new-instance p1, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$1;

    invoke-direct {p1, p0, v2}, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository$1;-><init>(Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;Lkotlin/coroutines/Continuation;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p3

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getProxyOfflineListener$p(Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;)Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;->proxyOfflineListener:Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;

    return-object p0
.end method

.method public static final synthetic access$orDefault(Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;->orDefault(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    move-result-object p0

    return-object p0
.end method

.method private final orDefault(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;
    .locals 0

    if-nez p1, :cond_0

    .line 48
    sget-object p1, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;->EMPTY_OFFLINE_STATUS_DETAILS:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getOfflineStatusStateFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/stripeterminal/external/models/OfflineStatus;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;->offlineStatusStateFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getReaderOfflineStatsRepository()Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;->readerOfflineStatsRepository:Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;

    return-object v0
.end method

.method public final getSdkOfflineStatsRepository()Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;->sdkOfflineStatsRepository:Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;

    return-object v0
.end method

.method public requestOfflineStatusStateUpdate()Lcom/stripe/stripeterminal/external/models/OfflineStatus;
    .locals 3

    .line 42
    new-instance v0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;

    .line 43
    iget-object v1, p0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;->readerOfflineStatsRepository:Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;

    invoke-interface {v1}, Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;->requestOfflineStatusDetailsUpdate()Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;->getOfflineStatusStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/external/models/OfflineStatus;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->getReader()Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    move-result-object v1

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;->sdkOfflineStatsRepository:Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;

    invoke-interface {v2}, Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;->requestOfflineStatusDetailsUpdate()Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;->getOfflineStatusStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/external/models/OfflineStatus;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/OfflineStatus;->getSdk()Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    move-result-object v2

    :cond_1
    invoke-direct {p0, v2}, Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;->orDefault(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    move-result-object v2

    .line 42
    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/OfflineStatus;-><init>(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;)V

    return-object v0
.end method
