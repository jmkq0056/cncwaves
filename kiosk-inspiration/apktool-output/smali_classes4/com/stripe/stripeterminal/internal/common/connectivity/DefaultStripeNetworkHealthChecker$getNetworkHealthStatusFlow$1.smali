.class final Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultStripeNetworkHealthChecker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->getNetworkHealthStatusFlow()Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1"
    f = "DefaultStripeNetworkHealthChecker.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x2
    }
    l = {
        0x49,
        0x4b,
        0x4c
    }
    m = "invokeSuspend"
    n = {
        "$this$flow",
        "$this$flow",
        "state",
        "$this$flow"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$0"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;

    invoke-direct {v0, v1, p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;-><init>(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 69
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 70
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->access$getStateMachine$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;

    move-result-object v1

    sget-object v5, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;->UNKNOWN:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;

    invoke-virtual {v1, v5}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;->reset(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;)V

    move-object v5, p1

    .line 72
    :cond_4
    :goto_0
    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 73
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->access$getStateMachine$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;

    move-result-object v1

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v5, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->label:I

    invoke-virtual {p1, v6}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->isNetworkHealthy(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;->update(Z)V

    .line 74
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->access$getStateMachine$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;->getState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;

    if-nez p1, :cond_6

    sget-object p1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;->UNKNOWN:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;

    :cond_6
    move-object v1, p1

    .line 75
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v5, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->label:I

    invoke-static {p1, v5, v1, v6}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->access$emitValueForState(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_3

    .line 76
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v5, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$getNetworkHealthStatusFlow$1;->label:I

    invoke-static {p1, v1, v6}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->access$delayForState(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_3
    return-object v0

    .line 78
    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
