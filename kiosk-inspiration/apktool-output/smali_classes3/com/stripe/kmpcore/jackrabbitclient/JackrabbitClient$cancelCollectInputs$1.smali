.class final Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JackrabbitClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->cancelCollectInputs(Lcom/stripe/proto/api/sdk/CancelCollectInputsRequest;Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lio/ktor/http/URLProtocol;)V
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
    c = "com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$cancelCollectInputs$1"
    f = "JackrabbitClient.kt"
    i = {}
    l = {
        0x11f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $baseUrl:Ljava/lang/String;

.field final synthetic $cancelCollectInputsRequest:Lcom/stripe/proto/api/sdk/CancelCollectInputsRequest;

.field final synthetic $deviceInfo:Lcom/stripe/proto/model/common/DeviceInfo;

.field final synthetic $httpClient:Lio/ktor/client/HttpClient;

.field final synthetic $localIpAddress:Ljava/lang/String;

.field final synthetic $sessionToken:Ljava/lang/String;

.field final synthetic $urlPort:I

.field final synthetic $urlProtocol:Lio/ktor/http/URLProtocol;

.field final synthetic $versionInfo:Lcom/stripe/proto/model/common/VersionInfoPb;

.field label:I

.field final synthetic this$0:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;


# direct methods
.method constructor <init>(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lio/ktor/client/HttpClient;Lcom/stripe/proto/api/sdk/CancelCollectInputsRequest;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;ILio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;",
            "Lio/ktor/client/HttpClient;",
            "Lcom/stripe/proto/api/sdk/CancelCollectInputsRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/common/DeviceInfo;",
            "Lcom/stripe/proto/model/common/VersionInfoPb;",
            "Ljava/lang/String;",
            "I",
            "Lio/ktor/http/URLProtocol;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->this$0:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    iput-object p2, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$httpClient:Lio/ktor/client/HttpClient;

    iput-object p3, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$cancelCollectInputsRequest:Lcom/stripe/proto/api/sdk/CancelCollectInputsRequest;

    iput-object p4, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$sessionToken:Ljava/lang/String;

    iput-object p5, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$localIpAddress:Ljava/lang/String;

    iput-object p6, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$deviceInfo:Lcom/stripe/proto/model/common/DeviceInfo;

    iput-object p7, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$versionInfo:Lcom/stripe/proto/model/common/VersionInfoPb;

    iput-object p8, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$baseUrl:Ljava/lang/String;

    iput p9, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$urlPort:I

    iput-object p10, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$urlProtocol:Lio/ktor/http/URLProtocol;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p11}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 12
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

    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;

    iget-object v1, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->this$0:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    iget-object v2, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$httpClient:Lio/ktor/client/HttpClient;

    iget-object v3, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$cancelCollectInputsRequest:Lcom/stripe/proto/api/sdk/CancelCollectInputsRequest;

    iget-object v4, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$sessionToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$localIpAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$deviceInfo:Lcom/stripe/proto/model/common/DeviceInfo;

    iget-object v7, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$versionInfo:Lcom/stripe/proto/model/common/VersionInfoPb;

    iget-object v8, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$baseUrl:Ljava/lang/String;

    iget v9, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$urlPort:I

    iget-object v10, p0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$urlProtocol:Lio/ktor/http/URLProtocol;

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;Lio/ktor/client/HttpClient;Lcom/stripe/proto/api/sdk/CancelCollectInputsRequest;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;ILio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 286
    iget v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 287
    iget-object v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->this$0:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    invoke-virtual {v2}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->getKmpCrpcClient()Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;

    move-result-object v4

    .line 288
    iget-object v5, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$httpClient:Lio/ktor/client/HttpClient;

    .line 289
    iget-object v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->this$0:Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    invoke-static {v2}, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;->access$getJackRabbitService$p(Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;)Ljava/lang/String;

    move-result-object v6

    .line 291
    iget-object v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$cancelCollectInputsRequest:Lcom/stripe/proto/api/sdk/CancelCollectInputsRequest;

    move-object v8, v2

    check-cast v8, Lcom/squareup/wire/Message;

    .line 292
    sget-object v9, Lcom/stripe/proto/api/sdk/CancelCollectInputsRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 293
    sget-object v10, Lcom/stripe/proto/api/sdk/CancelCollectInputsResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 294
    iget-object v11, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$sessionToken:Ljava/lang/String;

    .line 295
    iget-object v12, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$localIpAddress:Ljava/lang/String;

    .line 296
    iget-object v13, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$deviceInfo:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 297
    iget-object v14, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$versionInfo:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 298
    iget-object v15, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$baseUrl:Ljava/lang/String;

    .line 299
    iget v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$urlPort:I

    .line 300
    iget-object v7, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->$urlProtocol:Lio/ktor/http/URLProtocol;

    move-object/from16 v18, v0

    check-cast v18, Lkotlin/coroutines/Continuation;

    .line 287
    iput v3, v0, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient$cancelCollectInputs$1;->label:I

    move-object/from16 v17, v7

    const-string v7, "cancelCollectInputs"

    move/from16 v16, v2

    invoke-virtual/range {v4 .. v18}, Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;->post(Lio/ktor/client/HttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;ILio/ktor/http/URLProtocol;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    .line 302
    :cond_2
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
