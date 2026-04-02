.class public final Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Merge.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2;->invoke()Lkotlinx/coroutines/flow/StateFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
        ">;>;",
        "Ljava/lang/String;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1\n+ 2 DefaultOfflineRepository.kt\ncom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2\n*L\n1#1,214:1\n124#2,6:215\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u008a@\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "R",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "it",
        "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1"
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
    c = "com.stripe.offlinemode.storage.DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1"
    f = "DefaultOfflineRepository.kt"
    i = {}
    l = {
        0xbd
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)V
    .locals 0

    iput-object p2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            ">;>;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1;

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-direct {v0, p3, v1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)V

    iput-object p1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 0
    iget v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 189
    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 216
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    .line 219
    new-array v4, v4, [Lkotlinx/coroutines/flow/Flow;

    iget-object v5, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v5}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getOfflineApiRequestDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;->fetchUnconfirmedOfflineIntents(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 220
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getManuallyFetchedUnprocessedOfflinePaymentsFlow$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v1

    aput-object v1, v4, v2

    .line 218
    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 189
    :goto_0
    iput v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
