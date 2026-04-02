.class public final Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory;
.super Ljava/lang/Object;
.source "CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;",
        ">;"
    }
.end annotation


# instance fields
.field private final appScopeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
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

.field private final mainProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory;->module:Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;

    .line 47
    iput-object p2, p0, Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory;->logWriterProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory;->appScopeProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory;->mainProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;)",
            "Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory;-><init>(Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideClientLoggerScheduler(Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/logwriter/LogWriter;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;
    .locals 0

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;->provideClientLoggerScheduler(Lcom/stripe/logwriter/LogWriter;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory;->module:Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;

    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/logwriter/LogWriter;

    iget-object v2, p0, Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory;->appScopeProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory;->mainProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory;->provideClientLoggerScheduler(Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/logwriter/LogWriter;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory;->get()Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;

    move-result-object v0

    return-object v0
.end method
