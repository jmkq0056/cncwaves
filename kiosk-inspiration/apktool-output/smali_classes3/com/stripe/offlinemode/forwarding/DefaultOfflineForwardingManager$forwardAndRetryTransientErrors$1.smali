.class final Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DefaultOfflineForwardingManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->forwardAndRetryTransientErrors(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        0x1,
        0x1,
        0x1
    }
    l = {
        0x105,
        0x10e,
        0x117
    }
    m = "forwardAndRetryTransientErrors"
    n = {
        "this",
        "request",
        "attempt",
        "this",
        "request",
        "attempt"
    }
    s = {
        "L$0",
        "L$1",
        "I$0",
        "L$0",
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

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
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->label:I

    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->access$forwardAndRetryTransientErrors(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
