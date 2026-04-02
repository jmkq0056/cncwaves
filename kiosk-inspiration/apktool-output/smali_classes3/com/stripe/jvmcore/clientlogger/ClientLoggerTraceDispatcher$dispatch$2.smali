.class final Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher$dispatch$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ClientLoggerDispatchers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher;->dispatch(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClientLoggerDispatchers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClientLoggerDispatchers.kt\ncom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher$dispatch$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n1603#2,9:147\n1855#2:156\n1856#2:158\n1612#2:159\n1#3:157\n*S KotlinDebug\n*F\n+ 1 ClientLoggerDispatchers.kt\ncom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher$dispatch$2\n*L\n88#1:147,9\n88#1:156\n88#1:158\n88#1:159\n88#1:157\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;",
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
    c = "com.stripe.jvmcore.clientlogger.ClientLoggerTraceDispatcher$dispatch$2"
    f = "ClientLoggerDispatchers.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $batch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher;


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher$dispatch$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher$dispatch$2;->this$0:Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher;

    iput-object p2, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher$dispatch$2;->$batch:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher$dispatch$2;

    iget-object v0, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher$dispatch$2;->this$0:Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher;

    iget-object v1, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher$dispatch$2;->$batch:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher$dispatch$2;-><init>(Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher$dispatch$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher$dispatch$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher$dispatch$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher$dispatch$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 83
    iget v0, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher$dispatch$2;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher$dispatch$2;->this$0:Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher;

    invoke-static {p1}, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher;->access$isNetworkAvailable$p(Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher;)Ljavax/inject/Provider;

    move-result-object p1

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 85
    sget-object p1, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Retry;->INSTANCE:Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Retry;

    return-object p1

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher$dispatch$2;->$batch:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher$dispatch$2;->this$0:Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher;

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 156
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 155
    check-cast v2, Lcom/stripe/proto/api/gator/ProxySpanPb;

    .line 88
    invoke-static {v0}, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher;->access$getLogWriter$p(Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher;)Lcom/stripe/logwriter/LogWriter;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/stripe/jvmcore/clientlogger/UtilsKt;->toClientLoggerProxySpanPb(Lcom/stripe/proto/api/gator/ProxySpanPb;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 155
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 89
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 91
    sget-object p1, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Drop;->INSTANCE:Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Drop;

    return-object p1

    .line 94
    :cond_3
    new-instance p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportTraceRequest;

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, v0, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportTraceRequest;-><init>(Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    iget-object v0, p0, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher$dispatch$2;->this$0:Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher;

    invoke-static {v0}, Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher;->access$getApi$p(Lcom/stripe/jvmcore/clientlogger/ClientLoggerTraceDispatcher;)Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;

    invoke-virtual {v0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;->reportTrace(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportTraceRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/jvmcore/clientlogger/ClientLoggerDispatchersKt;->access$toResult(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;

    move-result-object p1

    return-object p1

    .line 83
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
