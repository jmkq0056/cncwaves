.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BbposBluetoothAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
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
        "Lkotlinx/coroutines/channels/ProducerScope;",
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
    c = "com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1"
    f = "BbposBluetoothAdapter.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x209,
        0x20f
    }
    m = "invokeSuspend"
    n = {
        "$this$callbackFlow",
        "reconnectAttempts",
        "connectedSubscription",
        "disconnectedSubscription"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3"
    }
.end annotation


# instance fields
.field final synthetic $btReader:Lcom/stripe/core/hardware/Reader;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

.field final synthetic this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lcom/stripe/core/hardware/Reader;Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;",
            "Lcom/stripe/core/hardware/Reader;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->$btReader:Lcom/stripe/core/hardware/Reader;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;

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

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->$btReader:Lcom/stripe/core/hardware/Reader;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lcom/stripe/core/hardware/Reader;Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 490
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v6, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->L$0:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lkotlinx/coroutines/channels/ProducerScope;

    .line 491
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 493
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getReaderStatusListener$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderConnectObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$connectedSubscription$1;

    invoke-direct {v1, v6}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$connectedSubscription$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    check-cast v1, Lio/reactivex/rxjava3/functions/Consumer;

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v4

    const-string p1, "subscribe(...)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getReaderStatusListener$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderDisconnectObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v7, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;

    iget-object v8, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    iget-object v9, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->$btReader:Lcom/stripe/core/hardware/Reader;

    invoke-direct {v7, v8, v5, v6, v9}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$disconnectedSubscription$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lkotlin/jvm/internal/Ref$IntRef;Lkotlinx/coroutines/channels/ProducerScope;Lcom/stripe/core/hardware/Reader;)V

    check-cast v7, Lio/reactivex/rxjava3/functions/Consumer;

    invoke-virtual {v1, v7}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    const/4 v7, 0x0

    new-array v7, v7, [Lkotlin/Pair;

    const-string v8, "Reconnect started, calling bbpos SDK"

    invoke-interface {p1, v8, v7}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 520
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->$btReader:Lcom/stripe/core/hardware/Reader;

    instance-of p1, p1, Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper2xReader;

    if-eqz p1, :cond_3

    .line 521
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v6, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->L$2:Ljava/lang/Object;

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->L$3:Ljava/lang/Object;

    iput v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->label:I

    const-wide/16 v7, 0x5dc

    invoke-static {v7, v8, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 523
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->access$getConnectionManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/core/readerconnection/ConnectionManager;

    move-result-object p1

    iget-object v7, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->$btReader:Lcom/stripe/core/hardware/Reader;

    invoke-virtual {p1, v7}, Lcom/stripe/core/readerconnection/ConnectionManager;->startConnect(Lcom/stripe/core/hardware/Reader;)V

    .line 524
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->update()V

    .line 525
    iget p1, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p1, v3

    iput p1, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 527
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$1;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;

    invoke-direct {p1, v4, v1, v3, v5}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1$1;-><init>(Lio/reactivex/rxjava3/disposables/Disposable;Lio/reactivex/rxjava3/disposables/Disposable;Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->L$2:Ljava/lang/Object;

    iput-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->L$3:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation$execute$4$reconnectResult$1$1;->label:I

    invoke-static {v6, p1, v1}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    .line 532
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
