.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTransactionSchedulerFactory;
.super Ljava/lang/Object;
.source "TerminalModule_ProvideTransactionSchedulerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        ">;"
    }
.end annotation


# instance fields
.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/stripeterminal/dagger/TerminalModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTransactionSchedulerFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    .line 36
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTransactionSchedulerFactory;->executorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTransactionSchedulerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTransactionSchedulerFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTransactionSchedulerFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTransactionSchedulerFactory;-><init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTransactionScheduler(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljava/util/concurrent/ExecutorService;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/dagger/TerminalModule;->provideTransactionScheduler(Ljava/util/concurrent/ExecutorService;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method


# virtual methods
.method public get()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTransactionSchedulerFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTransactionSchedulerFactory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTransactionSchedulerFactory;->provideTransactionScheduler(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljava/util/concurrent/ExecutorService;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTransactionSchedulerFactory;->get()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    return-object v0
.end method
