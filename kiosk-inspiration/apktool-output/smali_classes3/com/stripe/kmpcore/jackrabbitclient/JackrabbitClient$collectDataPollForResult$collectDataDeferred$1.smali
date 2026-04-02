.class final Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JackrabbitClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->collectDataPollForResult(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/sdk/CollectDataRequest;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$collectDataPollForResult$collectDataDeferred$1"
    f = "JackrabbitClient.kt"
    i = {
        0x0,
        0x1,
        0x2
    }
    l = {
        0x140,
        0x14e,
        0x15c
    }
    m = "invokeSuspend"
    n = {
        "$this$async",
        "$this$async",
        "$this$async"
    }
    s = {
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $baseUrl:Ljava/lang/String;

.field final synthetic $collectDataRequest:Lcom/stripe/proto/api/sdk/CollectDataRequest;

.field final synthetic $deviceInfo:Lcom/stripe/proto/model/common/DeviceInfo;

.field final synthetic $httpClient:Lio/ktor/client/HttpClient;

.field final synthetic $localIpAddress:Ljava/lang/String;

.field final synthetic $onUnexpectedDisconnect:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sessionToken:Ljava/lang/String;

.field final synthetic $urlPort:I

.field final synthetic $urlProtocol:Lio/ktor/http/URLProtocol;

.field final synthetic $versionInfo:Lcom/stripe/proto/model/common/VersionInfoPb;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;


# direct methods
.method constructor <init>(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/proto/api/sdk/CollectDataRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;",
            "Lcom/stripe/proto/api/sdk/CollectDataRequest;",
            "Lio/ktor/client/HttpClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            "Lcom/stripe/proto/model/common/DeviceInfo;",
            "Lio/ktor/http/URLProtocol;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->this$0:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    iput-object p2, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$collectDataRequest:Lcom/stripe/proto/api/sdk/CollectDataRequest;

    iput-object p3, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$httpClient:Lio/ktor/client/HttpClient;

    iput-object p4, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$sessionToken:Ljava/lang/String;

    iput-object p5, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$localIpAddress:Ljava/lang/String;

    iput-object p6, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$baseUrl:Ljava/lang/String;

    iput p7, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$urlPort:I

    iput-object p8, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$versionInfo:Lcom/stripe/proto/model/common/VersionInfoPb;

    iput-object p9, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$deviceInfo:Lcom/stripe/proto/model/common/DeviceInfo;

    iput-object p10, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$urlProtocol:Lio/ktor/http/URLProtocol;

    iput-object p11, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$onUnexpectedDisconnect:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p12}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;

    iget-object v1, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->this$0:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    iget-object v2, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$collectDataRequest:Lcom/stripe/proto/api/sdk/CollectDataRequest;

    iget-object v3, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$httpClient:Lio/ktor/client/HttpClient;

    iget-object v4, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$sessionToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$localIpAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$baseUrl:Ljava/lang/String;

    iget v7, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$urlPort:I

    iget-object v8, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$versionInfo:Lcom/stripe/proto/model/common/VersionInfoPb;

    iget-object v9, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$deviceInfo:Lcom/stripe/proto/model/common/DeviceInfo;

    iget-object v10, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$urlProtocol:Lio/ktor/http/URLProtocol;

    iget-object v11, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$onUnexpectedDisconnect:Lkotlin/jvm/functions/Function0;

    move-object v12, p2

    invoke-direct/range {v0 .. v12}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/proto/api/sdk/CollectDataRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 319
    iget v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 320
    iget-object v6, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->this$0:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    .line 321
    iget-object v7, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$collectDataRequest:Lcom/stripe/proto/api/sdk/CollectDataRequest;

    .line 322
    iget-object v8, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$httpClient:Lio/ktor/client/HttpClient;

    .line 323
    iget-object v9, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$sessionToken:Ljava/lang/String;

    .line 324
    iget-object v10, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$localIpAddress:Ljava/lang/String;

    .line 325
    iget-object v11, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$baseUrl:Ljava/lang/String;

    .line 326
    iget v12, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$urlPort:I

    .line 327
    iget-object v13, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$versionInfo:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 328
    iget-object v14, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$deviceInfo:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 329
    iget-object v15, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$urlProtocol:Lio/ktor/http/URLProtocol;

    move-object/from16 v16, v0

    check-cast v16, Lkotlin/coroutines/Continuation;

    .line 320
    iput-object v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->label:I

    invoke-static/range {v6 .. v16}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->access$collectData(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/proto/api/sdk/CollectDataRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_4

    goto :goto_3

    .line 319
    :cond_4
    :goto_0
    check-cast v6, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;

    .line 331
    sget-object v7, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;->INSTANCE:Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;

    iget-object v8, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$onUnexpectedDisconnect:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v6, v8}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;->ensureConnectedJackrabbitResponse(Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;Lkotlin/jvm/functions/Function0;)Lcom/squareup/wire/Message;

    .line 332
    :cond_5
    :goto_1
    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 333
    new-instance v8, Lcom/stripe/proto/api/sdk/QueryCollectDataRequest;

    const/4 v6, 0x0

    invoke-direct {v8, v6, v5, v6}, Lcom/stripe/proto/api/sdk/QueryCollectDataRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 334
    iget-object v7, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->this$0:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    .line 336
    iget-object v9, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$httpClient:Lio/ktor/client/HttpClient;

    .line 337
    iget-object v10, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$sessionToken:Ljava/lang/String;

    .line 338
    iget-object v11, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$localIpAddress:Ljava/lang/String;

    .line 339
    iget-object v12, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$baseUrl:Ljava/lang/String;

    .line 340
    iget v13, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$urlPort:I

    .line 341
    iget-object v14, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$versionInfo:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 342
    iget-object v15, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$deviceInfo:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 343
    iget-object v6, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$urlProtocol:Lio/ktor/http/URLProtocol;

    move-object/from16 v17, v0

    check-cast v17, Lkotlin/coroutines/Continuation;

    .line 334
    iput-object v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->label:I

    move-object/from16 v16, v6

    invoke-static/range {v7 .. v17}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->access$queryCollectData(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/proto/api/sdk/QueryCollectDataRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    check-cast v6, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;

    const-class v7, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    .line 345
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "queryCollectDataResponse: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/stripe/kmpcore/jackrabbitclient/LoggerKt;->logInfo(Lkotlin/reflect/KClass;Ljava/lang/String;)V

    .line 346
    sget-object v7, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;->INSTANCE:Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;

    iget-object v8, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->$onUnexpectedDisconnect:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v6, v8}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;->ensureConnectedJackrabbitResponse(Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;Lkotlin/jvm/functions/Function0;)Lcom/squareup/wire/Message;

    move-result-object v6

    check-cast v6, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;

    .line 348
    iget-object v7, v6, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->status:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;

    sget-object v8, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;->PENDING:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;

    if-ne v7, v8, :cond_7

    iput-object v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectDataPollForResult$collectDataDeferred$1;->label:I

    const-wide/16 v6, 0xfa

    invoke-static {v6, v7, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_5

    :goto_3
    return-object v1

    .line 349
    :cond_7
    iget-object v1, v6, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->collected_data:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    if-eqz v1, :cond_8

    .line 350
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Success;

    .line 351
    iget-object v2, v6, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->collected_data:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 350
    invoke-direct {v1, v2}, Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Success;-><init>(Lcom/stripe/proto/model/rest/ReaderCollectedData;)V

    return-object v1

    .line 353
    :cond_8
    iget-object v1, v6, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    if-eqz v1, :cond_9

    .line 354
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure$ApplicationError;

    .line 355
    iget-object v2, v6, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;->error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 354
    invoke-direct {v1, v2}, Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure$ApplicationError;-><init>(Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;)V

    return-object v1

    .line 358
    :cond_9
    sget-object v1, Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure$UnexpectedError;->INSTANCE:Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure$UnexpectedError;

    return-object v1

    .line 363
    :cond_a
    sget-object v1, Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure$UnexpectedError;->INSTANCE:Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure$UnexpectedError;

    return-object v1
.end method
