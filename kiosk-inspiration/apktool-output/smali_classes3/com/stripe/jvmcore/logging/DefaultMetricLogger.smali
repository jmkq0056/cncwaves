.class public final Lcom/stripe/jvmcore/logging/DefaultMetricLogger;
.super Ljava/lang/Object;
.source "DefaultMetricLogger.kt"

# interfaces
.implements Lcom/stripe/loggingmodels/MetricLogger;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultMetricLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultMetricLogger.kt\ncom/stripe/jvmcore/logging/DefaultMetricLogger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,303:1\n1179#2,2:304\n1253#2,4:306\n*S KotlinDebug\n*F\n+ 1 DefaultMetricLogger.kt\ncom/stripe/jvmcore/logging/DefaultMetricLogger\n*L\n277#1:304,2\n277#1:306,4\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\"\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000e2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J&\u0010\u0013\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00162\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J6\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J>\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u00142\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J>\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u00142\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J.\u0010!\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0016J\u0018\u0010\"\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/DefaultMetricLogger;",
        "Lcom/stripe/loggingmodels/MetricLogger;",
        "batchDispatcher",
        "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;",
        "Lcom/stripe/proto/api/gator/ProxyEventPb;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;)V",
        "buildProxyEventPb",
        "metric",
        "Lcom/stripe/loggingmodels/Metric;",
        "metricResult",
        "Lcom/stripe/jvmcore/logging/MetricResult;",
        "buildTagStringsMap",
        "",
        "",
        "tags",
        "",
        "Lcom/stripe/loggingmodels/Tag;",
        "endTimedMetric",
        "",
        "outcome",
        "Lcom/stripe/loggingmodels/Outcome;",
        "init",
        "",
        "recordCounterMetric",
        "domain",
        "scope",
        "event",
        "recordGaugeMetric",
        "measurement",
        "recordTimedMetric",
        "durationMillis",
        "startTimedMetric",
        "submitMetric",
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
.field private final batchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Lcom/stripe/time/Clock;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
            ">;",
            "Lcom/stripe/time/Clock;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "batchDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/DefaultMetricLogger;->batchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    .line 32
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/DefaultMetricLogger;->clock:Lcom/stripe/time/Clock;

    return-void
.end method

.method private final buildProxyEventPb(Lcom/stripe/loggingmodels/Metric;Lcom/stripe/jvmcore/logging/MetricResult;)Lcom/stripe/proto/api/gator/ProxyEventPb;
    .locals 13

    .line 256
    new-instance v0, Lcom/stripe/proto/api/gator/ProxyEventPb;

    .line 257
    new-instance v1, Lcom/stripe/proto/api/gator/EventResultPb;

    .line 258
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Metric;->getDomain()Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Metric;->getScope()Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Metric;->getEvent()Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Metric;->getTags()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p2}, Lcom/stripe/jvmcore/logging/MetricResult;->getTags()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/logging/DefaultMetricLogger;->buildTagStringsMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    .line 262
    invoke-virtual {p2}, Lcom/stripe/jvmcore/logging/MetricResult;->getOutcome()Lcom/stripe/loggingmodels/Outcome;

    move-result-object p1

    .line 263
    instance-of p1, p1, Lcom/stripe/loggingmodels/Outcome$Success;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/stripe/proto/api/gator/EventResultPb$Result;->OK:Lcom/stripe/proto/api/gator/EventResultPb$Result;

    goto :goto_0

    .line 264
    :cond_0
    sget-object p1, Lcom/stripe/proto/api/gator/EventResultPb$Result;->ERROR:Lcom/stripe/proto/api/gator/EventResultPb$Result;

    :goto_0
    move-object v6, p1

    .line 266
    invoke-virtual {p2}, Lcom/stripe/jvmcore/logging/MetricResult;->getOutcome()Lcom/stripe/loggingmodels/Outcome;

    move-result-object p1

    .line 267
    instance-of v7, p1, Lcom/stripe/loggingmodels/Outcome$Ok;

    if-eqz v7, :cond_1

    const-string p1, ""

    goto :goto_1

    .line 268
    :cond_1
    invoke-interface {p1}, Lcom/stripe/loggingmodels/Outcome;->getOutcome()Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v7, p1

    .line 270
    instance-of p1, p2, Lcom/stripe/jvmcore/logging/MetricResult$TimedMetricResult;

    const/4 v8, 0x0

    if-eqz p1, :cond_2

    move-object p1, p2

    check-cast p1, Lcom/stripe/jvmcore/logging/MetricResult$TimedMetricResult;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/MetricResult$TimedMetricResult;->getDurationMillis$logging()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v8

    .line 271
    :goto_2
    instance-of v9, p2, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;

    if-eqz v9, :cond_3

    check-cast p2, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;

    invoke-virtual {p2}, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->getMeasurement$logging()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :cond_3
    move-object v9, v8

    const/16 v11, 0x100

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v8, p1

    .line 257
    invoke-direct/range {v1 .. v12}, Lcom/stripe/proto/api/gator/EventResultPb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/proto/api/gator/EventResultPb$Result;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v6, 0x17

    const/4 v7, 0x0

    move-object v4, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 256
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/gator/ProxyEventPb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/gator/EventResultPb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final buildTagStringsMap(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/loggingmodels/Tag;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 277
    check-cast p1, Ljava/lang/Iterable;

    const/16 v0, 0xa

    .line 304
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 305
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 306
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 307
    check-cast v0, Lcom/stripe/loggingmodels/Tag;

    .line 277
    invoke-virtual {v0}, Lcom/stripe/loggingmodels/Tag;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/stripe/loggingmodels/Tag;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private final submitMetric(Lcom/stripe/loggingmodels/Metric;Lcom/stripe/jvmcore/logging/MetricResult;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/DefaultMetricLogger;->batchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/logging/DefaultMetricLogger;->buildProxyEventPb(Lcom/stripe/loggingmodels/Metric;Lcom/stripe/jvmcore/logging/MetricResult;)Lcom/stripe/proto/api/gator/ProxyEventPb;

    move-result-object p1

    .line 244
    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->add(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public endTimedMetric(Lcom/stripe/loggingmodels/Metric;Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/loggingmodels/Metric;",
            "Lcom/stripe/loggingmodels/Outcome;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/loggingmodels/Tag;",
            ">;)J"
        }
    .end annotation

    const-string v0, "metric"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outcome"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/DefaultMetricLogger;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v0}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Metric;->getStartTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 100
    new-instance v2, Lcom/stripe/jvmcore/logging/MetricResult$TimedMetricResult;

    invoke-direct {v2, p2, p3, v0, v1}, Lcom/stripe/jvmcore/logging/MetricResult$TimedMetricResult;-><init>(Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;J)V

    check-cast v2, Lcom/stripe/jvmcore/logging/MetricResult;

    .line 98
    invoke-direct {p0, p1, v2}, Lcom/stripe/jvmcore/logging/DefaultMetricLogger;->submitMetric(Lcom/stripe/loggingmodels/Metric;Lcom/stripe/jvmcore/logging/MetricResult;)V

    return-wide v0
.end method

.method public init()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/DefaultMetricLogger;->batchDispatcher:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->init()V

    return-void
.end method

.method public recordCounterMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/stripe/loggingmodels/Outcome;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/loggingmodels/Tag;",
            ">;",
            "Lcom/stripe/loggingmodels/Outcome;",
            ")V"
        }
    .end annotation

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outcome"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    new-instance v1, Lcom/stripe/loggingmodels/Metric;

    .line 190
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/DefaultMetricLogger;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v0}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 185
    invoke-direct/range {v1 .. v7}, Lcom/stripe/loggingmodels/Metric;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)V

    .line 192
    new-instance p1, Lcom/stripe/jvmcore/logging/MetricResult$CounterMetricResult;

    .line 194
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 192
    invoke-direct {p1, p5, p2}, Lcom/stripe/jvmcore/logging/MetricResult$CounterMetricResult;-><init>(Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;)V

    check-cast p1, Lcom/stripe/jvmcore/logging/MetricResult;

    .line 184
    invoke-direct {p0, v1, p1}, Lcom/stripe/jvmcore/logging/DefaultMetricLogger;->submitMetric(Lcom/stripe/loggingmodels/Metric;Lcom/stripe/jvmcore/logging/MetricResult;)V

    return-void
