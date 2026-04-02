.class public final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ResumePaymentJob;
.super Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectAsyncQueryJob;
.source "AsyncQueryJob.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectAsyncQueryJob<",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001BM\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u0012\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000b0\t\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0014H\u0014J\u000e\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0014H\u0014R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ResumePaymentJob;",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectAsyncQueryJob;",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "callback",
        "Lkotlin/Function1;",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "",
        "onFailure",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "collectRequest",
        "Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;",
        "jackrabbitApiClient",
        "Lcom/stripe/proto/api/sdk/JackRabbitApi;",
        "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;Lcom/stripe/proto/api/sdk/JackRabbitApi;)V",
        "executeJobRequest",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "queryJobRequest",
        "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;",
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
.field private final collectRequest:Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;

.field private final jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;Lcom/stripe/proto/api/sdk/JackRabbitApi;)V
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
            "Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;",
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

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CollectAsyncQueryJob;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 64
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ResumePaymentJob;->collectRequest:Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;

    .line 65
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ResumePaymentJob;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    return-void
.end method


# virtual methods
.method protected executeJobRequest()Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/api/sdk/CollectPaymentMethodResponse;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ResumePaymentJob;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ResumePaymentJob;->collectRequest:Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->resumeCollectPaymentMethod(Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object v0

    return-object v0
.end method

.method protected queryJobRequest()Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/api/sdk/QueryPaymentMethodResponse;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ResumePaymentJob;->jackrabbitApiClient:Lcom/stripe/proto/api/sdk/JackRabbitApi;

    new-instance v1, Lcom/stripe/proto/api/sdk/QueryPaymentMethodRequest;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/stripe/proto/api/sdk/QueryPaymentMethodRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->queryPaymentMethod(Lcom/stripe/proto/api/sdk/QueryPaymentMethodRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object v0

    return-object v0
.end method
