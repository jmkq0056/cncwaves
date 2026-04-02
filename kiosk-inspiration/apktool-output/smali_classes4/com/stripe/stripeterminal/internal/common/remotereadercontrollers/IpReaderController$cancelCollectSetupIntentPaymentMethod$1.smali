.class final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelCollectSetupIntentPaymentMethod$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IpReaderController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->cancelCollectSetupIntentPaymentMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
        "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodResponse;",
        "it",
        "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;",
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
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelCollectSetupIntentPaymentMethod$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;",
            ")",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelCollectSetupIntentPaymentMethod$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getJackrabbitApiClient$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/proto/api/sdk/JackRabbitApi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->cancelSetupIntentPaymentMethod(Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 432
    check-cast p1, Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelCollectSetupIntentPaymentMethod$1;->invoke(Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    return-object p1
.end method
