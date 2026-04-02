.class public final Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpEventListenerFactoryFactory;
.super Ljava/lang/Object;
.source "TraceLoggingCrpcClientInterceptorModule_ProvideHttpEventListenerFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Optional<",
        "Lokhttp3/EventListener$Factory;",
        ">;>;"
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


# direct methods
.method public constructor <init>(Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpEventListenerFactoryFactory;->module:Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;

    .line 41
    iput-object p2, p0, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpEventListenerFactoryFactory;->requestTimingCacheProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p3, p0, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpEventListenerFactoryFactory;->clockProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpEventListenerFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;)",
            "Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpEventListenerFactoryFactory;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpEventListenerFactoryFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpEventListenerFactoryFactory;-><init>(Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideHttpEventListenerFactory(Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;Lcom/stripe/time/Clock;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;",
            "Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;",
            "Lcom/stripe/time/Clock;",
            ")",
            "Ljava/util/Optional<",
            "Lokhttp3/EventListener$Factory;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;->provideHttpEventListenerFactory(Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;Lcom/stripe/time/Clock;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpEventListenerFactoryFactory;->get()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lokhttp3/EventListener$Factory;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpEventListenerFactoryFactory;->module:Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;

    iget-object v1, p0, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpEventListenerFactoryFactory;->requestTimingCacheProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;

    iget-object v2, p0, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpEventListenerFactoryFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/time/Clock;

    invoke-static {v0, v1, v2}, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpEventListenerFactoryFactory;->provideHttpEventListenerFactory(Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;Lcom/stripe/time/Clock;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
