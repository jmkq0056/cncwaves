.class final Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;
.super Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;
.source "RemoteReaderAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CollectPaymentMethodOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation<",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\u0008J\u0008\u0010\t\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;",
        "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "paymentMethodCollectionType",
        "Lcom/stripe/transaction/PaymentMethodCollectionType;",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Lcom/stripe/transaction/PaymentMethodCollectionType;)V",
        "cancel",
        "",
        "execute",
        "adapter_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Lcom/stripe/transaction/PaymentMethodCollectionType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/transaction/PaymentMethodCollectionType;",
            ")V"
        }
    .end annotation

    const-string v0, "paymentMethodCollectionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    .line 318
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/Adapter;)V

    .line 317
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    return-void
.end method

.method public static final synthetic access$execute$convertToPaymentMethodData(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;Lcom/stripe/proto/model/rest/ReaderCollectedData;)V
    .locals 0

    .line 316
    invoke-static {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->execute$convertToPaymentMethodData(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;Lcom/stripe/proto/model/rest/ReaderCollectedData;)V

    return-void
.end method

.method private static final execute$convertToPaymentMethodData(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;Lcom/stripe/proto/model/rest/ReaderCollectedData;)V
    .locals 13

    .line 378
    new-instance v0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    const/16 v11, 0x2ff

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;-><init>(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 377
    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    .line 401
    instance-of v1, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 402
    :cond_0
    instance-of v1, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    :goto_0
    if-eqz v1, :cond_1

    .line 403
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->access$getProxyRemoteReaderController$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->cancelCollectPaymentMethod()V

    goto :goto_1

    .line 405
    :cond_1
    instance-of v1, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;

    if-eqz v1, :cond_2

    .line 406
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->access$getProxyRemoteReaderController$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->cancelCollectData()V

    goto :goto_1

    .line 408
    :cond_2
    instance-of v1, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;

    if-eqz v1, :cond_3

    .line 409
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->access$getProxyRemoteReaderController$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->cancelCollectInteracRefundMethod()V

    goto :goto_1

    .line 411
    :cond_3
    instance-of v0, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    if-eqz v0, :cond_4

    .line 412
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->access$getProxyRemoteReaderController$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->cancelCollectSetupIntentPaymentMethod()V

    .line 415
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->access$setCurrentRefundPaymentMethod$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Lcom/stripe/transaction/CollectiblePayment;)V

    return-void
.end method

.method public execute()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 20

    move-object/from16 v0, p0

    .line 320
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    .line 321
    instance-of v2, v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->access$getProxyRemoteReaderController$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    move-result-object v2

    .line 322
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    invoke-interface {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v3

    .line 323
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$1;

    invoke-direct {v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$1;-><init>(Ljava/lang/Object;)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 324
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$2;

    invoke-direct {v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$2;-><init>(Ljava/lang/Object;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 325
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getSkipTipping()Z

    move-result v6

    .line 326
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getManualEntry()Z

    move-result v7

    .line 327
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getUpdatePaymentIntent()Z

    move-result v8

    .line 328
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getIntentId()Ljava/lang/String;

    move-result-object v9

    .line 329
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getTipEligibleAmount()Lcom/stripe/currency/Amount;

    move-result-object v10

    .line 330
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getComputedPriorities()Ljava/util/List;

    move-result-object v11

    .line 331
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getStripeAccountId()Ljava/lang/String;

    move-result-object v12

    .line 332
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getOfflineDetails()Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    move-result-object v13

    .line 333
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    invoke-interface {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType;->getEnableCustomerCancellation()Z

    move-result v14

    .line 334
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getRestPaymentIntent()Lcom/stripe/proto/model/rest/PaymentIntent;

    move-result-object v15

    .line 335
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getRequestDynamicCurrencyConversion()Z

    move-result v16

    .line 336
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v17

    .line 337
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getSurchargeNotice()Ljava/lang/String;

    move-result-object v18

    .line 338
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getAllowRedisplay()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    move-result-object v19

    .line 321
    invoke-virtual/range {v2 .. v19}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->startPaymentCollection(Lcom/stripe/currency/Amount;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZZLjava/lang/String;Lcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V

    goto/16 :goto_0

    .line 341
    :cond_0
    instance-of v2, v1, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    if-eqz v2, :cond_1

    .line 342
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->access$getProxyRemoteReaderController$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    move-result-object v1

    .line 343
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v2, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    invoke-virtual {v2}, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->getIntentId()Ljava/lang/String;

    move-result-object v2

    .line 344
    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v3, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    invoke-virtual {v3}, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->getOfflineDetails()Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    move-result-object v3

    .line 345
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$3;

    invoke-direct {v4, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$3;-><init>(Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 346
    new-instance v5, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$4;

    invoke-direct {v5, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$4;-><init>(Ljava/lang/Object;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 342
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->resumeCollectPaymentMethod(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 350
    :cond_1
    instance-of v2, v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;

    if-eqz v2, :cond_2

    .line 351
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->access$getProxyRemoteReaderController$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    move-result-object v2

    .line 352
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    invoke-interface {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v3

    .line 353
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;->getChargeId()Ljava/lang/String;

    move-result-object v4

    .line 354
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;->getPaymentIntentId()Ljava/lang/String;

    move-result-object v5

    .line 355
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    invoke-interface {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType;->getEnableCustomerCancellation()Z

    move-result v6

    .line 356
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$5;

    invoke-direct {v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$5;-><init>(Ljava/lang/Object;)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 357
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$6;

    invoke-direct {v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$6;-><init>(Ljava/lang/Object;)V

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 351
    invoke-virtual/range {v2 .. v8}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->startInteracRefund(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_0

    .line 361
    :cond_2
    instance-of v2, v1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    if-eqz v2, :cond_3

    .line 362
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->access$getProxyRemoteReaderController$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    move-result-object v2

    .line 363
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->getIntentId()Ljava/lang/String;

    move-result-object v3

    .line 364
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    invoke-interface {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType;->getEnableCustomerCancellation()Z

    move-result v4

    .line 365
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->getManualEntry()Z

    move-result v5

    .line 366
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->getOfflineDetails()Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    move-result-object v6

    .line 367
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v7

    .line 368
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->getAllowRedisplay()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    move-result-object v8

    .line 369
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->getRestSetupIntent()Lcom/stripe/proto/model/rest/SetupIntent;

    move-result-object v9

    .line 370
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$7;

    invoke-direct {v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$7;-><init>(Ljava/lang/Object;)V

    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 371
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$8;

    invoke-direct {v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$8;-><init>(Ljava/lang/Object;)V

    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 362
    invoke-virtual/range {v2 .. v11}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->startSetupIntentPaymentCollection(Ljava/lang/String;ZZLcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/proto/model/rest/SetupIntent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 375
    :cond_3
    instance-of v1, v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;

    if-eqz v1, :cond_4

    .line 383
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->access$getProxyRemoteReaderController$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    move-result-object v1

    .line 384
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    check-cast v3, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;

    invoke-virtual {v3}, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;->getPassthroughType()Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toProtoCollectDataType(Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;)Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;

    move-result-object v2

    .line 385
    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->paymentMethodCollectionType:Lcom/stripe/transaction/PaymentMethodCollectionType;

    invoke-interface {v3}, Lcom/stripe/transaction/PaymentMethodCollectionType;->getEnableCustomerCancellation()Z

    move-result v3

    .line 386
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$9;

    invoke-direct {v4, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$9;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 387
    new-instance v5, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$10;

    invoke-direct {v5, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation$execute$10;-><init>(Ljava/lang/Object;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 383
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->collectData(Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 392
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    .line 393
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    new-instance v3, Lcom/stripe/transaction/CollectiblePayment;

    new-instance v4, Lcom/stripe/transaction/payment/RemotePayment;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getIpPaymentMethod()Lcom/stripe/proto/model/sdk/PaymentMethod;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/stripe/transaction/payment/RemotePayment;-><init>(Lcom/stripe/proto/model/sdk/PaymentMethod;)V

    check-cast v4, Lcom/stripe/transaction/payment/Payment;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/stripe/transaction/CollectiblePayment;-><init>(Lcom/stripe/transaction/payment/Payment;Lcom/stripe/hardware/emv/InterfaceType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v3}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->access$setCurrentRefundPaymentMethod$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Lcom/stripe/transaction/CollectiblePayment;)V

    return-object v1
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 316
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->execute()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v0

    return-object v0
.end method
