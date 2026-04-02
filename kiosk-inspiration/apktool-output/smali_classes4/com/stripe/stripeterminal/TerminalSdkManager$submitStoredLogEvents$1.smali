.class final Lcom/stripe/stripeterminal/TerminalSdkManager$submitStoredLogEvents$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TerminalSdkManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/TerminalSdkManager;->submitStoredLogEvents()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTerminalSdkManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TerminalSdkManager.kt\ncom/stripe/stripeterminal/TerminalSdkManager$submitStoredLogEvents$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,289:1\n1549#2:290\n1620#2,3:291\n1549#2:294\n1620#2,2:295\n1549#2:297\n1620#2,3:298\n1622#2:301\n*S KotlinDebug\n*F\n+ 1 TerminalSdkManager.kt\ncom/stripe/stripeterminal/TerminalSdkManager$submitStoredLogEvents$1\n*L\n266#1:290\n266#1:291,3\n269#1:294\n269#1:295,2\n272#1:297\n272#1:298,3\n269#1:301\n*E\n"
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
    c = "com.stripe.stripeterminal.TerminalSdkManager$submitStoredLogEvents$1"
    f = "TerminalSdkManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/TerminalSdkManager$submitStoredLogEvents$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
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

    new-instance p1, Lcom/stripe/stripeterminal/TerminalSdkManager$submitStoredLogEvents$1;

    invoke-direct {p1, p2}, Lcom/stripe/stripeterminal/TerminalSdkManager$submitStoredLogEvents$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/TerminalSdkManager$submitStoredLogEvents$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/TerminalSdkManager$submitStoredLogEvents$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/TerminalSdkManager$submitStoredLogEvents$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/TerminalSdkManager$submitStoredLogEvents$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 260
    iget v0, p0, Lcom/stripe/stripeterminal/TerminalSdkManager$submitStoredLogEvents$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 261
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/storage/DatabaseProvider;->getInstance()Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 262
    invoke-static {}, Lcom/stripe/stripeterminal/TerminalSdkManager;->access$getInstance$p()Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/TerminalSdkManager$Instance;->getLogFlusher()Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 263
    invoke-virtual {p1}, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;->eventDao()Lcom/stripe/core/stripeterminal/storage/EventDao;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/core/stripeterminal/storage/EventDao;->getAll()Ljava/util/List;

    move-result-object v1

    .line 264
    invoke-virtual {p1}, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;->traceDao()Lcom/stripe/core/stripeterminal/storage/TraceDao;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/core/stripeterminal/storage/TraceDao;->getAll()Ljava/util/List;

    move-result-object v2

    .line 265
    invoke-virtual {p1}, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;->eventDao()Lcom/stripe/core/stripeterminal/storage/EventDao;

    move-result-object v3

    invoke-interface {v3}, Lcom/stripe/core/stripeterminal/storage/EventDao;->deleteAll()V

    .line 266
    check-cast v1, Ljava/lang/Iterable;

    .line 290
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 291
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 292
    check-cast v5, Lcom/stripe/core/stripeterminal/storage/EventEntity;

    .line 266
    invoke-virtual {v5}, Lcom/stripe/core/stripeterminal/storage/EventEntity;->toModel()Lcom/stripe/jvmcore/logging/terminal/log/Event;

    move-result-object v5

    .line 292
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 266
    invoke-interface {v0, v3}, Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;->submitEvents(Ljava/util/List;)V

    .line 267
    invoke-virtual {p1}, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;->traceDao()Lcom/stripe/core/stripeterminal/storage/TraceDao;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/core/stripeterminal/storage/TraceDao;->deleteAll()V

    .line 269
    check-cast v2, Ljava/lang/Iterable;

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 295
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 296
    check-cast v3, Lcom/stripe/core/stripeterminal/storage/TraceEntity;

    .line 270
    invoke-virtual {p1}, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;->logPointDao()Lcom/stripe/core/stripeterminal/storage/LogPointDao;

    move-result-object v5

    .line 271
    invoke-virtual {v3}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/stripe/core/stripeterminal/storage/LogPointDao;->getLogPointsForTrace(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 297
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 298
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 299
    check-cast v7, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;

    .line 272
    invoke-virtual {v7}, Lcom/stripe/core/stripeterminal/storage/LogPointEntity;->toModel()Lcom/stripe/loggingmodels/LogPoint;

    move-result-object v7

    .line 299
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 300
    :cond_1
    check-cast v6, Ljava/util/List;

    .line 273
    invoke-virtual {v3, v6}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;->toModel(Ljava/util/List;)Lcom/stripe/jvmcore/logging/terminal/log/Span;

    move-result-object v3

    .line 296
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 301
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 268
    invoke-interface {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;->submitTraces(Ljava/util/List;)V

    .line 276
    invoke-virtual {p1}, Lcom/stripe/core/stripeterminal/storage/StripeTerminalDatabase;->logPointDao()Lcom/stripe/core/stripeterminal/storage/LogPointDao;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/core/stripeterminal/storage/LogPointDao;->deleteAll()V

    .line 279
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 260
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
