.class final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelPaymentIntent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IpReaderController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
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
.field final synthetic $paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelPaymentIntent$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelPaymentIntent$1;->$paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 3

    .line 588
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelPaymentIntent$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getJackrabbitApiClient$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/proto/api/sdk/JackRabbitApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelPaymentIntent$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getApiRequestFactory$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    move-result-object v1

    .line 590
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelPaymentIntent$1;->$paymentIntent:Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineId(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-interface {v1, v2}, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;->cancelPaymentIntent(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/CancelPaymentIntentRequest;

    move-result-object v1

    .line 588
    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->cancelPaymentIntent(Lcom/stripe/proto/api/sdk/CancelPaymentIntentRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 593
    :goto_0
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelPaymentIntent$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v1, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$ensureConnectedJackrabbitResponse(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/sdk/CancelPaymentIntentResponse;

    .line 594
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions;

    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions;->toResult(Lcom/stripe/proto/api/sdk/CancelPaymentIntentResponse;)Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions$CancelPaymentIntentResponseResult;

    move-result-object v0

    .line 595
    instance-of v1, v0, Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions$CancelPaymentIntentResponseResult$Error;

    if-nez v1, :cond_2

    .line 599
    instance-of v1, v0, Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions$CancelPaymentIntentResponseResult$Success;

    if-eqz v1, :cond_1

    .line 600
    check-cast v0, Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions$CancelPaymentIntentResponseResult$Success;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions$CancelPaymentIntentResponseResult$Success;->getPaymentIntent()Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 596
    :cond_2
    check-cast v0, Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions$CancelPaymentIntentResponseResult$Error;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions$CancelPaymentIntentResponseResult$Error;->getException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 587
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelPaymentIntent$1;->invoke()Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v0

    return-object v0
.end method
