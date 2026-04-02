.class final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TerminalSession.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->connectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/external/callable/ReaderCallback;)V
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
    c = "com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$connectReader$1"
    f = "TerminalSession.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

.field final synthetic $connectionCallback:Lcom/stripe/stripeterminal/external/callable/ReaderCallback;

.field final synthetic $proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

.field final synthetic $reader:Lcom/stripe/stripeterminal/external/models/Reader;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;Lcom/stripe/stripeterminal/external/callable/ReaderCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;",
            "Lcom/stripe/stripeterminal/external/callable/ReaderCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->$reader:Lcom/stripe/stripeterminal/external/models/Reader;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->$config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->$proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->$connectionCallback:Lcom/stripe/stripeterminal/external/callable/ReaderCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->$reader:Lcom/stripe/stripeterminal/external/models/Reader;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->$config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->$proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->$connectionCallback:Lcom/stripe/stripeterminal/external/callable/ReaderCallback;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;Lcom/stripe/stripeterminal/external/callable/ReaderCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 542
    iget v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 543
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object p1

    sget-object v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$ConnectReaderInProgress;->INSTANCE:Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$ConnectReaderInProgress;

    check-cast v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;

    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->cancelDiscoverReaders(Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;)V

    .line 545
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 546
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 547
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->$reader:Lcom/stripe/stripeterminal/external/models/Reader;

    .line 548
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->$config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    .line 549
    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->$proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    .line 550
    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$connectReader$1;->$connectionCallback:Lcom/stripe/stripeterminal/external/callable/ReaderCallback;

    .line 546
    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;Lcom/stripe/stripeterminal/external/callable/ReaderCallback;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;

    .line 545
    invoke-static {p1, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$enqueueOperation(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Operation;)V

    .line 553
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 542
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
