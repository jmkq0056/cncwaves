.class final Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ExecutionTimeLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->reportExecutionWithException(Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.stripe.jvmcore.logging.ExecutionTimeLogger$reportExecutionWithException$2"
    f = "ExecutionTimeLogger.kt"
    i = {
        0x0
    }
    l = {
        0x2a
    }
    m = "invokeSuspend"
    n = {
        "timer"
    }
    s = {
        "L$1"
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

.field final synthetic $tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

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
.method constructor <init>(Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/ExecutionTimeLogger<",
            "TD;TDB;TS;TSB;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TSB;-",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->this$0:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    iput-object p2, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->$tags:Ljava/util/Map;

    iput-object p3, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->$eventSetter:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->$runnable:Lkotlin/jvm/functions/Function1;

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

    new-instance v0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->this$0:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->$tags:Ljava/util/Map;

    iget-object v3, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->$eventSetter:Lkotlin/jvm/functions/Function2;

    iget-object v4, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->$runnable:Lkotlin/jvm/functions/Function1;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;-><init>(Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 39
    iget v1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->L$1:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/stripe/jvmcore/logging/PendingTimer;

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->L$0:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 40
    iget-object p1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->this$0:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    invoke-static {p1}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->access$getLogger$p(Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object p1

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->$tags:Ljava/util/Map;

    iget-object v4, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->$eventSetter:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, v1, v4}, Lcom/stripe/jvmcore/logging/HealthLogger;->startTimer(Ljava/util/Map;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object v1

    iget-object p1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->this$0:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    iget-object v4, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->$runnable:Lkotlin/jvm/functions/Function1;

    .line 41
    :try_start_1
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 42
    new-instance v5, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2$1$1$result$1;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2$1$1$result$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v6, v5

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v3

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;->label:I

    invoke-interface {v3, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    move-object v7, p1

    move-object p1, v2

    .line 43
    :goto_0
    :try_start_2
    invoke-static {v7}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->access$getLogger$p(Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v0

    sget-object v2, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    check-cast v2, Lcom/stripe/loggingmodels/Outcome;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 41
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object v2, v7

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, p1

    :goto_1
    move-object p1, v0

    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, v2

    .line 45
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_3

    .line 48
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    .line 46
    :cond_3
    invoke-static {v7}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->access$getLogger$p(Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v0

    sget-object p1, Lcom/stripe/loggingmodels/Outcome$GenericError;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$GenericError;

    move-object v2, p1

    check-cast v2, Lcom/stripe/loggingmodels/Outcome;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 47
    throw v8
.end method
