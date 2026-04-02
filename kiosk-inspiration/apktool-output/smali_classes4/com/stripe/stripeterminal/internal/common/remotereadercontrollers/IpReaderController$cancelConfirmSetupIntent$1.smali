.class final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmSetupIntent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IpReaderController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->cancelConfirmSetupIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
        "Lcom/stripe/proto/api/sdk/CancelConfirmSetupIntentResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "Lcom/stripe/proto/api/sdk/CancelConfirmSetupIntentResponse;",
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

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmSetupIntent$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "Lcom/stripe/proto/api/sdk/CancelConfirmSetupIntentResponse;",
            ">;"
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmSetupIntent$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getJackrabbitApiClient$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/proto/api/sdk/JackRabbitApi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmSetupIntent$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getApiRequestFactory$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;->cancelConfirmSetupIntent()Lcom/stripe/proto/api/sdk/CancelConfirmSetupIntentRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->cancelConfirmSetupIntent(Lcom/stripe/proto/api/sdk/CancelConfirmSetupIntentRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 581
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelConfirmSetupIntent$1;->invoke()Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object v0

    return-object v0
.end method
