.class abstract Lcom/stripe/jvmcore/logging/MetricResult;
.super Ljava/lang/Object;
.source "DefaultMetricLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/MetricResult$CounterMetricResult;,
        Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;,
        Lcom/stripe/jvmcore/logging/MetricResult$TimedMetricResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00082\u0018\u00002\u00020\u0001:\u0003\u000c\r\u000eB\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u0082\u0001\u0003\u000f\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/MetricResult;",
        "",
        "()V",
        "outcome",
        "Lcom/stripe/loggingmodels/Outcome;",
        "getOutcome",
        "()Lcom/stripe/loggingmodels/Outcome;",
        "tags",
        "",
        "Lcom/stripe/loggingmodels/Tag;",
        "getTags",
        "()Ljava/util/List;",
        "CounterMetricResult",
        "GaugeMetricResult",
        "TimedMetricResult",
        "Lcom/stripe/jvmcore/logging/MetricResult$CounterMetricResult;",
        "Lcom/stripe/jvmcore/logging/MetricResult$GaugeMetricResult;",
        "Lcom/stripe/jvmcore/logging/MetricResult$TimedMetricResult;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/jvmcore/logging/MetricResult;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOutcome()Lcom/stripe/loggingmodels/Outcome;
.end method

.method public abstract getTags()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/loggingmodels/Tag;",
            ">;"
        }
    .end annotation
.end method
