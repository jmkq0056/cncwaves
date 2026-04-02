.class public final Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideAppScopeFactory;
.super Ljava/lang/Object;
.source "JvmSchedulersModule_ProvideAppScopeFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lkotlinx/coroutines/CoroutineScope;",
        ">;"
    }
.end annotation


# instance fields
.field private final ioDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideAppScopeFactory;->ioDispatcherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideAppScopeFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;)",
            "Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideAppScopeFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideAppScopeFactory;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideAppScopeFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideAppScope(Lkotlinx/coroutines/CoroutineDispatcher;)Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 50
    sget-object v0, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule;->INSTANCE:Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule;

    invoke-virtual {v0, p0}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule;->provideAppScope(Lkotlinx/coroutines/CoroutineDispatcher;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideAppScopeFactory;->get()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public get()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideAppScopeFactory;->ioDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v0}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideAppScopeFactory;->provideAppScope(Lkotlinx/coroutines/CoroutineDispatcher;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method
