.class public final Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;
.super Ljava/lang/Object;
.source "EventLoggerModule_ProvideBatchDispatcherFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
        "Lcom/stripe/proto/api/gator/LogEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final clientLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final collectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final gatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
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

.field private final module:Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;

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
.method public constructor <init>(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
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

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;->module:Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;

    .line 58
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;->collectorProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;->gatorProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;->clientLoggerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p5, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;->schedulerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p6, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;->observabilityFeatureFlagsProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p7, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;->logWriterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
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
            "Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;-><init>(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBatchDispatcher(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
            "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-virtual/range {p0 .. p6}, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;->provideBatchDispatcher(Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

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
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;->module:Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;->collectorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/batchdispatcher/Collector;

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;->gatorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    iget-object v3, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;->clientLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    iget-object v4, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;->schedulerProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/jvmcore/batchdispatcher/Scheduler;

    iget-object v5, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;->observabilityFeatureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;

    iget-object v6, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/logwriter/LogWriter;

    invoke-static/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;->provideBatchDispatcher(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideBatchDispatcherFactory;->get()Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    move-result-object v0

    return-object v0
.end method
