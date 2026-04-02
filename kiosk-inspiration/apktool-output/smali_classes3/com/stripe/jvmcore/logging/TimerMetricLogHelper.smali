.class public interface abstract Lcom/stripe/jvmcore/logging/TimerMetricLogHelper;
.super Ljava/lang/Object;
.source "TimerMetricLogHelper.kt"


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
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u0000*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0002*\u0014\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004*\u0014\u0008\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u0002*\u0014\u0008\u0003\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u00042\u00020\u0007J.\u0010\u0008\u001a\u00020\t2$\u0010\n\u001a \u0012\u001c\u0012\u001a\u0012\u0004\u0012\u00020\r\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000e0\u000c0\u000bH&JM\u0010\u0010\u001a\u00020\t2\u0014\u0008\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000e2-\u0010\u0012\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\t0\u0013j\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u0014`\u0015\u00a2\u0006\u0002\u0008\u0016H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0017\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/TimerMetricLogHelper;",
        "D",
        "Lcom/squareup/wire/Message;",
        "DB",
        "Lcom/squareup/wire/Message$Builder;",
        "S",
        "SB",
        "",
        "closeLogHelper",
        "",
        "outcomeAndTags",
        "Lkotlin/Function0;",
        "Lkotlin/Pair;",
        "Lcom/stripe/loggingmodels/Outcome;",
        "",
        "",
        "openLogHelper",
        "tags",
        "eventSetter",
        "Lkotlin/Function2;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
        "Lcom/stripe/jvmcore/logging/EventSetter;",
        "Lkotlin/ExtensionFunctionType;",
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
.method public static synthetic openLogHelper$default(Lcom/stripe/jvmcore/logging/TimerMetricLogHelper;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 24
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 23
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/stripe/jvmcore/logging/TimerMetricLogHelper;->openLogHelper(Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: openLogHelper"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract closeLogHelper(Lkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lcom/stripe/loggingmodels/Outcome;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation
.end method

.method public abstract openLogHelper(Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TSB;-",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
