.class public final Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Merge.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;",
        ">;",
        "Ljava/lang/Boolean;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1\n+ 2 DefaultStripeConnectivityRepository.kt\ncom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository\n*L\n1#1,214:1\n141#2,22:215\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u008a@\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "R",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "it",
        "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1"
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
    c = "com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1"
    f = "DefaultStripeConnectivityRepository.kt"
    i = {}
    l = {
        0xbd
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $isApplicationInBackground$inlined:Z

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;ZLcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;)V
    .locals 0

    iput-boolean p2, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;->$isApplicationInBackground$inlined:Z

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;->$isApplicationInBackground$inlined:Z

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;

    invoke-direct {v0, p3, v1, v2}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;ZLcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;)V

    iput-object p1, v0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 0
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 189
    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 217
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;->$isApplicationInBackground$inlined:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->access$getSdkStatusRepository$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;)Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v1

    const-string v5, "application backgrounded, pausing health checks"

    new-array v4, v4, [Lkotlin/Pair;

    invoke-interface {v1, v5, v4}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 233
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;->HEALTH_CHECKS_PAUSED:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    goto :goto_1

    .line 218
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v1

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "continuing health checks, sdk embedded status: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    iget-object v6, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;

    invoke-static {v6}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->access$getSdkStatusRepository$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;)Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;

    move-result-object v6

    invoke-interface {v6}, Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;->isEmbedded()Z

    move-result v6

    .line 219
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Lkotlin/Pair;

    .line 218
    invoke-interface {v1, v5, v4}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 222
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;->access$getStripeNetworkHealthChecker$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;->getNetworkHealthStatusFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 223
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/flow/FlowKt;->retry$default(Lkotlinx/coroutines/flow/Flow;JLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 224
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$3$1$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$3$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v4}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    goto :goto_1

    .line 236
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/flow/FlowKt;->emptyFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 189
    :goto_1
    iput v2, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
