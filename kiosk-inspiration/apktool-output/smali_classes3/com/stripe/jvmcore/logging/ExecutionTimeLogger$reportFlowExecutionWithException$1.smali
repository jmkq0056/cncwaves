.class final Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ExecutionTimeLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-TR;>;",
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
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0014\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0014\u0008\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00050\u0006\"\u0014\u0008\u0003\u0010\u0007*\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u00080\u0004\"\u0014\u0008\u0004\u0010\u0008*\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\u00080\u0006*\u0008\u0012\u0004\u0012\u0002H\u00020\tH\u008a@"
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
        "Lkotlinx/coroutines/flow/FlowCollector;"
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
    c = "com.stripe.jvmcore.logging.ExecutionTimeLogger$reportFlowExecutionWithException$1"
    f = "ExecutionTimeLogger.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
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

.field final synthetic $timer:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/stripe/jvmcore/logging/PendingTimer;",
            ">;"
        }
    .end annotation
.end field

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
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/stripe/jvmcore/logging/PendingTimer;",
            ">;",
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
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;->$timer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;->this$0:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    iput-object p3, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;->$tags:Ljava/util/Map;

    iput-object p4, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;->$eventSetter:Lkotlin/jvm/functions/Function2;

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

    new-instance v0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;->$timer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;->this$0:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    iget-object v3, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;->$tags:Ljava/util/Map;

    iget-object v4, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;->$eventSetter:Lkotlin/jvm/functions/Function2;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 63
    iget v0, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    iget-object p1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;->$timer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;->this$0:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    invoke-static {v0}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->access$getLogger$p(Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;->$tags:Ljava/util/Map;

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;->$eventSetter:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1, v2}, Lcom/stripe/jvmcore/logging/HealthLogger;->startTimer(Ljava/util/Map;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object v0

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 65
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
