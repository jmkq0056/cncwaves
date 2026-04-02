.class public final Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory;
.super Ljava/lang/Object;
.source "ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
        "Lcom/stripe/proto/api/gator/ProxySpanPb;",
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

.field private final logWriterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory;->module:Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;

    .line 53
    iput-object p2, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory;->apiProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p3, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory;->ioProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p4, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory;->isNetworkAvailableProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p5, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory;->logWriterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory;
    .locals 6
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
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)",
            "Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory;"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory;-><init>(Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesClientLoggerTraceDispatcher(Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;Ljavax/inject/Provider;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
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
            ">;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;->providesClientLoggerTraceDispatcher(Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;Ljavax/inject/Provider;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory;->module:Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;

    iget-object v1, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory;->apiProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory;->ioProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v3, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory;->isNetworkAvailableProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/logwriter/LogWriter;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory;->providesClientLoggerTraceDispatcher(Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;Ljavax/inject/Provider;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory;->get()Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    move-result-object v0

    return-object v0
.end method
