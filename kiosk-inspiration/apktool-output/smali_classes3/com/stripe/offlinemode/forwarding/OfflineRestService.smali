.class public abstract Lcom/stripe/offlinemode/forwarding/OfflineRestService;
.super Ljava/lang/Object;
.source "OfflineRestService.kt"

# interfaces
.implements Lcom/stripe/offlinemode/forwarding/AuthTokenListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/forwarding/OfflineRestService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineRestService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineRestService.kt\ncom/stripe/offlinemode/forwarding/OfflineRestService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,281:1\n1855#2,2:282\n1179#2,2:296\n1253#2,4:298\n318#3,11:284\n1#4:295\n*S KotlinDebug\n*F\n+ 1 OfflineRestService.kt\ncom/stripe/offlinemode/forwarding/OfflineRestService\n*L\n110#1:282,2\n272#1:296,2\n272#1:298,4\n130#1:284,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000 M2\u00020\u0001:\u0001MBY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\"\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u000bj\u0002`\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u0015J\u001c\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"0!2\u0006\u0010#\u001a\u00020\"H\u0002Jj\u0010$\u001a\u00020%\"\u001c\u0008\u0000\u0010&*\u0016\u0012\u0004\u0012\u0002H&\u0012\u0002\u0008\u00030\'j\u0008\u0012\u0004\u0012\u0002H&`(\"\u001c\u0008\u0001\u0010)*\u0016\u0012\u0004\u0012\u0002H)\u0012\u0002\u0008\u00030\'j\u0008\u0012\u0004\u0012\u0002H)`(2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u0002H)0+2\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010.\u001a\u00020/H\u0002J\u00ce\u0001\u00100\u001a\u000e\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u0002H)0+\"\u001c\u0008\u0000\u00101*\u0016\u0012\u0004\u0012\u0002H1\u0012\u0002\u0008\u00030\'j\u0008\u0012\u0004\u0012\u0002H1`(\"\u001c\u0008\u0001\u0010&*\u0016\u0012\u0004\u0012\u0002H&\u0012\u0002\u0008\u00030\'j\u0008\u0012\u0004\u0012\u0002H&`(\"\u001c\u0008\u0002\u0010)*\u0016\u0012\u0004\u0012\u0002H)\u0012\u0002\u0008\u00030\'j\u0008\u0012\u0004\u0012\u0002H)`(2\u0006\u00102\u001a\u0002032\u0018\u00104\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"06052\u0006\u00107\u001a\u00020\"2\u0006\u00108\u001a\u0002H)2\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u0002H&0:2\u0008\u0010;\u001a\u0004\u0018\u0001H12\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?H\u0086@\u00a2\u0006\u0002\u0010@J\u00b4\u0001\u0010A\u001a\u000e\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u0002H)0+\"\u001c\u0008\u0000\u00101*\u0016\u0012\u0004\u0012\u0002H1\u0012\u0002\u0008\u00030\'j\u0008\u0012\u0004\u0012\u0002H1`(\"\u001c\u0008\u0001\u0010&*\u0016\u0012\u0004\u0012\u0002H&\u0012\u0002\u0008\u00030\'j\u0008\u0012\u0004\u0012\u0002H&`(\"\u001c\u0008\u0002\u0010)*\u0016\u0012\u0004\u0012\u0002H)\u0012\u0002\u0008\u00030\'j\u0008\u0012\u0004\u0012\u0002H)`(2\u0006\u0010B\u001a\u00020C2\u0006\u0010D\u001a\u00020E2\u0006\u00108\u001a\u0002H)2\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u0002H&0:2\u0008\u0010;\u001a\u0004\u0018\u0001H12\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?H\u0082@\u00a2\u0006\u0002\u0010FJ\u00bc\u0001\u0010G\u001a\u000e\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u0002H)0+\"\u001c\u0008\u0000\u00101*\u0016\u0012\u0004\u0012\u0002H1\u0012\u0002\u0008\u00030\'j\u0008\u0012\u0004\u0012\u0002H1`(\"\u001c\u0008\u0001\u0010&*\u0016\u0012\u0004\u0012\u0002H&\u0012\u0002\u0008\u00030\'j\u0008\u0012\u0004\u0012\u0002H&`(\"\u001c\u0008\u0002\u0010)*\u0016\u0012\u0004\u0012\u0002H)\u0012\u0002\u0008\u00030\'j\u0008\u0012\u0004\u0012\u0002H)`(2\u0006\u00102\u001a\u0002032\u0006\u0010H\u001a\u00020I2\u0006\u00107\u001a\u00020\"2\u0006\u00108\u001a\u0002H)2\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u0002H&0:2\u0008\u0010;\u001a\u0004\u0018\u0001H12\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?H\u0086@\u00a2\u0006\u0002\u0010JJ\u0010\u0010K\u001a\u00020%2\u0006\u0010#\u001a\u00020\"H\u0016J(\u0010L\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"0!*\u0012\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\'j\u0006\u0012\u0002\u0008\u0003`(H\u0002R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00178B@BX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u00020\u00178BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u000bj\u0002`\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008\u001d\u0010\u001bR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006N"
    }
    d2 = {
        "Lcom/stripe/offlinemode/forwarding/OfflineRestService;",
        "Lcom/stripe/offlinemode/forwarding/AuthTokenListener;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "baseUrlProvider",
        "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
        "okHttpClientProvider",
        "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
        "offlineConfigHelper",
        "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
        "logger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineStageLogger;",
        "traceLogger",
        "Lcom/stripe/loggingmodels/TraceLogger;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "(Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;)V",
        "<set-?>",
        "Lokhttp3/OkHttpClient;",
        "authTokenClient",
        "client",
        "getClient",
        "()Lokhttp3/OkHttpClient;",
        "originalClient",
        "getOriginalClient",
        "originalClient$delegate",
        "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
        "authHeaders",
        "",
        "",
        "token",
        "endLogs",
        "",
        "Rsp",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/restclient/Proto;",
        "Err",
        "response",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "timer",
        "Lcom/stripe/jvmcore/logging/PendingTimer;",
        "trace",
        "Lcom/stripe/loggingmodels/Trace;",
        "get",
        "Req",
        "headers",
        "Lokhttp3/Headers;",
        "queryParams",
        "",
        "Lkotlin/Pair;",
        "endpoint",
        "error",
        "responseType",
        "Ljava/lang/Class;",
        "rpcRequest",
        "requestType",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;",
        "context",
        "Lcom/stripe/loggingmodels/Trace$Context;",
        "(Lokhttp3/Headers;Ljava/util/List;Ljava/lang/String;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "makeRequest",
        "httpUrl",
        "Lokhttp3/HttpUrl;",
        "request",
        "Lokhttp3/Request;",
        "(Lokhttp3/HttpUrl;Lokhttp3/Request;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "post",
        "body",
        "Lokhttp3/FormBody;",
        "(Lokhttp3/Headers;Lokhttp3/FormBody;Ljava/lang/String;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setAuthToken",
        "toMetricTags",
        "Companion",
        "offlinemode_release"
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/offlinemode/forwarding/OfflineRestService$Companion;

.field private static final KEY_AUTH_HEADER:Ljava/lang/String; = "Authorization"

.field private static final SERVICE_NAME:Ljava/lang/String; = "OfflineRestService"

.field private static final TOKEN_PREFIX:Ljava/lang/String; = "Bearer"


# instance fields
.field private authTokenClient:Lokhttp3/OkHttpClient;

.field private final baseUrlProvider:Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;

.field private final logWriter:Lcom/stripe/logwriter/LogWriter;

.field private final logger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final moshi:Lcom/squareup/moshi/Moshi;

.field private final offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

.field private final originalClient$delegate:Lcom/stripe/jvmcore/client/OkHttpClientProvider;

.field private final traceLogger:Lcom/stripe/loggingmodels/TraceLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 55
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "originalClient"

    const-string v3, "getOriginalClient()Lokhttp3/OkHttpClient;"

    const-class v4, Lcom/stripe/offlinemode/forwarding/OfflineRestService;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/stripe/offlinemode/forwarding/OfflineRestService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/forwarding/OfflineRestService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->Companion:Lcom/stripe/offlinemode/forwarding/OfflineRestService$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/Moshi;",
            "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;",
            ">;",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")V"
        }
    .end annotation

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrlProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "okHttpClientProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConfigHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->moshi:Lcom/squareup/moshi/Moshi;

    .line 48
    iput-object p2, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->baseUrlProvider:Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;

    .line 50
    iput-object p4, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    .line 51
    iput-object p5, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->logger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 52
    iput-object p6, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 53
    iput-object p7, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->logWriter:Lcom/stripe/logwriter/LogWriter;

    .line 55
    iput-object p3, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->originalClient$delegate:Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    return-void
