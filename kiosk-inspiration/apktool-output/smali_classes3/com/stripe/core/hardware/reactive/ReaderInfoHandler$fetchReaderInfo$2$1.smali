.class final Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ReaderInfoHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->fetchReaderInfo-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/stripe/hardware/status/ReaderInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderInfoHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderInfoHandler.kt\ncom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1\n+ 2 RxJavaHelper.kt\ncom/stripe/core/hardware/reactive/RxJavaHelper\n*L\n1#1,87:1\n47#2:88\n39#2,2:89\n*S KotlinDebug\n*F\n+ 1 ReaderInfoHandler.kt\ncom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1\n*L\n68#1:88\n68#1:89,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/hardware/status/ReaderInfo;",
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
    c = "com.stripe.core.hardware.reactive.ReaderInfoHandler$fetchReaderInfo$2$1"
    f = "ReaderInfoHandler.kt"
    i = {}
    l = {
        0x58
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $this_runCatching:Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;

.field label:I


# direct methods
.method constructor <init>(Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1;->$this_runCatching:Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1;

    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1;->$this_runCatching:Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;

    invoke-direct {p1, v0, p2}, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1;-><init>(Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 65
    iget v1, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1;->label:I

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

    .line 68
    sget-object p1, Lcom/stripe/core/hardware/reactive/RxJavaHelper;->INSTANCE:Lcom/stripe/core/hardware/reactive/RxJavaHelper;

    .line 67
    iget-object v1, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1;->$this_runCatching:Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;

    invoke-static {v1}, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->access$getReaderStatusListener$p(Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderInfoObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 68
    iget-object v3, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1;->$this_runCatching:Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;

    invoke-static {v3}, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->access$getReaderStatusListener$p(Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderExceptionObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    iget-object v4, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1;->$this_runCatching:Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;

    invoke-static {v4}, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;->access$getIo$p(Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v4

    new-instance v5, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1$1;

    iget-object v6, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1;->$this_runCatching:Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;

    invoke-direct {v5, v6}, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1$1;-><init>(Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 89
    check-cast v1, Lio/reactivex/rxjava3/core/ObservableSource;

    check-cast v3, Lio/reactivex/rxjava3/core/ObservableSource;

    invoke-static {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->merge(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 90
    sget-object v3, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1$invokeSuspend$$inlined$awaitFirstWithBlock$1;->INSTANCE:Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1$invokeSuspend$$inlined$awaitFirstWithBlock$1;

    check-cast v3, Lio/reactivex/rxjava3/functions/Function;

    invoke-virtual {v1, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string v3, "flatMap(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v3, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$5;

    invoke-direct {v3, v5}, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$5;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler$fetchReaderInfo$2$1;->label:I

    invoke-virtual {p1, v1, v4, v3, v5}, Lcom/stripe/core/hardware/reactive/RxJavaHelper;->awaitFirstWithBlock(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Scheduler;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 90
    :cond_2
    :goto_0
    const-string v0, "awaitFirstWithBlock(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
