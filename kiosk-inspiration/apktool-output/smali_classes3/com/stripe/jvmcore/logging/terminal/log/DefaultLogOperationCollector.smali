.class public final Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationCollector;
.super Ljava/lang/Object;
.source "DefaultLogOperationCollector.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector<",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ \u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationCollector;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
        "traceLogger",
        "Lcom/stripe/loggingmodels/TraceLogger;",
        "metricLogger",
        "Lcom/stripe/loggingmodels/MetricLogger;",
        "gson",
        "Lcom/google/gson/Gson;",
        "(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/MetricLogger;Lcom/google/gson/Gson;)V",
        "collect",
        "",
        "result",
        "data",
        "isComplete",
        "",
        "impl_release"
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
.field private final gson:Lcom/google/gson/Gson;

.field private final metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

.field private final traceLogger:Lcom/stripe/loggingmodels/TraceLogger;


# direct methods
.method public constructor <init>(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/MetricLogger;Lcom/google/gson/Gson;)V
    .locals 1

    const-string v0, "traceLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationCollector;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 18
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationCollector;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 19
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationCollector;->gson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public bridge synthetic collect(Lcom/stripe/loggingmodels/ApplicationTraceResult;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;Z)V
    .locals 0

    .line 16
    check-cast p2, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationCollector;->collect(Lcom/stripe/loggingmodels/ApplicationTraceResult;Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;Z)V

    return-void
.end method

.method public collect(Lcom/stripe/loggingmodels/ApplicationTraceResult;Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "result"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 29
    iget-object v4, v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationCollector;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 30
    invoke-virtual {v3}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->getMetric()Lcom/stripe/loggingmodels/Metric;

    move-result-object v5

    .line 31
    invoke-virtual {v1}, Lcom/stripe/loggingmodels/ApplicationTraceResult;->getMetricOutcome()Lcom/stripe/loggingmodels/Outcome;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 29
    invoke-static/range {v4 .. v9}, Lcom/stripe/loggingmodels/MetricLogger;->endTimedMetric$default(Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/Metric;Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;ILjava/lang/Object;)J

    .line 36
    :cond_0
    invoke-virtual {v1}, Lcom/stripe/loggingmodels/ApplicationTraceResult;->getException()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 37
    iget-object v3, v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationCollector;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 38
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->getTrace()Lcom/stripe/loggingmodels/Trace;

    move-result-object v4

    .line 39
    invoke-virtual {v1}, Lcom/stripe/loggingmodels/ApplicationTraceResult;->getException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v1}, Lcom/stripe/loggingmodels/ApplicationTraceResult;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 37
    invoke-static/range {v3 .. v9}, Lcom/stripe/loggingmodels/TraceLogger;->endTraceWithException$default(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/Trace;Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void

    .line 43
    :cond_1
    invoke-virtual {v1}, Lcom/stripe/loggingmodels/ApplicationTraceResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 44
    iget-object v3, v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationCollector;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 45
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->getTrace()Lcom/stripe/loggingmodels/Trace;

    move-result-object v4

    .line 46
    invoke-virtual {v1}, Lcom/stripe/loggingmodels/ApplicationTraceResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-virtual {v1}, Lcom/stripe/loggingmodels/ApplicationTraceResult;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 44
    invoke-static/range {v3 .. v9}, Lcom/stripe/loggingmodels/TraceLogger;->endTraceWithErrorMessage$default(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/Trace;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void

    .line 51
    :cond_2
    iget-object v10, v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationCollector;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 52
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;->getTrace()Lcom/stripe/loggingmodels/Trace;

    move-result-object v11

    .line 53
    iget-object v2, v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationCollector;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "toJson(...)"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    .line 51
    invoke-static/range {v10 .. v15}, Lcom/stripe/loggingmodels/TraceLogger;->endTraceWithSuccess$default(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/Trace;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method
