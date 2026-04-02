.class public final Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory;
.super Ljava/lang/Object;
.source "DefaultLogOperationFactory.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory<",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultLogOperationFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultLogOperationFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,64:1\n1#2:65\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0014B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\u000c\u0010\u000f\u001a\u00020\u0010*\u00020\tH\u0002J\u0018\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u0012*\u00020\tH\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
        "traceLogger",
        "Lcom/stripe/loggingmodels/TraceLogger;",
        "metricLogger",
        "Lcom/stripe/loggingmodels/MetricLogger;",
        "traceManager",
        "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
        "gson",
        "Lcom/google/gson/Gson;",
        "(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;Lcom/google/gson/Gson;)V",
        "create",
        "request",
        "context",
        "Lcom/stripe/loggingmodels/Trace$Context;",
        "tags",
        "",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory$Companion;

.field private static final TAG_ACTION_ID:Ljava/lang/String; = "terminal_action_id"

.field private static final TERMINAL_DOMAIN:Ljava/lang/String; = "terminal_request"

.field private static final TERMINAL_SCOPE:Ljava/lang/String; = "terminal"


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private final metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

.field private final traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

.field private final traceManager:Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;Lcom/google/gson/Gson;)V
    .locals 1

    const-string v0, "traceLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 17
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 18
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory;->traceManager:Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

    .line 19
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private final context(Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;)Lcom/stripe/loggingmodels/Trace$Context;
    .locals 3

    .line 47
    new-instance v0, Lcom/stripe/loggingmodels/Trace$Context;

    .line 48
    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->getSessionId()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->nextTraceId()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-direct {v0, v1, v2, p1}, Lcom/stripe/loggingmodels/Trace$Context;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final tags(Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->getTerminalActionId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "terminal_action_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    invoke-static {v0}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic create(Lcom/stripe/loggingmodels/ApplicationTrace;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory;->create(Lcom/stripe/loggingmodels/ApplicationTrace;)Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;

    return-object p1
.end method

.method public create(Lcom/stripe/loggingmodels/ApplicationTrace;)Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;
    .locals 13

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory;->traceManager:Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

    invoke-direct {p0, v0}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory;->context(Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;)Lcom/stripe/loggingmodels/Trace$Context;

    move-result-object v8

    .line 23
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;

    .line 24
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 25
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/ApplicationTrace;->getService()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/ApplicationTrace;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 27
    iget-object v4, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "toJson(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v8}, Lcom/stripe/loggingmodels/Trace$Context;->getActionId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move-object v7, v5

    .line 34
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v11

    .line 35
    iget-object v5, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory;->traceManager:Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

    invoke-direct {p0, v5}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory;->tags(Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p1}, Lcom/stripe/loggingmodels/ApplicationTrace;->getTags()Ljava/util/Map;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 24
    invoke-interface/range {v1 .. v12}, Lcom/stripe/loggingmodels/TraceLogger;->startTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/stripe/loggingmodels/Trace;

    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperationFactory;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 40
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/ApplicationTrace;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 41
    sget-object v4, Lcom/stripe/loggingmodels/Tag$HealthTag;->Companion:Lcom/stripe/loggingmodels/Tag$HealthTag$Companion;

    invoke-virtual {p1}, Lcom/stripe/loggingmodels/ApplicationTrace;->getTags()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/stripe/loggingmodels/Tag$HealthTag$Companion;->toHealthTags(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 37
    const-string v4, "terminal_request"

    const-string v5, "terminal"

    invoke-interface {v2, v4, v5, v3, p1}, Lcom/stripe/loggingmodels/MetricLogger;->startTimedMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/stripe/loggingmodels/Metric;

    move-result-object p1

    .line 23
    invoke-direct {v0, v1, p1}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;-><init>(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/loggingmodels/Metric;)V

    return-object v0
.end method
