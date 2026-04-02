.class public final Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoSchedulerFactory;
.super Ljava/lang/Object;
.source "JvmSchedulersModule_ProvideIoSchedulerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoSchedulerFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoSchedulerFactory;
    .locals 1

    .line 33
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoSchedulerFactory$InstanceHolder;->access$000()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoSchedulerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideIoScheduler()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 37
    sget-object v0, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule;->INSTANCE:Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule;->provideIoScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/core/Scheduler;

    return-object v0
.end method


# virtual methods
.method public get()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoSchedulerFactory;->provideIoScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoSchedulerFactory;->get()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    return-object v0
.end method
