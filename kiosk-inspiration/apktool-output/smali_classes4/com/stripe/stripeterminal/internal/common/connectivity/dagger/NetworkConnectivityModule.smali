.class public final Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;
.super Ljava/lang/Object;
.source "NetworkConnectivityModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;",
        "",
        "()V",
        "provideNetworkConnectivityFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "networkConnectivityRepository",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;",
        "providesIsNetworkAvailable",
        "providesNetworkConnectivityManager",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;",
        "connectivityManager",
        "Landroid/net/ConnectivityManager;",
        "providesNetworkConnectivityRepository",
        "defaultNetworkConnectivityRepository",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideNetworkConnectivityFlow(Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/IsNetworkAvailable;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "networkConnectivityRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-interface {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;->getNetworkConnectivityState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    return-object p1
.end method

.method public final providesIsNetworkAvailable(Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;)Z
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/IsNetworkAvailable;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "networkConnectivityRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;->hasNetwork()Z

    move-result p1

    return p1
.end method

.method public final providesNetworkConnectivityManager(Landroid/net/ConnectivityManager;)Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "connectivityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;-><init>(Landroid/net/ConnectivityManager;)V

    return-object v0
.end method

.method public final providesNetworkConnectivityRepository(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;)Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "defaultNetworkConnectivityRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;

    return-object p1
.end method
