.class final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelSetupIntent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IpReaderController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
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
.field final synthetic $intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

.field final synthetic $params:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelSetupIntent$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelSetupIntent$1;->$intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelSetupIntent$1;->$params:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 4

    .line 614
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelSetupIntent$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getJackrabbitApiClient$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/proto/api/sdk/JackRabbitApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelSetupIntent$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getApiRequestFactory$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    move-result-object v1

    .line 616
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelSetupIntent$1;->$intent:Lcom/stripe/stripeterminal/external/models/SetupIntent;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->requireOnlineId(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Ljava/lang/String;

    move-result-object v2

    .line 617
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelSetupIntent$1;->$params:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;

    .line 615
    invoke-interface {v1, v2, v3}, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;->cancelSetupIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/proto/api/sdk/CancelSetupIntentRequest;

    move-result-object v1

    .line 614
    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->cancelSetupIntent(Lcom/stripe/proto/api/sdk/CancelSetupIntentRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 620
    :goto_0
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelSetupIntent$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v1, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$ensureConnectedJackrabbitResponse(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse;

    .line 621
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/extensions/CancelSetupIntentResponseExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/CancelSetupIntentResponseExtensions;

    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/internal/common/extensions/CancelSetupIntentResponseExtensions;->toResult(Lcom/stripe/proto/api/sdk/CancelSetupIntentResponse;)Lcom/stripe/stripeterminal/internal/common/extensions/CancelSetupIntentResponseExtensions$CancelSetupIntentResponseResult;

    move-result-object v0

    .line 622
    instance-of v1, v0, Lcom/stripe/stripeterminal/internal/common/extensions/CancelSetupIntentResponseExtensions$CancelSetupIntentResponseResult$Error;

    if-nez v1, :cond_2

    .line 626
    instance-of v1, v0, Lcom/stripe/stripeterminal/internal/common/extensions/CancelSetupIntentResponseExtensions$CancelSetupIntentResponseResult$Success;

    if-eqz v1, :cond_1

    .line 627
    check-cast v0, Lcom/stripe/stripeterminal/internal/common/extensions/CancelSetupIntentResponseExtensions$CancelSetupIntentResponseResult$Success;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/extensions/CancelSetupIntentResponseExtensions$CancelSetupIntentResponseResult$Success;->getSetupIntent()Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 623
    :cond_2
    check-cast v0, Lcom/stripe/stripeterminal/internal/common/extensions/CancelSetupIntentResponseExtensions$CancelSetupIntentResponseResult$Error;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/extensions/CancelSetupIntentResponseExtensions$CancelSetupIntentResponseResult$Error;->getException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 613
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$cancelSetupIntent$1;->invoke()Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v0

    return-object v0
.end method