.end method

.method public static final synthetic access$endLogs(Lcom/stripe/offlinemode/forwarding/OfflineRestService;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Trace;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->endLogs(Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Trace;)V

    return-void
.end method

.method public static final synthetic access$getClient(Lcom/stripe/offlinemode/forwarding/OfflineRestService;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->getClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLogWriter$p(Lcom/stripe/offlinemode/forwarding/OfflineRestService;)Lcom/stripe/logwriter/LogWriter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->logWriter:Lcom/stripe/logwriter/LogWriter;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/stripe/offlinemode/forwarding/OfflineRestService;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->logger:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-object p0
.end method

.method public static final synthetic access$getMoshi$p(Lcom/stripe/offlinemode/forwarding/OfflineRestService;)Lcom/squareup/moshi/Moshi;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->moshi:Lcom/squareup/moshi/Moshi;

    return-object p0
.end method

.method public static final synthetic access$getTraceLogger$p(Lcom/stripe/offlinemode/forwarding/OfflineRestService;)Lcom/stripe/loggingmodels/TraceLogger;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    return-object p0
.end method

.method public static final synthetic access$makeRequest(Lcom/stripe/offlinemode/forwarding/OfflineRestService;Lokhttp3/HttpUrl;Lokhttp3/Request;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p8}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->makeRequest(Lokhttp3/HttpUrl;Lokhttp3/Request;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final authHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bearer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Authorization"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final endLogs(Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Trace;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;Err:",
            "Lcom/squareup/wire/Message<",
            "TErr;*>;>(",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;",
            "Lcom/stripe/jvmcore/logging/PendingTimer;",
            "Lcom/stripe/loggingmodels/Trace;",
            ")V"
        }
    .end annotation

    .line 214
    instance-of v1, p1, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->logger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 218
    sget-object v1, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    move-object v4, v1

    check-cast v4, Lcom/stripe/loggingmodels/Outcome;

    .line 219
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v5

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    .line 216
    invoke-static/range {v2 .. v8}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 224
    move-object v2, p1

    check-cast v2, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    invoke-virtual {v2}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v2

    .line 225
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->getHeaders()Ljava/util/TreeMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v4, p3

    .line 222
    invoke-interface {v1, p3, v2, v0}, Lcom/stripe/loggingmodels/TraceLogger;->endTraceWithSuccess(Lcom/stripe/loggingmodels/Trace;Lcom/squareup/wire/Message;Ljava/util/Map;)V

    return-void

    :cond_1
    move-object v4, p3

    .line 228
    instance-of v1, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    .line 230
    iget-object v5, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->logger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 232
    sget-object v1, Lcom/stripe/loggingmodels/Outcome$HttpError;->Companion:Lcom/stripe/loggingmodels/Outcome$HttpError$Companion;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/stripe/loggingmodels/Outcome$HttpError$Companion;->toOutcome(Lcom/stripe/proto/model/rest/StatusCode;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v7

    .line 233
    move-object v1, p1

    check-cast v1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    invoke-virtual {v1}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->toMetricTags(Lcom/squareup/wire/Message;)Ljava/util/Map;

    move-result-object v8

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v6, p2

    .line 230
    invoke-static/range {v5 .. v11}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 236
    :cond_2
    iget-object v3, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 238
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->toLogString()Ljava/lang/String;

    move-result-object v5

    .line 239
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 236
    invoke-static/range {v3 .. v9}, Lcom/stripe/loggingmodels/TraceLogger;->endTraceWithErrorMessage$default(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/Trace;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void

    .line 242
    :cond_3
    instance-of v1, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;

    if-eqz v1, :cond_5

    if-eqz p2, :cond_4

    .line 244
    iget-object v3, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->logger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 246
    sget-object v1, Lcom/stripe/loggingmodels/Outcome$HttpError$ParseError;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$HttpError$ParseError;

    move-object v5, v1

    check-cast v5, Lcom/stripe/loggingmodels/Outcome;

    .line 247
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v6

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p2

    .line 244
    invoke-static/range {v3 .. v9}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 250
    :cond_4
    iget-object v3, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to Parse REST body, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 253
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p3

    .line 250
    invoke-static/range {v3 .. v9}, Lcom/stripe/loggingmodels/TraceLogger;->endTraceWithErrorMessage$default(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/Trace;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private final declared-synchronized getClient()Lokhttp3/OkHttpClient;
    .locals 1

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->authTokenClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->getOriginalClient()Lokhttp3/OkHttpClient;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final getOriginalClient()Lokhttp3/OkHttpClient;
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->originalClient$delegate:Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    sget-object v1, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/stripe/jvmcore/client/OkHttpClientProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private final makeRequest(Lokhttp3/HttpUrl;Lokhttp3/Request;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Req:",
            "Lcom/squareup/wire/Message<",
            "TReq;*>;Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;Err:",
            "Lcom/squareup/wire/Message<",
            "TErr;*>;>(",
            "Lokhttp3/HttpUrl;",
            "Lokhttp3/Request;",
            "TErr;",
            "Ljava/lang/Class<",
            "TRsp;>;TReq;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;",
            "Lcom/stripe/loggingmodels/Trace$Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 285
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static/range {p8 .. p8}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 291
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 292
    move-object v7, v0

    check-cast v7, Lkotlinx/coroutines/CancellableContinuation;

    .line 131
    invoke-static/range {p0 .. p0}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->access$getLogger$p(Lcom/stripe/offlinemode/forwarding/OfflineRestService;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v1

    .line 132
    const-string v2, "RequestType"

    invoke-virtual/range {p6 .. p6}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 131
    sget-object v3, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$timer$1;->INSTANCE:Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$timer$1;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v1, v2, v3}, Lcom/stripe/jvmcore/logging/HealthLogger;->startTimer(Ljava/util/Map;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object v8

    .line 135
    invoke-static/range {p0 .. p0}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->access$getTraceLogger$p(Lcom/stripe/offlinemode/forwarding/OfflineRestService;)Lcom/stripe/loggingmodels/TraceLogger;

    move-result-object v9

    .line 137
    invoke-virtual/range {p6 .. p6}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;->name()Ljava/lang/String;

    move-result-object v11

    .line 139
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v17

    .line 140
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v18

    .line 141
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v19

    const/16 v21, 0x438

    const/16 v22, 0x0

    .line 135
    const-string v10, "OfflineRestService"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    move-object/from16 v12, p5

    move-object/from16 v16, p7

    invoke-static/range {v9 .. v22}, Lcom/stripe/loggingmodels/TraceLogger;->startTrace$default(Lcom/stripe/loggingmodels/TraceLogger;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/loggingmodels/Trace$Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/loggingmodels/Trace;

    move-result-object v9

    .line 145
    invoke-static/range {p0 .. p0}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->access$getClient(Lcom/stripe/offlinemode/forwarding/OfflineRestService;)Lokhttp3/OkHttpClient;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    .line 146
    new-instance v3, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    move-object/from16 v4, p3

    move-object/from16 v10, p4

    invoke-direct/range {v3 .. v10}, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$1;-><init>(Lcom/squareup/wire/Message;Lokhttp3/HttpUrl;Lcom/stripe/offlinemode/forwarding/OfflineRestService;Lkotlinx/coroutines/CancellableContinuation;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Trace;Ljava/lang/Class;)V

    check-cast v3, Lokhttp3/Callback;

    invoke-static {v1, v3}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V

    .line 171
    new-instance v2, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$2;

    invoke-direct {v2, v6, v8, v1}, Lcom/stripe/offlinemode/forwarding/OfflineRestService$makeRequest$2$1$2;-><init>(Lcom/stripe/offlinemode/forwarding/OfflineRestService;Lcom/stripe/jvmcore/logging/PendingTimer;Lokhttp3/Call;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, v2}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 293
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 284
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static/range {p8 .. p8}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method

.method private final toMetricTags(Lcom/squareup/wire/Message;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/Message<",
            "**>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    instance-of v0, p1, Lcom/stripe/proto/model/rest/ErrorWrapper;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-static {p1}, Lcom/stripe/loggingmodels/TagKt;->toTags(Lcom/stripe/proto/model/rest/ErrorWrapper;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 263
    iget-object p1, p1, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 264
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    const/4 v3, 0x1

    invoke-static {v2, p1, v1, v3, v1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toTerminalException$default(Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->toLogString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 267
    new-instance v1, Lcom/stripe/loggingmodels/Tag$HealthTag;

    const-string v2, "ErrorReason"

    invoke-direct {v1, v2, p1}, Lcom/stripe/loggingmodels/Tag$HealthTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_0
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 269
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    .line 271
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    const/16 v0, 0xa

    .line 296
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 297
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 298
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 299
    check-cast v0, Lcom/stripe/loggingmodels/Tag;

    .line 272
    invoke-virtual {v0}, Lcom/stripe/loggingmodels/Tag;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/stripe/loggingmodels/Tag;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final get(Lokhttp3/Headers;Ljava/util/List;Ljava/lang/String;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Req:",
            "Lcom/squareup/wire/Message<",
            "TReq;*>;Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;Err:",
            "Lcom/squareup/wire/Message<",
            "TErr;*>;>(",
            "Lokhttp3/Headers;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "TErr;",
            "Ljava/lang/Class<",
            "TRsp;>;TReq;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;",
            "Lcom/stripe/loggingmodels/Trace$Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 105
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 104
    iget-object v2, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->baseUrlProvider:Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;

    invoke-interface {v2}, Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v0, v2}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p3}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 110
    move-object v2, p2

    check-cast v2, Ljava/lang/Iterable;

    .line 282
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    .line 110
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v2

    .line 113
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 114
    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    move-object v1, p0

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 119
    invoke-direct/range {v1 .. v9}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->makeRequest(Lokhttp3/HttpUrl;Lokhttp3/Request;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final post(Lokhttp3/Headers;Lokhttp3/FormBody;Ljava/lang/String;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Req:",
            "Lcom/squareup/wire/Message<",
            "TReq;*>;Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;Err:",
            "Lcom/squareup/wire/Message<",
            "TErr;*>;>(",
            "Lokhttp3/Headers;",
            "Lokhttp3/FormBody;",
            "Ljava/lang/String;",
            "TErr;",
            "Ljava/lang/Class<",
            "TRsp;>;TReq;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;",
            "Lcom/stripe/loggingmodels/Trace$Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 80
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    .line 79
    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->baseUrlProvider:Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;

    invoke-interface {v1}, Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p3}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p3

    .line 83
    invoke-virtual {p3}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 84
    new-instance p3, Lokhttp3/Request$Builder;

    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    .line 85
    invoke-virtual {p3, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p3

    .line 86
    invoke-virtual {p3, p1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 87
    check-cast p2, Lokhttp3/RequestBody;

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    move-object v0, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 90
    invoke-direct/range {v0 .. v8}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->makeRequest(Lokhttp3/HttpUrl;Lokhttp3/Request;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 3

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/stripe/offlinemode/forwarding/OfflineRestService$setAuthToken$1$1;->INSTANCE:Lcom/stripe/offlinemode/forwarding/OfflineRestService$setAuthToken$1$1;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 191
    new-instance v1, Lcom/stripe/jvmcore/restclient/CustomHeadersInterceptor;

    invoke-direct {p0, p1}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->authHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/stripe/jvmcore/restclient/CustomHeadersInterceptor;-><init>(Ljava/util/Map;)V

    check-cast v1, Lokhttp3/Interceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v0}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->getHttpHighTimeoutMs()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 197
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 198
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 201
    :cond_0
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 188
    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->authTokenClient:Lokhttp3/OkHttpClient;

    return-void
.end method
