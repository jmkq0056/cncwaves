.class final Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultMposReaderEventLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->getEventStream()Lkotlinx/coroutines/flow/Flow;
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
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;",
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
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;"
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
    c = "com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$eventStream$1$1"
    f = "DefaultMposReaderEventLogger.kt"
    i = {
        0x0
    }
    l = {
        0x74,
        0x78
    }
    m = "invokeSuspend"
    n = {
        "$this$flow"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $it:Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;",
            "Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->$it:Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;

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

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->$it:Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;

    invoke-direct {v0, v1, v2, p2}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;-><init>(Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 114
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 116
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->$it:Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->label:I

    invoke-interface {v1, p1, v4}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 117
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->$it:Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;

    .line 118
    instance-of v4, p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;

    if-eqz v4, :cond_4

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->access$getReaderInfos(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->$it:Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;

    .line 120
    new-array v6, v2, [Lkotlinx/coroutines/flow/Flow;

    invoke-interface {v5}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;->getReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v7

    invoke-static {v4, p1, v7}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->access$batteryEventStream(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;Lkotlinx/coroutines/flow/Flow;Lcom/stripe/stripeterminal/external/models/Reader;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-interface {v5}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;->getReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v5

    invoke-static {v4, p1, v5}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->access$coinCellVoltageEventStream(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;Lkotlinx/coroutines/flow/Flow;Lcom/stripe/stripeterminal/external/models/Reader;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$eventStream$1$1;->label:I

    invoke-static {v1, p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    :goto_1
    return-object v0

    .line 123
    :cond_4
    instance-of v0, p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;

    if-eqz v0, :cond_5

    goto :goto_2

    .line 124
    :cond_5
    instance-of v3, p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;

    :goto_2
    if-eqz v3, :cond_6

    goto :goto_3

    .line 125
    :cond_6
    instance-of p1, p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;

    .line 127
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
