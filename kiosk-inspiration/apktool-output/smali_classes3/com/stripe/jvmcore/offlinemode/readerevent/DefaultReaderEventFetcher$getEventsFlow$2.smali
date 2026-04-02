.class final Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultReaderEventFetcher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;->getEventsFlow(Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/stripe/proto/api/sdk/ReaderEvent;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "Lcom/stripe/proto/api/sdk/ReaderEvent;"
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
    c = "com.stripe.jvmcore.offlinemode.readerevent.DefaultReaderEventFetcher$getEventsFlow$2"
    f = "DefaultReaderEventFetcher.kt"
    i = {}
    l = {
        0x11
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $api:Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;->this$0:Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;

    iput-object p2, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;->$api:Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;

    iget-object v1, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;->this$0:Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;

    iget-object v2, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;->$api:Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;

    invoke-direct {v0, v1, v2, p2}, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;-><init>(Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/stripe/proto/api/sdk/ReaderEvent;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 17
    iget v1, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;->label:I

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

    iget-object p1, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;->L$0:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v3, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;->this$0:Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;

    iget-object v5, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;->$api:Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;

    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;->label:I

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;->fetchAndEmitReaderEvents$default(Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;JLjava/util/List;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
