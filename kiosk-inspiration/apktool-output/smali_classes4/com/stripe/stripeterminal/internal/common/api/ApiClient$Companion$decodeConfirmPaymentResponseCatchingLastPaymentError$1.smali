.class final Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion$decodeConfirmPaymentResponseCatchingLastPaymentError$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ApiClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeConfirmPaymentResponseCatchingLastPaymentError(Lcom/stripe/jvmcore/restclient/RestResponse;)Lcom/stripe/proto/model/rest/PaymentIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "Lcom/stripe/proto/model/rest/ErrorResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/proto/model/rest/ErrorResponse;",
        "it",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
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


# static fields
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion$decodeConfirmPaymentResponseCatchingLastPaymentError$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion$decodeConfirmPaymentResponseCatchingLastPaymentError$1;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion$decodeConfirmPaymentResponseCatchingLastPaymentError$1;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion$decodeConfirmPaymentResponseCatchingLastPaymentError$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion$decodeConfirmPaymentResponseCatchingLastPaymentError$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/stripe/proto/model/rest/PaymentIntent;)Lcom/stripe/proto/model/rest/ErrorResponse;
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    iget-object v0, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->next_action:Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v2, v0}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkNextAction(Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;)Lcom/stripe/stripeterminal/external/models/NextAction;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/NextAction;->getType()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const-string v3, "use_stripe_sdk"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/NextAction;->getUseStripeSdk()Lcom/stripe/stripeterminal/external/models/UseStripeSdk;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/UseStripeSdk;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    const-string v2, "android_tap_to_pay_pin_capture"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    .line 402
    :cond_3
    iget-object p1, p1, Lcom/stripe/proto/model/rest/PaymentIntent;->last_payment_error:Lcom/stripe/proto/model/rest/ErrorResponse;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 393
    check-cast p1, Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion$decodeConfirmPaymentResponseCatchingLastPaymentError$1;->invoke(Lcom/stripe/proto/model/rest/PaymentIntent;)Lcom/stripe/proto/model/rest/ErrorResponse;

    move-result-object p1

    return-object p1
.end method
