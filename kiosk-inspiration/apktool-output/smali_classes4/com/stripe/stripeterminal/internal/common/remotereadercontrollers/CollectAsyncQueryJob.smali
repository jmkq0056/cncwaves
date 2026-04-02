.class public abstract Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectAsyncQueryJob;
.super Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;
.source "AsyncQueryJob.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CollectRequest:",
        "Lcom/squareup/wire/Message<",
        "TCollectRequest;*>;CollectResponse:",
        "Lcom/squareup/wire/Message<",
        "TCollectResponse;*>;>",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob<",
        "TCollectRequest;TCollectResponse;",
        "Lcom/stripe/proto/api/sdk/QueryPaymentMethodRequest;",
        "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008 \u0018\u0000*\u0012\u0008\u0000\u0010\u0001*\u000c\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u0002*\u0012\u0008\u0001\u0010\u0003*\u000c\u0012\u0004\u0012\u0002H\u0003\u0012\u0002\u0008\u00030\u00022 \u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004B=\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0002\u0010\u0011J\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00132\u0006\u0010\u0014\u001a\u00020\u0006H\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectAsyncQueryJob;",
        "CollectRequest",
        "Lcom/squareup/wire/Message;",
        "CollectResponse",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;",
        "Lcom/stripe/proto/api/sdk/QueryPaymentMethodRequest;",
        "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;",
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
        "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "getQueryResult",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;",
        "queryResponse",
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


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
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
            ">;)V"
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

    .line 190
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getQueryResult(Lcom/squareup/wire/Message;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;
    .locals 0

    .line 184
    check-cast p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectAsyncQueryJob;->getQueryResult(Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;

    move-result-object p1

    return-object p1
.end method

.method protected getQueryResult(Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;",
            ")",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult<",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            ">;"
        }
    .end annotation

    const-string v0, "queryResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v0, p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    if-eqz v0, :cond_0

    .line 201
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultSucceeded;

    .line 202
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    invoke-virtual {v2, v0, p1}, Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;->newIpData(Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object p1

    .line 201
    invoke-direct {v1, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultSucceeded;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;

    return-object v1

    .line 205
    :cond_0
    iget-object p1, p1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;->payment_status:Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;

    sget-object v0, Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;->PAYMENT_CANCELED:Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse$PaymentRequestStatus;

    if-ne p1, v0, :cond_1

    .line 206
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultCanceled;

    invoke-direct {p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultCanceled;-><init>()V

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;

    return-object p1

    .line 208
    :cond_1
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultPending;

    invoke-direct {p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultPending;-><init>()V

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;

    return-object p1
.end method
