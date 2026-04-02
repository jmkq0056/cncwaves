.class public final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BbposAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->doWhenReaderIdle(Lkotlin/jvm/functions/Function0;Lio/reactivex/rxjava3/core/Observable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult<",
        "+TT;>;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2\n*L\n1#1,1324:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00020\u00050\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult;"
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
    c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$doWhenReaderIdle$2"
    f = "BbposAdapter.kt"
    i = {
        0x0
    }
    l = {
        0x2b7,
        0x2c8
    }
    m = "invokeSuspend"
    n = {
        "$this$callbackFlow"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $observable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $producer:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->$observable:Lio/reactivex/rxjava3/core/Observable;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->$producer:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->$observable:Lio/reactivex/rxjava3/core/Observable;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->$producer:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult<",
            "+TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 693
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 695
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getTransactionRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/transaction/TransactionRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/core/transaction/TransactionRepository;->getCardStatusFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    new-instance v5, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$1;

    invoke-direct {v5, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->label:I

    invoke-static {p1, v5, v6}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 697
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->$observable:Lio/reactivex/rxjava3/core/Observable;

    new-instance v4, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$valueSubscription$1;

    invoke-direct {v4, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$valueSubscription$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    check-cast v4, Lio/reactivex/rxjava3/functions/Consumer;

    invoke-virtual {p1, v4}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string v4, "subscribe(...)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v5}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getReaderStatusListener$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderExceptionObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v5

    new-instance v6, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$exceptionSubscription$1;

    invoke-direct {v6, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$exceptionSubscription$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    check-cast v6, Lio/reactivex/rxjava3/functions/Consumer;

    invoke-virtual {v5, v6}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    iget-object v6, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v6}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getReaderStatusListener$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    move-result-object v6

    invoke-virtual {v6}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderDeviceBusyObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v6

    new-instance v7, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$deviceBusySubscription$1;

    invoke-direct {v7, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$deviceBusySubscription$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    check-cast v7, Lio/reactivex/rxjava3/functions/Consumer;

    invoke-virtual {v6, v7}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->$producer:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 712
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$2;

    invoke-direct {v4, p1, v5, v6}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2$2;-><init>(Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;->label:I

    invoke-static {v1, v4, p1}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    .line 717
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
