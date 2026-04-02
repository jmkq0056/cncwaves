.class public final Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;
.super Ljava/lang/Object;
.source "GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
        "Lcom/stripe/proto/api/gator/ProxyEventPb;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final collectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
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

.field private final module:Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;

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
.method public constructor <init>(Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->module:Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;

    .line 49
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->collectorProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->dispatcherProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->schedulerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p5, p0, Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->logWriterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;-><init>(Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBatchDispatcher(Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;->provideBatchDispatcher(Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->module:Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->collectorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/batchdispatcher/Collector;

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->dispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    iget-object v3, p0, Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->schedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/jvmcore/batchdispatcher/Scheduler;

    iget-object v4, p0, Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/logwriter/LogWriter;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->provideBatchDispatcher(Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->get()Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    move-result-object v0

    return-object v0
.end method
