.class final Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BbposAssetInstallProcessor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.stripe.core.readerupdate.DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1"
    f = "BbposAssetInstallProcessor.kt"
    i = {}
    l = {
        0xc9
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $disconnectReplayObservable:Lio/reactivex/rxjava3/observables/ConnectableObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/observables/ConnectableObservable<",
            "Lcom/stripe/hardware/status/DisconnectCause;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $needsReconnect:Z

.field final synthetic $reader:Lcom/stripe/core/hardware/Reader;

.field label:I

.field final synthetic this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;


# direct methods
.method constructor <init>(ZLcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lio/reactivex/rxjava3/observables/ConnectableObservable;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;",
            "Lio/reactivex/rxjava3/observables/ConnectableObservable<",
            "Lcom/stripe/hardware/status/DisconnectCause;",
            ">;",
            "Lcom/stripe/core/hardware/Reader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;->$needsReconnect:Z

    iput-object p2, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    iput-object p3, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;->$disconnectReplayObservable:Lio/reactivex/rxjava3/observables/ConnectableObservable;

    iput-object p4, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;->$reader:Lcom/stripe/core/hardware/Reader;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;

    iget-boolean v1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;->$needsReconnect:Z

    iget-object v2, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    iget-object v3, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;->$disconnectReplayObservable:Lio/reactivex/rxjava3/observables/ConnectableObservable;

    iget-object v4, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;->$reader:Lcom/stripe/core/hardware/Reader;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;-><init>(ZLcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lio/reactivex/rxjava3/observables/ConnectableObservable;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 199
    iget v1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 200
    iget-boolean p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;->$needsReconnect:Z

    if-eqz p1, :cond_2

    .line 201
    iget-object p1, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    .line 202
    invoke-static {p1}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$getStatusListener$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderConnectObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 203
    iget-object v3, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;->$disconnectReplayObservable:Lio/reactivex/rxjava3/observables/ConnectableObservable;

    iget-object v4, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;->this$0:Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;

    invoke-static {v4}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$getScheduler$p(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/observables/ConnectableObservable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    const-string v4, "observeOn(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v4, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;->$reader:Lcom/stripe/core/hardware/Reader;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 201
    iput v2, p0, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor$awaitInstall$1$reconnectResult$1$1;->label:I

    invoke-static {p1, v1, v3, v4, v5}, Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;->access$waitForReconnect(Lcom/stripe/core/readerupdate/DefaultBbposAssetInstallProcessor;Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 207
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
