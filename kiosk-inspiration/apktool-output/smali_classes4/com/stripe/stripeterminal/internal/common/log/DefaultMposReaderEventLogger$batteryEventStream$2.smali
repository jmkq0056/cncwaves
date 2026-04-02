.class final Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultMposReaderEventLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->batteryEventStream(Lkotlinx/coroutines/flow/Flow;Lcom/stripe/stripeterminal/external/models/Reader;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlin/Pair<",
        "+",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "+",
        "Ljava/lang/Long;",
        ">;",
        "Lkotlin/Pair<",
        "+",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "+",
        "Ljava/lang/Long;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Pair<",
        "+",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "+",
        "Ljava/lang/Long;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "",
        "accumulator",
        "value"
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
    c = "com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$batteryEventStream$2"
    f = "DefaultMposReaderEventLogger.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$2;->this$0:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Pair;

    check-cast p2, Lkotlin/Pair;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$2;->invoke(Lkotlin/Pair;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/Pair;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/Pair<",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$2;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$2;->this$0:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;

    invoke-direct {v0, v1, p3}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$2;-><init>(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$2;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 57
    iget v0, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/Pair;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/Pair;

    .line 58
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/hardware/status/ReaderInfo;

    .line 59
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/hardware/status/ReaderInfo;

    .line 62
    invoke-virtual {v2}, Lcom/stripe/hardware/status/ReaderInfo;->isUsbConnected()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1}, Lcom/stripe/hardware/status/ReaderInfo;->isUsbConnected()Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$batteryEventStream$2;->this$0:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;

    invoke-static {v0, v2, v1}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->access$hasBatteryLevelChangedSignificantly(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;Lcom/stripe/hardware/status/ReaderInfo;Lcom/stripe/hardware/status/ReaderInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x7530

    .line 66
    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    :cond_1
    return-object p1

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
