.class final Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultOfflineRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;-><init>(Lcom/stripe/offlinemode/storage/OfflineReaderDao;Lcom/stripe/offlinemode/storage/OfflineConnectionDao;Lcom/stripe/offlinemode/storage/OfflineLocationDao;Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/coroutines/flow/StateFlow<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultOfflineRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultOfflineRepository.kt\ncom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2\n+ 2 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n*L\n1#1,1085:1\n189#2:1086\n*S KotlinDebug\n*F\n+ 1 DefaultOfflineRepository.kt\ncom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2\n*L\n123#1:1086\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "",
        "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2;->invoke()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/coroutines/flow/StateFlow;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            ">;>;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-virtual {v0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->getActiveAccountFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 123
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    .line 1086
    new-instance v2, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2$invoke$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2$2;

    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-direct {v1, v2, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2$2;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->catch(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 137
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/flow/FlowKt;->retry$default(Lkotlinx/coroutines/flow/Flow;JLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2;->this$0:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$getDispatcher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->getEagerly()Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method
