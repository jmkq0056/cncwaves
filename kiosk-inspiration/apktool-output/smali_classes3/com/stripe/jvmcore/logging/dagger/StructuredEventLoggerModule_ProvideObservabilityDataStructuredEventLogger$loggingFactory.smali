.class public final Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory;
.super Ljava/lang/Object;
.source "StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final baseSearchIndicesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;

.field private final observabilityDataBatchDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory;->module:Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;

    .line 46
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory;->observabilityDataBatchDispatcherProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory;->clockProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory;->baseSearchIndicesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory;-><init>(Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideObservabilityDataStructuredEventLogger$logging(Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;)Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;",
            ")",
            "Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;"
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;->provideObservabilityDataStructuredEventLogger$logging(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;)Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory;->module:Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory;->observabilityDataBatchDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/time/Clock;

    iget-object v3, p0, Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory;->baseSearchIndicesProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory;->provideObservabilityDataStructuredEventLogger$logging(Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;)Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory;->get()Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;

    move-result-object v0

    return-object v0
.end method
