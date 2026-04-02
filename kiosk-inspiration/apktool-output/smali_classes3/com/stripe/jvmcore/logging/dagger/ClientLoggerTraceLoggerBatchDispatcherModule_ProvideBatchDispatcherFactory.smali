.class public final Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;
.super Ljava/lang/Object;
.source "ClientLoggerTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
        "Lcom/stripe/proto/api/gator/ProxySpanPb;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final collectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;>;"
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

.field private final schedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
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
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->collectorProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->dispatcherProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->schedulerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->logWriterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBatchDispatcher(Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule;->INSTANCE:Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule;->provideBatchDispatcher(Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->collectorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/batchdispatcher/Collector;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->dispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->schedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/batchdispatcher/Scheduler;

    iget-object v3, p0, Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/logwriter/LogWriter;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->provideBatchDispatcher(Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->get()Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    move-result-object v0

    return-object v0
.end method
