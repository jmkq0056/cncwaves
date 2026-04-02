.class public final Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;
.super Ljava/lang/Object;
.source "UsbReaderReconnector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$Companion;,
        Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ConnectionAttemptResult;,
        Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 32\u00020\u0001:\u0003345Bo\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\"\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0005j\u0002`\n\u0012\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u0002`\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0002\u0010\u0017J\n\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0002J\u0014\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 2\u0006\u0010\"\u001a\u00020#J \u0010$\u001a\u00020%*\u0008\u0012\u0004\u0012\u00020!0&2\u0006\u0010\'\u001a\u00020(H\u0082@\u00a2\u0006\u0002\u0010)J\u000c\u0010*\u001a\u00020+*\u00020\u001eH\u0002J\u001b\u0010,\u001a\u00020+*\u00020\u001e2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0002\u00a2\u0006\u0002\u0010/J\u0018\u00100\u001a\u000201*\u0008\u0012\u0004\u0012\u00020!0&H\u0082@\u00a2\u0006\u0002\u00102R\u0016\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u001aR*\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0005j\u0002`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u0002`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\u00020\u0019X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u001aR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u00066"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;",
        "",
        "readerStatusListener",
        "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
        "connectivityHealthLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;",
        "Lcom/stripe/stripeterminal/internal/common/log/UsbConnectivityHealthLogger;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "readerEventScheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "reconnectionMaxTimeoutInSeconds",
        "",
        "reconnectionMaxAttempts",
        "attemptDelayMillis",
        "",
        "(Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lio/reactivex/rxjava3/core/Scheduler;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V",
        "attemptDelay",
        "Lkotlin/time/Duration;",
        "J",
        "maxAttempts",
        "operationTimeout",
        "initializeHealthMetrics",
        "Lcom/stripe/jvmcore/logging/PendingTimer;",
        "reconnect",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;",
        "disconnectedReader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "attemptToReconnect",
        "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ConnectionAttemptResult;",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "usbReader",
        "Lcom/stripe/core/hardware/Reader;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "finalizeHealthMetricsForCancel",
        "",
        "finalizeHealthMetricsForResult",
        "reconnected",
        "",
        "(Lcom/stripe/jvmcore/logging/PendingTimer;Ljava/lang/Boolean;)V",
        "getReaderInfo",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "ConnectionAttemptResult",
        "ReconnectionEvent",
        "adapter_release"
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
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$Companion;

.field private static final DEFAULT_ATTEMPT_DELAY:J

.field public static final DEFAULT_RECONNECTION_MAX_ATTEMPTS:I = 0x4

.field private static final DEFAULT_RECONNECTION_TIMEOUT:J

.field public static final OUTCOME_TAG_KEY:Ljava/lang/String; = "reconnection_outcome"


# instance fields
.field private final attemptDelay:J

.field private final connectivityHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final maxAttempts:I

.field private final operationTimeout:J

.field private final readerEventScheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field private final readerStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->Companion:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$Companion;

    .line 204
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 v0, 0x1

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->DEFAULT_ATTEMPT_DELAY:J

    .line 205
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v0, 0x1e

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->DEFAULT_RECONNECTION_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lio/reactivex/rxjava3/core/Scheduler;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const-string v0, "readerStatusListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityHealthLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerEventScheduler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->readerStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    .line 34
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->connectivityHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 35
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 36
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->readerEventScheduler:Lio/reactivex/rxjava3/core/Scheduler;

    if-eqz p5, :cond_0

    .line 41
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p1, p2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    sget-wide p1, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->DEFAULT_RECONNECTION_TIMEOUT:J

    :goto_0
    iput-wide p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->operationTimeout:J

    if-eqz p6, :cond_1

    .line 42
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    :goto_1
    iput p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->maxAttempts:I

    if-eqz p7, :cond_2

    .line 43
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sget-object p3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p1, p2, p3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide p1

    goto :goto_2

    :cond_2
    sget-wide p1, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->DEFAULT_ATTEMPT_DELAY:J

    :goto_2
    iput-wide p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->attemptDelay:J

    return-void
.end method

