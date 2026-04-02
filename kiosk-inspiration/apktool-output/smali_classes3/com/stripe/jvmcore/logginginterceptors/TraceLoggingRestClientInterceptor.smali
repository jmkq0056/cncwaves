.class public final Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;
.super Lcom/stripe/jvmcore/restclient/RestInterceptor;
.source "TraceLoggingRestClientInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 02\u00020\u0001:\u00010B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0088\u0001\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u00170\u0015\"\u001c\u0008\u0000\u0010\u0018*\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\u0008\u00030\u0019j\u0008\u0012\u0004\u0012\u0002H\u0018`\u001a\"\u001c\u0008\u0001\u0010\u0016*\u0016\u0012\u0004\u0012\u0002H\u0016\u0012\u0002\u0008\u00030\u0019j\u0008\u0012\u0004\u0012\u0002H\u0016`\u001a\"\u001c\u0008\u0002\u0010\u0017*\u0016\u0012\u0004\u0012\u0002H\u0017\u0012\u0002\u0008\u00030\u0019j\u0008\u0012\u0004\u0012\u0002H\u0017`\u001a2\u0018\u0010\u001b\u001a\u0014\u0012\u0004\u0012\u0002H\u0018\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u00170\u001cH\u0016J\u009d\u0001\u0010\u001d\u001a\u00020\u001e\"\u001c\u0008\u0000\u0010\u0018*\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\u0008\u00030\u0019j\u0008\u0012\u0004\u0012\u0002H\u0018`\u001a\"\u001c\u0008\u0001\u0010\u0016*\u0016\u0012\u0004\u0012\u0002H\u0016\u0012\u0002\u0008\u00030\u0019j\u0008\u0012\u0004\u0012\u0002H\u0016`\u001a\"\u001c\u0008\u0002\u0010\u0017*\u0016\u0012\u0004\u0012\u0002H\u0017\u0012\u0002\u0008\u00030\u0019j\u0008\u0012\u0004\u0012\u0002H\u0017`\u001a2\u0006\u0010\u001f\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u0002H\u00182\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u0002H\u0016\u0012\u0004\u0012\u0002H\u00170\u0015H\u0001\u00a2\u0006\u0004\u0008$\u0010%JM\u0010&\u001a\u00020\u001e\"\u001c\u0008\u0000\u0010\u0018*\u0016\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\u0008\u00030\u0019j\u0008\u0012\u0004\u0012\u0002H\u0018`\u001a2\u0006\u0010\u001f\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u0002H\u0018H\u0001\u00a2\u0006\u0004\u0008\'\u0010(J3\u0010)\u001a\u00020\u0011\"\u001c\u0008\u0000\u0010**\u0016\u0012\u0004\u0012\u0002H*\u0012\u0002\u0008\u00030\u0019j\u0008\u0012\u0004\u0012\u0002H*`\u001a2\u0006\u0010+\u001a\u0002H*H\u0007\u00a2\u0006\u0002\u0010,J\u001a\u0010-\u001a\u0008\u0012\u0004\u0012\u00020/0.*\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0019H\u0002R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u0011X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
        "metricLogger",
        "Lcom/stripe/loggingmodels/MetricLogger;",
        "traceLogger",
        "Lcom/stripe/loggingmodels/TraceLogger;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "(Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;)V",
        "callMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lokhttp3/Request;",
        "Lcom/stripe/jvmcore/logginginterceptors/PendingCall;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "kotlin.jvm.PlatformType",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "intercept",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "Rsp",
        "Err",
        "Rq",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/restclient/Proto;",
        "chain",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;",
        "postCallAction",
        "",
        "service",
        "method",
        "okHttpRequest",
        "rpcRequest",
        "response",
        "postCallAction$logging_interceptors",
        "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestResponse;)V",
        "preCallAction",
        "preCallAction$logging_interceptors",
        "(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;Lcom/squareup/wire/Message;)V",
        "protoToJson",
        "M",
        "message",
        "(Lcom/squareup/wire/Message;)Ljava/lang/String;",
        "toMetricTags",
        "",
        "Lcom/stripe/loggingmodels/Tag;",
        "Companion",
        "logging-interceptors"
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
.field private static final CUSTOM_INTERCEPTOR_NAME:Ljava/lang/String; = "TraceLoggingRestInterceptor"

.field public static final Companion:Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor$Companion;

.field public static final FAILURE_TO_PARSE_MESSAGE:Ljava/lang/String; = "Failed to parse REST response body."

.field private static final METRIC_DOMAIN:Ljava/lang/String; = "rest_client"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final callMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lokhttp3/Request;",
            "Lcom/stripe/jvmcore/logginginterceptors/PendingCall;",
            ">;"
        }
    .end annotation
.end field

.field private final logWriter:Lcom/stripe/logwriter/LogWriter;

.field private final metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

.field private final moshi:Lcom/squareup/moshi/Moshi;

.field private final name:Ljava/lang/String;

