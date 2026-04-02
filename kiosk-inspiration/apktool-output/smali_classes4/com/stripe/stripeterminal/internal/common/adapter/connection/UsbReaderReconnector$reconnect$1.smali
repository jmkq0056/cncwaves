.class final Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UsbReaderReconnector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->reconnect(Lcom/stripe/stripeterminal/external/models/Reader;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;",
        ">;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;"
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
    c = "com.stripe.stripeterminal.internal.common.adapter.connection.UsbReaderReconnector$reconnect$1"
    f = "UsbReaderReconnector.kt"
    i = {
        0x1,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x3a,
        0x41,
        0x79
    }
    m = "invokeSuspend"
    n = {
        "$this$flow",
        "pendingTimer",
        "reconnected",
        "pendingTimer",
        "reconnected"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $disconnectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->$disconnectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->$disconnectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    invoke-direct {v0, v1, v2, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;-><init>(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 55
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/jvmcore/logging/PendingTimer;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/stripe/jvmcore/logging/PendingTimer;

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v3

    goto/16 :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->L$0:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lkotlinx/coroutines/flow/FlowCollector;

    .line 56
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->$disconnectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->fromUsbDeviceOrNull(Landroid/hardware/usb/UsbDevice;)Lcom/stripe/core/hardware/Reader$UsbReader;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 57
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->access$getMaxAttempts$p(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;)I

    move-result p1

    if-gtz p1, :cond_4

    goto :goto_4

    .line 62
    :cond_4
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->access$initializeHealthMetrics(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object v1

    .line 63
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 65
    :try_start_2
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->access$getOperationTimeout$p(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;)J

    move-result-wide v12

    new-instance v5, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;

    iget-object v6, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    iget-object v9, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->$disconnectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/core/hardware/Reader$UsbReader;Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v7, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->L$1:Ljava/lang/Object;

    iput-object v10, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->label:I

    invoke-static {v12, v13, v5, p1}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1

    if-ne p1, v0, :cond_5

    goto :goto_5

    :cond_5
    move-object v3, v1

    move-object v4, v7

    move-object v1, v10

    .line 118
    :goto_0
    :try_start_3
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p1, :cond_6

    .line 121
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$FailedToReconnect;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$FailedToReconnect;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->label:I

    invoke-interface {v4, p1, v5}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0

    if-ne p1, v0, :cond_6

    goto :goto_5

    :cond_6
    move-object v0, v1

    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_7

    .line 123
    :try_start_4
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {p1, v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->access$finalizeHealthMetricsForResult(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;Lcom/stripe/jvmcore/logging/PendingTimer;Ljava/lang/Boolean;)V
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    :goto_2
    if-eqz v1, :cond_7

    .line 127
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;

    invoke-static {p1, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->access$finalizeHealthMetricsForCancel(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;Lcom/stripe/jvmcore/logging/PendingTimer;)V

    .line 129
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 58
    :cond_8
    :goto_4
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$FailedToReconnect;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent$FailedToReconnect;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;->label:I

    invoke-interface {v7, p1, v1}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    :goto_5
    return-object v0

    .line 59
    :cond_9
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
