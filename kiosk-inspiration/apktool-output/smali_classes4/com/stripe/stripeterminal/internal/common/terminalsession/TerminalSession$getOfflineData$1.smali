.class final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TerminalSession.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getOfflineData(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function6<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData;",
        ">;>;",
        "Ljava/util/List<",
        "+",
        "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
        ">;",
        "Lcom/stripe/offlinemode/models/OfflineRequestsToSync;",
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
        "\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00032\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00032\u0006\u0010\u000b\u001a\u00020\u000cH\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData;",
        "readers",
        "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
        "connections",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
        "locations",
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
        "paymentIntents",
        "Lcom/stripe/offlinemode/models/OfflineRequestsToSync;"
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
    c = "com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$getOfflineData$1"
    f = "TerminalSession.kt"
    i = {}
    l = {
        0x12e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field synthetic L$3:Ljava/lang/Object;

.field synthetic L$4:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Ljava/util/List;

    check-cast p3, Ljava/util/List;

    check-cast p4, Ljava/util/List;

    check-cast p5, Lcom/stripe/offlinemode/models/OfflineRequestsToSync;

    check-cast p6, Lkotlin/coroutines/Continuation;

    invoke-virtual/range {p0 .. p6}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/stripe/offlinemode/models/OfflineRequestsToSync;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/stripe/offlinemode/models/OfflineRequestsToSync;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
            ">;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
            ">;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
            ">;",
            "Lcom/stripe/offlinemode/models/OfflineRequestsToSync;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;

    invoke-direct {v0, p6}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;->L$2:Ljava/lang/Object;

    iput-object p4, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;->L$3:Ljava/lang/Object;

    iput-object p5, v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;->L$4:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 301
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;->label:I

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

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lcom/stripe/offlinemode/models/OfflineRequestsToSync;

    .line 303
    sget-object v6, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory;->Companion:Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion;

    invoke-virtual {v6, v3, v1, v4}, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion;->dataFromConnectionsAndReaders(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 304
    sget-object v3, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory;->Companion:Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion;

    invoke-virtual {v3, v5}, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion;->dataFromPaymentIntentRequest(Lcom/stripe/offlinemode/models/OfflineRequestsToSync;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 303
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x0

    .line 302
    iput-object v4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;->L$2:Ljava/lang/Object;

    iput-object v4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;->L$3:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$getOfflineData$1;->label:I

    invoke-interface {p1, v1, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 306
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
