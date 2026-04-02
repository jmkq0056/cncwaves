.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateSchedulerFactory;
.super Ljava/lang/Object;
.source "TerminalModule_ProvideUpdateSchedulerFactory.java"

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
.field private final module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

.field private final schedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateSchedulerFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    .line 38
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateSchedulerFactory;->schedulerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateSchedulerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateSchedulerFactory;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateSchedulerFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateSchedulerFactory;-><init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideUpdateScheduler(Lcom/stripe/stripeterminal/dagger/TerminalModule;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/dagger/TerminalModule;->provideUpdateScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method


# virtual methods
.method public get()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateSchedulerFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateSchedulerFactory;->schedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/rxjava3/core/Scheduler;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateSchedulerFactory;->provideUpdateScheduler(Lcom/stripe/stripeterminal/dagger/TerminalModule;Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateSchedulerFactory;->get()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    return-object v0
.end method
