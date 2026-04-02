.class public final Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpRequestTimingCacheFactory;
.super Ljava/lang/Object;
.source "TraceLoggingCrpcClientInterceptorModule_ProvideHttpRequestTimingCacheFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;


# direct methods
.method public constructor <init>(Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpRequestTimingCacheFactory;->module:Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;

    return-void
.end method

.method public static create(Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;)Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpRequestTimingCacheFactory;
    .locals 1

    .line 41
    new-instance v0, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpRequestTimingCacheFactory;

    invoke-direct {v0, p0}, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpRequestTimingCacheFactory;-><init>(Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;)V

    return-object v0
.end method

.method public static provideHttpRequestTimingCache(Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;)Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;->provideHttpRequestTimingCache()Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpRequestTimingCacheFactory;->module:Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;

    invoke-static {v0}, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpRequestTimingCacheFactory;->provideHttpRequestTimingCache(Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;)Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule_ProvideHttpRequestTimingCacheFactory;->get()Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;

    move-result-object v0

    return-object v0
.end method
