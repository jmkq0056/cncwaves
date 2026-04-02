.class public final Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory;
.super Ljava/lang/Object;
.source "ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final apiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;",
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

.field private final isNetworkAvailableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory;->module:Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;

    .line 49
    iput-object p2, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory;->apiProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p3, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory;->ioProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p4, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory;->isNetworkAvailableProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory;-><init>(Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesClientLoggerObservabilityDataDispatcher(Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;",
            "Ldagger/Lazy<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;",
            ">;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;->providesClientLoggerObservabilityDataDispatcher(Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory;->module:Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;

    iget-object v1, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory;->apiProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory;->ioProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v3, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory;->isNetworkAvailableProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory;->providesClientLoggerObservabilityDataDispatcher(Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory;->get()Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    move-result-object v0

    return-object v0
.end method
