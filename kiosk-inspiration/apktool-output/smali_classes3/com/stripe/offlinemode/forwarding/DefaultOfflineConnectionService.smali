.class public final Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;
.super Lcom/stripe/offlinemode/forwarding/OfflineRestService;
.source "DefaultOfflineConnectionService.kt"

# interfaces
.implements Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002By\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\"\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000cj\u0002`\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u0019\u0012\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0002\u0010\u001cJ*\u0010-\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u0002000.2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0096@\u00a2\u0006\u0002\u00105J\"\u00106\u001a\u000e\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u0002000.2\u0006\u00103\u001a\u000204H\u0096@\u00a2\u0006\u0002\u00108J\u0010\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H\u0016J\u0010\u0010=\u001a\u00020>2\u0006\u00101\u001a\u000202H\u0002R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001d\u001a\u00020\u001eX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0014\u0010#\u001a\u00020$8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\'\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008)\u0010*\u00a8\u0006?"
    }
    d2 = {
        "Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;",
        "Lcom/stripe/offlinemode/forwarding/OfflineRestService;",
        "Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "okHttpClientProvider",
        "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
        "baseUrlProvider",
        "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
        "userAgentProvider",
        "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
        "stageLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineStageLogger;",
        "offlineConfigHelper",
        "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
        "traceLogger",
        "Lcom/stripe/loggingmodels/TraceLogger;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "offlineRepository",
        "Lcom/stripe/offlinemode/storage/OfflineRepository;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "(Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/jvmcore/environment/UserAgentProvider;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/offlinemode/storage/OfflineRepository;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "hasConnectionToken",
        "",
        "getHasConnectionToken",
        "()Z",
        "setHasConnectionToken",
        "(Z)V",
        "headers",
        "Lokhttp3/Headers;",
        "getHeaders",
        "()Lokhttp3/Headers;",
        "userAgent",
        "Lcom/stripe/proto/model/rest/UserAgent;",
        "getUserAgent",
        "()Lcom/stripe/proto/model/rest/UserAgent;",
        "userAgent$delegate",
        "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
        "redeemOfflineConnection",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "request",
        "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;",
        "traceContext",
        "Lcom/stripe/loggingmodels/Trace$Context;",
        "(Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "retrieveAccount",
        "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;",
        "(Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setAuthToken",
        "",
        "token",
        "",
        "toBody",
        "Lokhttp3/FormBody;",
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
.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private hasConnectionToken:Z

.field private final offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

.field private final userAgent$delegate:Lcom/stripe/jvmcore/environment/UserAgentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 57
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "userAgent"

    const-string v3, "getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;"

    const-class v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/jvmcore/environment/UserAgentProvider;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/offlinemode/storage/OfflineRepository;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 10
    .param p3    # Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Mainland;
        .end annotation
    .end param
    .param p9    # Lcom/stripe/offlinemode/storage/OfflineRepository;
        .annotation runtime Lcom/stripe/jvmcore/dagger/OfflineForwarding;
        .end annotation
    .end param
    .param p10    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/moshi/Moshi;",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
            "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;",
            ">;",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            "Lcom/stripe/logwriter/LogWriter;",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "okHttpClientProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrlProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgentProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stageLogger"

    move-object v5, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConfigHelper"

    move-object/from16 v4, p6

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    move-object/from16 v6, p7

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    move-object/from16 v7, p8

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineRepository"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v2, p3

    .line 47
    invoke-direct/range {v0 .. v7}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;-><init>(Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/logwriter/LogWriter;)V

    .line 45
    iput-object v8, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    .line 46
    iput-object v9, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 57
    iput-object p4, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;->userAgent$delegate:Lcom/stripe/jvmcore/environment/UserAgentProvider;

    .line 61
    move-object v1, v9

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object p1, v1

    move-object p4, v2

    move p5, v3

    move-object/from16 p6, v4

    move-object p2, v5

    move-object p3, v6

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getOfflineRepository$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;)Lcom/stripe/offlinemode/storage/OfflineRepository;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    return-object p0
.end method

.method private final getHeaders()Lokhttp3/Headers;
    .locals 3

    .line 58
    sget-object v0, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    invoke-direct {p0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;->getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/stripe/jvmcore/environment/EnvironmentKt;->toRequestHeaders(Lcom/stripe/proto/model/rest/UserAgent;Z)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Headers$Companion;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method private final getUserAgent()Lcom/stripe/proto/model/rest/UserAgent;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;->userAgent$delegate:Lcom/stripe/jvmcore/environment/UserAgentProvider;

    sget-object v1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/stripe/jvmcore/environment/UserAgentProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/proto/model/rest/UserAgent;

    move-result-object v0

    return-object v0
.end method

.method private final toBody(Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;)Lokhttp3/FormBody;
    .locals 4

    .line 109
    sget-object v0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequestExt;

    .line 108
    new-instance v1, Lokhttp3/FormBody$Builder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 109
    const-string v2, ""

    invoke-virtual {v0, v1, p1, v2}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequestExt;->addRedeemForOfflineConnectionTokenRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p1

    .line 111
    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/extensions/FormBodyExtensionsKt;->stripEmptyValues(Lokhttp3/FormBody;)Lokhttp3/FormBody;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getHasConnectionToken()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;->hasConnectionToken:Z

    return v0
.end method

.method public redeemOfflineConnection(Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;",
            "Lcom/stripe/loggingmodels/Trace$Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService$redeemOfflineConnection$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService$redeemOfflineConnection$1;

    iget v1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService$redeemOfflineConnection$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService$redeemOfflineConnection$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService$redeemOfflineConnection$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService$redeemOfflineConnection$1;

    invoke-direct {v0, p0, p3}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService$redeemOfflineConnection$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v10, v0

    iget-object p3, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService$redeemOfflineConnection$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 66
    iget v1, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService$redeemOfflineConnection$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService$redeemOfflineConnection$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move p3, v2

    .line 71
    invoke-direct {p0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;->getHeaders()Lokhttp3/Headers;

    move-result-object v2

    .line 72
    invoke-direct {p0, p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;->toBody(Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;)Lokhttp3/FormBody;

    move-result-object v3

    .line 74
    new-instance v4, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v6, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;

    .line 76
    sget-object v8, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;->REDEEM_FOR_OFFLINE:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;

    .line 74
    move-object v5, v4

    check-cast v5, Lcom/squareup/wire/Message;

    .line 77
    move-object v7, p1

    check-cast v7, Lcom/squareup/wire/Message;

    .line 70
    iput-object p0, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService$redeemOfflineConnection$1;->L$0:Ljava/lang/Object;

    iput p3, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService$redeemOfflineConnection$1;->label:I

    const-string v4, "v1/terminal/connection_tokens/redeem_for_offline"

    move-object v1, p0

    move-object v9, p2

    invoke-virtual/range {v1 .. v10}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;->post(Lokhttp3/Headers;Lokhttp3/FormBody;Ljava/lang/String;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    :cond_3
    move-object p1, p0

    .line 79
    :goto_1
    move-object p2, p3

    check-cast p2, Lcom/stripe/jvmcore/restclient/RestResponse;

    .line 81
    instance-of p2, p2, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 82
    invoke-virtual {p1, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;->setHasConnectionToken(Z)V

    :cond_4
    return-object p3
.end method

.method public retrieveAccount(Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/loggingmodels/Trace$Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;->getHeaders()Lokhttp3/Headers;

    move-result-object v1

    .line 93
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 94
    new-instance v3, Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/stripe/proto/model/rest/ErrorWrapper;-><init>(Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/proto/model/rest/LastSetupError;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v5, Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;

    .line 96
    sget-object v7, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;->RETRIEVE_ACCOUNT_ID:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;

    .line 94
    move-object v4, v3

    check-cast v4, Lcom/squareup/wire/Message;

    .line 90
    const-string v3, "v1/terminal/connection_tokens/account"

    move-object v0, p0

    move-object v8, p1

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;->get(Lokhttp3/Headers;Ljava/util/List;Ljava/lang/String;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$RequestType;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-super {p0, p1}, Lcom/stripe/offlinemode/forwarding/OfflineRestService;->setAuthToken(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 104
    invoke-virtual {p0, p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;->setHasConnectionToken(Z)V

    return-void
.end method

.method public setHasConnectionToken(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;->hasConnectionToken:Z

    return-void
.end method
