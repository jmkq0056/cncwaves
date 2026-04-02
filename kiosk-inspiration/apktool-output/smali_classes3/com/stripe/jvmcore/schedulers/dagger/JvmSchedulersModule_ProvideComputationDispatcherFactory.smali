.class public final Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideComputationDispatcherFactory;
.super Ljava/lang/Object;
.source "JvmSchedulersModule_ProvideComputationDispatcherFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideComputationDispatcherFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
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

.method public static create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideComputationDispatcherFactory;
    .locals 1

    .line 33
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideComputationDispatcherFactory$InstanceHolder;->access$000()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideComputationDispatcherFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideComputationDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 37
    sget-object v0, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule;->INSTANCE:Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule;->provideComputationDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideComputationDispatcherFactory;->get()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public get()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideComputationDispatcherFactory;->provideComputationDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method
