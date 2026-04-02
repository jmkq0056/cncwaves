.class public final Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory;
.super Ljava/lang/Object;
.source "TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final metricLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/MetricLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;

.field private final requestTimingCacheProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;",
            ">;"
        }
    .end annotation
.end field

.field private final traceLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/MetricLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory;->module:Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;

    .line 44
    iput-object p2, p0, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory;->metricLoggerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p3, p0, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory;->traceLoggerProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p4, p0, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory;->requestTimingCacheProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/MetricLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;",
            ">;)",
            "Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory;-><init>(Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTraceLoggingCrpcClientInterceptor(Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;)Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;->provideTraceLoggingCrpcClientInterceptor(Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;)Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory;->module:Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;

    iget-object v1, p0, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory;->metricLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/loggingmodels/MetricLogger;

    iget-object v2, p0, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory;->traceLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/loggingmodels/TraceLogger;

    iget-object v3, p0, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory;->requestTimingCacheProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory;->provideTraceLoggingCrpcClientInterceptor(Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;)Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideTraceLoggingCrpcClientInterceptorFactory;->get()Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;

    move-result-object v0

    return-object v0
.end method
