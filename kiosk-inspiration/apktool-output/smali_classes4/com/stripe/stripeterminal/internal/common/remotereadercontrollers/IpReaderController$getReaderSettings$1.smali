.class final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$getReaderSettings$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IpReaderController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->getReaderSettings()Lcom/stripe/stripeterminal/external/models/ReaderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettings;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettings;",
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

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$getReaderSettings$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/stripe/stripeterminal/external/models/ReaderSettings;
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$getReaderSettings$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    .line 186
    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getJackrabbitApiClient$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/proto/api/sdk/JackRabbitApi;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 187
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$getReaderSettings$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v3}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getApiRequestFactory$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;->getReaderSettings()Lcom/stripe/proto/api/sdk/GetReaderSettingsRequest;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->getReaderSettings(Lcom/stripe/proto/api/sdk/GetReaderSettingsRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 188
    :goto_0
    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$ensureConnectedJackrabbitResponse(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/api/sdk/GetReaderSettingsResponse;

    iget-object v1, v1, Lcom/stripe/proto/api/sdk/GetReaderSettingsResponse;->response:Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;

    if-eqz v1, :cond_1

    .line 189
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$getReaderSettings$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-virtual {v2, v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->getReaderSettings(Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;)Lcom/stripe/stripeterminal/external/models/ReaderSettings;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->getOrDefault(Lcom/stripe/stripeterminal/external/models/ReaderSettings;)Lcom/stripe/stripeterminal/external/models/ReaderSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$getReaderSettings$1;->invoke()Lcom/stripe/stripeterminal/external/models/ReaderSettings;

    move-result-object v0

    return-object v0
.end method
