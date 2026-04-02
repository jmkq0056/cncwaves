.class final Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ExecutionTimeLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->reportExecution(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "-TR;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001\"\u0014\u0008\u0001\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0014\u0008\u0002\u0010\u0004*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\u0005\"\u0014\u0008\u0003\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00070\u0003\"\u0014\u0008\u0004\u0010\u0007*\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00070\u0005*\u00020\u0008H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "R",
        "D",
        "Lcom/squareup/wire/Message;",
        "DB",
        "Lcom/squareup/wire/Message$Builder;",
        "S",
        "SB",
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
    c = "com.stripe.jvmcore.logging.ExecutionTimeLogger$reportExecution$2"
    f = "ExecutionTimeLogger.kt"
    i = {
        0x0
    }
    l = {
        0x57
    }
    m = "invokeSuspend"
    n = {
        "timer"
    }
    s = {
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $eventSetter:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TSB;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $outcomeAndTags:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TR;",
            "Lkotlin/Pair<",
            "Lcom/stripe/loggingmodels/Outcome;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field final synthetic $runnable:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/ExecutionTimeLogger<",
            "TD;TDB;TS;TSB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/ExecutionTimeLogger<",
            "TD;TDB;TS;TSB;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TSB;-",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TR;+",
            "Lkotlin/Pair<",
            "+",
            "Lcom/stripe/loggingmodels/Outcome;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->this$0:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    iput-object p2, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->$eventSetter:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->$outcomeAndTags:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->$runnable:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->this$0:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->$eventSetter:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->$outcomeAndTags:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->$runnable:Lkotlin/jvm/functions/Function1;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;-><init>(Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 85
    iget v1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/jvmcore/logging/PendingTimer;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->L$0:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 86
    iget-object p1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->this$0:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    invoke-static {p1}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->access$getLogger$p(Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->$eventSetter:Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v2, v4}, Lcom/stripe/jvmcore/logging/HealthLogger;->startTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object p1

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->$outcomeAndTags:Lkotlin/jvm/functions/Function1;

    iget-object v9, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->this$0:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    iget-object v5, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->$runnable:Lkotlin/jvm/functions/Function1;

    .line 87
    new-instance v6, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2$1$result$1;

    invoke-direct {v6, v5, v4}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2$1$result$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v3

    iput-object v1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->L$0:Ljava/lang/Object;

    iput-object v9, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;->label:I

    invoke-interface {v3, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    move-object v10, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v10

    .line 88
    :goto_0
    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/loggingmodels/Outcome;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    .line 89
    invoke-static {v9}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->access$getLogger$p(Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object p1
.end method
