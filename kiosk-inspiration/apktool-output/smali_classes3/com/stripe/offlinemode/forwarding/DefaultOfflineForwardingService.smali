.class public final Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;
.super Lcom/stripe/offlinemode/forwarding/OfflineRestService;
.source "DefaultOfflineForwardingService.kt"

# interfaces
.implements Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultOfflineForwardingService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultOfflineForwardingService.kt\ncom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1549#2:100\n1620#2,3:101\n1855#2,2:104\n*S KotlinDebug\n*F\n+ 1 DefaultOfflineForwardingService.kt\ncom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService\n*L\n82#1:100\n82#1:101,3\n95#1:104,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002Be\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\"\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u000ej\u0002`\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0002\u0010\u0018J\u008c\u0001\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u0002H!\u0012\u0004\u0012\u00020\"0 \"\u001c\u0008\u0000\u0010!*\u0016\u0012\u0004\u0012\u0002H!\u0012\u0002\u0008\u00030#j\u0008\u0012\u0004\u0012\u0002H!`$2\u0006\u0010%\u001a\u00020&2\u0018\u0010\'\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&0)0(2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&0+2\u0006\u0010,\u001a\u00020-2\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002H!0/2\u0006\u00100\u001a\u000201H\u0096@\u00a2\u0006\u0002\u00102J*\u00103\u001a\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\"0 2\u0006\u00105\u001a\u0002062\u0006\u00100\u001a\u000201H\u0096@\u00a2\u0006\u0002\u00107J\"\u00108\u001a\u0002092\u0018\u0010:\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020&0)0(H\u0002R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006;"
    }
    d2 = {
        "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;",
        "Lcom/stripe/offlinemode/forwarding/OfflineRestService;",
        "Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "okHttpClientProvider",
        "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
        "baseUrlProvider",
        "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
        "offlineConfigHelper",
        "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
        "userAgentProvider",
        "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
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
        "(Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/environment/UserAgentProvider;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;)V",
        "userAgent",
        "Lcom/stripe/proto/model/rest/UserAgent;",
        "getUserAgent",
        "()Lcom/stripe/proto/model/rest/UserAgent;",
        "userAgent$delegate",
        "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
        "forward",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "Rsp",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/restclient/Proto;",
        "endpoint",
        "",
        "body",
        "",
        "Lkotlin/Pair;",
        "headers",
        "",
        "type",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;",
        "entityType",
        "Ljava/lang/Class;",
        "traceContext",
        "Lcom/stripe/loggingmodels/Trace$Context;",
        "(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/Class;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "retrieveSetupIntent",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "request",
        "Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;",
        "(Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toFormBody",
        "Lokhttp3/FormBody;",
        "entries",
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


# instance fields
.field private final userAgent$delegate:Lcom/stripe/jvmcore/environment/UserAgentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 47
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "userAgent"

    const-string v3, "getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;"

    const-class v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/environment/UserAgentProvider;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;)V
    .locals 9
    .param p3    # Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Mainland;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/Moshi;",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
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

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "okHttpClientProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrlProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConfigHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgentProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p6

    .line 38
    invoke-direct/range {v1 .. v8}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;-><init>(Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;)V

    .line 47
    iput-object p5, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;->userAgent$delegate:Lcom/stripe/jvmcore/environment/UserAgentProvider;

    return-void
.end method

.method private final getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;->userAgent$delegate:Lcom/stripe/jvmcore/environment/UserAgentProvider;

    sget-object v1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/stripe/jvmcore/environment/UserAgentProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/proto/model/rest/UserAgent;

    move-result-object v0

    return-object v0
.end method

.method private final toFormBody(Ljava/util/List;)Lokhttp3/FormBody;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lokhttp3/FormBody;"
        }
    .end annotation

    .line 94
    new-instance v0, Lokhttp3/FormBody$Builder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 95
    check-cast p1, Ljava/lang/Iterable;

    .line 104
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    .line 95
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public forward(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/Class;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;>(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;",
            "Ljava/lang/Class<",
            "TRsp;>;",
            "Lcom/stripe/loggingmodels/Trace$Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 58
    sget-object v0, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    invoke-virtual {v0, p3}, Lokhttp3/Headers$Companion;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object v2

    .line 59
    invoke-direct {p0, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;->toFormBody(Ljava/util/List;)Lokhttp3/FormBody;

    move-result-object v3

    .line 61
    new-instance v4, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    sget-object p2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 67
    sget-object p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;->CONFIRM_SETUP_INTENT:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 66
    :cond_1
    sget-object p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;->CONFIRM_PAYMENT_INTENT:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;

    goto :goto_0

    .line 65
    :cond_2
    sget-object p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;->CREATE_SETUP_INTENT:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;

    goto :goto_0

    .line 64
    :cond_3
    sget-object p2, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;->CREATE_PAYMENT_INTENT:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;

    :goto_0
    move-object v8, p2

    .line 61
    move-object v5, v4

    check-cast v5, Lcom/squareup/wire/Message;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 57
    invoke-virtual/range {v1 .. v10}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;->post(Lokhttp3/Headers;Lokhttp3/FormBody;Ljava/lang/String;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public retrieveSetupIntent(Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;",
            "Lcom/stripe/loggingmodels/Trace$Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 79
    sget-object v0, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    invoke-direct {p0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;->getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/stripe/jvmcore/environment/EnvironmentKt;->toRequestHeaders(Lcom/stripe/proto/model/rest/UserAgent;Z)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Headers$Companion;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object v3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v1/setup_intents/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 81
    new-instance v6, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 82
    iget-object p1, p1, Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;->expand:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 101
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 102
    check-cast v1, Ljava/lang/String;

    .line 82
    const-string v2, "expand[]"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 102
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_0
    move-object v4, v0

    check-cast v4, Ljava/util/List;

    .line 84
    sget-object v9, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;->RETRIEVE_SETUP_INTENT:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;

    const-class v7, Lcom/stripe/proto/model/rest/SetupIntent;

    .line 81
    check-cast v6, Lcom/squareup/wire/Message;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v10, p2

    move-object v11, p3

    .line 78
    invoke-virtual/range {v2 .. v11}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;->get(Lokhttp3/Headers;Ljava/util/List;Ljava/lang/String;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
