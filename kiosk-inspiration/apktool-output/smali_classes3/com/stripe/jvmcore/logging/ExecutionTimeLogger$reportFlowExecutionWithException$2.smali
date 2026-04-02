.class final Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ExecutionTimeLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->reportFlowExecutionWithException(Lkotlinx/coroutines/flow/Flow;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-TR;>;",
        "Ljava/lang/Throwable;",
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
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0014\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0014\u0008\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00050\u0006\"\u0014\u0008\u0003\u0010\u0007*\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u00080\u0004\"\u0014\u0008\u0004\u0010\u0008*\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u00080\u0006*\u0008\u0012\u0004\u0012\u0002H\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "D",
        "Lcom/squareup/wire/Message;",
        "DB",
        "Lcom/squareup/wire/Message$Builder;",
        "S",
        "SB",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "error",
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
    c = "com.stripe.jvmcore.logging.ExecutionTimeLogger$reportFlowExecutionWithException$2"
    f = "ExecutionTimeLogger.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $timer:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/stripe/jvmcore/logging/PendingTimer;",
            ">;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

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
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/stripe/jvmcore/logging/PendingTimer;",
            ">;",
            "Lcom/stripe/jvmcore/logging/ExecutionTimeLogger<",
            "TD;TDB;TS;TSB;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$2;->$timer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$2;->this$0:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$2;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TR;>;",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$2;

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$2;->$timer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$2;->this$0:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    invoke-direct {p1, v0, v1, p3}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;Lkotlin/coroutines/Continuation;)V

    iput-object p2, p1, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$2;->L$0:Ljava/lang/Object;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 65
    iget v1, v0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$2;->label:I

    if-nez v1, :cond_2

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$2;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    .line 66
    iget-object v2, v0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$2;->$timer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/jvmcore/logging/PendingTimer;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$2;->this$0:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    iget-object v3, v0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$2;->$timer:Lkotlin/jvm/internal/Ref$ObjectRef;

    if-nez v1, :cond_0

    .line 68
    invoke-static {v2}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->access$getLogger$p(Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v4

    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lcom/stripe/jvmcore/logging/PendingTimer;

    sget-object v1, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    move-object v6, v1

    check-cast v6, Lcom/stripe/loggingmodels/Outcome;

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {v2}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->access$getLogger$p(Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v11

    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Lcom/stripe/jvmcore/logging/PendingTimer;

    sget-object v1, Lcom/stripe/loggingmodels/Outcome$GenericError;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$GenericError;

    move-object v13, v1

    check-cast v13, Lcom/stripe/loggingmodels/Outcome;

    const/16 v16, 0xc

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v11 .. v17}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 73
    :cond_1
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 65
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
