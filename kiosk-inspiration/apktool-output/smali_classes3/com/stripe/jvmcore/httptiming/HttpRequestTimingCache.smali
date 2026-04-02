.class public final Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;
.super Ljava/lang/Object;
.source "HttpRequestTimingCache.kt"

# interfaces
.implements Lcom/stripe/jvmcore/httptiming/HttpTimingCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache$LruCache;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpRequestTimingCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRequestTimingCache.kt\ncom/stripe/jvmcore/httptiming/HttpRequestTimingCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,25:1\n1#2:26\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000eB\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0008H\u0016J\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u00082\u0006\u0010\r\u001a\u00020\u0007R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingCollector;",
        "maxCacheSize",
        "",
        "(I)V",
        "requestToMetricsMap",
        "",
        "Lokhttp3/Request;",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;",
        "collect",
        "",
        "metrics",
        "removeAndGetRequestMetrics",
        "request",
        "LruCache",
        "httptiming"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final requestToMetricsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lokhttp3/Request;",
            "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    if-gt v0, p1, :cond_0

    const/16 v0, 0x3e9

    if-ge p1, v0, :cond_0

    .line 16
    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache$LruCache;

    invoke-direct {v0, p1}, Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache$LruCache;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "synchronizedMap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;->requestToMetricsMap:Ljava/util/Map;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxCacheSize should be between 10 and 1,000"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x20

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public collect(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;)V
    .locals 2

    const-string v0, "metrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;->requestToMetricsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;->getRequest()Lokhttp3/Request;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeAndGetRequestMetrics(Lokhttp3/Request;)Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;->requestToMetricsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;

    return-object p1
.end method
