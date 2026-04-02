.class public final Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;
.super Ljava/lang/Object;
.source "CoroutineScheduler.kt"

# interfaces
.implements Lcom/stripe/jvmcore/batchdispatcher/Scheduler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;",
        "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
        "delayMillis",
        "",
        "workScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "main",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "(JLkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/logwriter/LogWriter;)V",
        "callback",
        "Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;",
        "job",
        "Lkotlinx/coroutines/Job;",
        "launchDelayJob",
        "scheduleNext",
        "",
        "batchdispatcher"
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
.field private callback:Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;

.field private final delayMillis:J

.field private job:Lkotlinx/coroutines/Job;

.field private final logWriter:Lcom/stripe/logwriter/LogWriter;

.field private final main:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final workScope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(JLkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/logwriter/LogWriter;)V
    .locals 1

    const-string v0, "workScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "main"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;->delayMillis:J

    .line 16
    iput-object p3, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;->workScope:Lkotlinx/coroutines/CoroutineScope;

    .line 17
    iput-object p4, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;->main:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 18
    iput-object p5, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;->logWriter:Lcom/stripe/logwriter/LogWriter;

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;)Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;->callback:Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;

    return-object p0
.end method

.method public static final synthetic access$getDelayMillis$p(Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;)J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;->delayMillis:J

    return-wide v0
.end method

.method public static final synthetic access$getLogWriter$p(Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;)Lcom/stripe/logwriter/LogWriter;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;->logWriter:Lcom/stripe/logwriter/LogWriter;

    return-object p0
.end method

.method public static final synthetic access$setCallback$p(Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;->callback:Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;

    return-void
.end method

.method public static final synthetic access$setJob$p(Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final launchDelayJob()Lkotlinx/coroutines/Job;
    .locals 6

    .line 34
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;->workScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;->main:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler$launchDelayJob$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler$launchDelayJob$1;-><init>(Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;Lkotlin/coroutines/Continuation;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized scheduleNext(Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;->callback:Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;

    if-eqz v0, :cond_0

    .line 27
    iget-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;->logWriter:Lcom/stripe/logwriter/LogWriter;

    invoke-static {}, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineSchedulerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "access$getTAG$p(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Already scheduled, not scheduling again."

    invoke-interface {p1, v0, v1}, Lcom/stripe/logwriter/LogWriter;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    .line 30
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;->callback:Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;

    .line 31
    invoke-direct {p0}, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;->launchDelayJob()Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;->job:Lkotlinx/coroutines/Job;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
