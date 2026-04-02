.class final Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ExecutionTimeLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->reportFlowExecution(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "TR;",
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
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0014\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0014\u0008\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00050\u0006\"\u0014\u0008\u0003\u0010\u0007*\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u00080\u0004\"\u0014\u0008\u0004\u0010\u0008*\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u00080\u00062\u0006\u0010\t\u001a\u0002H\u0002H\u008a@"
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
        "it"
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
    c = "com.stripe.jvmcore.logging.ExecutionTimeLogger$reportFlowExecution$1$1"
    f = "ExecutionTimeLogger.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $getOutcomeAndTags:Lkotlin/jvm/functions/Function1;
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

.field final synthetic $shouldTimerEnd:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TR;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $timer:Lcom/stripe/jvmcore/logging/PendingTimer;

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
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TR;",
            "Ljava/lang/Boolean;",
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
            "Lcom/stripe/jvmcore/logging/ExecutionTimeLogger<",
            "TD;TDB;TS;TSB;>;",
            "Lcom/stripe/jvmcore/logging/PendingTimer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;->$shouldTimerEnd:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;->$getOutcomeAndTags:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;->this$0:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    iput-object p4, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;->$timer:Lcom/stripe/jvmcore/logging/PendingTimer;

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

    new-instance v0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;->$shouldTimerEnd:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;->$getOutcomeAndTags:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;->this$0:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    iget-object v4, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;->$timer:Lcom/stripe/jvmcore/logging/PendingTimer;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;->invoke(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 106
    iget v0, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;->L$0:Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;->$shouldTimerEnd:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;->$getOutcomeAndTags:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/loggingmodels/Outcome;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/util/Map;

    .line 109
    iget-object p1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;->this$0:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    invoke-static {p1}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->access$getLogger$p(Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;->$timer:Lcom/stripe/jvmcore/logging/PendingTimer;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 111
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 106
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
