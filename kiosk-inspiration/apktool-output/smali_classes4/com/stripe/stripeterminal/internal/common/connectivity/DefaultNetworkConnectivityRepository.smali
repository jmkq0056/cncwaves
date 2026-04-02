.class public final Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;
.super Ljava/lang/Object;
.source "DefaultNetworkConnectivityRepository.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;",
        "connectivityManager",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "(Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "networkConnectivityState",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "",
        "getNetworkConnectivityState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "connectivity_release"
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
.field private final connectivityManager:Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final networkConnectivityState:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 2
    .param p2    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "connectivityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;->connectivityManager:Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;

    .line 17
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 19
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1;-><init>(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 42
    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->getEagerly()Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;->networkConnectivityState:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public static final synthetic access$getConnectivityManager$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;)Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;->connectivityManager:Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;

    return-object p0
.end method


# virtual methods
.method public getNetworkConnectivityState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;->networkConnectivityState:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method
