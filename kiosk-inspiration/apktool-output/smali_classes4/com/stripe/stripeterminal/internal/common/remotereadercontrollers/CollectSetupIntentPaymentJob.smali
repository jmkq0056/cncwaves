.class public final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectSetupIntentPaymentJob;
.super Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;
.source "AsyncQueryJob.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob<",
        "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;",
        "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodResponse;",
        "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodRequest;",
        "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002 \u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0001BM\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0013J\u000e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0015H\u0014J\u0016\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00172\u0006\u0010\u0018\u001a\u00020\u0005H\u0014J\u000e\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0015H\u0014R\u000e\u0010\u0010\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectSetupIntentPaymentJob;",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;",
        "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;",
        "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodResponse;",
        "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodRequest;",
        "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "callback",
        "Lkotlin/Function1;",
        "",
        "onFailure",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "collectRequest",
        "jackrabbitApiClient",
        "Lcom/stripe/proto/api/sdk/JackRabbitApi;",
        "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;Lcom/stripe/proto/api/sdk/JackRabbitApi;)V",
        "executeJobRequest",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "getQueryResult",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;",
        "queryResponse",
        "queryJobRequest",
        "common_publish"
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
.field private final collectRequest:Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;

.field private final jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;Lcom/stripe/proto/api/sdk/JackRabbitApi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;",
            "Lcom/stripe/proto/api/sdk/JackRabbitApi;",
            ")V"
        }
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFailure"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectRequest"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jackrabbitApiClient"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 108
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectSetupIntentPaymentJob;->collectRequest:Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;

    .line 109
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectSetupIntentPaymentJob;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    return-void
.end method


# virtual methods
.method protected executeJobRequest()Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodResponse;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectSetupIntentPaymentJob;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectSetupIntentPaymentJob;->collectRequest:Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->collectSetupIntentPaymentMethod(Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getQueryResult(Lcom/squareup/wire/Message;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;
    .locals 0

    .line 103
    check-cast p1, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectSetupIntentPaymentJob;->getQueryResult(Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;

    move-result-object p1

    return-object p1
.end method

.method protected getQueryResult(Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;",
            ")",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult<",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            ">;"
        }
    .end annotation

    const-string v0, "queryResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p1, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    if-eqz v0, :cond_0

    .line 128
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultSucceeded;

    .line 129
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;->newIpData(Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v0

    .line 128
    invoke-direct {p1, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultSucceeded;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;

    return-object p1

    .line 132
    :cond_0
    iget-object p1, p1, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;

    .line 133
    sget-object v0, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;->PAYMENT_CANCELED:Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse$SetupIntentPaymentMethodRequestStatus;

    if-ne p1, v0, :cond_1

    .line 134
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultCanceled;

    invoke-direct {p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultCanceled;-><init>()V

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;

    return-object p1

    .line 136
    :cond_1
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultPending;

    invoke-direct {p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultPending;-><init>()V

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;

    return-object p1
.end method

.method protected queryJobRequest()Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodResponse;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectSetupIntentPaymentJob;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    new-instance v1, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodRequest;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->querySetupIntentPaymentMethod(Lcom/stripe/proto/api/sdk/QuerySetupIntentPaymentMethodRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object v0

    return-object v0
.end method
