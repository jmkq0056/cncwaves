.class public final Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule;
.super Ljava/lang/Object;
.source "ExecutorSchedulerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule$Bindings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000eB\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J$\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000cH\u0007J$\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000cH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule;",
        "",
        "delayMs",
        "",
        "(J)V",
        "providesClientLoggerExecutorScheduler",
        "Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "executorService",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "providesExecutorScheduler",
        "Bindings",
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
.field private final delayMs:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule;->delayMs:J

    return-void
.end method

.method public synthetic constructor <init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 23
    invoke-static {}, Lcom/stripe/jvmcore/batchdispatcher/dagger/DispatcherContantsKt;->getDEFAULT_DISPATCH_INTERVAL_MILLIS()J

    move-result-wide p1

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final providesClientLoggerExecutorScheduler(Lcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;Lkotlinx/coroutines/CoroutineScope;)Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;
    .locals 7
    .param p2    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation runtime Lcom/stripe/jvmcore/dagger/LogUpload;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/AppScope;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/ClientLogger;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "logWriter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executorService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v1, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;

    .line 49
    iget-wide v2, p0, Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule;->delayMs:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 48
    invoke-direct/range {v1 .. v6}, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;-><init>(JLcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;Lkotlinx/coroutines/CoroutineScope;)V

    return-object v1
.end method

.method public final providesExecutorScheduler(Lcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;Lkotlinx/coroutines/CoroutineScope;)Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;
    .locals 7
    .param p2    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation runtime Lcom/stripe/jvmcore/dagger/LogUpload;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/AppScope;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "logWriter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executorService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v1, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;

    .line 33
    iget-wide v2, p0, Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule;->delayMs:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 32
    invoke-direct/range {v1 .. v6}, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;-><init>(JLcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;Lkotlinx/coroutines/CoroutineScope;)V

    return-object v1
.end method
