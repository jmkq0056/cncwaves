.class final Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultStripeConnectivityRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
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
    c = "com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1"
    f = "DefaultStripeConnectivityRepository.kt"
    i = {
        0x0,
        0x0,
        0x1
    }
    l = {
        0x63,
        0x64,
        0x65
    }
    m = "invokeSuspend"
    n = {
        "$this$flow",
        "delayMs",
        "$this$flow"
    }
    s = {
        "L$0",
        "J$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $it:I

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;->$it:I

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

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;

    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;->$it:I

    invoke-direct {v0, v1, p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 94
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-wide v4, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;->J$0:J

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 97
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;->$it:I

    sub-int/2addr v1, v4

    int-to-double v5, v1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide/16 v7, 0x7530

    long-to-double v7, v7

    mul-double/2addr v5, v7

    const-wide/32 v7, 0x927c0

    .line 98
    invoke-static {v5, v6}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v5

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v5

    .line 99
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;->L$0:Ljava/lang/Object;

    iput-wide v5, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;->J$0:J

    iput v4, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;->label:I

    invoke-interface {p1, v1, v7}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, p1

    move-wide v4, v5

    .line 100
    :goto_0
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;->label:I

    invoke-static {v4, v5, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 101
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1;->label:I

    invoke-interface {v1, p1, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_2
    return-object v0

    .line 102
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
