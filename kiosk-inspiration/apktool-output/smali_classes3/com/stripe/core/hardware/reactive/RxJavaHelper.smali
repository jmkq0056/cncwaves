.class public final Lcom/stripe/core/hardware/reactive/RxJavaHelper;
.super Ljava/lang/Object;
.source "RxJavaHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JV\u0010\u0003\u001a\u0002H\u0004\"\n\u0008\u0000\u0010\u0004\u0018\u0001*\u00020\u0001\"\n\u0008\u0001\u0010\u0005\u0018\u0001*\u00020\u0006*\u0008\u0012\u0004\u0012\u0002H\u00040\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u00072\u0006\u0010\t\u001a\u00020\n2\u000e\u0008\u0008\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0086H\u00a2\u0006\u0002\u0010\u000eJH\u0010\u0003\u001a\u0002H\u0004\"\u0008\u0008\u0000\u0010\u0004*\u00020\u0001*\u0008\u0012\u0004\u0012\u0002H\u00040\u00072\u0006\u0010\t\u001a\u00020\n2\u001c\u0010\u000b\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000fH\u0086@\u00a2\u0006\u0002\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/core/hardware/reactive/RxJavaHelper;",
        "",
        "()V",
        "awaitFirstWithBlock",
        "T",
        "V",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "exceptionObservable",
        "scheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "block",
        "Lkotlin/Function0;",
        "",
        "(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Scheduler;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Scheduler;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "hardware-reactive_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/core/hardware/reactive/RxJavaHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper;

    invoke-direct {v0}, Lcom/stripe/core/hardware/reactive/RxJavaHelper;-><init>()V

    sput-object v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper;->INSTANCE:Lcom/stripe/core/hardware/reactive/RxJavaHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$awaitFirstWithBlock$suspendConversion0(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lcom/stripe/core/hardware/reactive/RxJavaHelper;->awaitFirstWithBlock$suspendConversion0(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final synthetic awaitFirstWithBlock$suspendConversion0(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final synthetic awaitFirstWithBlock(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Scheduler;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TV;>;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 39
    check-cast p1, Lio/reactivex/rxjava3/core/ObservableSource;

    check-cast p2, Lio/reactivex/rxjava3/core/ObservableSource;

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->merge(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 40
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object p2, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$4;->INSTANCE:Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$4;

    check-cast p2, Lio/reactivex/rxjava3/functions/Function;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string p2, "flatMap(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p2, p1

    check-cast p2, Lio/reactivex/rxjava3/core/Observable;

    .line 47
    new-instance p2, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$5;

    invoke-direct {p2, p4}, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$5;-><init>(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, p3, p2, p5}, Lcom/stripe/core/hardware/reactive/RxJavaHelper;->awaitFirstWithBlock(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Scheduler;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 40
    const-string p2, "awaitFirstWithBlock(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final awaitFirstWithBlock(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Scheduler;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;

    iget v1, v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;

    invoke-direct {v0, p0, p4}, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;-><init>(Lcom/stripe/core/hardware/reactive/RxJavaHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 15
    iget v2, v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/disposables/Disposable;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object p2, v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lio/reactivex/rxjava3/observables/ConnectableObservable;

    iget-object p3, v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;->L$0:Ljava/lang/Object;

    check-cast p3, Lio/reactivex/rxjava3/core/Scheduler;

    :try_start_1
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->replay()Lio/reactivex/rxjava3/observables/ConnectableObservable;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/reactivex/rxjava3/observables/ConnectableObservable;->connect()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p4

    const-string v2, "connect(...)"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    :try_start_2
    iput-object p2, v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;->L$1:Ljava/lang/Object;

    iput-object p4, v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;->label:I

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object p3, p2

    move-object p2, p1

    move-object p1, p4

    .line 20
    :goto_1
    :try_start_3
    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/observables/ConnectableObservable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    const-string p3, "observeOn(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/reactivex/rxjava3/core/ObservableSource;

    iput-object p1, v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;->L$0:Ljava/lang/Object;

    const/4 p3, 0x0

    iput-object p3, v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper$awaitFirstWithBlock$1;->label:I

    invoke-static {p2, v0}, Lkotlinx/coroutines/rx3/RxAwaitKt;->awaitFirst(Lio/reactivex/rxjava3/core/ObservableSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p4, v1, :cond_5

    :goto_2
    return-object v1

    .line 22
    :cond_5
    :goto_3
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 16
    const-string p1, "let(...)"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p4

    :catchall_1
    move-exception p2

    move-object p1, p4

    .line 22
    :goto_4
    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    throw p2
.end method
