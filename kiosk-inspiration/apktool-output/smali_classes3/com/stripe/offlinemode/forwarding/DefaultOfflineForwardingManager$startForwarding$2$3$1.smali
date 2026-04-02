.class final Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultOfflineForwardingManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;"
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
    c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$startForwarding$2$3$1"
    f = "DefaultOfflineForwardingManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$1;

    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-direct {v0, v1, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$1;->invoke(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 151
    iget v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    .line 152
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-static {v0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->access$getTraceLogger$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    move-result-object v0

    .line 153
    new-instance v1, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;

    .line 154
    invoke-virtual {p1}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->getOfflineApiRequest()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->stripe_entity_id:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->getOfflineApiRequest()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-result-object v3

    iget-object v3, v3, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->getOfflineApiRequest()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    .line 157
    invoke-virtual {p1}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->getOfflineReader()Lcom/stripe/proto/model/offline_mode/OfflineReader;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;->serial_number:Ljava/lang/String;

    .line 153
    invoke-direct {v1, v2, v3, v4, p1}, Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;)V

    .line 152
    invoke-interface {v0, v1}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->startOperation(Lcom/stripe/offlinemode/log/OfflineTrace$OfflineForwarding;)V

    .line 160
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
