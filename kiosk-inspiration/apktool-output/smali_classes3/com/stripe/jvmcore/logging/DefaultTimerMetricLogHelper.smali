.class public final Lcom/stripe/jvmcore/logging/DefaultTimerMetricLogHelper;
.super Ljava/lang/Object;
.source "TimerMetricLogHelper.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/TimerMetricLogHelper;


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
        "Ljava/lang/Object;",
        "Lcom/stripe/jvmcore/logging/TimerMetricLogHelper<",
        "TD;TDB;TS;TSB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0002*\u0014\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004*\u0014\u0008\u0002\u0010\u0005*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u0002*\u0014\u0008\u0003\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u00042\u001a\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\u00060\u0007B%\u0012\u001e\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\t\u00a2\u0006\u0002\u0010\nJ.\u0010\r\u001a\u00020\u000e2$\u0010\u000f\u001a \u0012\u001c\u0012\u001a\u0012\u0004\u0012\u00020\u0012\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140\u00130\u00110\u0010H\u0016JK\u0010\u0015\u001a\u00020\u000e2\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140\u00132-\u0010\u0017\u001a)\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u000e0\u0018j\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u0019`\u001a\u00a2\u0006\u0002\u0008\u001bH\u0016R&\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/DefaultTimerMetricLogHelper;",
        "D",
        "Lcom/squareup/wire/Message;",
        "DB",
        "Lcom/squareup/wire/Message$Builder;",
        "S",
        "SB",
        "Lcom/stripe/jvmcore/logging/TimerMetricLogHelper;",
        "logger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "(Lcom/stripe/jvmcore/logging/HealthLogger;)V",
        "openLog",
        "Lcom/stripe/jvmcore/logging/PendingTimer;",
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


# instance fields
.field private final logger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "TD;TDB;TS;TSB;>;"
        }
    .end annotation
.end field

.field private openLog:Lcom/stripe/jvmcore/logging/PendingTimer;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/HealthLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "TD;TDB;TS;TSB;>;)V"
        }
    .end annotation

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/DefaultTimerMetricLogHelper;->logger:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-void
.end method


# virtual methods
.method public closeLogHelper(Lkotlin/jvm/functions/Function0;)V
    .locals 8
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

    const-string v0, "outcomeAndTags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/stripe/jvmcore/logging/DefaultTimerMetricLogHelper;->openLog:Lcom/stripe/jvmcore/logging/PendingTimer;

    .line 59
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/loggingmodels/Outcome;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/util/Map;

    .line 60
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/DefaultTimerMetricLogHelper;->logger:Lcom/stripe/jvmcore/logging/HealthLogger;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/DefaultTimerMetricLogHelper;->openLog:Lcom/stripe/jvmcore/logging/PendingTimer;

    return-void
.end method

.method public openLogHelper(Ljava/util/Map;Lkotlin/jvm/functions/Function2;)V
    .locals 1
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

    const-string v0, "tags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventSetter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/DefaultTimerMetricLogHelper;->logger:Lcom/stripe/jvmcore/logging/HealthLogger;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/jvmcore/logging/HealthLogger;->startTimer(Ljava/util/Map;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/DefaultTimerMetricLogHelper;->openLog:Lcom/stripe/jvmcore/logging/PendingTimer;

    return-void
.end method
