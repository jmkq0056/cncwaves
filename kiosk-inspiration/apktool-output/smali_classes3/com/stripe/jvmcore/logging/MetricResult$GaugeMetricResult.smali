.class public final Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;
.super Lcom/stripe/jvmcore/logging/MetricResult;
.source "DefaultMetricLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/logging/MetricResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GaugeMetricResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J\u000e\u0010\u0012\u001a\u00020\u0008H\u00c0\u0003\u00a2\u0006\u0002\u0008\u0013J-\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u0014\u0010\u0007\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;",
        "Lcom/stripe/jvmcore/logging/MetricResult;",
        "outcome",
        "Lcom/stripe/loggingmodels/Outcome;",
        "tags",
        "",
        "Lcom/stripe/loggingmodels/Tag;",
        "measurement",
        "",
        "(Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;J)V",
        "getMeasurement$logging",
        "()J",
        "getOutcome",
        "()Lcom/stripe/loggingmodels/Outcome;",
        "getTags",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "component3$logging",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final measurement:J

.field private final outcome:Lcom/stripe/loggingmodels/Outcome;

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/loggingmodels/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/loggingmodels/Outcome;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/loggingmodels/Tag;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "outcome"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 301
    invoke-direct {p0, v0}, Lcom/stripe/jvmcore/logging/MetricResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 298
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->outcome:Lcom/stripe/loggingmodels/Outcome;

    .line 299
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->tags:Ljava/util/List;

    .line 300
    iput-wide p3, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->measurement:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;JILjava/lang/Object;)Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->outcome:Lcom/stripe/loggingmodels/Outcome;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->tags:Ljava/util/List;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-wide p3, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->measurement:J

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->copy(Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;J)Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/loggingmodels/Outcome;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->outcome:Lcom/stripe/loggingmodels/Outcome;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/loggingmodels/Tag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final component3$logging()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->measurement:J

    return-wide v0
.end method

.method public final copy(Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;J)Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/loggingmodels/Outcome;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/loggingmodels/Tag;",
            ">;J)",
            "Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;"
        }
    .end annotation

    const-string v0, "outcome"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;-><init>(Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->outcome:Lcom/stripe/loggingmodels/Outcome;

    iget-object v3, p1, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->outcome:Lcom/stripe/loggingmodels/Outcome;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->tags:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->tags:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->measurement:J

    iget-wide v5, p1, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->measurement:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getMeasurement$logging()J
    .locals 2

    .line 300
    iget-wide v0, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->measurement:J

    return-wide v0
.end method

.method public getOutcome()Lcom/stripe/loggingmodels/Outcome;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->outcome:Lcom/stripe/loggingmodels/Outcome;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/loggingmodels/Tag;",
            ">;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->tags:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->outcome:Lcom/stripe/loggingmodels/Outcome;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->tags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->measurement:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GaugeMetricResult(outcome="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->outcome:Lcom/stripe/loggingmodels/Outcome;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->tags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", measurement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;->measurement:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
