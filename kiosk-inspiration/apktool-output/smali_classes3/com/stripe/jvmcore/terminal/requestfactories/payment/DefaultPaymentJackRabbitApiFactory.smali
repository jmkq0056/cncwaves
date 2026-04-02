.class public final Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentJackRabbitApiFactory;
.super Ljava/lang/Object;
.source "DefaultPaymentJackRabbitApiFactory.kt"

# interfaces
.implements Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0098\u0001\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00102\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u00122\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020\u00122\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0010#\u001a\u0004\u0018\u00010\u000c2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J?\u0010&\u001a\u00020\'2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010(\u001a\u0004\u0018\u00010)2\u0008\u0010*\u001a\u0004\u0018\u00010+2\u0008\u0010,\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016\u00a2\u0006\u0002\u0010-J\u0018\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0016J\u0010\u00104\u001a\u0002052\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u00106\u001a\u000207H\u0016J\u001c\u00108\u001a\u0002092\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentJackRabbitApiFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;",
        "restApiFactory",
        "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;",
        "(Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;)V",
        "cancelCollectPaymentMethod",
        "Lcom/stripe/proto/api/sdk/CancelCollectPaymentMethodRequest;",
        "cancelConfirmPaymentIntent",
        "Lcom/stripe/proto/api/sdk/CancelConfirmPaymentIntentRequest;",
        "cancelPaymentIntent",
        "Lcom/stripe/proto/api/sdk/CancelPaymentIntentRequest;",
        "id",
        "",
        "collectPaymentMethod",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "skipTipping",
        "",
        "manualEntry",
        "updatePaymentIntent",
        "intentId",
        "tipEligibleAmount",
        "computedPriorities",
        "",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
        "stripeAccountId",
        "offlineDetails",
        "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;",
        "enableCustomerCancellation",
        "paymentIntent",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "requestDynamicCurrencyConversion",
        "offlineBehavior",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;",
        "surchargeNotice",
        "allowRedisplay",
        "Lcom/stripe/proto/model/rest/AllowRedisplay;",
        "confirmPayment",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;",
        "paymentMethod",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "amountSurcharge",
        "",
        "returnUrl",
        "(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;",
        "createPaymentIntent",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest;",
        "params",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;",
        "config",
        "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;",
        "handlePaymentIntentNextActions",
        "Lcom/stripe/proto/api/sdk/HandlePaymentIntentNextActionsRequest;",
        "onPaymentMethodCollectedForPaymentIntent",
        "Lcom/stripe/proto/api/sdk/OnPaymentMethodCollectedForPaymentIntentRequest;",
        "resumeCollectPaymentMethod",
        "Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;",
        "terminal-requestfactories"
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
.field private final restApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;)V
    .locals 1

    const-string v0, "restApiFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentJackRabbitApiFactory;->restApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;

    return-void
.end method


# virtual methods
.method public cancelCollectPaymentMethod()Lcom/stripe/proto/api/sdk/CancelCollectPaymentMethodRequest;
    .locals 3

    .line 91
    new-instance v0, Lcom/stripe/proto/api/sdk/CancelCollectPaymentMethodRequest;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/stripe/proto/api/sdk/CancelCollectPaymentMethodRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public cancelConfirmPaymentIntent()Lcom/stripe/proto/api/sdk/CancelConfirmPaymentIntentRequest;
    .locals 3

    .line 123
    new-instance v0, Lcom/stripe/proto/api/sdk/CancelConfirmPaymentIntentRequest;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/stripe/proto/api/sdk/CancelConfirmPaymentIntentRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public cancelPaymentIntent(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/CancelPaymentIntentRequest;
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/stripe/proto/api/sdk/CancelPaymentIntentRequest;

    iget-object v1, p0, Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentJackRabbitApiFactory;->restApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;

    invoke-interface {v1, p1}, Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;->cancelPaymentIntent(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/stripe/proto/api/sdk/CancelPaymentIntentRequest;-><init>(Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public collectPaymentMethod(Lcom/stripe/currency/Amount;ZZZLjava/lang/String;Lcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Ljava/lang/String;Lcom/stripe/proto/model/rest/AllowRedisplay;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/currency/Amount;",
            "ZZZ",
            "Ljava/lang/String;",
            "Lcom/stripe/currency/Amount;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;",
            "Z",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Z",
            "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/AllowRedisplay;",
            ")",
            "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;"
        }
    .end annotation

    const-string v0, "amount"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v2, Lcom/stripe/proto/model/sdk/ChargeAmount;

    move-object v1, v2

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v2

    .line 61
    invoke-static/range {p1 .. p1}, Lcom/stripe/currency/AmountExtensionsKt;->getCurrencyCode(Lcom/stripe/currency/Amount;)Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0x1a

    const/4 v11, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 59
    invoke-direct/range {v1 .. v11}, Lcom/stripe/proto/model/sdk/ChargeAmount;-><init>(JJLjava/lang/String;JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-nez p5, :cond_0

    .line 66
    const-string v0, ""

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object/from16 v3, p5

    :goto_0
    if-eqz p6, :cond_1

    .line 67
    invoke-virtual/range {p6 .. p6}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v7, v0

    if-nez p7, :cond_2

    .line 71
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v9, v0

    goto :goto_2

    :cond_2
    move-object/from16 v9, p7

    :goto_2
    move-object v2, v1

    .line 58
    new-instance v1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;

    const v19, 0x10004

    const/16 v20, 0x0

    const/4 v4, 0x0

    const/16 v18, 0x0

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    invoke-direct/range {v1 .. v20}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;-><init>(Lcom/stripe/proto/model/sdk/ChargeAmount;Ljava/lang/String;Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;ZZLjava/lang/Long;ZLjava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Ljava/lang/String;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public confirmPayment(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;
    .locals 10

    if-nez p1, :cond_0

    .line 102
    const-string p1, ""

    :cond_0
    move-object v1, p1

    .line 101
    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;

    const/16 v8, 0x44

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/ConfirmPaymentOptions;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest;
    .locals 7

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v1, Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest;

    .line 34
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentJackRabbitApiFactory;->restApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;->createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    move-result-object v2

    .line 35
    new-instance v3, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;

    .line 36
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/CreateConfiguration;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/extensions/OfflineBehaviorExtensionsKt;->toOfflineBehaviorProto(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 35
    invoke-direct {v3, p1, p2, v0, p2}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;-><init>(Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 33
    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest;-><init>(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public handlePaymentIntentNextActions(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/HandlePaymentIntentNextActionsRequest;
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/stripe/proto/api/sdk/HandlePaymentIntentNextActionsRequest;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/stripe/proto/api/sdk/HandlePaymentIntentNextActionsRequest;-><init>(Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public onPaymentMethodCollectedForPaymentIntent()Lcom/stripe/proto/api/sdk/OnPaymentMethodCollectedForPaymentIntentRequest;
    .locals 3

    .line 111
    new-instance v0, Lcom/stripe/proto/api/sdk/OnPaymentMethodCollectedForPaymentIntentRequest;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/stripe/proto/api/sdk/OnPaymentMethodCollectedForPaymentIntentRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public resumeCollectPaymentMethod(Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;
    .locals 6

    .line 84
    new-instance v0, Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;

    if-nez p1, :cond_0

    .line 85
    const-string p1, ""

    :cond_0
    move-object v1, p1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v2, p2

    .line 84
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;-><init>(Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
