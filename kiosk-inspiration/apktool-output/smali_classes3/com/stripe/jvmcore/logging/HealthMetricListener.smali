.class public interface abstract Lcom/stripe/jvmcore/logging/HealthMetricListener;
.super Ljava/lang/Object;
.source "HealthLogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J]\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H&\u00a2\u0006\u0002\u0010\u0012\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0013\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/HealthMetricListener;",
        "",
        "onHealthMetricLogged",
        "",
        "domain",
        "",
        "scope",
        "event",
        "type",
        "Lcom/stripe/jvmcore/logging/MetricType;",
        "value",
        "",
        "tags",
        "",
        "outcome",
        "Lcom/stripe/loggingmodels/Outcome;",
        "cause",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/jvmcore/logging/MetricType;Ljava/lang/Long;Ljava/util/Map;Lcom/stripe/loggingmodels/Outcome;Ljava/lang/Throwable;)V",
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


# virtual methods
.method public abstract onHealthMetricLogged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/jvmcore/logging/MetricType;Ljava/lang/Long;Ljava/util/Map;Lcom/stripe/loggingmodels/Outcome;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/jvmcore/logging/MetricType;",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/loggingmodels/Outcome;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method
