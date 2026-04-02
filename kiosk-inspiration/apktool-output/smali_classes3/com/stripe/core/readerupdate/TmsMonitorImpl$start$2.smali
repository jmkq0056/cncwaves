.class final Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TmsMonitor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/readerupdate/TmsMonitorImpl;->start(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/stripe/core/hardware/updates/ReaderVersion;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTmsMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TmsMonitor.kt\ncom/stripe/core/readerupdate/TmsMonitorImpl$start$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "Lcom/stripe/core/hardware/updates/ReaderVersion;"
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
    c = "com.stripe.core.readerupdate.TmsMonitorImpl$start$2"
    f = "TmsMonitor.kt"
    i = {
        0x0
    }
    l = {
        0x19,
        0x22
    }
    m = "invokeSuspend"
    n = {
        "$this$flow"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/core/readerupdate/TmsMonitorImpl;


# direct methods
.method constructor <init>(Lcom/stripe/core/readerupdate/TmsMonitorImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/TmsMonitorImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;->this$0:Lcom/stripe/core/readerupdate/TmsMonitorImpl;

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

    new-instance v0, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;

    iget-object v1, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;->this$0:Lcom/stripe/core/readerupdate/TmsMonitorImpl;

    invoke-direct {v0, v1, p2}, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;-><init>(Lcom/stripe/core/readerupdate/TmsMonitorImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/stripe/core/hardware/updates/ReaderVersion;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 23
    iget v1, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 25
    sget-object p1, Lcom/stripe/core/hardware/reactive/RxJavaHelper;->INSTANCE:Lcom/stripe/core/hardware/reactive/RxJavaHelper;

    .line 24
    iget-object v5, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;->this$0:Lcom/stripe/core/readerupdate/TmsMonitorImpl;

    invoke-static {v5}, Lcom/stripe/core/readerupdate/TmsMonitorImpl;->access$getUpdateListener$p(Lcom/stripe/core/readerupdate/TmsMonitorImpl;)Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->getReaderTargetVersionObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v5

    .line 25
    iget-object v6, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;->this$0:Lcom/stripe/core/readerupdate/TmsMonitorImpl;

    invoke-static {v6}, Lcom/stripe/core/readerupdate/TmsMonitorImpl;->access$getScheduler$p(Lcom/stripe/core/readerupdate/TmsMonitorImpl;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v6

    new-instance v7, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2$readerVersionOptional$1;

    iget-object v8, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;->this$0:Lcom/stripe/core/readerupdate/TmsMonitorImpl;

    invoke-direct {v7, v8, v4}, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2$readerVersionOptional$1;-><init>(Lcom/stripe/core/readerupdate/TmsMonitorImpl;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;->label:I

    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/stripe/core/hardware/reactive/RxJavaHelper;->awaitFirstWithBlock(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Scheduler;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_2

    .line 23
    :cond_3
    :goto_0
    check-cast p1, Lcom/stripe/core/hardware/Optional;

    .line 30
    instance-of v3, p1, Lcom/stripe/core/hardware/Optional$Present;

    if-eqz v3, :cond_5

    .line 32
    iget-object v3, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;->this$0:Lcom/stripe/core/readerupdate/TmsMonitorImpl;

    .line 31
    check-cast p1, Lcom/stripe/core/hardware/Optional$Present;

    invoke-virtual {p1}, Lcom/stripe/core/hardware/Optional$Present;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/hardware/updates/ReaderVersion;

    .line 32
    invoke-static {v3, p1}, Lcom/stripe/core/readerupdate/TmsMonitorImpl;->access$filterNeedsUpdate(Lcom/stripe/core/readerupdate/TmsMonitorImpl;Lcom/stripe/core/hardware/updates/ReaderVersion;)Lcom/stripe/core/hardware/updates/ReaderVersion;

    move-result-object p1

    .line 33
    iget-object v3, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;->this$0:Lcom/stripe/core/readerupdate/TmsMonitorImpl;

    invoke-static {v3, p1}, Lcom/stripe/core/readerupdate/TmsMonitorImpl;->access$needsUpdate(Lcom/stripe/core/readerupdate/TmsMonitorImpl;Lcom/stripe/core/hardware/updates/ReaderVersion;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v4

    :goto_1
    if-eqz p1, :cond_6

    .line 34
    iput-object v4, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/core/readerupdate/TmsMonitorImpl$start$2;->label:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_2
    return-object v0

    .line 37
    :cond_5
    instance-of p1, p1, Lcom/stripe/core/hardware/Optional$Absent;

    .line 41
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
