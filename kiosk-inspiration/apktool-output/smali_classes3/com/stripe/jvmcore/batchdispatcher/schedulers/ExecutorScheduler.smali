.class public final Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;
.super Ljava/lang/Object;
.source "ExecutorScheduler.kt"

# interfaces
.implements Lcom/stripe/jvmcore/batchdispatcher/Scheduler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExecutorScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExecutorScheduler.kt\ncom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,55:1\n1#2:56\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u000c\u0010\u0011\u001a\u00020\r*\u00020\u0010H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;",
        "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
        "delayMillis",
        "",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "executorService",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(JLcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;Lkotlinx/coroutines/CoroutineScope;)V",
        "future",
        "Ljava/util/concurrent/ScheduledFuture;",
        "",
        "scheduleNext",
        "callback",
        "Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;",
        "flushSync",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final delayMillis:J

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private future:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final logWriter:Lcom/stripe/logwriter/LogWriter;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public static synthetic $r8$lambda$ihVXBloEZRQGSDfDlZ5VBnJEcCE(Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;->scheduleNext$lambda$1(Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;->Companion:Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler$Companion;

    .line 52
    const-string v0, "ExecutorScheduler"

    sput-object v0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const-string v0, "logWriter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executorService"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;->delayMillis:J

    .line 22
    iput-object p3, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;->logWriter:Lcom/stripe/logwriter/LogWriter;

    .line 23
    iput-object p4, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    iput-object p5, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic access$setFuture$p(Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;->future:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private final flushSync(Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;)V
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler$flushSync$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler$flushSync$1;-><init>(Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private static final scheduleNext$lambda$1(Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;)Lkotlin/Unit;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;->flushSync(Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public scheduleNext(Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;)V
    .locals 4

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;->logWriter:Lcom/stripe/logwriter/LogWriter;

    sget-object v0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;->TAG:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Already scheduled, not scheduling again."

    invoke-interface {p1, v0, v1}, Lcom/stripe/logwriter/LogWriter;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;)V

    .line 38
    iget-wide v2, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;->delayMillis:J

    .line 39
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 36
    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;->future:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
