.class final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IpReaderController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->collectData(Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$collectData$1"
    f = "IpReaderController.kt"
    i = {}
    l = {
        0x289
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $crpcClient:Lcom/stripe/jvmcore/crpcclient/CrpcClient;

.field final synthetic $enableCustomerCancellation:Z

.field final synthetic $ktorHttpClient:Lio/ktor/client/HttpClient;

.field final synthetic $onDataCollected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/stripe/proto/model/rest/ReaderCollectedData;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onFailure:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $type:Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;

.field final synthetic $url:Lokhttp3/HttpUrl;

.field final synthetic $urlProtocol:Lio/ktor/http/URLProtocol;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lio/ktor/client/HttpClient;Lcom/stripe/jvmcore/crpcclient/CrpcClient;Lokhttp3/HttpUrl;Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;ZLio/ktor/http/URLProtocol;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;",
            "Lio/ktor/client/HttpClient;",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
            "Lokhttp3/HttpUrl;",
            "Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;",
            "Z",
            "Lio/ktor/http/URLProtocol;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/proto/model/rest/ReaderCollectedData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$ktorHttpClient:Lio/ktor/client/HttpClient;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$crpcClient:Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$url:Lokhttp3/HttpUrl;

    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$type:Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;

    iput-boolean p6, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$enableCustomerCancellation:Z

    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$urlProtocol:Lio/ktor/http/URLProtocol;

    iput-object p8, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$onDataCollected:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$onFailure:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11
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

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$ktorHttpClient:Lio/ktor/client/HttpClient;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$crpcClient:Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$url:Lokhttp3/HttpUrl;

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$type:Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;

    iget-boolean v6, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$enableCustomerCancellation:Z

    iget-object v7, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$urlProtocol:Lio/ktor/http/URLProtocol;

    iget-object v8, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$onDataCollected:Lkotlin/jvm/functions/Function1;

    iget-object v9, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$onFailure:Lkotlin/jvm/functions/Function1;

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lio/ktor/client/HttpClient;Lcom/stripe/jvmcore/crpcclient/CrpcClient;Lokhttp3/HttpUrl;Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;ZLio/ktor/http/URLProtocol;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 647
    iget v2, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v2, p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 649
    :try_start_1
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getJackrabbitClient$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    move-result-object v4

    .line 650
    iget-object v5, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$ktorHttpClient:Lio/ktor/client/HttpClient;

    .line 651
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$crpcClient:Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getRequestContextProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getSessionToken()Ljava/lang/String;

    move-result-object v6

    .line 652
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$crpcClient:Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getRequestContextProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getLocalIp()Ljava/lang/String;

    move-result-object v7

    .line 653
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$url:Lokhttp3/HttpUrl;

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v8

    .line 654
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$url:Lokhttp3/HttpUrl;

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->port()I

    move-result v9

    .line 655
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getOnUnexpectedDisconnect$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lkotlin/jvm/functions/Function0;

    move-result-object v10

    .line 656
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$crpcClient:Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getRequestContextProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v11

    .line 657
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$crpcClient:Lcom/stripe/jvmcore/crpcclient/CrpcClient;

    invoke-virtual {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcClient;->getRequestContextProvider()Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;->getDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v12

    .line 658
    new-instance v13, Lcom/stripe/proto/api/sdk/CollectDataRequest;

    iget-object v14, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$type:Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;

    iget-boolean v15, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$enableCustomerCancellation:Z

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v18}, Lcom/stripe/proto/api/sdk/CollectDataRequest;-><init>(Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 659
    iget-object v14, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$urlProtocol:Lio/ktor/http/URLProtocol;

    move-object v15, v1

    check-cast v15, Lkotlin/coroutines/Continuation;

    .line 649
    iput v3, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->label:I

    invoke-virtual/range {v4 .. v15}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->collectDataPollForResult(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/sdk/CollectDataRequest;Lio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return-object v0

    .line 647
    :cond_2
    :goto_0
    check-cast v2, Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal;

    .line 662
    instance-of v0, v2, Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Success;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$onDataCollected:Lkotlin/jvm/functions/Function1;

    check-cast v2, Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Success;

    invoke-virtual {v2}, Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Success;->getReaderCollectedData()Lcom/stripe/proto/model/rest/ReaderCollectedData;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 663
    :cond_3
    instance-of v0, v2, Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure$ApplicationError;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$onFailure:Lkotlin/jvm/functions/Function1;

    .line 665
    move-object v3, v2

    check-cast v3, Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure$ApplicationError;

    invoke-virtual {v3}, Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure$ApplicationError;->getErrorResponse()Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    move-result-object v3

    iget-object v3, v3, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;->wrapped_error:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 666
    check-cast v2, Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure$ApplicationError;

    invoke-virtual {v2}, Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure$ApplicationError;->getErrorResponse()Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;->error:Lcom/stripe/proto/model/sdk/Error;

    .line 664
    invoke-static {v3, v2}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->convertJackRabbitErrorToTerminalException(Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v2

    .line 663
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 669
    :cond_4
    instance-of v0, v2, Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal$Failure$UnexpectedError;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$onFailure:Lkotlin/jvm/functions/Function1;

    .line 670
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 671
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 672
    const-string v4, "Unexpected error while collecting data"

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 670
    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 669
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 677
    :goto_1
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IpReaderController Collect data failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lkotlin/Pair;

    invoke-interface {v2, v3, v4}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 678
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$collectData$1;->$onFailure:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    :cond_5
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
