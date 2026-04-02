.class public final Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;
.super Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;
.source "TraceLoggingCrpcClientInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTraceLoggingCrpcClientInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TraceLoggingCrpcClientInterceptor.kt\ncom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n1#2:182\n1549#3:183\n1620#3,3:184\n1855#3,2:187\n1179#3,2:189\n1253#3,4:191\n1855#3,2:195\n*S KotlinDebug\n*F\n+ 1 TraceLoggingCrpcClientInterceptor.kt\ncom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor\n*L\n82#1:183\n82#1:184,3\n150#1:187,2\n157#1:189,2\n157#1:191,4\n168#1:195,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 *2\u00020\u0001:\u0001*B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u001a\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J[\u0010\u0017\u001a\u00020\u0012\"\u0012\u0008\u0000\u0010\u0018*\u000c\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\u0008\u00030\u0019\"\u0012\u0008\u0001\u0010\u001a*\u000c\u0012\u0004\u0012\u0002H\u001a\u0012\u0002\u0008\u00030\u00192\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u0002H\u001a2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u0002H\u00180 H\u0016\u00a2\u0006\u0002\u0010!J9\u0010\"\u001a\u00020\u0012\"\u0012\u0008\u0000\u0010\u0018*\u000c\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\u0008\u00030\u00192\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u0002H\u0018H\u0016\u00a2\u0006\u0002\u0010#J2\u0010$\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\'0&2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010(\u001a\u00020)H\u0002R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000eX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;",
        "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
        "metricLogger",
        "Lcom/stripe/loggingmodels/MetricLogger;",
        "traceLogger",
        "Lcom/stripe/loggingmodels/TraceLogger;",
        "requestTimingCache",
        "Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;",
        "(Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;)V",
        "callMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lokhttp3/Request;",
        "Lcom/stripe/jvmcore/logginginterceptors/PartialPendingCall;",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "enrichTraceWithRequestMetrics",
        "",
        "trace",
        "Lcom/stripe/loggingmodels/Trace;",
        "requestMetrics",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;",
        "postCallAction",
        "M",
        "Lcom/squareup/wire/Message;",
        "RE",
        "okHttpRequest",
        "rpcRequest",
        "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
        "apiRequest",
        "crpcResponse",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)V",
        "preCallAction",
        "(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;)V",
        "publishRequestTimingMetrics",
        "metricTags",
        "",
        "Lcom/stripe/loggingmodels/Tag$HttpTimingTag;",
        "outcome",
        "Lcom/stripe/loggingmodels/Outcome;",
        "Companion",
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


# static fields
.field private static final CUSTOM_INTERCEPTOR_NAME:Ljava/lang/String; = "TraceLoggingCrpcInterceptor"

.field public static final Companion:Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor$Companion;

.field private static final METRIC_DOMAIN:Ljava/lang/String; = "rpc_client"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final callMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lokhttp3/Request;",
            "Lcom/stripe/jvmcore/logginginterceptors/PartialPendingCall;",
            ">;"
        }
    .end annotation
.end field

.field private final metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

.field private final name:Ljava/lang/String;

.field private final requestTimingCache:Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;

