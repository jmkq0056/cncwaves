.class public final Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule_ProvideReaderInfoRepositoryFactory;
.super Ljava/lang/Object;
.source "ReaderInfoModule_ProvideReaderInfoRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;",
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

.field private final ioProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final readerInfoHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule_ProvideReaderInfoRepositoryFactory;->appScopeProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p2, p0, Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule_ProvideReaderInfoRepositoryFactory;->ioProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p3, p0, Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule_ProvideReaderInfoRepositoryFactory;->readerInfoHandlerProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule_ProvideReaderInfoRepositoryFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule_ProvideReaderInfoRepositoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule_ProvideReaderInfoRepositoryFactory;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule_ProvideReaderInfoRepositoryFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule_ProvideReaderInfoRepositoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideReaderInfoRepository(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;
    .locals 1

    .line 67
    sget-object v0, Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule;->INSTANCE:Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule;->provideReaderInfoRepository(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule_ProvideReaderInfoRepositoryFactory;->appScopeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule_ProvideReaderInfoRepositoryFactory;->ioProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v2, p0, Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule_ProvideReaderInfoRepositoryFactory;->readerInfoHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;

    iget-object v3, p0, Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule_ProvideReaderInfoRepositoryFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule_ProvideReaderInfoRepositoryFactory;->provideReaderInfoRepository(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule_ProvideReaderInfoRepositoryFactory;->get()Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;

    move-result-object v0

    return-object v0
.end method
