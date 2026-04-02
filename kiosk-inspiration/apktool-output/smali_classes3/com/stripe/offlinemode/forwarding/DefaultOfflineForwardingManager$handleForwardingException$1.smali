.class final Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DefaultOfflineForwardingManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->handleForwardingException(Lcom/stripe/offlinemode/forwarding/ForwardingApiException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager"
    f = "DefaultOfflineForwardingManager.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x12b,
        0x132,
        0x14c,
        0x14e
    }
    m = "handleForwardingException"
    n = {
        "this",
        "exception",
        "request",
        "networkStatus",
        "attempt",
        "failureCount",
        "this",
        "request",
        "failureCount"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

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
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->label:I

    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->access$handleForwardingException(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lcom/stripe/offlinemode/forwarding/ForwardingApiException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
