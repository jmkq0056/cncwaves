.class final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$onCreatePaymentIntent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IpReaderController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->onCreatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $createConfiguration:Lcom/stripe/stripeterminal/external/models/CreateConfiguration;

.field final synthetic $paymentIntentParameters:Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$onCreatePaymentIntent$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$onCreatePaymentIntent$1;->$paymentIntentParameters:Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$onCreatePaymentIntent$1;->$createConfiguration:Lcom/stripe/stripeterminal/external/models/CreateConfiguration;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$onCreatePaymentIntent$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getApiRequestFactory$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$onCreatePaymentIntent$1;->$paymentIntentParameters:Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;

    .line 270
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$onCreatePaymentIntent$1;->$createConfiguration:Lcom/stripe/stripeterminal/external/models/CreateConfiguration;

    .line 268
    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;->createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$onCreatePaymentIntent$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getJackrabbitApiClient$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/proto/api/sdk/JackRabbitApi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->createPaymentIntent(Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 273
    :goto_0
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$onCreatePaymentIntent$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v1, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$ensureConnectedJackrabbitResponse(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;

    .line 274
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions;

    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions;->toResult(Lcom/stripe/proto/api/sdk/CreatePaymentIntentResponse;)Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult;

    move-result-object v0

    .line 275
    instance-of v1, v0, Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult$Success;

    if-eqz v1, :cond_1

    .line 276
    check-cast v0, Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult$Success;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult$Success;->getPaymentIntent()Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v0

    return-object v0

    .line 279
    :cond_1
    instance-of v1, v0, Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult$Error;

    if-eqz v1, :cond_2

    .line 280
    check-cast v0, Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult$Error;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/extensions/CreatePaymentIntentResponseExtensions$CreatePaymentIntentResponseResult$Error;->getException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    throw v0

    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$onCreatePaymentIntent$1;->invoke()Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v0

    return-object v0
.end method
