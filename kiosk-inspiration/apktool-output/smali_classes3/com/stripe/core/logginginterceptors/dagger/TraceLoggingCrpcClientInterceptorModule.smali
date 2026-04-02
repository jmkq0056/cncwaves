.class public final Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;
.super Ljava/lang/Object;
.source "TraceLoggingCrpcClientInterceptorModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0007J\u0008\u0010\n\u001a\u00020\u0007H\u0007J \u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/core/logginginterceptors/dagger/TraceLoggingCrpcClientInterceptorModule;",
        "",
        "()V",
        "provideHttpEventListenerFactory",
        "Ljava/util/Optional;",
        "Lokhttp3/EventListener$Factory;",
        "requestTimingCache",
        "Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "provideHttpRequestTimingCache",
        "provideTraceLoggingCrpcClientInterceptor",
        "Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;",
        "metricLogger",
        "Lcom/stripe/loggingmodels/MetricLogger;",
        "traceLogger",
        "Lcom/stripe/loggingmodels/TraceLogger;",
        "logging-interceptors_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideHttpEventListenerFactory(Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;Lcom/stripe/time/Clock;)Ljava/util/Optional;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;",
            "Lcom/stripe/time/Clock;",
            ")",
            "Ljava/util/Optional<",
            "Lokhttp3/EventListener$Factory;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "requestTimingCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$HttpTimingLoggerEventListenerFactory;

    .line 42
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 41
    invoke-direct {v0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$HttpTimingLoggerEventListenerFactory;-><init>(Ljava/util/List;Lcom/stripe/time/Clock;)V

    .line 40
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    const-string p2, "of(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final provideHttpRequestTimingCache()Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;
    .locals 4
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 31
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final provideTraceLoggingCrpcClientInterceptor(Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;)Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "metricLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestTimingCache"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;-><init>(Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;)V

    return-object v0
.end method
