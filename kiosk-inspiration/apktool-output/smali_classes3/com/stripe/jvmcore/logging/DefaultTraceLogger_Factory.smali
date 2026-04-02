.class public final Lcom/stripe/jvmcore/logging/DefaultTraceLogger_Factory;
.super Ljava/lang/Object;
.source "DefaultTraceLogger_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/DefaultTraceLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;"
        }
    .end annotation
.end field

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

.field private final observabilityFeatureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final proxySpanPbBatchDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;>;"
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
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger_Factory;->proxySpanPbBatchDispatcherProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger_Factory;->observabilityDataBatchDispatcherProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger_Factory;->observabilityFeatureFlagsProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger_Factory;->clockProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/DefaultTraceLogger_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/DefaultTraceLogger_Factory;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/DefaultTraceLogger_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;Lcom/stripe/time/Clock;)Lcom/stripe/jvmcore/logging/DefaultTraceLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;",
            "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
            "Lcom/stripe/time/Clock;",
            ")",
            "Lcom/stripe/jvmcore/logging/DefaultTraceLogger;"
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/DefaultTraceLogger;-><init>(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;Lcom/stripe/time/Clock;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logging/DefaultTraceLogger;
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger_Factory;->proxySpanPbBatchDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger_Factory;->observabilityDataBatchDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger_Factory;->observabilityFeatureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;

    iget-object v3, p0, Lcom/stripe/jvmcore/logging/DefaultTraceLogger_Factory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/time/Clock;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/jvmcore/logging/DefaultTraceLogger_Factory;->newInstance(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;Lcom/stripe/time/Clock;)Lcom/stripe/jvmcore/logging/DefaultTraceLogger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/DefaultTraceLogger_Factory;->get()Lcom/stripe/jvmcore/logging/DefaultTraceLogger;

    move-result-object v0

    return-object v0
.end method
