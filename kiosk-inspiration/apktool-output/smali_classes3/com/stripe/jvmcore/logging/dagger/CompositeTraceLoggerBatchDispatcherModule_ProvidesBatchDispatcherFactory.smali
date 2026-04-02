.class public final Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;
.super Ljava/lang/Object;
.source "CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory.java"

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
.field private final clientLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;>;"
        }
    .end annotation
.end field

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

.field private final gatorProvider:Ljavax/inject/Provider;
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

.field private final observabilityFeatureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;->collectorProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;->gatorProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;->clientLoggerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;->schedulerProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p5, p0, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;->observabilityFeatureFlagsProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p6, p0, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;->logWriterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;
    .locals 7
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
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesBatchDispatcher(Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
            "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;"
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule;->INSTANCE:Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule;->providesBatchDispatcher(Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;->collectorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/jvmcore/batchdispatcher/Collector;

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;->gatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;->clientLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;->schedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/jvmcore/batchdispatcher/Scheduler;

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;->observabilityFeatureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/logwriter/LogWriter;

    invoke-static/range {v1 .. v6}, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;->providesBatchDispatcher(Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;->get()Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    move-result-object v0

    return-object v0
.end method
