.class public interface abstract Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;
.super Ljava/lang/Object;
.source "StripeConnectivityRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\u0008H&J\u0008\u0010\n\u001a\u00020\u0008H&J\u0008\u0010\u000b\u001a\u00020\u0008H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000c\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
        "",
        "currentState",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;",
        "networkStatus",
        "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        "pauseNetworkHealthChecks",
        "",
        "reportNetworkFailure",
        "reportNetworkSuccess",
        "resumeNetworkHealthChecks",
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


# virtual methods
.method public abstract currentState()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;",
            ">;"
        }
    .end annotation
.end method

.method public networkStatus()Lcom/stripe/stripeterminal/external/models/NetworkStatus;
    .locals 1

    .line 20
    invoke-interface {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->currentState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->getNetworkStatus()Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    move-result-object v0

    return-object v0
.end method

.method public abstract pauseNetworkHealthChecks()V
.end method

.method public abstract reportNetworkFailure()V
.end method

.method public abstract reportNetworkSuccess()V
.end method

.method public abstract resumeNetworkHealthChecks()V
.end method
