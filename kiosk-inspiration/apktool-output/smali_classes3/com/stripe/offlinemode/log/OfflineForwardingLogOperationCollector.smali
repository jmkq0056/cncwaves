.class public final Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationCollector;
.super Ljava/lang/Object;
.source "OfflineForwardingLogOperationCollector.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector<",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationCollector;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;",
        "traceLogger",
        "Lcom/stripe/loggingmodels/TraceLogger;",
        "gson",
        "Lcom/google/gson/Gson;",
        "(Lcom/stripe/loggingmodels/TraceLogger;Lcom/google/gson/Gson;)V",
        "collect",
        "",
        "result",
        "data",
        "isComplete",
        "",
        "offlinemode_release"
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

.field private final traceLogger:Lcom/stripe/loggingmodels/TraceLogger;


# direct methods
.method public constructor <init>(Lcom/stripe/loggingmodels/TraceLogger;Lcom/google/gson/Gson;)V
    .locals 1

    const-string v0, "traceLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationCollector;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 13
    iput-object p2, p0, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationCollector;->gson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public bridge synthetic collect(Lcom/stripe/loggingmodels/ApplicationTraceResult;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;Z)V
    .locals 0

    .line 11
    check-cast p2, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationCollector;->collect(Lcom/stripe/loggingmodels/ApplicationTraceResult;Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;Z)V

    return-void
.end method

.method public collect(Lcom/stripe/loggingmodels/ApplicationTraceResult;Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "result"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Lcom/stripe/loggingmodels/ApplicationTraceResult;->getException()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationCollector;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 19
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;->getTrace()Lcom/stripe/loggingmodels/Trace;

    move-result-object v4

    .line 20
    invoke-virtual {v1}, Lcom/stripe/loggingmodels/ApplicationTraceResult;->getException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v1}, Lcom/stripe/loggingmodels/ApplicationTraceResult;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 18
    invoke-static/range {v3 .. v9}, Lcom/stripe/loggingmodels/TraceLogger;->endTraceWithException$default(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/Trace;Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void

    .line 23
    :cond_0
    invoke-virtual {v1}, Lcom/stripe/loggingmodels/ApplicationTraceResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationCollector;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 24
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;->getTrace()Lcom/stripe/loggingmodels/Trace;

    move-result-object v4

    .line 25
    invoke-virtual {v1}, Lcom/stripe/loggingmodels/ApplicationTraceResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-virtual {v1}, Lcom/stripe/loggingmodels/ApplicationTraceResult;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 23
    invoke-static/range {v3 .. v9}, Lcom/stripe/loggingmodels/TraceLogger;->endTraceWithErrorMessage$default(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/Trace;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void

    .line 28
    :cond_1
    iget-object v10, v0, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationCollector;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;->getTrace()Lcom/stripe/loggingmodels/Trace;

    move-result-object v11

    .line 30
    iget-object v2, v0, Lcom/stripe/offlinemode/log/OfflineForwardingLogOperationCollector;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "toJson(...)"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    .line 28
    invoke-static/range {v10 .. v15}, Lcom/stripe/loggingmodels/TraceLogger;->endTraceWithSuccess$default(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/Trace;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method
