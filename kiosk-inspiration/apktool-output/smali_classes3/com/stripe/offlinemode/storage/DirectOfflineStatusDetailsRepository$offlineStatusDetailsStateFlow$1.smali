.class final Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DirectOfflineStatusDetailsRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/offlinemode/storage/OfflineRepository;Ljavax/inject/Provider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/stripe/offlinemode/storage/OfflineEntityStats;",
        "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
        "<name for destructuring parameter 0>",
        "Lcom/stripe/offlinemode/storage/OfflineEntityStats;",
        "networkStatus",
        "Lcom/stripe/stripeterminal/external/models/NetworkStatus;"
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
    c = "com.stripe.offlinemode.storage.DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1"
    f = "DirectOfflineStatusDetailsRepository.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1;->this$0:Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/stripe/offlinemode/storage/OfflineEntityStats;Lcom/stripe/stripeterminal/external/models/NetworkStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/OfflineEntityStats;",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1;

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1;->this$0:Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;

    invoke-direct {v0, v1, p3}, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1;-><init>(Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineEntityStats;

    check-cast p2, Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1;->invoke(Lcom/stripe/offlinemode/storage/OfflineEntityStats;Lcom/stripe/stripeterminal/external/models/NetworkStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 29
    iget v0, p0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineEntityStats;

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->component1()I

    move-result v1

    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->component2()I

    move-result v2

    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->component3()Ljava/util/Map;

    move-result-object p1

    .line 30
    iget-object v3, p0, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository$offlineStatusDetailsStateFlow$1;->this$0:Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;

    invoke-static {v3, v0}, Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;->access$setCachedNetworkStatus$p(Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;Lcom/stripe/stripeterminal/external/models/NetworkStatus;)V

    .line 31
    new-instance v3, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    invoke-direct {v3, v2, v1, p1, v0}, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;-><init>(IILjava/util/Map;Lcom/stripe/stripeterminal/external/models/NetworkStatus;)V

    return-object v3

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