.field private final traceLogger:Lcom/stripe/loggingmodels/TraceLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->Companion:Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor$Companion;

    .line 28
    const-string v0, "TraceLoggingCrpcClientInterceptor"

    sput-object v0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;)V
    .locals 1

    const-string v0, "metricLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 23
    iput-object p2, p0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 24
    iput-object p3, p0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->requestTimingCache:Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;

    .line 33
    const-string p1, "TraceLoggingCrpcInterceptor"

    iput-object p1, p0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->name:Ljava/lang/String;

    .line 35
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->callMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private final enrichTraceWithRequestMetrics(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;->getTimings()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 187
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "toLowerCase(...)"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;

    .line 152
    invoke-virtual {v1}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->getName()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->getTimeSinceCallStart()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->getTimingDuration()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v2, v4

    .line 154
    invoke-virtual {v1}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->getTimingDuration()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    .line 151
    invoke-virtual {p1, v3, v2, v4, v5}, Lcom/stripe/loggingmodels/Trace;->meter(Ljava/lang/String;IJ)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;->getTags()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    const/16 v0, 0xa

    .line 189
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 190
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 191
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 192
    check-cast v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag;

    .line 157
    invoke-virtual {v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag;->getName()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag$Name;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag$Name;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 158
    :cond_2
    invoke-virtual {p1, v1}, Lcom/stripe/loggingmodels/Trace;->addTags(Ljava/util/Map;)V

    return-void
.end method

.method private final publishRequestTimingMetrics(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;Ljava/util/List;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/stripe/loggingmodels/Outcome;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;",
            "Ljava/util/List<",
            "Lcom/stripe/loggingmodels/Tag$HttpTimingTag;",
            ">;",
            "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
            "Lcom/stripe/loggingmodels/Outcome;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p1}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;->getMetrics()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 195
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric;

    .line 169
    iget-object v1, p0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/stripe/proto/net/rpc/base/RpcRequest;->service:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/stripe/proto/net/rpc/base/RpcRequest;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric;->getName()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric$Name;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric$Name;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "toLowerCase(...)"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric;->getMeasurement()J

    move-result-wide v5

    .line 169
    const-string v2, "rpc_client"

    move-object v7, p2

    move-object v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/stripe/loggingmodels/MetricLogger;->recordGaugeMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;Lcom/stripe/loggingmodels/Outcome;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic publishRequestTimingMetrics$default(Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;Ljava/util/List;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/stripe/loggingmodels/Outcome;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 165
    sget-object p4, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    check-cast p4, Lcom/stripe/loggingmodels/Outcome;

    .line 161
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->publishRequestTimingMetrics(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;Ljava/util/List;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/stripe/loggingmodels/Outcome;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public postCallAction(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;*>;RE:",
            "Lcom/squareup/wire/Message<",
            "TRE;*>;>(",
            "Lokhttp3/Request;",
            "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
            "TRE;",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "TM;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v2, p4

    const-string v4, "okHttpRequest"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "rpcRequest"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "apiRequest"

    move-object/from16 v5, p3

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "crpcResponse"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v4, v0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->callMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/jvmcore/logginginterceptors/PartialPendingCall;

    if-nez v4, :cond_0

    .line 76
    sget-object v1, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    sget-object v2, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Failed to find call for CRPC request."

    invoke-virtual {v1, v2, v3}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    iget-object v5, v0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->requestTimingCache:Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5, v1}, Lcom/stripe/jvmcore/httptiming/HttpRequestTimingCache;->removeAndGetRequestMetrics(Lokhttp3/Request;)Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {v4}, Lcom/stripe/jvmcore/logginginterceptors/PartialPendingCall;->getTrace()Lcom/stripe/loggingmodels/Trace;

    move-result-object v5

    invoke-direct {v0, v5, v1}, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->enrichTraceWithRequestMetrics(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;)V

    :cond_2
    if-eqz v1, :cond_4

    .line 82
    invoke-virtual {v1}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;->getTags()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    check-cast v5, Ljava/lang/Iterable;

    .line 183
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v5, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 184
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 185
    check-cast v8, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag;

    .line 82
    invoke-static {v8}, Lcom/stripe/core/logginginterceptors/HttpTimingTagKt;->toHttpTimingTag(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag;)Lcom/stripe/loggingmodels/Tag$HttpTimingTag;

    move-result-object v8

    .line 185
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 186
    :cond_3
    check-cast v7, Ljava/util/List;

    goto :goto_2

    :cond_4
    move-object v7, v6

    :goto_2
    if-nez v7, :cond_5

    .line 82
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 86
    :cond_5
    instance-of v5, v2, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;

    if-eqz v5, :cond_9

    .line 87
    invoke-virtual {v4}, Lcom/stripe/jvmcore/logginginterceptors/PartialPendingCall;->getTrace()Lcom/stripe/loggingmodels/Trace;

    move-result-object v5

    invoke-static {v3}, Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;->getTraceLogLevel(Lcom/stripe/proto/net/rpc/base/RpcRequest;)Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    move-result-object v8

    sget-object v9, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->VERBOSE:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    if-ne v8, v9, :cond_6

    move-object v11, v5

    goto :goto_3

    :cond_6
    move-object v11, v6

    :goto_3
    if-eqz v11, :cond_7

    .line 89
    iget-object v10, v0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    check-cast v2, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;

    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/stripe/loggingmodels/TraceLogger;->endTraceWithSuccess$default(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/Trace;Lcom/squareup/wire/Message;Ljava/util/Map;ILjava/lang/Object;)V

    .line 91
    :cond_7
    invoke-virtual {v4}, Lcom/stripe/jvmcore/logginginterceptors/PartialPendingCall;->getMetric()Lcom/stripe/loggingmodels/Metric;

    move-result-object v2

    invoke-static {v3}, Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;->getMetricLogLevel(Lcom/stripe/proto/net/rpc/base/RpcRequest;)Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    move-result-object v4

    sget-object v5, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->VERBOSE:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    if-ne v4, v5, :cond_8

    move-object v6, v2

    :cond_8
    if-eqz v6, :cond_12

    .line 93
    iget-object v2, v0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 95
    sget-object v4, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    check-cast v4, Lcom/stripe/loggingmodels/Outcome;

    .line 93
    invoke-interface {v2, v6, v4, v7}, Lcom/stripe/loggingmodels/MetricLogger;->endTimedMetric(Lcom/stripe/loggingmodels/Metric;Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;)J

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, v7

    .line 98
    invoke-static/range {v0 .. v6}, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->publishRequestTimingMetrics$default(Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;Ljava/util/List;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/stripe/loggingmodels/Outcome;ILjava/lang/Object;)V

    return-void

    .line 101
    :cond_9
    instance-of v5, v2, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;

    if-eqz v5, :cond_d

    .line 102
    invoke-virtual {v4}, Lcom/stripe/jvmcore/logginginterceptors/PartialPendingCall;->getTrace()Lcom/stripe/loggingmodels/Trace;

    move-result-object v5

    invoke-static {v3}, Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;->getTraceLogLevel(Lcom/stripe/proto/net/rpc/base/RpcRequest;)Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    move-result-object v8

    sget-object v9, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->ERROR:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    check-cast v9, Ljava/lang/Enum;

    invoke-virtual {v8, v9}, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-ltz v8, :cond_a

    move-object v10, v5

    goto :goto_4

    :cond_a
    move-object v10, v6

    :goto_4
    if-eqz v10, :cond_b

    .line 104
    iget-object v9, v0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 106
    move-object v5, v2

    check-cast v5, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;

    invoke-virtual {v5}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 107
    invoke-virtual {v5}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->getCode()Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v13, 0x0

    .line 104
    invoke-static/range {v9 .. v15}, Lcom/stripe/loggingmodels/TraceLogger;->endTraceWithErrorMessage$default(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/Trace;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 110
    :cond_b
    invoke-virtual {v4}, Lcom/stripe/jvmcore/logginginterceptors/PartialPendingCall;->getMetric()Lcom/stripe/loggingmodels/Metric;

    move-result-object v4

    invoke-static {v3}, Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;->getMetricLogLevel(Lcom/stripe/proto/net/rpc/base/RpcRequest;)Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    move-result-object v5

    sget-object v8, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->ERROR:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    check-cast v8, Ljava/lang/Enum;

    invoke-virtual {v5, v8}, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-ltz v5, :cond_c

    move-object v6, v4

    :cond_c
    if-eqz v6, :cond_12

    .line 112
    iget-object v4, v0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 114
    sget-object v5, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;->Companion:Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Companion;

    check-cast v2, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;

    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->getCode()Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Companion;->toOutcome(Lcom/stripe/proto/net/rpc/base/ApplicationEC;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v5

    .line 112
    invoke-interface {v4, v6, v5, v7}, Lcom/stripe/loggingmodels/MetricLogger;->endTimedMetric(Lcom/stripe/loggingmodels/Metric;Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;)J

    .line 117
    sget-object v4, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;->Companion:Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Companion;

    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->getCode()Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Companion;->toOutcome(Lcom/stripe/proto/net/rpc/base/ApplicationEC;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v2

    invoke-direct {v0, v1, v7, v3, v2}, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->publishRequestTimingMetrics(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;Ljava/util/List;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/stripe/loggingmodels/Outcome;)V

    return-void

    .line 120
    :cond_d
    instance-of v5, v2, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    if-eqz v5, :cond_12

    .line 121
    invoke-virtual {v4}, Lcom/stripe/jvmcore/logginginterceptors/PartialPendingCall;->getTrace()Lcom/stripe/loggingmodels/Trace;

    move-result-object v5

    invoke-static {v3}, Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;->getTraceLogLevel(Lcom/stripe/proto/net/rpc/base/RpcRequest;)Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    move-result-object v8

    sget-object v9, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->ERROR:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    check-cast v9, Ljava/lang/Enum;

    invoke-virtual {v8, v9}, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-ltz v8, :cond_e

    move-object v10, v5

    goto :goto_5

    :cond_e
    move-object v10, v6

    :goto_5
    if-eqz v10, :cond_10

    .line 123
    move-object v5, v2

    check-cast v5, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    invoke-virtual {v5}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 124
    iget-object v9, v0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 127
    invoke-virtual {v5}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;->getCode()Lcom/stripe/proto/net/rpc/base/RpcEC;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v13, 0x0

    .line 124
    invoke-static/range {v9 .. v15}, Lcom/stripe/loggingmodels/TraceLogger;->endTraceWithException$default(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/Trace;Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 123
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_6

    :cond_f
    move-object v8, v6

    :goto_6
    if-nez v8, :cond_10

    .line 129
    iget-object v9, v0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 131
    invoke-virtual {v5}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 132
    invoke-virtual {v5}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;->getCode()Lcom/stripe/proto/net/rpc/base/RpcEC;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/4 v13, 0x0

    .line 129
    invoke-static/range {v9 .. v15}, Lcom/stripe/loggingmodels/TraceLogger;->endTraceWithErrorMessage$default(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/Trace;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 135
    :cond_10
    invoke-virtual {v4}, Lcom/stripe/jvmcore/logginginterceptors/PartialPendingCall;->getMetric()Lcom/stripe/loggingmodels/Metric;

    move-result-object v4

    invoke-static {v3}, Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;->getMetricLogLevel(Lcom/stripe/proto/net/rpc/base/RpcRequest;)Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    move-result-object v5

    sget-object v8, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->ERROR:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    check-cast v8, Ljava/lang/Enum;

    invoke-virtual {v5, v8}, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-ltz v5, :cond_11

    move-object v6, v4

    :cond_11
    if-eqz v6, :cond_12

    .line 137
    iget-object v4, v0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 139
    sget-object v5, Lcom/stripe/loggingmodels/Outcome$RpcTransportError;->Companion:Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Companion;

    check-cast v2, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;->getCode()Lcom/stripe/proto/net/rpc/base/RpcEC;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Companion;->toOutcome(Lcom/stripe/proto/net/rpc/base/RpcEC;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v5

    .line 137
    invoke-interface {v4, v6, v5, v7}, Lcom/stripe/loggingmodels/MetricLogger;->endTimedMetric(Lcom/stripe/loggingmodels/Metric;Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;)J

    .line 142
    sget-object v4, Lcom/stripe/loggingmodels/Outcome$RpcTransportError;->Companion:Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Companion;

    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;->getCode()Lcom/stripe/proto/net/rpc/base/RpcEC;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Companion;->toOutcome(Lcom/stripe/proto/net/rpc/base/RpcEC;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v2

    invoke-direct {v0, v1, v7, v3, v2}, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->publishRequestTimingMetrics(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;Ljava/util/List;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/stripe/loggingmodels/Outcome;)V

    :cond_12
    return-void
.end method

.method public preCallAction(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;*>;>(",
            "Lokhttp3/Request;",
            "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
            "TM;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "okHttpRequest"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "rpcRequest"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "apiRequest"

    move-object/from16 v7, p3

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v3, v0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->callMap:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v3, Ljava/util/Map;

    .line 46
    invoke-static {v2}, Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;->getTraceLogLevel(Lcom/stripe/proto/net/rpc/base/RpcRequest;)Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    move-result-object v4

    sget-object v5, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->NONE:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    const/16 v18, 0x0

    if-ne v4, v5, :cond_0

    move-object/from16 v4, v18

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_1

    .line 47
    iget-object v4, v0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 48
    iget-object v5, v2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->service:Ljava/lang/String;

    .line 49
    iget-object v6, v2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->method:Ljava/lang/String;

    const/16 v16, 0x7f8

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 47
    invoke-static/range {v4 .. v17}, Lcom/stripe/loggingmodels/TraceLogger;->startTrace$default(Lcom/stripe/loggingmodels/TraceLogger;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/loggingmodels/Trace;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object/from16 v4, v18

    .line 53
    :goto_1
    invoke-static {v2}, Lcom/stripe/core/logginginterceptors/CrpcLogLevelKt;->getMetricLogLevel(Lcom/stripe/proto/net/rpc/base/RpcRequest;)Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    move-result-object v5

    sget-object v6, Lcom/stripe/core/logginginterceptors/CrpcLogLevel;->NONE:Lcom/stripe/core/logginginterceptors/CrpcLogLevel;

    if-ne v5, v6, :cond_2

    move-object/from16 v5, v18

    goto :goto_2

    :cond_2
    move-object v5, v2

    :goto_2
    if-eqz v5, :cond_3

    .line 55
    iget-object v6, v0, Lcom/stripe/core/logginginterceptors/TraceLoggingCrpcClientInterceptor;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 57
    iget-object v8, v2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->service:Ljava/lang/String;

    .line 58
    iget-object v9, v2, Lcom/stripe/proto/net/rpc/base/RpcRequest;->method:Ljava/lang/String;

    const/16 v11, 0x8

    const/4 v12, 0x0

    .line 55
    const-string v7, "rpc_client"

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lcom/stripe/loggingmodels/MetricLogger;->startTimedMetric$default(Lcom/stripe/loggingmodels/MetricLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/stripe/loggingmodels/Metric;

    move-result-object v18

    :cond_3
    move-object/from16 v2, v18

    .line 45
    new-instance v5, Lcom/stripe/jvmcore/logginginterceptors/PartialPendingCall;

    invoke-direct {v5, v4, v2}, Lcom/stripe/jvmcore/logginginterceptors/PartialPendingCall;-><init>(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/loggingmodels/Metric;)V

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
