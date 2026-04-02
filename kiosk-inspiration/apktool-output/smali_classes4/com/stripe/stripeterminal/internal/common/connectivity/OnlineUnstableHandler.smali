.class public final Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;
.super Lcom/stripe/statemachine/StateMachine$StateHandler;
.source "StripeHealthCheckerStates.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/statemachine/StateMachine$StateHandler<",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u0002`\u0004B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0005J\u001c\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0002H\u0016J\u001a\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00032\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;",
        "Lcom/stripe/statemachine/StateMachine$StateHandler;",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateHandler;",
        "()V",
        "attemptCount",
        "",
        "onEnter",
        "",
        "current",
        "from",
        "onExit",
        "to",
        "onUpdate",
        "new",
        "old",
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
.field private attemptCount:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 81
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;->ONLINE_UNSTABLE:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;

    .line 80
    invoke-direct {p0, v0}, Lcom/stripe/statemachine/StateMachine$StateHandler;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;)V
    .locals 0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/stripe/statemachine/StateMachine$StateHandler;->onEnter(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    iget p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;->attemptCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;->attemptCount:I

    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 79
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;

    check-cast p2, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;->onEnter(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;)V

    return-void
.end method

.method public onExit(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;)V
    .locals 1

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-super {p0, p1}, Lcom/stripe/statemachine/StateMachine$StateHandler;->onExit(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 107
    iput p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;->attemptCount:I

    return-void
.end method

.method public bridge synthetic onExit(Ljava/lang/Object;)V
    .locals 0

    .line 79
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;->onExit(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;)V

    return-void
.end method

.method public onUpdate(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;)V
    .locals 1

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1, p2}, Lcom/stripe/statemachine/StateMachine$StateHandler;->onUpdate(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;->getReachable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;->ONLINE_STABLE:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;

    const-string p2, "Health check call succeeded"

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    iget p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;->attemptCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;->attemptCount:I

    const/4 p2, 0x3

    if-lt p1, p2, :cond_1

    .line 99
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;->OFFLINE_STABLE:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;

    const-string p2, "Consecutive health check calls failed"

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onUpdate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 79
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;

    check-cast p2, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;->onUpdate(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;)V

    return-void
.end method
