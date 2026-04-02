.class final Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ResponseObserver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/observer/ResponseObserver$Plugin;->install(Lio/ktor/client/plugins/observer/ResponseObserver;Lio/ktor/client/HttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lio/ktor/util/pipeline/PipelineContext<",
        "Lio/ktor/client/statement/HttpResponse;",
        "Lkotlin/Unit;",
        ">;",
        "Lio/ktor/client/statement/HttpResponse;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/util/pipeline/PipelineContext;",
        "Lio/ktor/client/statement/HttpResponse;",
        "response"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.plugins.observer.ResponseObserver$Plugin$install$1"
    f = "ResponseObserver.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x44,
        0x4d
    }
    m = "invokeSuspend"
    n = {
        "$this$intercept",
        "newResponse",
        "sideResponse"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $plugin:Lio/ktor/client/plugins/observer/ResponseObserver;

.field final synthetic $scope:Lio/ktor/client/HttpClient;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/observer/ResponseObserver;Lio/ktor/client/HttpClient;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/observer/ResponseObserver;",
            "Lio/ktor/client/HttpClient;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->$plugin:Lio/ktor/client/plugins/observer/ResponseObserver;

    iput-object p2, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->$scope:Lio/ktor/client/HttpClient;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/util/pipeline/PipelineContext;Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lio/ktor/client/statement/HttpResponse;",
            "Lkotlin/Unit;",
            ">;",
            "Lio/ktor/client/statement/HttpResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;

    iget-object v1, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->$plugin:Lio/ktor/client/plugins/observer/ResponseObserver;

    iget-object v2, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->$scope:Lio/ktor/client/HttpClient;

    invoke-direct {v0, v1, v2, p3}, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;-><init>(Lio/ktor/client/plugins/observer/ResponseObserver;Lio/ktor/client/HttpClient;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/util/pipeline/PipelineContext;

    check-cast p2, Lio/ktor/client/statement/HttpResponse;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->invoke(Lio/ktor/util/pipeline/PipelineContext;Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 60
    iget v1, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/ktor/client/statement/HttpResponse;

    iget-object v4, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lio/ktor/client/statement/HttpResponse;

    iget-object v5, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ktor/util/pipeline/PipelineContext;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    move-object v9, v4

    :goto_0
    move-object v10, v5

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->L$0:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lio/ktor/util/pipeline/PipelineContext;

    iget-object p1, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/statement/HttpResponse;

    .line 61
    iget-object v1, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->$plugin:Lio/ktor/client/plugins/observer/ResponseObserver;

    invoke-static {v1}, Lio/ktor/client/plugins/observer/ResponseObserver;->access$getFilter$p(Lio/ktor/client/plugins/observer/ResponseObserver;)Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lio/ktor/client/statement/HttpResponse;->getCall()Lio/ktor/client/call/HttpClientCall;

    move-result-object v4

    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 63
    :cond_3
    invoke-virtual {p1}, Lio/ktor/client/statement/HttpResponse;->getContent()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v1

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1, v4}, Lio/ktor/util/ByteChannelsKt;->split(Lio/ktor/utils/io/ByteReadChannel;Lkotlinx/coroutines/CoroutineScope;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/ktor/utils/io/ByteReadChannel;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/utils/io/ByteReadChannel;

    .line 65
    invoke-virtual {p1}, Lio/ktor/client/statement/HttpResponse;->getCall()Lio/ktor/client/call/HttpClientCall;

    move-result-object v6

    invoke-static {v6, v1}, Lio/ktor/client/plugins/observer/DelegatedCallKt;->wrapWithContent(Lio/ktor/client/call/HttpClientCall;Lio/ktor/utils/io/ByteReadChannel;)Lio/ktor/client/call/HttpClientCall;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object v1

    .line 66
    invoke-virtual {p1}, Lio/ktor/client/statement/HttpResponse;->getCall()Lio/ktor/client/call/HttpClientCall;

    move-result-object p1

    invoke-static {p1, v4}, Lio/ktor/client/plugins/observer/DelegatedCallKt;->wrapWithContent(Lio/ktor/client/call/HttpClientCall;Lio/ktor/utils/io/ByteReadChannel;)Lio/ktor/client/call/HttpClientCall;

    move-result-object p1

    invoke-virtual {p1}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object p1

    .line 68
    iget-object v4, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->$scope:Lio/ktor/client/HttpClient;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v5, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->L$2:Ljava/lang/Object;

    iput-object v4, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->L$3:Ljava/lang/Object;

    iput v3, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->label:I

    invoke-static {v6}, Lio/ktor/client/plugins/observer/ResponseObserverContextJvmKt;->getResponseObserverContext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v9, v1

    move-object v1, p1

    move-object p1, v3

    move-object v3, v4

    goto :goto_0

    :goto_1
    move-object v4, p1

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1$1;

    iget-object v5, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->$plugin:Lio/ktor/client/plugins/observer/ResponseObserver;

    const/4 v11, 0x0

    invoke-direct {p1, v1, v5, v11}, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1$1;-><init>(Lio/ktor/client/statement/HttpResponse;Lio/ktor/client/plugins/observer/ResponseObserver;Lkotlin/coroutines/Continuation;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 77
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v11, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->L$0:Ljava/lang/Object;

    iput-object v11, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->L$1:Ljava/lang/Object;

    iput-object v11, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->L$2:Ljava/lang/Object;

    iput-object v11, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->L$3:Ljava/lang/Object;

    iput v2, p0, Lio/ktor/client/plugins/observer/ResponseObserver$Plugin$install$1;->label:I

    invoke-virtual {v10, v9, p1}, Lio/ktor/util/pipeline/PipelineContext;->proceedWith(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    :goto_2
    return-object v0

    .line 78
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