.method public static final synthetic access$attemptToReconnect(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->attemptToReconnect(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$finalizeHealthMetricsForCancel(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;Lcom/stripe/jvmcore/logging/PendingTimer;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->finalizeHealthMetricsForCancel(Lcom/stripe/jvmcore/logging/PendingTimer;)V

    return-void
.end method

.method public static final synthetic access$finalizeHealthMetricsForResult(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;Lcom/stripe/jvmcore/logging/PendingTimer;Ljava/lang/Boolean;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->finalizeHealthMetricsForResult(Lcom/stripe/jvmcore/logging/PendingTimer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic access$getAttemptDelay$p(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->attemptDelay:J

    return-wide v0
.end method

.method public static final synthetic access$getDEFAULT_ATTEMPT_DELAY$cp()J
    .locals 2

    .line 32
    sget-wide v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->DEFAULT_ATTEMPT_DELAY:J

    return-wide v0
.end method

.method public static final synthetic access$getDEFAULT_RECONNECTION_TIMEOUT$cp()J
    .locals 2

    .line 32
    sget-wide v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->DEFAULT_RECONNECTION_TIMEOUT:J

    return-wide v0
.end method

.method public static final synthetic access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-object p0
.end method

.method public static final synthetic access$getMaxAttempts$p(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->maxAttempts:I

    return p0
.end method

.method public static final synthetic access$getOperationTimeout$p(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->operationTimeout:J

    return-wide v0
.end method

.method public static final synthetic access$getReaderInfo(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->getReaderInfo(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initializeHealthMetrics(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;)Lcom/stripe/jvmcore/logging/PendingTimer;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->initializeHealthMetrics()Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object p0

    return-object p0
.end method

.method private final attemptToReconnect(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;",
            ">;",
            "Lcom/stripe/core/hardware/Reader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ConnectionAttemptResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$1;

    iget v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$1;

    invoke-direct {v0, p0, p3}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 157
    iget v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 167
    sget-object p3, Lcom/stripe/core/hardware/reactive/RxJavaHelper;->INSTANCE:Lcom/stripe/core/hardware/reactive/RxJavaHelper;

    const/4 v2, 0x2

    .line 161
    new-array v2, v2, [Lio/reactivex/rxjava3/core/ObservableSource;

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->readerStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    invoke-virtual {v4}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderConnectObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    sget-object v5, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$2;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$2;

    check-cast v5, Lio/reactivex/rxjava3/functions/Function;

    invoke-virtual {v4, v5}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 162
    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->readerStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    invoke-virtual {v4}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderDisconnectObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    .line 165
    sget-object v5, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$3;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$3;

    check-cast v5, Lio/reactivex/rxjava3/functions/Predicate;

    invoke-virtual {v4, v5}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    .line 166
    sget-object v5, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$4;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$4;

    check-cast v5, Lio/reactivex/rxjava3/functions/Function;

    invoke-virtual {v4, v5}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 160
    invoke-static {v2}, Lio/reactivex/rxjava3/core/Observable;->ambArray([Lio/reactivex/rxjava3/core/ObservableSource;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string v4, "ambArray(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->readerEventScheduler:Lio/reactivex/rxjava3/core/Scheduler;

    new-instance v5, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$5;

    const/4 v6, 0x0

    invoke-direct {v5, p1, p2, v6}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$5;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iput v3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$attemptToReconnect$1;->label:I

    invoke-virtual {p3, v2, v4, v5, v0}, Lcom/stripe/core/hardware/reactive/RxJavaHelper;->awaitFirstWithBlock(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Scheduler;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 160
    :cond_3
    :goto_1
    const-string p1, "awaitFirstWithBlock(...)"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p3
.end method

.method private final finalizeHealthMetricsForCancel(Lcom/stripe/jvmcore/logging/PendingTimer;)V
    .locals 7

    .line 141
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->connectivityHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v1, Lcom/stripe/loggingmodels/Outcome$GenericError;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$GenericError;

    move-object v2, v1

    check-cast v2, Lcom/stripe/loggingmodels/Outcome;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private final finalizeHealthMetricsForResult(Lcom/stripe/jvmcore/logging/PendingTimer;Ljava/lang/Boolean;)V
    .locals 19

    move-object/from16 v0, p0

    .line 145
    const-string v1, "reconnection_outcome"

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 146
    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v4, "Reconnect timed out"

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v3, v4, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 147
    iget-object v5, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->connectivityHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v2, Lcom/stripe/loggingmodels/Outcome$GenericError;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$GenericError;

    move-object v7, v2

    check-cast v7, Lcom/stripe/loggingmodels/Outcome;

    const-string v2, "hit_timeout"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v11}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    .line 148
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v4, "Reconnect succeeded"

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v3, v4, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 150
    iget-object v12, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->connectivityHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v2, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    move-object v14, v2

    check-cast v14, Lcom/stripe/loggingmodels/Outcome;

    const-string v2, "reconnected"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v15

    const/16 v17, 0x8

    const/16 v18, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p1

    invoke-static/range {v12 .. v18}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    .line 152
    :cond_1
    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v4, "Reconnect exceeded max attempts"

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v3, v4, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 153
    iget-object v12, v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->connectivityHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v2, Lcom/stripe/loggingmodels/Outcome$GenericError;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$GenericError;

    move-object v14, v2

    check-cast v14, Lcom/stripe/loggingmodels/Outcome;

    const-string v2, "hit_max_retries"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v15

    const/16 v17, 0x8

    const/16 v18, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p1

    invoke-static/range {v12 .. v18}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private final getReaderInfo(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/stripe/core/hardware/reactive/RxJavaHelper;->INSTANCE:Lcom/stripe/core/hardware/reactive/RxJavaHelper;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->readerStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    invoke-virtual {v1}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderInfoObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->readerEventScheduler:Lio/reactivex/rxjava3/core/Scheduler;

    new-instance v3, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$getReaderInfo$2;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$getReaderInfo$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/stripe/core/hardware/reactive/RxJavaHelper;->awaitFirstWithBlock(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Scheduler;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final initializeHealthMetrics()Lcom/stripe/jvmcore/logging/PendingTimer;
    .locals 3

    const/4 v0, 0x3

    .line 133
    new-array v0, v0, [Lkotlin/Pair;

    iget-wide v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->operationTimeout:J

    invoke-static {v1, v2}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "maxTimeoutInSeconds"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 134
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->maxAttempts:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "maxAttempts"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 135
    iget-wide v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->attemptDelay:J

    invoke-static {v1, v2}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "attemptDelay"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 132
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;->connectivityHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$initializeHealthMetrics$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$initializeHealthMetrics$1;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v1, v0, v2}, Lcom/stripe/jvmcore/logging/HealthLogger;->startTimer(Ljava/util/Map;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final reconnect(Lcom/stripe/stripeterminal/external/models/Reader;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$ReconnectionEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "disconnectedReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector$reconnect$1;-><init>(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/internal/common/adapter/connection/UsbReaderReconnector;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method
