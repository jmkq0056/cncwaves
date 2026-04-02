.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateDispatcherFactory;
.super Ljava/lang/Object;
.source "TerminalModule_ProvideUpdateDispatcherFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateDispatcherFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    .line 39
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateDispatcherFactory;->executorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateDispatcherFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateDispatcherFactory;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateDispatcherFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateDispatcherFactory;-><init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideUpdateDispatcher(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/dagger/TerminalModule;->provideUpdateDispatcher(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateDispatcherFactory;->get()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public get()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateDispatcherFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateDispatcherFactory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateDispatcherFactory;->provideUpdateDispatcher(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    return-object v0
.end method
