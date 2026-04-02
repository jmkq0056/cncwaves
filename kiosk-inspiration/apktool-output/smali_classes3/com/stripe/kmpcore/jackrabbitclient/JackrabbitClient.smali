.class public final Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;
.super Ljava/lang/Object;
.source "JackrabbitClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c2\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004JN\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"JN\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020%2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"J\\\u0010&\u001a\u0008\u0012\u0004\u0012\u00020(0\'2\u0006\u0010)\u001a\u00020*2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0082@\u00a2\u0006\u0002\u0010+Jf\u0010,\u001a\u00020-2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u000e\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010/2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010)\u001a\u00020*2\u0006\u0010!\u001a\u00020\"H\u0086@\u00a2\u0006\u0002\u00100J\\\u00101\u001a\u0008\u0012\u0004\u0012\u0002020\'2\u0006\u00103\u001a\u0002042\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0082@\u00a2\u0006\u0002\u00105Jf\u00106\u001a\u0002072\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u000e\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010/2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u00108\u001a\u0002092\u0006\u0010!\u001a\u00020\"H\u0086@\u00a2\u0006\u0002\u0010:J\\\u0010;\u001a\u0008\u0012\u0004\u0012\u00020<0\'2\u0006\u0010=\u001a\u00020>2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0082@\u00a2\u0006\u0002\u0010?J\\\u0010@\u001a\u0008\u0012\u0004\u0012\u00020A0\'2\u0006\u0010B\u001a\u00020C2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0082@\u00a2\u0006\u0002\u0010DJ\u0006\u0010E\u001a\u00020\u0013R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006F"
    }
    d2 = {
        "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;",
        "",
        "kmpCrpcClient",
        "Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;",
        "(Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;)V",
        "collectInputsJob",
        "Lkotlinx/coroutines/Deferred;",
        "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "jackRabbitService",
        "",
        "kmpCollectInputsRequestTransformer",
        "Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsRequestTransformer;",
        "kmpCollectInputsResultTransformer",
        "Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer;",
        "getKmpCrpcClient",
        "()Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;",
        "cancelCollectData",
        "",
        "cancelCollectDataRequest",
        "Lcom/stripe/proto/api/sdk/CancelCollectDataRequest;",
        "httpClient",
        "Lio/ktor/client/HttpClient;",
        "sessionToken",
        "localIpAddress",
        "baseUrl",
        "urlPort",
        "",
        "versionInfo",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "deviceInfo",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "urlProtocol",
        "Lio/ktor/http/URLProtocol;",
        "cancelCollectInputs",
        "cancelCollectInputsRequest",
        "Lcom/stripe/proto/api/sdk/CancelCollectInputsRequest;",
        "collectData",
        "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;",
        "Lcom/stripe/proto/api/sdk/CollectDataResponse;",
        "collectDataRequest",
        "Lcom/stripe/proto/api/sdk/CollectDataRequest;",
        "(Lcom/stripe/proto/api/sdk/CollectDataRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "collectDataPollForResult",
        "Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal;",
        "onUnexpectedDisconnect",
        "Lkotlin/Function0;",
        "(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/sdk/CollectDataRequest;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "collectInputs",
        "Lcom/stripe/proto/api/sdk/CollectInputsResponse;",
        "collectInputsRequest",
        "Lcom/stripe/proto/api/sdk/CollectInputsRequest;",
        "(Lcom/stripe/proto/api/sdk/CollectInputsRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "collectInputsPollForResult",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;",
        "kmpCollectInputsParameters",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;",
        "(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "queryCollectData",
        "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;",
        "queryCollectDataRequest",
        "Lcom/stripe/proto/api/sdk/QueryCollectDataRequest;",
        "(Lcom/stripe/proto/api/sdk/QueryCollectDataRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "queryCollectInputs",
        "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;",
        "queryCollectInputsRequest",
        "Lcom/stripe/proto/api/sdk/QueryCollectInputsRequest;",
        "(Lcom/stripe/proto/api/sdk/QueryCollectInputsRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "tearDownConnection",
        "jackrabbitclient_release"
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
.field private collectInputsJob:Lkotlinx/coroutines/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/Deferred<",
            "+",
            "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private final jackRabbitService:Ljava/lang/String;

.field private final kmpCollectInputsRequestTransformer:Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsRequestTransformer;

.field private final kmpCollectInputsResultTransformer:Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer;

.field private final kmpCrpcClient:Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;


# direct methods
.method public constructor <init>(Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;)V
    .locals 1

    const-string v0, "kmpCrpcClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->kmpCrpcClient:Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 49
    invoke-static {p1, v0, p1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 50
    const-string p1, "JackRabbitService"

    iput-object p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->jackRabbitService:Ljava/lang/String;

    .line 52
    new-instance p1, Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer;

    invoke-direct {p1}, Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer;-><init>()V

    iput-object p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->kmpCollectInputsResultTransformer:Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer;

    .line 53
    new-instance p1, Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsRequestTransformer;

    invoke-direct {p1}, Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsRequestTransformer;-><init>()V

    iput-object p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->kmpCollectInputsRequestTransformer:Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsRequestTransformer;

    return-void
.end method

.method public static final synthetic access$collectData(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/proto/api/sdk/CollectDataRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p10}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->collectData(Lcom/stripe/proto/api/sdk/CollectDataRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$collectInputs(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/proto/api/sdk/CollectInputsRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p10}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->collectInputs(Lcom/stripe/proto/api/sdk/CollectInputsRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getJackRabbitService$p(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->jackRabbitService:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$queryCollectData(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/proto/api/sdk/QueryCollectDataRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p10}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->queryCollectData(Lcom/stripe/proto/api/sdk/QueryCollectDataRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$queryCollectInputs(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/proto/api/sdk/QueryCollectInputsRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p10}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->queryCollectInputs(Lcom/stripe/proto/api/sdk/QueryCollectInputsRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final collectData(Lcom/stripe/proto/api/sdk/CollectDataRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/sdk/CollectDataRequest;",
            "Lio/ktor/client/HttpClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            "Lcom/stripe/proto/model/common/DeviceInfo;",
            "Lio/ktor/http/URLProtocol;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse<",
            "Lcom/stripe/proto/api/sdk/CollectDataResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    instance-of v2, v1, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectData$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectData$1;

    iget v3, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectData$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectData$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectData$1;

    invoke-direct {v2, v0, v1}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectData$1;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 369
    iget v4, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectData$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v3

    .line 380
    iget-object v3, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->kmpCrpcClient:Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;

    .line 382
    iget-object v4, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->jackRabbitService:Ljava/lang/String;

    .line 384
    move-object/from16 v7, p1

    check-cast v7, Lcom/squareup/wire/Message;

    .line 385
    sget-object v8, Lcom/stripe/proto/api/sdk/CollectDataRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 386
    sget-object v9, Lcom/stripe/proto/api/sdk/CollectDataResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 380
    iput v5, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectData$1;->label:I

    const-string v6, "collectData"

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v13, p7

    move-object/from16 v12, p8

    move-object/from16 v16, p9

    move-object/from16 v17, v2

    move-object v5, v4

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v17}, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;->post(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;ILio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, v2

    .line 369
    :goto_1
    check-cast v1, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;

    return-object v1
.end method

.method private final collectInputs(Lcom/stripe/proto/api/sdk/CollectInputsRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/sdk/CollectInputsRequest;",
            "Lio/ktor/client/HttpClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            "Lcom/stripe/proto/model/common/DeviceInfo;",
            "Lio/ktor/http/URLProtocol;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse<",
            "Lcom/stripe/proto/api/sdk/CollectInputsResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    instance-of v2, v1, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputs$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputs$1;

    iget v3, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputs$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputs$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputs$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputs$1;

    invoke-direct {v2, v0, v1}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputs$1;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputs$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 217
    iget v4, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputs$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v3

    .line 228
    iget-object v3, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->kmpCrpcClient:Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;

    .line 230
    iget-object v4, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->jackRabbitService:Ljava/lang/String;

    .line 232
    move-object/from16 v7, p1

    check-cast v7, Lcom/squareup/wire/Message;

    .line 233
    sget-object v8, Lcom/stripe/proto/api/sdk/CollectInputsRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 234
    sget-object v9, Lcom/stripe/proto/api/sdk/CollectInputsResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 228
    iput v5, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputs$1;->label:I

    const-string v6, "collectInputs"

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v13, p7

    move-object/from16 v12, p8

    move-object/from16 v16, p9

    move-object/from16 v17, v2

    move-object v5, v4

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v17}, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;->post(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;ILio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, v2

    .line 217
    :goto_1
    check-cast v1, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;

    return-object v1
.end method

.method private final queryCollectData(Lcom/stripe/proto/api/sdk/QueryCollectDataRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/sdk/QueryCollectDataRequest;",
            "Lio/ktor/client/HttpClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            "Lcom/stripe/proto/model/common/DeviceInfo;",
            "Lio/ktor/http/URLProtocol;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse<",
            "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    instance-of v2, v1, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectData$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectData$1;

    iget v3, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectData$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectData$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectData$1;

    invoke-direct {v2, v0, v1}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectData$1;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 398
    iget v4, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectData$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v3

    .line 409
    iget-object v3, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->kmpCrpcClient:Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;

    .line 411
    iget-object v4, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->jackRabbitService:Ljava/lang/String;

    .line 413
    move-object/from16 v7, p1

    check-cast v7, Lcom/squareup/wire/Message;

    .line 414
    sget-object v8, Lcom/stripe/proto/api/sdk/QueryCollectDataRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 415
    sget-object v9, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 409
    iput v5, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectData$1;->label:I

    const-string v6, "queryCollectData"

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v13, p7

    move-object/from16 v12, p8

    move-object/from16 v16, p9

    move-object/from16 v17, v2

    move-object v5, v4

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v17}, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;->post(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;ILio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, v2

    .line 398
    :goto_1
    check-cast v1, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;

    return-object v1
.end method

.method private final queryCollectInputs(Lcom/stripe/proto/api/sdk/QueryCollectInputsRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/sdk/QueryCollectInputsRequest;",
            "Lio/ktor/client/HttpClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            "Lcom/stripe/proto/model/common/DeviceInfo;",
            "Lio/ktor/http/URLProtocol;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse<",
            "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    instance-of v2, v1, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectInputs$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectInputs$1;

    iget v3, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectInputs$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectInputs$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectInputs$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectInputs$1;

    invoke-direct {v2, v0, v1}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectInputs$1;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectInputs$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 246
    iget v4, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectInputs$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v3

    .line 257
    iget-object v3, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->kmpCrpcClient:Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;

    .line 259
    iget-object v4, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->jackRabbitService:Ljava/lang/String;

    .line 261
    move-object/from16 v7, p1

    check-cast v7, Lcom/squareup/wire/Message;

    .line 262
    sget-object v8, Lcom/stripe/proto/api/sdk/QueryCollectInputsRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 263
    sget-object v9, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 257
    iput v5, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$queryCollectInputs$1;->label:I

    const-string v6, "queryCollectInputs"

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    move-object/from16 v13, p7

    move-object/from16 v12, p8

    move-object/from16 v16, p9

    move-object/from16 v17, v2

    move-object v5, v4

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v17}, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;->post(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;ILio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, v2

    .line 246
    :goto_1
    check-cast v1, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;

    return-object v1
.end method


# virtual methods
.method public final cancelCollectData(Lcom/stripe/proto/api/sdk/CancelCollectDataRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;)V
    .locals 13

    const-string v0, "cancelCollectDataRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionToken"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localIpAddress"

    move-object/from16 v6, p4

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrl"

    move-object/from16 v9, p5

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionInfo"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfo"

    move-object/from16 v7, p8

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlProtocol"

    move-object/from16 v11, p9

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectData$1;

    const/4 v12, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move/from16 v10, p6

    invoke-direct/range {v1 .. v12}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectData$1;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lio/ktor/client/HttpClient;Lcom/stripe/proto/api/sdk/CancelCollectDataRequest;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;ILio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x3

    const/4 p2, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 p5, p1

    move-object/from16 p6, p2

    move-object p1, v0

    move-object/from16 p4, v1

    move-object p2, v2

    move-object/from16 p3, v3

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final cancelCollectInputs(Lcom/stripe/proto/api/sdk/CancelCollectInputsRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;)V
    .locals 13

    const-string v0, "cancelCollectInputsRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionToken"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localIpAddress"

    move-object/from16 v6, p4

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrl"

    move-object/from16 v9, p5

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionInfo"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfo"

    move-object/from16 v7, p8

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlProtocol"

    move-object/from16 v11, p9

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;

    const/4 v12, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move/from16 v10, p6

    invoke-direct/range {v1 .. v12}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lio/ktor/client/HttpClient;Lcom/stripe/proto/api/sdk/CancelCollectInputsRequest;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;ILio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x3

    const/4 p2, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 p5, p1

    move-object/from16 p6, p2

    move-object p1, v0

    move-object/from16 p4, v1

    move-object p2, v2

    move-object/from16 p3, v3

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final collectDataPollForResult(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/sdk/CollectDataRequest;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/HttpClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            "Lcom/stripe/proto/model/common/DeviceInfo;",
            "Lcom/stripe/proto/api/sdk/CollectDataRequest;",
            "Lio/ktor/http/URLProtocol;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;,
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    const-class v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 318
    const-string v1, "collectDataPollForResult"

    invoke-static {v0, v1}, Lcom/stripe/kmpcore/jackrabbitclient/LoggerKt;->logInfo(Lkotlin/reflect/KClass;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;

    const/4 v13, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v12, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v3, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v13}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/proto/api/sdk/CollectDataRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object p1, v0

    move-object/from16 p4, v1

    move/from16 p5, v2

    move-object/from16 p6, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    move-object/from16 v1, p11

    .line 366
    invoke-interface {v0, v1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final collectInputsPollForResult(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/HttpClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            "Lcom/stripe/proto/model/common/DeviceInfo;",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;",
            "Lio/ktor/http/URLProtocol;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p11

    instance-of v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$1;

    iget v3, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$1;

    invoke-direct {v2, v1, v0}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$1;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v13, v2

    iget-object v0, v13, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v14

    .line 59
    iget v2, v13, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$1;->label:I

    const-class v15, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v13, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 p11, v15

    move v15, v3

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object/from16 p11, v15

    move v15, v3

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object/from16 p11, v15

    move v15, v3

    goto/16 :goto_4

    :catch_2
    move-object/from16 p11, v15

    move v15, v3

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 71
    const-string v2, "collectInputsPollForResult"

    invoke-static {v0, v2}, Lcom/stripe/kmpcore/jackrabbitclient/LoggerKt;->logInfo(Lkotlin/reflect/KClass;Ljava/lang/String;)V

    .line 73
    iget-object v0, v1, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->kmpCollectInputsRequestTransformer:Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsRequestTransformer;

    move-object/from16 v2, p9

    invoke-virtual {v0, v2}, Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsRequestTransformer;->transform(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;)Lcom/stripe/proto/api/sdk/CollectInputsRequest;

    move-result-object v2

    .line 75
    iget-object v0, v1, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    move-object v4, v0

    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;

    const/4 v12, 0x0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v11, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p10

    move-object/from16 v16, v4

    move-object/from16 p11, v15

    move-object/from16 v4, p2

    move v15, v3

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v12}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/proto/api/sdk/CollectInputsRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p4, v0

    move/from16 p5, v2

    move-object/from16 p6, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p1, v16

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    iput-object v0, v1, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->collectInputsJob:Lkotlinx/coroutines/Deferred;

    if-eqz v0, :cond_4

    .line 183
    :try_start_1
    iput-object v1, v13, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$1;->L$0:Ljava/lang/Object;

    iput v15, v13, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$1;->label:I

    invoke-interface {v0, v13}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-ne v0, v14, :cond_3

    return-object v14

    :cond_3
    move-object v2, v1

    :goto_1
    :try_start_2
    check-cast v0, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;

    if-nez v0, :cond_5

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_5
    move-object v2, v1

    goto :goto_5

    :cond_4
    move-object v2, v1

    :goto_2
    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;

    .line 184
    const-string v3, "collect inputs failed to start"

    .line 183
    invoke-direct {v0, v3}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    .line 197
    :goto_3
    new-instance v3, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;

    .line 198
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-direct {v3, v0}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;

    goto :goto_6

    :catch_7
    move-exception v0

    .line 192
    :goto_4
    new-instance v3, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$CommunicationError;

    .line 193
    invoke-virtual {v0}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-virtual {v0}, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpTerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-direct {v3, v4, v0}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$CommunicationError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;

    goto :goto_6

    .line 187
    :catch_8
    :goto_5
    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$CommunicationError;

    .line 189
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_COMMUNICATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->toString()Ljava/lang/String;

    move-result-object v3

    .line 187
    const-string v4, "reader unexpectedly disconnected"

    invoke-direct {v0, v4, v3}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$CommunicationError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;

    :cond_5
    :goto_6
    const/4 v3, 0x0

    .line 201
    iput-object v3, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->collectInputsJob:Lkotlinx/coroutines/Deferred;

    .line 204
    instance-of v3, v0, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$InvalidParameter;

    if-eqz v3, :cond_6

    move v3, v15

    goto :goto_7

    .line 205
    :cond_6
    instance-of v3, v0, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$MerchantCancelled;

    :goto_7
    if-eqz v3, :cond_7

    move v3, v15

    goto :goto_8

    .line 206
    :cond_7
    instance-of v3, v0, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Timeout;

    :goto_8
    if-eqz v3, :cond_8

    move v3, v15

    goto :goto_9

    .line 207
    :cond_8
    instance-of v3, v0, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Unsupported;

    :goto_9
    if-eqz v3, :cond_9

    move v3, v15

    goto :goto_a

    .line 208
    :cond_9
    instance-of v3, v0, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Success;

    :goto_a
    const-string v4, "collectInputsResult: "

    if-eqz v3, :cond_a

    invoke-static/range {p11 .. p11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/stripe/kmpcore/jackrabbitclient/LoggerKt;->logInfo(Lkotlin/reflect/KClass;Ljava/lang/String;)V

    goto :goto_c

    .line 210
    :cond_a
    instance-of v3, v0, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$CommunicationError;

    if-eqz v3, :cond_b

    move v3, v15

    goto :goto_b

    .line 211
    :cond_b
    instance-of v3, v0, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;

    :goto_b
    if-eqz v3, :cond_c

    invoke-static/range {p11 .. p11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/stripe/kmpcore/jackrabbitclient/LoggerKt;->logError(Lkotlin/reflect/KClass;Ljava/lang/String;)V

    .line 214
    :cond_c
    :goto_c
    iget-object v2, v2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->kmpCollectInputsResultTransformer:Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer;

    invoke-virtual {v2, v0}, Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer;->transform(Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;)Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;

    move-result-object v0

    return-object v0
.end method

.method public final getKmpCrpcClient()Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->kmpCrpcClient:Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;

    return-object v0
.end method

.method public final tearDownConnection()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->collectInputsJob:Lkotlinx/coroutines/Deferred;

    if-eqz v0, :cond_0

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
