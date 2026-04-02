.class public interface abstract Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;
.super Ljava/lang/Object;
.source "PaymentIntentJackRabbitApiFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0098\u0001\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\r2\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00152\u0008\u0010\u0017\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u000f2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u000f2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\t2\u0008\u0010!\u001a\u0004\u0018\u00010\"H&JA\u0010#\u001a\u00020$2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010)\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019H&\u00a2\u0006\u0002\u0010*J\u0018\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200H&J\u0010\u00101\u001a\u0002022\u0006\u0010\u0008\u001a\u00020\tH&J\u0008\u00103\u001a\u000204H&J\u001e\u00105\u001a\u0002062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u00067\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;",
        "",
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


# direct methods
.method public static synthetic confirmPayment$default(Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;
    .locals 6

    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 56
    invoke-interface/range {v0 .. v5}, Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;->confirmPayment(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: confirmPayment"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic resumeCollectPaymentMethod$default(Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 49
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;->resumeCollectPaymentMethod(Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resumeCollectPaymentMethod"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract cancelCollectPaymentMethod()Lcom/stripe/proto/api/sdk/CancelCollectPaymentMethodRequest;
.end method

.method public abstract cancelConfirmPaymentIntent()Lcom/stripe/proto/api/sdk/CancelConfirmPaymentIntentRequest;
.end method

.method public abstract cancelPaymentIntent(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/CancelPaymentIntentRequest;
.end method

.method public abstract collectPaymentMethod(Lcom/stripe/currency/Amount;ZZZLjava/lang/String;Lcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Ljava/lang/String;Lcom/stripe/proto/model/rest/AllowRedisplay;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;
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
.end method

.method public abstract confirmPayment(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;
.end method

.method public abstract createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest;
.end method

.method public abstract handlePaymentIntentNextActions(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/HandlePaymentIntentNextActionsRequest;
.end method

.method public abstract onPaymentMethodCollectedForPaymentIntent()Lcom/stripe/proto/api/sdk/OnPaymentMethodCollectedForPaymentIntentRequest;
.end method

.method public abstract resumeCollectPaymentMethod(Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;
.end method
