.class final Lcom/stripe/jvmcore/gator/GatorTraceDispatcher$dispatch$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GatorDispatchers.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;->dispatch(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nGatorDispatchers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GatorDispatchers.kt\ncom/stripe/jvmcore/gator/GatorTraceDispatcher$dispatch$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,115:1\n1549#2:116\n1620#2,3:117\n1549#2:120\n1620#2,3:121\n*S KotlinDebug\n*F\n+ 1 GatorDispatchers.kt\ncom/stripe/jvmcore/gator/GatorTraceDispatcher$dispatch$2\n*L\n86#1:116\n86#1:117,3\n100#1:120\n100#1:121,3\n*E\n"
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
    c = "com.stripe.jvmcore.gator.GatorTraceDispatcher$dispatch$2"
    f = "GatorDispatchers.kt"
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

.field final synthetic this$0:Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/gator/GatorTraceDispatcher$dispatch$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher$dispatch$2;->this$0:Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;

    iput-object p2, p0, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher$dispatch$2;->$batch:Ljava/util/List;

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

    new-instance p1, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher$dispatch$2;

    iget-object v0, p0, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher$dispatch$2;->this$0:Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;

    iget-object v1, p0, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher$dispatch$2;->$batch:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher$dispatch$2;-><init>(Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher$dispatch$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher$dispatch$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher$dispatch$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher$dispatch$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 80
    iget v0, p0, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher$dispatch$2;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher$dispatch$2;->this$0:Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;

    invoke-static {p1}, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;->access$isNetworkAvailable$p(Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;)Ljavax/inject/Provider;

    move-result-object p1

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 82
    sget-object p1, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Retry;->INSTANCE:Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Retry;

    return-object p1

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher$dispatch$2;->$batch:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 117
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 118
    check-cast v2, Lcom/stripe/proto/api/gator/ProxySpanPb;

    .line 87
    new-instance v3, Lcom/stripe/proto/api/gator/ProxySpanPb;

    iget-object v7, v2, Lcom/stripe/proto/api/gator/ProxySpanPb;->trace:Lcom/stripe/proto/api/gator/ReportedSpanPb;

    const/16 v10, 0x37

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/stripe/proto/api/gator/ProxySpanPb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/gator/ReportedSpanPb;Lcom/stripe/proto/api/gator/ClientSummaryPb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 118
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 85
    new-instance p1, Lcom/stripe/proto/api/gator/ReportTraceRequest;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p1, v0, v2, v3, v2}, Lcom/stripe/proto/api/gator/ReportTraceRequest;-><init>(Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher$dispatch$2;->this$0:Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;

    invoke-static {v0}, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;->access$getGatorApi$p(Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;)Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/gator/GatorApi;

    .line 93
    invoke-virtual {v0, p1}, Lcom/stripe/proto/api/gator/GatorApi;->reportTrace(Lcom/stripe/proto/api/gator/ReportTraceRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/stripe/jvmcore/gator/GatorDispatchersKt;->access$toResult(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 98
    iget-object v2, p0, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher$dispatch$2;->this$0:Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;

    invoke-static {v2}, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;->access$getGatorUploaderOutOfMemoryLogger$p(Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;)Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;

    move-result-object v2

    .line 99
    iget-object v3, p1, Lcom/stripe/proto/api/gator/ReportTraceRequest;->proxy_traces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 100
    iget-object p1, p1, Lcom/stripe/proto/api/gator/ReportTraceRequest;->proxy_traces:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 120
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 121
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 122
    check-cast v1, Lcom/stripe/proto/api/gator/ProxySpanPb;

    .line 100
    iget-object v1, v1, Lcom/stripe/proto/api/gator/ProxySpanPb;->trace:Lcom/stripe/proto/api/gator/ReportedSpanPb;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/stripe/proto/api/gator/ReportedSpanPb;->traces:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    .line 122
    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    :cond_3
    check-cast v4, Ljava/util/List;

    .line 120
    check-cast v4, Ljava/lang/Iterable;

    .line 100
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->averageOfInt(Ljava/lang/Iterable;)D

    move-result-wide v4

    .line 98
    invoke-interface {v2, v3, v4, v5, v0}, Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;->onOutOfMemoryException(IDLjava/lang/OutOfMemoryError;)V

    .line 103
    sget-object p1, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Drop;->INSTANCE:Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Drop;

    check-cast p1, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;

    return-object p1

    .line 80
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
