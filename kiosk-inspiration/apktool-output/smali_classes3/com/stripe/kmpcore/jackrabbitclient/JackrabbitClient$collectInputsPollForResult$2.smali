.class final Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JackrabbitClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->collectInputsPollForResult(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;",
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
        "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;",
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
    c = "com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$collectInputsPollForResult$2"
    f = "JackrabbitClient.kt"
    i = {
        0x0,
        0x1,
        0x2,
        0x2,
        0x3
    }
    l = {
        0x4d,
        0x6f,
        0x7a,
        0x7e
    }
    m = "invokeSuspend"
    n = {
        "$this$async",
        "$this$async",
        "$this$async",
        "queryResponse",
        "$this$async"
    }
    s = {
        "L$0",
        "L$0",
        "L$0",
        "L$1",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $baseUrl:Ljava/lang/String;

.field final synthetic $collectInputsRequest:Lcom/stripe/proto/api/sdk/CollectInputsRequest;

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

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;


# direct methods
.method constructor <init>(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/proto/api/sdk/CollectInputsRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;",
            "Lcom/stripe/proto/api/sdk/CollectInputsRequest;",
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
            "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->this$0:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    iput-object p2, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$collectInputsRequest:Lcom/stripe/proto/api/sdk/CollectInputsRequest;

    iput-object p3, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$httpClient:Lio/ktor/client/HttpClient;

    iput-object p4, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$sessionToken:Ljava/lang/String;

    iput-object p5, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$localIpAddress:Ljava/lang/String;

    iput-object p6, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$baseUrl:Ljava/lang/String;

    iput p7, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$urlPort:I

    iput-object p8, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$versionInfo:Lcom/stripe/proto/model/common/VersionInfoPb;

    iput-object p9, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$deviceInfo:Lcom/stripe/proto/model/common/DeviceInfo;

    iput-object p10, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$urlProtocol:Lio/ktor/http/URLProtocol;

    iput-object p11, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$onUnexpectedDisconnect:Lkotlin/jvm/functions/Function0;

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

    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;

    iget-object v1, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->this$0:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    iget-object v2, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$collectInputsRequest:Lcom/stripe/proto/api/sdk/CollectInputsRequest;

    iget-object v3, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$httpClient:Lio/ktor/client/HttpClient;

    iget-object v4, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$sessionToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$localIpAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$baseUrl:Ljava/lang/String;

    iget v7, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$urlPort:I

    iget-object v8, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$versionInfo:Lcom/stripe/proto/model/common/VersionInfoPb;

    iget-object v9, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$deviceInfo:Lcom/stripe/proto/model/common/DeviceInfo;

    iget-object v10, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$urlProtocol:Lio/ktor/http/URLProtocol;

    iget-object v11, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$onUnexpectedDisconnect:Lkotlin/jvm/functions/Function0;

    move-object v12, p2

    invoke-direct/range {v0 .. v12}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/proto/api/sdk/CollectInputsRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 75
    iget v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->label:I

    const/4 v3, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v10, :cond_3

    if-eq v2, v8, :cond_2

    if-eq v2, v7, :cond_1

    if-ne v2, v6, :cond_0

    iget-object v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-wide/16 v5, 0xfa

    goto/16 :goto_5

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;

    iget-object v11, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget-object v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_2

    :cond_3
    iget-object v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 77
    iget-object v11, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->this$0:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    .line 78
    iget-object v12, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$collectInputsRequest:Lcom/stripe/proto/api/sdk/CollectInputsRequest;

    .line 79
    iget-object v13, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$httpClient:Lio/ktor/client/HttpClient;

    .line 80
    iget-object v14, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$sessionToken:Ljava/lang/String;

    .line 81
    iget-object v15, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$localIpAddress:Ljava/lang/String;

    .line 82
    iget-object v6, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$baseUrl:Ljava/lang/String;

    .line 83
    iget v4, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$urlPort:I

    .line 84
    iget-object v5, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$versionInfo:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 85
    iget-object v7, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$deviceInfo:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 86
    iget-object v8, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$urlProtocol:Lio/ktor/http/URLProtocol;

    move-object/from16 v21, v0

    check-cast v21, Lkotlin/coroutines/Continuation;

    .line 77
    iput-object v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->L$0:Ljava/lang/Object;

    iput v10, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->label:I

    move/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v16, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-static/range {v11 .. v21}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->access$collectInputs(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/proto/api/sdk/CollectInputsRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_5

    goto/16 :goto_4

    .line 75
    :cond_5
    :goto_0
    check-cast v4, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;

    .line 88
    sget-object v5, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;->INSTANCE:Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;

    iget-object v6, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$onUnexpectedDisconnect:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v5, v4, v6}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;->ensureConnectedJackrabbitResponse(Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;Lkotlin/jvm/functions/Function0;)Lcom/squareup/wire/Message;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/api/sdk/CollectInputsResponse;

    const-class v5, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "collectInputsResponse: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/stripe/kmpcore/jackrabbitclient/LoggerKt;->logInfo(Lkotlin/reflect/KClass;Ljava/lang/String;)V

    .line 90
    iget-object v5, v4, Lcom/stripe/proto/api/sdk/CollectInputsResponse;->successfully_started:Lcom/stripe/proto/api/sdk/CollectInputsResponse$SuccessfullyStarted;

    if-nez v5, :cond_8

    .line 92
    iget-object v1, v4, Lcom/stripe/proto/api/sdk/CollectInputsResponse;->failed:Lcom/stripe/proto/model/sdk/Error;

    const-string v2, "failed to start collect inputs"

    if-eqz v1, :cond_7

    .line 93
    iget-object v1, v4, Lcom/stripe/proto/api/sdk/CollectInputsResponse;->failed:Lcom/stripe/proto/model/sdk/Error;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v3, v10, v9}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->toTerminalException$default(Lcom/stripe/proto/model/sdk/Error;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v1

    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->COLLECT_INPUTS_UNSUPPORTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    if-ne v1, v3, :cond_6

    .line 95
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Unsupported;

    .line 96
    iget-object v2, v4, Lcom/stripe/proto/api/sdk/CollectInputsResponse;->failed:Lcom/stripe/proto/model/sdk/Error;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/stripe/proto/model/sdk/Error;->message:Ljava/lang/String;

    .line 95
    invoke-direct {v1, v2}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Unsupported;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 99
    :cond_6
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;

    invoke-direct {v1, v2}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 104
    :cond_7
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;

    invoke-direct {v1, v2}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 109
    :cond_8
    :goto_1
    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 110
    new-instance v12, Lcom/stripe/proto/api/sdk/QueryCollectInputsRequest;

    invoke-direct {v12, v9, v10, v9}, Lcom/stripe/proto/api/sdk/QueryCollectInputsRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 111
    iget-object v11, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->this$0:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    .line 113
    iget-object v13, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$httpClient:Lio/ktor/client/HttpClient;

    .line 114
    iget-object v14, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$sessionToken:Ljava/lang/String;

    .line 115
    iget-object v15, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$localIpAddress:Ljava/lang/String;

    .line 116
    iget-object v4, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$baseUrl:Ljava/lang/String;

    .line 117
    iget v5, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$urlPort:I

    .line 118
    iget-object v6, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$versionInfo:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 119
    iget-object v7, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$deviceInfo:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 120
    iget-object v8, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$urlProtocol:Lio/ktor/http/URLProtocol;

    move-object/from16 v21, v0

    check-cast v21, Lkotlin/coroutines/Continuation;

    .line 111
    iput-object v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->L$0:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->label:I

    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-static/range {v11 .. v21}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->access$queryCollectInputs(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lcom/stripe/proto/api/sdk/QueryCollectInputsRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_9

    goto :goto_4

    .line 75
    :cond_9
    :goto_2
    check-cast v3, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;

    .line 122
    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->L$1:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->label:I

    const-wide/16 v5, 0xfa

    invoke-static {v5, v6, v4}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_a

    goto :goto_4

    :cond_a
    move-object v11, v2

    move-object v2, v3

    .line 123
    :goto_3
    sget-object v3, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;->INSTANCE:Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;

    iget-object v4, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->$onUnexpectedDisconnect:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v2, v4}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponseExtensions;->ensureConnectedJackrabbitResponse(Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;Lkotlin/jvm/functions/Function0;)Lcom/squareup/wire/Message;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;

    .line 124
    iget-object v3, v2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->pending:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;

    if-eqz v3, :cond_c

    .line 126
    iput-object v11, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->L$1:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2;->label:I

    const-wide/16 v5, 0xfa

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_b

    :goto_4
    return-object v1

    :cond_b
    move-object v2, v11

    :goto_5
    const/4 v3, 0x0

    goto :goto_1

    .line 127
    :cond_c
    iget-object v1, v2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->failed:Lcom/stripe/proto/model/sdk/Error;

    if-eqz v1, :cond_12

    .line 128
    iget-object v1, v2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->failed:Lcom/stripe/proto/model/sdk/Error;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-static {v1, v3, v10, v9}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->toTerminalException$default(Lcom/stripe/proto/model/sdk/Error;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v1

    sget-object v3, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$collectInputsPollForResult$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v10, :cond_11

    const/4 v3, 0x2

    if-eq v1, v3, :cond_10

    const/4 v5, 0x3

    if-eq v1, v5, :cond_f

    const/4 v3, 0x4

    if-eq v1, v3, :cond_e

    const/4 v3, 0x5

    if-eq v1, v3, :cond_d

    .line 161
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;

    .line 162
    iget-object v2, v2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->failed:Lcom/stripe/proto/model/sdk/Error;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/stripe/proto/model/sdk/Error;->message:Ljava/lang/String;

    .line 161
    invoke-direct {v1, v2}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 155
    :cond_d
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Unsupported;

    .line 156
    iget-object v2, v2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->failed:Lcom/stripe/proto/model/sdk/Error;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/stripe/proto/model/sdk/Error;->message:Ljava/lang/String;

    .line 155
    invoke-direct {v1, v2}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Unsupported;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 149
    :cond_e
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Timeout;

    .line 150
    iget-object v2, v2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->failed:Lcom/stripe/proto/model/sdk/Error;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/stripe/proto/model/sdk/Error;->message:Ljava/lang/String;

    .line 149
    invoke-direct {v1, v2}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Timeout;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 143
    :cond_f
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$MerchantCancelled;

    .line 144
    iget-object v2, v2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->failed:Lcom/stripe/proto/model/sdk/Error;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/stripe/proto/model/sdk/Error;->message:Ljava/lang/String;

    .line 143
    invoke-direct {v1, v2}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$MerchantCancelled;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 137
    :cond_10
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;

    .line 138
    iget-object v2, v2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->failed:Lcom/stripe/proto/model/sdk/Error;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/stripe/proto/model/sdk/Error;->message:Ljava/lang/String;

    .line 137
    invoke-direct {v1, v2}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 131
    :cond_11
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$InvalidParameter;

    .line 132
    iget-object v2, v2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->failed:Lcom/stripe/proto/model/sdk/Error;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/stripe/proto/model/sdk/Error;->message:Ljava/lang/String;

    .line 131
    invoke-direct {v1, v2}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$InvalidParameter;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 166
    :cond_12
    iget-object v1, v2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->successfully_completed:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;

    if-eqz v1, :cond_13

    .line 167
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Success;

    .line 168
    iget-object v2, v2, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;->successfully_completed:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 167
    invoke-direct {v1, v2}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Success;-><init>(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;)V

    return-object v1

    .line 171
    :cond_13
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;

    .line 172
    const-string v2, "failed to query for collect inputs results"

    .line 171
    invoke-direct {v1, v2}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 177
    :cond_14
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;

    .line 178
    const-string v2, "collect inputs unexpectedly stopped"

    .line 177
    invoke-direct {v1, v2}, Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
