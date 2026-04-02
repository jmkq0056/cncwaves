.class public final Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;
.super Ljava/lang/Object;
.source "ExecutionTimeLogger.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/squareup/wire/Message<",
        "TD;TDB;>;DB:",
        "Lcom/squareup/wire/Message$Builder<",
        "TD;TDB;>;S:",
        "Lcom/squareup/wire/Message<",
        "TS;TSB;>;SB:",
        "Lcom/squareup/wire/Message$Builder<",
        "TS;TSB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0002*\u0014\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004*\u0014\u0008\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u0002*\u0014\u0008\u0003\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u00042\u00020\u0007B%\u0012\u001e\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\t\u00a2\u0006\u0002\u0010\nJ\u009c\u0001\u0010\u000b\u001a\u0002H\u000c\"\u0004\u0008\u0004\u0010\u000c2-\u0010\r\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u000f`\u0011\u00a2\u0006\u0002\u0008\u00122\u001c\u0010\u0013\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000c0\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u001429\u0010\u0016\u001a5\u0012\u0013\u0012\u0011H\u000c\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u001c\u0012\u001a\u0012\u0004\u0012\u00020\u001b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0\u001c0\u001a0\u0014H\u0086@\u00a2\u0006\u0002\u0010\u001eJw\u0010\u001f\u001a\u0002H\u000c\"\u0004\u0008\u0004\u0010\u000c2\u0014\u0008\u0002\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0\u001c2-\u0010\r\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u000f`\u0011\u00a2\u0006\u0002\u0008\u00122\u001c\u0010\u0013\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000c0\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0014H\u0086@\u00a2\u0006\u0002\u0010!J\u00a4\u0001\u0010\"\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0#\"\u0004\u0008\u0004\u0010\u000c2\u0012\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000c0#0$2\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u0002H\u000c\u0012\u0004\u0012\u00020&0\u001429\u0010\'\u001a5\u0012\u0013\u0012\u0011H\u000c\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u001c\u0012\u001a\u0012\u0004\u0012\u00020\u001b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0\u001c0\u001a0\u00142-\u0010\r\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u000f`\u0011\u00a2\u0006\u0002\u0008\u0012Ja\u0010(\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0#\"\u0004\u0008\u0004\u0010\u000c*\u0008\u0012\u0004\u0012\u0002H\u000c0#2\u0014\u0008\u0002\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d0\u001c2-\u0010\r\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u000f`\u0011\u00a2\u0006\u0002\u0008\u0012R&\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;",
        "D",
        "Lcom/squareup/wire/Message;",
        "DB",
        "Lcom/squareup/wire/Message$Builder;",
        "S",
        "SB",
        "",
        "logger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "(Lcom/stripe/jvmcore/logging/HealthLogger;)V",
        "reportExecution",
        "R",
        "eventSetter",
        "Lkotlin/Function2;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
        "",
        "Lcom/stripe/jvmcore/logging/EventSetter;",
        "Lkotlin/ExtensionFunctionType;",
        "runnable",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "outcomeAndTags",
        "Lkotlin/ParameterName;",
        "name",
        "result",
        "Lkotlin/Pair;",
        "Lcom/stripe/loggingmodels/Outcome;",
        "",
        "",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "reportExecutionWithException",
        "tags",
        "(Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "reportFlowExecution",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lkotlin/Function0;",
        "shouldTimerEnd",
        "",
        "getOutcomeAndTags",
        "reportFlowExecutionWithException",
        "logging"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final logger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "TD;TDB;TS;TSB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/HealthLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "TD;TDB;TS;TSB;>;)V"
        }
    .end annotation

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->logger:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-void
.end method

.method public static final synthetic access$getLogger$p(Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->logger:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-object p0
.end method

.method public static synthetic reportExecutionWithException$default(Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    .line 36
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 35
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->reportExecutionWithException(Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic reportFlowExecutionWithException$default(Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;Lkotlinx/coroutines/flow/Flow;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 59
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 58
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->reportFlowExecutionWithException(Lkotlinx/coroutines/flow/Flow;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final reportExecution(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
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
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecution$2;-><init>(Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p4}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final reportExecutionWithException(Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
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
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportExecutionWithException$2;-><init>(Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p4}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final reportFlowExecution(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TR;>;>;",
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
            "Lkotlin/jvm/functions/Function2<",
            "-TSB;-",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shouldTimerEnd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getOutcomeAndTags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventSetter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->logger:Lcom/stripe/jvmcore/logging/HealthLogger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p4, v2, v1}, Lcom/stripe/jvmcore/logging/HealthLogger;->startTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object v7

    .line 106
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    new-instance v3, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;

    const/4 v8, 0x0

    move-object v6, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v3 .. v8}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecution$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v3}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public final reportFlowExecutionWithException(Lkotlinx/coroutines/flow/Flow;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TR;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TSB;-",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventSetter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 63
    new-instance v1, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->onStart(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 65
    new-instance p2, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$2;

    const/4 p3, 0x0

    invoke-direct {p2, v2, p0, p3}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger$reportFlowExecutionWithException$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->onCompletion(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method
