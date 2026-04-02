.class public interface abstract Lcom/stripe/loggingmodels/MetricLogger;
.super Ljava/lang/Object;
.source "MetricLogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH&J\u0008\u0010\u000b\u001a\u00020\u000cH&J:\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H&JB\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H&JB\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H&J0\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0017\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/MetricLogger;",
        "",
        "endTimedMetric",
        "",
        "metric",
        "Lcom/stripe/loggingmodels/Metric;",
        "outcome",
        "Lcom/stripe/loggingmodels/Outcome;",
        "tags",
        "",
        "Lcom/stripe/loggingmodels/Tag;",
        "init",
        "",
        "recordCounterMetric",
        "domain",
        "",
        "scope",
        "event",
        "recordGaugeMetric",
        "measurement",
        "recordTimedMetric",
        "durationMillis",
        "startTimedMetric",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic endTimedMetric$default(Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/Metric;Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;ILjava/lang/Object;)J
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 66
    sget-object p2, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    check-cast p2, Lcom/stripe/loggingmodels/Outcome;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 67
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 64
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/stripe/loggingmodels/MetricLogger;->endTimedMetric(Lcom/stripe/loggingmodels/Metric;Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;)J

    move-result-wide p0

    return-wide p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: endTimedMetric"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic recordCounterMetric$default(Lcom/stripe/loggingmodels/MetricLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/stripe/loggingmodels/Outcome;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 126
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 127
    sget-object p4, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    move-object p5, p4

    check-cast p5, Lcom/stripe/loggingmodels/Outcome;

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 122
    invoke-interface/range {v0 .. v5}, Lcom/stripe/loggingmodels/MetricLogger;->recordCounterMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/stripe/loggingmodels/Outcome;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: recordCounterMetric"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic recordGaugeMetric$default(Lcom/stripe/loggingmodels/MetricLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/stripe/loggingmodels/Outcome;ILjava/lang/Object;)V
    .locals 8

    if-nez p9, :cond_2

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p6

    :cond_0
    move-object v6, p6

    and-int/lit8 p6, p8, 0x20

    if-eqz p6, :cond_1

    .line 156
    sget-object p6, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    check-cast p6, Lcom/stripe/loggingmodels/Outcome;

    move-object v7, p6

    goto :goto_0

    :cond_1
    move-object v7, p7

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 150
    invoke-interface/range {v0 .. v7}, Lcom/stripe/loggingmodels/MetricLogger;->recordGaugeMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/stripe/loggingmodels/Outcome;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: recordGaugeMetric"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic recordTimedMetric$default(Lcom/stripe/loggingmodels/MetricLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/stripe/loggingmodels/Outcome;ILjava/lang/Object;)V
    .locals 8

    if-nez p9, :cond_2

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p6

    :cond_0
    move-object v6, p6

    and-int/lit8 p6, p8, 0x20

    if-eqz p6, :cond_1

    .line 99
    sget-object p6, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    check-cast p6, Lcom/stripe/loggingmodels/Outcome;

    move-object v7, p6

    goto :goto_0

    :cond_1
    move-object v7, p7

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 93
    invoke-interface/range {v0 .. v7}, Lcom/stripe/loggingmodels/MetricLogger;->recordTimedMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/stripe/loggingmodels/Outcome;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: recordTimedMetric"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic startTimedMetric$default(Lcom/stripe/loggingmodels/MetricLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/stripe/loggingmodels/Metric;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 50
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    .line 46
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/stripe/loggingmodels/MetricLogger;->startTimedMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/stripe/loggingmodels/Metric;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startTimedMetric"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract endTimedMetric(Lcom/stripe/loggingmodels/Metric;Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;)J
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
.end method

.method public abstract init()V
.end method

.method public abstract recordCounterMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/stripe/loggingmodels/Outcome;)V
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
.end method

.method public abstract recordGaugeMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/stripe/loggingmodels/Outcome;)V
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
.end method

.method public abstract recordTimedMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/stripe/loggingmodels/Outcome;)V
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
.end method

.method public abstract startTimedMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/stripe/loggingmodels/Metric;
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
.end method
