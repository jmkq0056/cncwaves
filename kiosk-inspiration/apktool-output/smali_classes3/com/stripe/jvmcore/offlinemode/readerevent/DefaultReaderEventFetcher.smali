.class public final Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;
.super Ljava/lang/Object;
.source "DefaultReaderEventFetcher.kt"

# interfaces
.implements Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultReaderEventFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultReaderEventFetcher.kt\ncom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,44:1\n1549#2:45\n1620#2,3:46\n*S KotlinDebug\n*F\n+ 1 DefaultReaderEventFetcher.kt\ncom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher\n*L\n39#1:45\n39#1:46,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0096@\u00a2\u0006\u0002\u0010\u0008J:\u0010\t\u001a\u00020\n*\u0008\u0012\u0004\u0012\u00020\u00050\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000fH\u0082@\u00a2\u0006\u0002\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;",
        "()V",
        "getEventsFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/proto/api/sdk/ReaderEvent;",
        "api",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;",
        "(Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fetchAndEmitReaderEvents",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "afterId",
        "",
        "idsToAck",
        "",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "offlinemode"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$fetchAndEmitReaderEvents(Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p6}, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;->fetchAndEmitReaderEvents(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final fetchAndEmitReaderEvents(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Lcom/stripe/proto/api/sdk/ReaderEvent;",
            ">;",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p6, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;

    iget v1, v0, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p6, v0, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->label:I

    sub-int/2addr p6, v2

    iput p6, v0, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;

    invoke-direct {v0, p0, p6}, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;-><init>(Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v0

    iget-object p6, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 25
    iget v1, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p2, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;

    iget-object p3, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->L$1:Ljava/lang/Object;

    check-cast p3, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object p4, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->L$0:Ljava/lang/Object;

    check-cast p4, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;

    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_1
    move-object v3, p2

    move-object v1, p4

    goto :goto_3

    :cond_3
    iget-object p1, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;

    iget-object p1, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object p3, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->L$0:Ljava/lang/Object;

    check-cast p3, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;

    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p4, p3

    goto :goto_2

    :cond_4
    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    iput-object p0, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->L$0:Ljava/lang/Object;

    iput-object p1, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->L$1:Ljava/lang/Object;

    iput-object p2, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->L$2:Ljava/lang/Object;

    iput v4, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->label:I

    invoke-interface {p2, p3, p4, p5, v7}, Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;->fetchReaderEvents(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v0, :cond_5

    goto/16 :goto_5

    :cond_5
    move-object p4, p0

    .line 25
    :goto_2
    move-object p3, p6

    check-cast p3, Ljava/util/List;

    .line 33
    move-object p5, p3

    check-cast p5, Ljava/lang/Iterable;

    invoke-static {p5}, Lkotlinx/coroutines/flow/FlowKt;->asFlow(Ljava/lang/Iterable;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p5

    iput-object p4, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->L$0:Ljava/lang/Object;

    iput-object p1, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->L$1:Ljava/lang/Object;

    iput-object p2, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->L$2:Ljava/lang/Object;

    iput-object p3, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->L$3:Ljava/lang/Object;

    iput v3, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->label:I

    invoke-static {p1, p5, v7}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v0, :cond_6

    goto :goto_5

    :cond_6
    move-object v1, p3

    move-object p3, p1

    move-object p1, v1

    goto :goto_1

    .line 38
    :goto_3
    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    .line 39
    check-cast p1, Ljava/lang/Iterable;

    .line 45
    new-instance p2, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p1, p4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 46
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 47
    check-cast p4, Lcom/stripe/proto/api/sdk/ReaderEvent;

    .line 39
    iget-wide p4, p4, Lcom/stripe/proto/api/sdk/ReaderEvent;->id:J

    invoke-static {p4, p5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p4

    .line 47
    invoke-interface {p2, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 48
    :cond_7
    move-object v6, p2

    check-cast v6, Ljava/util/List;

    .line 40
    move-object p1, v6

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->maxOrThrow(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const/4 p1, 0x0

    iput-object p1, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->L$0:Ljava/lang/Object;

    iput-object p1, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->L$1:Ljava/lang/Object;

    iput-object p1, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->L$2:Ljava/lang/Object;

    iput-object p1, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->L$3:Ljava/lang/Object;

    iput v2, v7, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$fetchAndEmitReaderEvents$1;->label:I

    move-object v2, p3

    invoke-direct/range {v1 .. v7}, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;->fetchAndEmitReaderEvents(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    :goto_5
    return-object v0

    .line 42
    :cond_8
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method static synthetic fetchAndEmitReaderEvents$default(Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;JLjava/util/List;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p7, 0x4

    if-eqz p3, :cond_1

    .line 28
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p5

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    .line 25
    invoke-direct/range {v0 .. v6}, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;->fetchAndEmitReaderEvents(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getEventsFlow(Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/proto/api/sdk/ReaderEvent;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 17
    new-instance p2, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher$getEventsFlow$2;-><init>(Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method