.end method

.method public recordGaugeMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/stripe/loggingmodels/Outcome;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/loggingmodels/Tag;",
            ">;",
            "Lcom/stripe/loggingmodels/Outcome;",
            ")V"
        }
    .end annotation

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outcome"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    new-instance v1, Lcom/stripe/loggingmodels/Metric;

    .line 233
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/DefaultMetricLogger;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v0}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    .line 228
    invoke-direct/range {v1 .. v7}, Lcom/stripe/loggingmodels/Metric;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)V

    .line 235
    new-instance p1, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;

    .line 237
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 235
    invoke-direct {p1, p7, p2, p4, p5}, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;-><init>(Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;J)V

    check-cast p1, Lcom/stripe/jvmcore/logging/MetricResult;

    .line 227
    invoke-direct {p0, v1, p1}, Lcom/stripe/jvmcore/logging/DefaultMetricLogger;->submitMetric(Lcom/stripe/loggingmodels/Metric;Lcom/stripe/jvmcore/logging/MetricResult;)V

    return-void
.end method

.method public recordTimedMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/stripe/loggingmodels/Outcome;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/loggingmodels/Tag;",
            ">;",
            "Lcom/stripe/loggingmodels/Outcome;",
            ")V"
        }
    .end annotation

    move-wide v0, p4

    move-object/from16 v2, p7

    const-string v3, "domain"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "scope"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "event"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "tags"

    move-object/from16 v8, p6

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "outcome"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lcom/stripe/jvmcore/logging/DefaultMetricLogger;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v3}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v3

    sub-long v9, v3, v0

    .line 142
    new-instance v4, Lcom/stripe/loggingmodels/Metric;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/stripe/loggingmodels/Metric;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)V

    .line 149
    new-instance p1, Lcom/stripe/jvmcore/logging/MetricResult$TimedMetricResult;

    .line 151
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 149
    invoke-direct {p1, v2, p2, v0, v1}, Lcom/stripe/jvmcore/logging/MetricResult$TimedMetricResult;-><init>(Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;J)V

    check-cast p1, Lcom/stripe/jvmcore/logging/MetricResult;

    .line 141
    invoke-direct {p0, v4, p1}, Lcom/stripe/jvmcore/logging/DefaultMetricLogger;->submitMetric(Lcom/stripe/loggingmodels/Metric;Lcom/stripe/jvmcore/logging/MetricResult;)V

    return-void
.end method

.method public startTimedMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/stripe/loggingmodels/Metric;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/loggingmodels/Tag;",
            ">;)",
            "Lcom/stripe/loggingmodels/Metric;"
        }
    .end annotation

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v1, Lcom/stripe/loggingmodels/Metric;

    .line 77
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/DefaultMetricLogger;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v0}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 72
    invoke-direct/range {v1 .. v7}, Lcom/stripe/loggingmodels/Metric;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)V

    return-object v1
.end method
