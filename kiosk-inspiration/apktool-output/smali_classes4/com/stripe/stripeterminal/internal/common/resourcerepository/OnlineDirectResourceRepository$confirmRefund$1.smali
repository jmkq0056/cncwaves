.class final Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$confirmRefund$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OnlineDirectResourceRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->confirmRefund(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/stripeterminal/external/models/Refund;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/stripe/stripeterminal/external/models/Refund;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/stripeterminal/external/models/Refund;",
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
.field final synthetic $refundResponse:Lcom/stripe/jvmcore/restclient/RestResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/Refund;",
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
            "Lcom/stripe/proto/model/rest/Refund;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$confirmRefund$1;->$refundResponse:Lcom/stripe/jvmcore/restclient/RestResponse;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/stripe/stripeterminal/external/models/Refund;
    .locals 3

    .line 221
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$confirmRefund$1;->$refundResponse:Lcom/stripe/jvmcore/restclient/RestResponse;

    invoke-virtual {v1, v2}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeRefundResponseCatchingInlineFailure(Lcom/stripe/jvmcore/restclient/RestResponse;)Lcom/stripe/proto/model/rest/Refund;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkRefund(Lcom/stripe/proto/model/rest/Refund;)Lcom/stripe/stripeterminal/external/models/Refund;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$confirmRefund$1;->invoke()Lcom/stripe/stripeterminal/external/models/Refund;

    move-result-object v0

    return-object v0
.end method
