.class final Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BbposAssetInstallProcessor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->awaitInstall(Lio/reactivex/rxjava3/core/Observable;Lcom/stripe/core/hardware/Reader;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;
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
        "Ljava/lang/Float;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
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
    c = "com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$awaitInstall$1"
    f = "BbposAssetInstallProcessor.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3
    }
    l = {
        0x8e,
        0x93,
        0xab,
        0xc7
    }
    m = "invokeSuspend"
    n = {
        "$this$flow",
        "updateObservable",
        "updateDisposable",
        "disconnectReplayObservable",
        "disconnectDisposable",
        "$this$flow",
        "updateObservable",
        "updateDisposable",
        "disconnectReplayObservable",
        "disconnectDisposable",
        "$this$flow",
        "updateDisposable",
        "disconnectReplayObservable",
        "disconnectDisposable",
        "cancellationException",
        "disconnectDisposable",
        "updateResult"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$5",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $installBlock:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $needsReconnect:Z

.field final synthetic $reader:Lcom/stripe/core/hardware/Reader;

.field final synthetic $updateFinishedObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;


# direct methods
.method constructor <init>(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lcom/stripe/core/hardware/Reader;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/stripe/core/hardware/Reader;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    iput-object p2, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->$updateFinishedObservable:Lio/reactivex/rxjava3/core/Observable;

    iput-object p3, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->$installBlock:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->$reader:Lcom/stripe/core/hardware/Reader;

    iput-boolean p5, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->$needsReconnect:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;

    iget-object v1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    iget-object v2, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->$updateFinishedObservable:Lio/reactivex/rxjava3/core/Observable;

    iget-object v3, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->$installBlock:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->$reader:Lcom/stripe/core/hardware/Reader;

    iget-boolean v5, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->$needsReconnect:Z

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;-><init>(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lcom/stripe/core/hardware/Reader;ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 127
    iget v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$1:Ljava/lang/Object;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lio/reactivex/rxjava3/disposables/Disposable;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_e

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$5:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$4:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$3:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$2:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lio/reactivex/rxjava3/observables/ConnectableObservable;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$1:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto/16 :goto_7

    :cond_2
    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$4:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$3:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lio/reactivex/rxjava3/observables/ConnectableObservable;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$2:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$1:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lio/reactivex/rxjava3/observables/ConnectableObservable;

    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$0:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lkotlinx/coroutines/flow/FlowCollector;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    :goto_0
    move-object p1, v0

    goto/16 :goto_3

    :cond_3
    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object v5, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lio/reactivex/rxjava3/observables/ConnectableObservable;

    iget-object v8, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object v9, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lio/reactivex/rxjava3/observables/ConnectableObservable;

    iget-object v10, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v9

    move-object v9, v8

    move-object v8, v0

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 129
    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    .line 130
    iget-object v8, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->$updateFinishedObservable:Lio/reactivex/rxjava3/core/Observable;

    .line 131
    invoke-static {v0}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$getUpdateListener$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;

    move-result-object v9

    invoke-virtual {v9}, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->getReaderUpdateProgressObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v9

    .line 132
    iget-object v10, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    invoke-static {v10}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$getUpdateListener$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;

    move-result-object v10

    invoke-virtual {v10}, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->getReaderUpdateExceptionObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v10

    .line 133
    iget-object v11, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    invoke-static {v11}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$getStatusListener$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    move-result-object v11

    invoke-virtual {v11}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderExceptionObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v11

    .line 129
    invoke-static {v0, v8, v9, v10, v11}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$makeUpdateObservable(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->replay()Lio/reactivex/rxjava3/observables/ConnectableObservable;

    move-result-object v0

    const-string v8, "replay(...)"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Lio/reactivex/rxjava3/observables/ConnectableObservable;->connect()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v9

    const-string v10, "connect(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v11, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    invoke-static {v11}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$getStatusListener$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    move-result-object v11

    invoke-virtual {v11}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderDisconnectObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v11

    invoke-virtual {v11}, Lio/reactivex/rxjava3/core/Observable;->replay()Lio/reactivex/rxjava3/observables/ConnectableObservable;

    move-result-object v11

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v11}, Lio/reactivex/rxjava3/observables/ConnectableObservable;->connect()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v8

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v10, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->$installBlock:Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$0:Ljava/lang/Object;

    iput-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$1:Ljava/lang/Object;

    iput-object v9, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$2:Ljava/lang/Object;

    iput-object v11, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$3:Ljava/lang/Object;

    iput-object v8, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$4:Ljava/lang/Object;

    iput v5, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->label:I

    invoke-interface {v10, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_5

    goto/16 :goto_c

    :cond_5
    move-object v10, p1

    move-object p1, v0

    move-object v5, v11

    .line 145
    :goto_1
    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    invoke-static {v0}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$getLogger$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const-string v11, "Waiting for installation to complete"

    new-array v12, v6, [Lkotlin/Pair;

    invoke-interface {v0, v11, v12}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 146
    iget-object v0, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    :try_start_3
    sget-object v11, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 147
    invoke-static {v0}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$getScheduler$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/observables/ConnectableObservable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v11, "observeOn(...)"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/reactivex/rxjava3/core/ObservableSource;

    invoke-static {v0}, Lkotlinx/coroutines/rx3/RxConvertKt;->asFlow(Lio/reactivex/rxjava3/core/ObservableSource;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v10, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$1:Ljava/lang/Object;

    iput-object v9, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$2:Ljava/lang/Object;

    iput-object v5, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$3:Ljava/lang/Object;

    iput-object v8, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$4:Ljava/lang/Object;

    iput v4, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->label:I

    invoke-static {v10, v0, p0}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v0, v1, :cond_6

    goto/16 :goto_c

    :cond_6
    move-object v4, v8

    move-object v8, v9

    move-object v9, p1

    .line 148
    :goto_2
    :try_start_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 146
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v4, v8

    move-object v8, v9

    move-object v9, p1

    goto/16 :goto_0

    :goto_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    move-object v0, v9

    move-object v9, v8

    move-object v8, v5

    move-object v5, v4

    .line 148
    iget-object v4, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v11

    if-nez v11, :cond_7

    :goto_5
    move-object v11, v8

    goto/16 :goto_b

    :cond_7
    :try_start_5
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 150
    instance-of p1, v11, Ljava/util/concurrent/CancellationException;

    if-eqz p1, :cond_b

    .line 156
    invoke-static {v4}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$getLogger$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    const-string v12, "Cancelling installation"

    new-array v13, v6, [Lkotlin/Pair;

    invoke-interface {p1, v12, v13}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 157
    invoke-static {v4}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$cancel(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 170
    :try_start_6
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 171
    sget-object p1, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v12, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$updateResult$2$1$1;

    invoke-direct {v12, v0, v4, v7}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$updateResult$2$1$1;-><init>(Lio/reactivex/rxjava3/observables/ConnectableObservable;Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    iput-object v10, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$0:Ljava/lang/Object;

    iput-object v9, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$1:Ljava/lang/Object;

    iput-object v8, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$2:Ljava/lang/Object;

    iput-object v5, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$3:Ljava/lang/Object;

    iput-object v4, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$4:Ljava/lang/Object;

    iput-object v11, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$5:Ljava/lang/Object;

    iput v3, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->label:I

    invoke-static {p1, v12, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-ne p1, v1, :cond_8

    goto/16 :goto_c

    :cond_8
    move-object v3, v11

    .line 174
    :goto_6
    :try_start_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 170
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object p1, v0

    move-object v3, v11

    :goto_7
    :try_start_8
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 174
    :goto_8
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-nez v0, :cond_9

    goto :goto_9

    :cond_9
    :try_start_9
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 175
    invoke-static {v4}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$getLogger$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    const-string v4, "Installation cancelled with exception"

    new-array v6, v6, [Lkotlin/Pair;

    invoke-interface {p1, v0, v4, v6}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 181
    instance-of p1, v0, Lcom/stripe/core/hardware/updates/ReaderUpdateException;

    if-eqz p1, :cond_a

    .line 182
    throw v3

    .line 185
    :cond_a
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    move-object p1, v0

    :try_start_a
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 186
    :goto_9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 187
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 148
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object p1, v0

    goto :goto_a

    .line 150
    :cond_b
    throw v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 148
    :goto_a
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_5

    .line 189
    :goto_b
    invoke-interface {v9}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 191
    iget-object v12, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->$reader:Lcom/stripe/core/hardware/Reader;

    iget-boolean v9, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->$needsReconnect:Z

    iget-object v10, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    :try_start_b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 195
    instance-of v0, v12, Lcom/stripe/core/hardware/Reader$SerialReader;

    if-nez v0, :cond_d

    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    move-object v1, p1

    move-object v2, v5

    goto :goto_d

    .line 199
    :cond_d
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;-><init>(ZLcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lio/reactivex/rxjava3/observables/ConnectableObservable;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    iput-object v5, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$1:Ljava/lang/Object;

    iput-object v7, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$2:Ljava/lang/Object;

    iput-object v7, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$3:Ljava/lang/Object;

    iput-object v7, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$4:Ljava/lang/Object;

    iput-object v7, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->L$5:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->label:I

    invoke-static {v0, v8, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    if-ne v0, v1, :cond_c

    :goto_c
    return-object v1

    .line 208
    :goto_d
    :try_start_c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 191
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_f

    :catchall_7
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v2, v5

    :goto_e
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 210
    :goto_f
    invoke-interface {v2}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 214
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 215
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 216
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
