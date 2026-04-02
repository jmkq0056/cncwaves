.class public final Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;
.super Ljava/lang/Object;
.source "ReaderBatteryInfoPoller.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderBatteryInfoPoller.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderBatteryInfoPoller.kt\ncom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,73:1\n16#2:74\n*S KotlinDebug\n*F\n+ 1 ReaderBatteryInfoPoller.kt\ncom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller\n*L\n33#1:74\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB!\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015J\u0014\u0010\u0017\u001a\u00020\u00152\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0019R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\u000c\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u0002`\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;",
        "",
        "io",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "lastPollingJobPausedTimeInMillis",
        "",
        "Ljava/lang/Long;",
        "lastReceivedCommandTimeInMillis",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "pollingJob",
        "Lkotlinx/coroutines/Job;",
        "endPolling",
        "",
        "pausePolling",
        "startPolling",
        "requestReaderBatteryInfo",
        "Lkotlin/Function0;",
        "Companion",
        "common_publish"
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
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller$Companion;

.field private static final POLLING_DELAY:J


# instance fields
.field private final clock:Lcom/stripe/time/Clock;

.field private final io:Lkotlinx/coroutines/CoroutineDispatcher;

.field private lastPollingJobPausedTimeInMillis:Ljava/lang/Long;

.field private lastReceivedCommandTimeInMillis:Ljava/lang/Long;

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

.field private pollingJob:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->Companion:Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller$Companion;

    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->POLLING_DELAY:J

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "io"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->io:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 21
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->clock:Lcom/stripe/time/Clock;

    .line 74
    const-class p1, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method public static final synthetic access$getClock$p(Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;)Lcom/stripe/time/Clock;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->clock:Lcom/stripe/time/Clock;

    return-object p0
.end method

.method public static final synthetic access$getLastPollingJobPausedTimeInMillis$p(Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;)Ljava/lang/Long;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->lastPollingJobPausedTimeInMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public static final synthetic access$getLastReceivedCommandTimeInMillis$p(Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;)Ljava/lang/Long;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->lastReceivedCommandTimeInMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public static final synthetic access$getPOLLING_DELAY$cp()J
    .locals 2

    .line 18
    sget-wide v0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->POLLING_DELAY:J

    return-wide v0
.end method

.method public static final synthetic access$setLastPollingJobPausedTimeInMillis$p(Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;Ljava/lang/Long;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->lastPollingJobPausedTimeInMillis:Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic access$setLastReceivedCommandTimeInMillis$p(Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;Ljava/lang/Long;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->lastReceivedCommandTimeInMillis:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final endPolling()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "ReaderBatteryInfoPoller endPolling"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->lastReceivedCommandTimeInMillis:Ljava/lang/Long;

    .line 69
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->lastPollingJobPausedTimeInMillis:Ljava/lang/Long;

    .line 70
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->pollingJob:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final pausePolling()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "ReaderBatteryInfoPoller pausePolling"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 62
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v0}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->lastPollingJobPausedTimeInMillis:Ljava/lang/Long;

    .line 63
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->pollingJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final startPolling(Lkotlin/jvm/functions/Function0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "requestReaderBatteryInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "ReaderBatteryInfoPoller startPolling"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 37
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->pollingJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->io:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller$startPolling$1;

    invoke-direct {v0, p0, p1, v2}, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller$startPolling$1;-><init>(Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;->pollingJob:Lkotlinx/coroutines/Job;

    return-void
.end method
