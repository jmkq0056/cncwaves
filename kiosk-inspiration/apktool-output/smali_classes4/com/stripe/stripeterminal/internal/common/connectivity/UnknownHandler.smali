.class public final Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001j\u0002`\u0004B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler;",
        "Lcom/stripe/statemachine/StateMachine$StateHandler;",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateHandler;",
        "()V",
        "onUpdate",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 41
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;->UNKNOWN:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;

    invoke-direct {p0, v0}, Lcom/stripe/statemachine/StateMachine$StateHandler;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;)V
    .locals 2

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1, p2}, Lcom/stripe/statemachine/StateMachine$StateHandler;->onUpdate(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;->getReachable()Z

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 46
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;->ONLINE_STABLE:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;

    invoke-static {p1, v1, v0, p2, v0}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 48
    :cond_0
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;->OFFLINE_STABLE:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;

    invoke-static {p1, v1, v0, p2, v0}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onUpdate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;

    check-cast p2, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler;->onUpdate(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerData;)V

    return-void
.end method