.field private final traceLogger:Lcom/stripe/loggingmodels/TraceLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->Companion:Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor$Companion;

    .line 29
    const-string v0, "TraceLoggingRestClientInterceptor"

    sput-object v0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;)V
    .locals 2

    const-string v0, "metricLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/stripe/jvmcore/restclient/RestInterceptor;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 24
    iput-object p2, p0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 25
    iput-object p3, p0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->logWriter:Lcom/stripe/logwriter/LogWriter;

    .line 37
    const-string p1, "TraceLoggingRestInterceptor"

    iput-object p1, p0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->name:Ljava/lang/String;

    .line 39
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->callMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    new-instance p1, Lcom/squareup/moshi/Moshi$Builder;

    invoke-direct {p1}, Lcom/squareup/moshi/Moshi$Builder;-><init>()V

    .line 42
    new-instance p2, Lcom/squareup/wire/WireJsonAdapterFactory;

    const/4 p3, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p2, v1, p3, v0, v1}, Lcom/squareup/wire/WireJsonAdapterFactory;-><init>(Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/squareup/moshi/JsonAdapter$Factory;

    invoke-virtual {p1, p2}, Lcom/squareup/moshi/Moshi$Builder;->add(Lcom/squareup/moshi/JsonAdapter$Factory;)Lcom/squareup/moshi/Moshi$Builder;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/squareup/moshi/Moshi$Builder;->build()Lcom/squareup/moshi/Moshi;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->moshi:Lcom/squareup/moshi/Moshi;

    return-void
.end method

.method private final toMetricTags(Lcom/squareup/wire/Message;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/Message<",
            "**>;)",
            "Ljava/util/List<",
            "Lcom/stripe/loggingmodels/Tag;",
            ">;"
        }
    .end annotation

    .line 151
    instance-of v0, p1, Lcom/stripe/proto/model/rest/ErrorWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-static {p1}, Lcom/stripe/loggingmodels/TagKt;->toTags(Lcom/stripe/proto/model/rest/ErrorWrapper;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 152
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public intercept(Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Rq:",
            "Lcom/squareup/wire/Message<",
            "TRq;*>;Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;Err:",
            "Lcom/squareup/wire/Message<",
            "TErr;*>;>(",
            "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain<",
            "TRq;TRsp;TErr;>;)",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;"
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->service()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->method()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->rpcRequest()Lcom/squareup/wire/Message;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->preCallAction$logging_interceptors(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;Lcom/squareup/wire/Message;)V

    .line 133
    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->proceed(Lokhttp3/Request;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v6

    .line 135
    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->service()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->method()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v4

    .line 138
    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->rpcRequest()Lcom/squareup/wire/Message;

    move-result-object v5

    move-object v1, p0

    .line 134
    invoke-virtual/range {v1 .. v6}, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->postCallAction$logging_interceptors(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestResponse;)V

    return-object v6
.end method

.method public final postCallAction$logging_interceptors(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestResponse;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Rq:",
            "Lcom/squareup/wire/Message<",
            "TRq;*>;Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;Err:",
            "Lcom/squareup/wire/Message<",
            "TErr;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokhttp3/Request;",
            "TRq;",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    const-string v3, "service"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "method"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "okHttpRequest"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "rpcRequest"

    move-object/from16 v4, p4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "response"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v3, v0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->callMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/logginginterceptors/PendingCall;

    if-nez v1, :cond_0

    .line 86
    iget-object v1, v0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->logWriter:Lcom/stripe/logwriter/LogWriter;

    sget-object v2, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Failed to find call for REST request."

    invoke-interface {v1, v2, v3}, Lcom/stripe/logwriter/LogWriter;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_0
    instance-of v3, v2, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    if-eqz v3, :cond_1

    .line 93
    iget-object v3, v0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 94
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logginginterceptors/PendingCall;->getTrace()Lcom/stripe/loggingmodels/Trace;

    move-result-object v4

    .line 95
    move-object v5, v2

    check-cast v5, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    invoke-virtual {v5}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v5

    .line 96
    invoke-virtual {v2}, Lcom/stripe/jvmcore/restclient/RestResponse;->getHeaders()Ljava/util/TreeMap;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 93
    invoke-interface {v3, v4, v5, v2}, Lcom/stripe/loggingmodels/TraceLogger;->endTraceWithSuccess(Lcom/stripe/loggingmodels/Trace;Lcom/squareup/wire/Message;Ljava/util/Map;)V

    .line 98
    iget-object v6, v0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 99
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logginginterceptors/PendingCall;->getMetric()Lcom/stripe/loggingmodels/Metric;

    move-result-object v7

    .line 100
    sget-object v1, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    move-object v8, v1

    check-cast v8, Lcom/stripe/loggingmodels/Outcome;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 98
    invoke-static/range {v6 .. v11}, Lcom/stripe/loggingmodels/MetricLogger;->endTimedMetric$default(Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/Metric;Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;ILjava/lang/Object;)J

    return-void

    .line 103
    :cond_1
    instance-of v3, v2, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    if-eqz v3, :cond_2

    .line 104
    iget-object v4, v0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 105
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logginginterceptors/PendingCall;->getTrace()Lcom/stripe/loggingmodels/Trace;

    move-result-object v5

    .line 106
    move-object v3, v2

    check-cast v3, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    invoke-virtual {v3}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->protoToJson(Lcom/squareup/wire/Message;)Ljava/lang/String;

    move-result-object v6

    .line 107
    invoke-virtual {v2}, Lcom/stripe/jvmcore/restclient/RestResponse;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 104
    invoke-static/range {v4 .. v10}, Lcom/stripe/loggingmodels/TraceLogger;->endTraceWithErrorMessage$default(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/Trace;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 109
    iget-object v4, v0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 110
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logginginterceptors/PendingCall;->getMetric()Lcom/stripe/loggingmodels/Metric;

    move-result-object v1

    .line 111
    sget-object v5, Lcom/stripe/loggingmodels/Outcome$HttpError;->Companion:Lcom/stripe/loggingmodels/Outcome$HttpError$Companion;

    invoke-virtual {v2}, Lcom/stripe/jvmcore/restclient/RestResponse;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/stripe/loggingmodels/Outcome$HttpError$Companion;->toOutcome(Lcom/stripe/proto/model/rest/StatusCode;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v2

    .line 112
    invoke-virtual {v3}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->toMetricTags(Lcom/squareup/wire/Message;)Ljava/util/List;

    move-result-object v3

    .line 109
    invoke-interface {v4, v1, v2, v3}, Lcom/stripe/loggingmodels/MetricLogger;->endTimedMetric(Lcom/stripe/loggingmodels/Metric;Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;)J

    return-void

    .line 115
    :cond_2
    instance-of v3, v2, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;

    if-eqz v3, :cond_3

    .line 116
    iget-object v4, v0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 117
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logginginterceptors/PendingCall;->getTrace()Lcom/stripe/loggingmodels/Trace;

    move-result-object v5

    .line 119
    invoke-virtual {v2}, Lcom/stripe/jvmcore/restclient/RestResponse;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x8

    const/4 v10, 0x0

    .line 116
    const-string v6, "Failed to parse REST response body."

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lcom/stripe/loggingmodels/TraceLogger;->endTraceWithErrorMessage$default(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/Trace;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 121
    iget-object v11, v0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 122
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logginginterceptors/PendingCall;->getMetric()Lcom/stripe/loggingmodels/Metric;

    move-result-object v12

    .line 123
    sget-object v1, Lcom/stripe/loggingmodels/Outcome$HttpError$ParseError;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$HttpError$ParseError;

    move-object v13, v1

    check-cast v13, Lcom/stripe/loggingmodels/Outcome;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    .line 121
    invoke-static/range {v11 .. v16}, Lcom/stripe/loggingmodels/MetricLogger;->endTimedMetric$default(Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/Metric;Lcom/stripe/loggingmodels/Outcome;Ljava/util/List;ILjava/lang/Object;)J

    :cond_3
    return-void
.end method

.method public final preCallAction$logging_interceptors(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;Lcom/squareup/wire/Message;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Rq:",
            "Lcom/squareup/wire/Message<",
            "TRq;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokhttp3/Request;",
            "TRq;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "service"

    move-object/from16 v4, p1

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "method"

    move-object/from16 v5, p2

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "okHttpRequest"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rpcRequest"

    move-object/from16 v6, p4

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v2, v0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->callMap:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v2, Ljava/util/Map;

    new-instance v3, Lcom/stripe/jvmcore/logginginterceptors/PendingCall;

    move-object v7, v3

    .line 56
    iget-object v3, v0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 60
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v11

    .line 61
    invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v12

    .line 62
    invoke-virtual {v1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v8}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v13

    const/16 v15, 0x478

    const/16 v16, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v14, v10

    const/4 v10, 0x0

    move-object/from16 v17, v14

    const/4 v14, 0x0

    move-object/from16 v1, v17

    .line 56
    invoke-static/range {v3 .. v16}, Lcom/stripe/loggingmodels/TraceLogger;->startTrace$default(Lcom/stripe/loggingmodels/TraceLogger;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/loggingmodels/Trace;

    move-result-object v10

    .line 64
    iget-object v3, v0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    const/16 v8, 0x8

    const-string v4, "rest_client"

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v3 .. v9}, Lcom/stripe/loggingmodels/MetricLogger;->startTimedMetric$default(Lcom/stripe/loggingmodels/MetricLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/stripe/loggingmodels/Metric;

    move-result-object v3

    .line 55
    invoke-direct {v1, v10, v3}, Lcom/stripe/jvmcore/logginginterceptors/PendingCall;-><init>(Lcom/stripe/loggingmodels/Trace;Lcom/stripe/loggingmodels/Metric;)V

    move-object/from16 v3, p3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final protoToJson(Lcom/squareup/wire/Message;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;*>;>(TM;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;->moshi:Lcom/squareup/moshi/Moshi;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v0

    const-string v1, "adapter(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/squareup/wire/RedactingJsonAdapterKt;->redacting(Lcom/squareup/moshi/JsonAdapter;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/JsonAdapter;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toJson(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
