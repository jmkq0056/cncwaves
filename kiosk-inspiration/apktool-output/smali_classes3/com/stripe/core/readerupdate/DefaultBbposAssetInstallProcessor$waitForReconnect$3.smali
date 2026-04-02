.class final Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BbposAssetInstallProcessor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->waitForReconnect(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$waitForReconnect$3"
    f = "BbposAssetInstallProcessor.kt"
    i = {
        0x0,
        0x2
    }
    l = {
        0x100,
        0x105,
        0x109
    }
    m = "invokeSuspend"
    n = {
        "combinedObservable",
        "combinedObservable"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $connectObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $reader:Lcom/stripe/core/hardware/Reader;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;


# direct methods
.method constructor <init>(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lio/reactivex/rxjava3/core/Observable;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;",
            "Lcom/stripe/core/hardware/Reader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    iput-object p2, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->$connectObservable:Lio/reactivex/rxjava3/core/Observable;

    iput-object p3, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->$reader:Lcom/stripe/core/hardware/Reader;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    iget-object v1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->$connectObservable:Lio/reactivex/rxjava3/core/Observable;

    iget-object v2, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->$reader:Lcom/stripe/core/hardware/Reader;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;-><init>(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lio/reactivex/rxjava3/core/Observable;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 246
    iget v1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/reactivex/rxjava3/core/Observable;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_0
    move-object p1, v1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/reactivex/rxjava3/core/Observable;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 249
    iget-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    invoke-static {p1}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$getStatusListener$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderDisconnectObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    check-cast p1, Lio/reactivex/rxjava3/core/ObservableSource;

    iget-object v1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->$connectObservable:Lio/reactivex/rxjava3/core/Observable;

    check-cast v1, Lio/reactivex/rxjava3/core/ObservableSource;

    invoke-static {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->merge(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 250
    sget-object v1, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3$combinedObservable$1;->INSTANCE:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3$combinedObservable$1;

    check-cast v1, Lio/reactivex/rxjava3/functions/Function;

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v1, "flatMap(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    :goto_0
    sget-object v1, Lcom/stripe/core/hardware/reactive/RxJavaHelper;->INSTANCE:Lcom/stripe/core/hardware/reactive/RxJavaHelper;

    iget-object v6, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    invoke-static {v6}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$getScheduler$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v6

    new-instance v7, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3$connected$1;

    iget-object v8, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    iget-object v9, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->$reader:Lcom/stripe/core/hardware/Reader;

    invoke-direct {v7, v8, v9, v2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3$connected$1;-><init>(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->L$0:Ljava/lang/Object;

    iput v5, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->label:I

    invoke-virtual {v1, p1, v6, v7, v8}, Lcom/stripe/core/hardware/reactive/RxJavaHelper;->awaitFirstWithBlock(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Scheduler;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    goto :goto_3

    :cond_5
    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    :goto_1
    const-string v6, "awaitFirstWithBlock(...)"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 260
    iget-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    iget-object v1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->$reader:Lcom/stripe/core/hardware/Reader;

    invoke-static {p1, v1}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$isShopifyMposReader(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lcom/stripe/core/hardware/Reader;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 261
    iget-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    iget-object v1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->$reader:Lcom/stripe/core/hardware/Reader;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v2, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->label:I

    invoke-static {p1, v1, v3}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$startSession(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto :goto_3

    .line 268
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 265
    :cond_7
    invoke-static {}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$getCONNECT_RETRY_QUANTUM_MILLIS$cp()J

    move-result-wide v6

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$waitForReconnect$3;->label:I

    invoke-static {v6, v7, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    :goto_3
    return-object v0
.end method
