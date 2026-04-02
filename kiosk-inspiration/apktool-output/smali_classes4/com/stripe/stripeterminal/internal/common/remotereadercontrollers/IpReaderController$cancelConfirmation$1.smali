.class final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IpReaderController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->cancelConfirmation(Lcom/stripe/stripeterminal/external/callable/Callback;Lkotlin/jvm/functions/Function0;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0012\u0008\u0000\u0010\u0002*\u000c\u0012\u0004\u0012\u0002H\u0002\u0012\u0002\u0008\u00030\u0003*\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "M",
        "Lcom/squareup/wire/Message;",
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
    c = "com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$cancelConfirmation$1"
    f = "IpReaderController.kt"
    i = {}
    l = {
        0x315
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $callback:Lcom/stripe/stripeterminal/external/callable/Callback;

.field final synthetic $cancelFun:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "TM;>;>;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/external/callable/Callback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "TM;>;>;",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;",
            "Lcom/stripe/stripeterminal/external/callable/Callback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;->$cancelFun:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;->$callback:Lcom/stripe/stripeterminal/external/callable/Callback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;->$cancelFun:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;->$callback:Lcom/stripe/stripeterminal/external/callable/Callback;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/external/callable/Callback;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 785
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 787
    :try_start_1
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;->$cancelFun:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    .line 788
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v1, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$ensureConnectedJackrabbitResponse(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;

    .line 789
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getPaymentJob$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lkotlinx/coroutines/Job;

    move-result-object p1

    if-eqz p1, :cond_2

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/JobKt;->cancelAndJoin(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 790
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;->$callback:Lcom/stripe/stripeterminal/external/callable/Callback;

    invoke-interface {p1}, Lcom/stripe/stripeterminal/external/callable/Callback;->onSuccess()V
    :try_end_1
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 792
    :goto_1
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/Throwable;)V

    .line 793
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmation$1;->$callback:Lcom/stripe/stripeterminal/external/callable/Callback;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/Callback;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 795
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
