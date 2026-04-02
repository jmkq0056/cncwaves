.class final synthetic Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$4;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "DefaultOfflineForwardingManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;
.implements Lkotlin/coroutines/jvm/internal/SuspendFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/stripe/offlinemode/models/OfflineForwardingResponse;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/coroutines/jvm/internal/SuspendFunction;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    const-string v5, "handleForwardResponse(Lcom/stripe/offlinemode/models/OfflineForwardingResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-string v4, "handleForwardResponse"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/stripe/offlinemode/models/OfflineForwardingResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/models/OfflineForwardingResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$4;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-static {v0, p1, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->access$handleForwardResponse(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lcom/stripe/offlinemode/models/OfflineForwardingResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 235
    check-cast p1, Lcom/stripe/offlinemode/models/OfflineForwardingResponse;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$4;->invoke(Lcom/stripe/offlinemode/models/OfflineForwardingResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
