.class public final Lcom/stripe/jvmcore/logging/PendingTimer;
.super Ljava/lang/Object;
.source "HealthLogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\u0003H\u00c0\u0003\u00a2\u0006\u0002\u0008\u0008J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/PendingTimer;",
        "",
        "metric",
        "Lcom/stripe/loggingmodels/Metric;",
        "(Lcom/stripe/loggingmodels/Metric;)V",
        "getMetric$logging",
        "()Lcom/stripe/loggingmodels/Metric;",
        "component1",
        "component1$logging",
        "copy",
        "equals",
        "",
        "other",
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
.field private final metric:Lcom/stripe/loggingmodels/Metric;


# direct methods
.method public constructor <init>(Lcom/stripe/loggingmodels/Metric;)V
    .locals 1

    const-string v0, "metric"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/PendingTimer;->metric:Lcom/stripe/loggingmodels/Metric;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Metric;ILjava/lang/Object;)Lcom/stripe/jvmcore/logging/PendingTimer;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/jvmcore/logging/PendingTimer;->metric:Lcom/stripe/loggingmodels/Metric;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/logging/PendingTimer;->copy(Lcom/stripe/loggingmodels/Metric;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1$logging()Lcom/stripe/loggingmodels/Metric;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/PendingTimer;->metric:Lcom/stripe/loggingmodels/Metric;

    return-object v0
.end method

.method public final copy(Lcom/stripe/loggingmodels/Metric;)Lcom/stripe/jvmcore/logging/PendingTimer;
    .locals 1

    const-string v0, "metric"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/jvmcore/logging/PendingTimer;

    invoke-direct {v0, p1}, Lcom/stripe/jvmcore/logging/PendingTimer;-><init>(Lcom/stripe/loggingmodels/Metric;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/jvmcore/logging/PendingTimer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/jvmcore/logging/PendingTimer;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/PendingTimer;->metric:Lcom/stripe/loggingmodels/Metric;

    iget-object p1, p1, Lcom/stripe/jvmcore/logging/PendingTimer;->metric:Lcom/stripe/loggingmodels/Metric;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getMetric$logging()Lcom/stripe/loggingmodels/Metric;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/PendingTimer;->metric:Lcom/stripe/loggingmodels/Metric;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/PendingTimer;->metric:Lcom/stripe/loggingmodels/Metric;

    invoke-virtual {v0}, Lcom/stripe/loggingmodels/Metric;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PendingTimer(metric="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/PendingTimer;->metric:Lcom/stripe/loggingmodels/Metric;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
