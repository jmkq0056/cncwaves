.class final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProxyRemoteReaderController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->startPaymentCollection(Lcom/stripe/currency/Amount;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZZLjava/lang/String;Lcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;",
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
.field final synthetic $allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

.field final synthetic $amount:Lcom/stripe/currency/Amount;

.field final synthetic $computedPriorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $enableCustomerCancellation:Z

.field final synthetic $intentId:Ljava/lang/String;

.field final synthetic $manualEntry:Z

.field final synthetic $offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

.field final synthetic $offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

.field final synthetic $onFailure:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onPaymentCollected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $paymentIntent:Lcom/stripe/proto/model/rest/PaymentIntent;

.field final synthetic $requestDynamicCurrencyConversion:Z

.field final synthetic $skipTipping:Z

.field final synthetic $stripeAccountId:Ljava/lang/String;

.field final synthetic $surchargeNotice:Ljava/lang/String;

.field final synthetic $tipEligibleAmount:Lcom/stripe/currency/Amount;

.field final synthetic $updatePaymentIntent:Z


# direct methods
.method constructor <init>(Lcom/stripe/currency/Amount;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZZLjava/lang/String;Lcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/currency/Amount;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;ZZZ",
            "Ljava/lang/String;",
            "Lcom/stripe/currency/Amount;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
            "Z",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Z",
            "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$amount:Lcom/stripe/currency/Amount;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$onPaymentCollected:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$onFailure:Lkotlin/jvm/functions/Function1;

    iput-boolean p4, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$skipTipping:Z

    iput-boolean p5, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$manualEntry:Z

    iput-boolean p6, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$updatePaymentIntent:Z

    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$intentId:Ljava/lang/String;

    iput-object p8, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$tipEligibleAmount:Lcom/stripe/currency/Amount;

    iput-object p9, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$computedPriorities:Ljava/util/List;

    iput-object p10, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$stripeAccountId:Ljava/lang/String;

    iput-object p11, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    iput-boolean p12, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$enableCustomerCancellation:Z

    iput-object p13, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$paymentIntent:Lcom/stripe/proto/model/rest/PaymentIntent;

    iput-boolean p14, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$requestDynamicCurrencyConversion:Z

    iput-object p15, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$surchargeNotice:Ljava/lang/String;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 239
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->invoke(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;)V
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "$this$withCurrentController"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$amount:Lcom/stripe/currency/Amount;

    .line 242
    iget-object v4, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$onPaymentCollected:Lkotlin/jvm/functions/Function1;

    .line 243
    iget-object v5, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$onFailure:Lkotlin/jvm/functions/Function1;

    .line 244
    iget-boolean v6, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$skipTipping:Z

    .line 245
    iget-boolean v7, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$manualEntry:Z

    .line 246
    iget-boolean v8, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$updatePaymentIntent:Z

    .line 247
    iget-object v9, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$intentId:Ljava/lang/String;

    .line 248
    iget-object v10, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$tipEligibleAmount:Lcom/stripe/currency/Amount;

    .line 249
    iget-object v11, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$computedPriorities:Ljava/util/List;

    .line 250
    iget-object v12, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$stripeAccountId:Ljava/lang/String;

    .line 251
    iget-object v13, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    .line 252
    iget-boolean v14, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$enableCustomerCancellation:Z

    .line 253
    iget-object v15, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$paymentIntent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 254
    iget-boolean v1, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$requestDynamicCurrencyConversion:Z

    move/from16 v16, v1

    .line 255
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-object/from16 v17, v1

    .line 256
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$surchargeNotice:Ljava/lang/String;

    move-object/from16 v18, v1

    .line 257
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;->$allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    move-object/from16 v19, v1

    .line 240
    invoke-virtual/range {v2 .. v19}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;->startPaymentCollection(Lcom/stripe/currency/Amount;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZZLjava/lang/String;Lcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V

    return-void
.end method
