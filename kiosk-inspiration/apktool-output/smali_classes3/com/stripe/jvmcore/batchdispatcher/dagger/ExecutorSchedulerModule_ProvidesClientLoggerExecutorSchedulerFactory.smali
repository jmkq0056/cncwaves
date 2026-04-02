.class public final Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule_ProvidesClientLoggerExecutorSchedulerFactory;
.super Ljava/lang/Object;
.source "ExecutorSchedulerModule_ProvidesClientLoggerExecutorSchedulerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;",
        ">;"
    }
.end annotation


# instance fields
.field private final executorServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final logWriterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule;

.field private final scopeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule_ProvidesClientLoggerExecutorSchedulerFactory;->module:Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule;

    .line 48
    iput-object p2, p0, Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule_ProvidesClientLoggerExecutorSchedulerFactory;->logWriterProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p3, p0, Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule_ProvidesClientLoggerExecutorSchedulerFactory;->executorServiceProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule_ProvidesClientLoggerExecutorSchedulerFactory;->scopeProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule_ProvidesClientLoggerExecutorSchedulerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;)",
            "Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule_ProvidesClientLoggerExecutorSchedulerFactory;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule_ProvidesClientLoggerExecutorSchedulerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule_ProvidesClientLoggerExecutorSchedulerFactory;-><init>(Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesClientLoggerExecutorScheduler(Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule;Lcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;Lkotlinx/coroutines/CoroutineScope;)Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule;->providesClientLoggerExecutorScheduler(Lcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;Lkotlinx/coroutines/CoroutineScope;)Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule_ProvidesClientLoggerExecutorSchedulerFactory;->module:Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule;

    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule_ProvidesClientLoggerExecutorSchedulerFactory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/logwriter/LogWriter;

    iget-object v2, p0, Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule_ProvidesClientLoggerExecutorSchedulerFactory;->executorServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule_ProvidesClientLoggerExecutorSchedulerFactory;->scopeProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule_ProvidesClientLoggerExecutorSchedulerFactory;->providesClientLoggerExecutorScheduler(Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule;Lcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;Lkotlinx/coroutines/CoroutineScope;)Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/jvmcore/batchdispatcher/dagger/ExecutorSchedulerModule_ProvidesClientLoggerExecutorSchedulerFactory;->get()Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;

    move-result-object v0

    return-object v0
.end method
