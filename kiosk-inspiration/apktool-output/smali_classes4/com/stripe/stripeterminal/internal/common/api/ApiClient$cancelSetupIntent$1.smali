.class final Lcom/stripe/stripeterminal/internal/common/api/ApiClient$cancelSetupIntent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ApiClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
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
.field final synthetic $response:Lcom/stripe/jvmcore/restclient/RestResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/restclient/RestResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$cancelSetupIntent$1;->$response:Lcom/stripe/jvmcore/restclient/RestResponse;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 7

    .line 247
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$cancelSetupIntent$1;->$response:Lcom/stripe/jvmcore/restclient/RestResponse;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeResponse$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/squareup/wire/Message;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/rest/SetupIntent;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkSetupIntent(Lcom/stripe/proto/model/rest/SetupIntent;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$cancelSetupIntent$1;->invoke()Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v0

    return-object v0
.end method
