.class final Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UsbReaderReconnector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->attemptToReconnect(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
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
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        ""
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
    c = "com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$attemptToReconnect$5"
    f = "UsbReaderReconnector.kt"
    i = {}
    l = {
        0xa8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $this_attemptToReconnect:Lkotlinx/coroutines/flow/FlowCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $usbReader:Lcom/stripe/core/hardware/Reader;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;",
            ">;",
            "Lcom/stripe/core/hardware/Reader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$5;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$5;->$this_attemptToReconnect:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$5;->$usbReader:Lcom/stripe/core/hardware/Reader;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$5;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$5;->$this_attemptToReconnect:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$5;->$usbReader:Lcom/stripe/core/hardware/Reader;

    invoke-direct {v0, v1, v2, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$5;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$5;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$5;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$5;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 167
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$5;->label:I

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

    .line 168
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$5;->$this_attemptToReconnect:Lkotlinx/coroutines/flow/FlowCollector;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity$StartConnectAttempt;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$5;->$usbReader:Lcom/stripe/core/hardware/Reader;

    invoke-direct {v1, v3}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$UpdateConnectivity$StartConnectAttempt;-><init>(Lcom/stripe/core/hardware/Reader;)V

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$5;->label:I

    invoke-interface {p1, v1, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 169
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
