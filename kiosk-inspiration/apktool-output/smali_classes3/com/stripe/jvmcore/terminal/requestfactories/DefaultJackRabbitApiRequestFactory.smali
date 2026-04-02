.class public final Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;
.super Ljava/lang/Object;
.source "DefaultJackRabbitApiRequestFactory.kt"

# interfaces
.implements Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;
.implements Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;
.implements Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;
.implements Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;
.implements Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;
.implements Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;
.implements Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;
.implements Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ba\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\u0008B=\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u0010J\u0019\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0096\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u0096\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u0096\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u0096\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u0096\u0001J\u0011\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0014H\u0096\u0001J\u0019\u0010\"\u001a\u00020#2\u0006\u0010!\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%H\u0096\u0001J\t\u0010&\u001a\u00020\'H\u0096\u0001J\t\u0010(\u001a\u00020)H\u0096\u0001J-\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0008\u0010.\u001a\u0004\u0018\u00010\u00142\u0008\u0010/\u001a\u0004\u0018\u00010\u00142\u0006\u00100\u001a\u00020\u0016H\u0096\u0001J\u0099\u0001\u00101\u001a\u0002022\u0006\u0010,\u001a\u00020-2\u0006\u00103\u001a\u00020\u00162\u0006\u00104\u001a\u00020\u00162\u0006\u00105\u001a\u00020\u00162\u0008\u00106\u001a\u0004\u0018\u00010\u00142\u0008\u00107\u001a\u0004\u0018\u00010-2\u000e\u00108\u001a\n\u0012\u0004\u0012\u00020:\u0018\u0001092\u0008\u0010;\u001a\u0004\u0018\u00010\u00142\u0008\u0010<\u001a\u0004\u0018\u00010=2\u0006\u00100\u001a\u00020\u00162\u0008\u0010>\u001a\u0004\u0018\u00010?2\u0006\u0010@\u001a\u00020\u00162\u0008\u0010A\u001a\u0004\u0018\u00010B2\u0008\u0010C\u001a\u0004\u0018\u00010\u00142\u0008\u0010D\u001a\u0004\u0018\u00010EH\u0096\u0001JI\u0010F\u001a\u00020G2\u0008\u0010!\u001a\u0004\u0018\u00010\u00142\u0006\u00100\u001a\u00020\u00162\u0006\u00104\u001a\u00020\u00162\u0008\u0010<\u001a\u0004\u0018\u00010H2\u0008\u0010A\u001a\u0004\u0018\u00010B2\u0008\u0010D\u001a\u0004\u0018\u00010E2\u0006\u0010I\u001a\u00020JH\u0096\u0001J!\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020\u0014H\u0096\u0001JB\u0010R\u001a\u00020S2\u0008\u0010!\u001a\u0004\u0018\u00010\u00142\u0008\u0010O\u001a\u0004\u0018\u00010P2\u0008\u0010T\u001a\u0004\u0018\u00010U2\u0008\u0010V\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010<\u001a\u0004\u0018\u00010=H\u0096\u0001\u00a2\u0006\u0002\u0010WJ\u001d\u0010X\u001a\u00020Y2\u0008\u0010!\u001a\u0004\u0018\u00010\u00142\u0008\u0010<\u001a\u0004\u0018\u00010HH\u0096\u0001J\u0019\u0010Z\u001a\u00020[2\u0006\u0010$\u001a\u00020\\2\u0006\u0010]\u001a\u00020^H\u0096\u0001J\u0019\u0010_\u001a\u00020`2\u0006\u0010$\u001a\u00020a2\u0006\u0010b\u001a\u00020^H\u0096\u0001J\u001b\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020\u00142\u0008\u0010f\u001a\u0004\u0018\u00010\u0014H\u0096\u0001J\t\u0010g\u001a\u00020hH\u0096\u0001J\u0011\u0010i\u001a\u00020j2\u0006\u0010!\u001a\u00020\u0014H\u0096\u0001J\t\u0010k\u001a\u00020lH\u0096\u0001J\u001f\u0010m\u001a\u00020n2\u0008\u0010!\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010<\u001a\u0004\u0018\u00010=H\u0096\u0001J\u0011\u0010o\u001a\u00020p2\u0006\u0010q\u001a\u00020rH\u0096\u0001J\u0011\u0010s\u001a\u00020t2\u0006\u0010$\u001a\u00020uH\u0096\u0001R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006v"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;",
        "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;",
        "activateApiFactory",
        "discoveryApiFactory",
        "readerDisplayApiFactory",
        "accessibilityJackRabbitApiFactory",
        "paymentIntentApiFactory",
        "setupIntentApiFactory",
        "refundApiFactory",
        "(Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;)V",
        "activateTerminal",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;",
        "posConnectionToken",
        "",
        "failIfInUse",
        "",
        "cancelCollectPaymentMethod",
        "Lcom/stripe/proto/api/sdk/CancelCollectPaymentMethodRequest;",
        "cancelConfirmInteracRefund",
        "Lcom/stripe/proto/api/sdk/CancelConfirmInteracRefundRequest;",
        "cancelConfirmPaymentIntent",
        "Lcom/stripe/proto/api/sdk/CancelConfirmPaymentIntentRequest;",
        "cancelConfirmSetupIntent",
        "Lcom/stripe/proto/api/sdk/CancelConfirmSetupIntentRequest;",
        "cancelPaymentIntent",
        "Lcom/stripe/proto/api/sdk/CancelPaymentIntentRequest;",
        "id",
        "cancelSetupIntent",
        "Lcom/stripe/proto/api/sdk/CancelSetupIntentRequest;",
        "params",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "cancelSetupIntentPaymentMethod",
        "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;",
        "clearReaderDisplay",
        "Lcom/stripe/proto/api/sdk/ClearReaderDisplayRequest;",
        "collectInteracRefundMethod",
        "Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "paymentIntentId",
        "chargeId",
        "enableCustomerCancellation",
        "collectPaymentMethod",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;",
        "skipTipping",
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
        "paymentIntent",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "requestDynamicCurrencyConversion",
        "offlineBehavior",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;",
        "surchargeNotice",
        "allowRedisplay",
        "Lcom/stripe/proto/model/rest/AllowRedisplay;",
        "collectSetupIntentPaymentMethod",
        "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;",
        "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;",
        "setupIntent",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "confirmInteracRefund",
        "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;",
        "refundParams",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
        "paymentMethod",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "refundReason",
        "confirmPayment",
        "Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;",
        "amountSurcharge",
        "",
        "returnUrl",
        "(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;",
        "confirmSetupIntent",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;",
        "createPaymentIntent",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest;",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;",
        "config",
        "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;",
        "createSetupIntent",
        "Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest;",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
        "createConfiguration",
        "discoverReaders",
        "Lcom/stripe/proto/api/sdk/DiscoverReadersRequest;",
        "connectionToken",
        "location",
        "getReaderSettings",
        "Lcom/stripe/proto/api/sdk/GetReaderSettingsRequest;",
        "handlePaymentIntentNextActions",
        "Lcom/stripe/proto/api/sdk/HandlePaymentIntentNextActionsRequest;",
        "onPaymentMethodCollectedForPaymentIntent",
        "Lcom/stripe/proto/api/sdk/OnPaymentMethodCollectedForPaymentIntentRequest;",
        "resumeCollectPaymentMethod",
        "Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;",
        "setReaderDisplay",
        "Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;",
        "cart",
        "Lcom/stripe/stripeterminal/external/models/Cart;",
        "setReaderSettings",
        "Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest;",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;",
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
.field private final accessibilityJackRabbitApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;

.field private final activateApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;

.field private final discoveryApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;

.field private final paymentIntentApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;

.field private final readerDisplayApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;

.field private final refundApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;

.field private final setupIntentApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;)V
    .locals 1

    const-string v0, "activateApiFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discoveryApiFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerDisplayApiFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessibilityJackRabbitApiFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentIntentApiFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setupIntentApiFactory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refundApiFactory"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->activateApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;

    .line 16
    iput-object p2, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->discoveryApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;

    .line 17
    iput-object p3, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->readerDisplayApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;

    .line 18
    iput-object p4, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->accessibilityJackRabbitApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;

    .line 19
    iput-object p5, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->paymentIntentApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;

    .line 20
    iput-object p6, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->setupIntentApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;

    .line 21
    iput-object p7, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->refundApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;

    return-void
.end method


# virtual methods
.method public activateTerminal(Ljava/lang/String;Z)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;
    .locals 1

    const-string v0, "posConnectionToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->activateApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;->activateTerminal(Ljava/lang/String;Z)Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;

    move-result-object p1

    return-object p1
.end method

.method public cancelCollectPaymentMethod()Lcom/stripe/proto/api/sdk/CancelCollectPaymentMethodRequest;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->paymentIntentApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;

    invoke-interface {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;->cancelCollectPaymentMethod()Lcom/stripe/proto/api/sdk/CancelCollectPaymentMethodRequest;

    move-result-object v0

    return-object v0
.end method

.method public cancelConfirmInteracRefund()Lcom/stripe/proto/api/sdk/CancelConfirmInteracRefundRequest;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->refundApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;

    invoke-interface {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;->cancelConfirmInteracRefund()Lcom/stripe/proto/api/sdk/CancelConfirmInteracRefundRequest;

    move-result-object v0

    return-object v0
.end method

.method public cancelConfirmPaymentIntent()Lcom/stripe/proto/api/sdk/CancelConfirmPaymentIntentRequest;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->paymentIntentApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;

    invoke-interface {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;->cancelConfirmPaymentIntent()Lcom/stripe/proto/api/sdk/CancelConfirmPaymentIntentRequest;

    move-result-object v0

    return-object v0
.end method

.method public cancelConfirmSetupIntent()Lcom/stripe/proto/api/sdk/CancelConfirmSetupIntentRequest;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->setupIntentApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;

    invoke-interface {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;->cancelConfirmSetupIntent()Lcom/stripe/proto/api/sdk/CancelConfirmSetupIntentRequest;

    move-result-object v0

    return-object v0
.end method

.method public cancelPaymentIntent(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/CancelPaymentIntentRequest;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->paymentIntentApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;->cancelPaymentIntent(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/CancelPaymentIntentRequest;

    move-result-object p1

    return-object p1
.end method

.method public cancelSetupIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/proto/api/sdk/CancelSetupIntentRequest;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->setupIntentApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;->cancelSetupIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/proto/api/sdk/CancelSetupIntentRequest;

    move-result-object p1

    return-object p1
.end method

.method public cancelSetupIntentPaymentMethod()Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->setupIntentApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;

    invoke-interface {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;->cancelSetupIntentPaymentMethod()Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;

    move-result-object v0

    return-object v0
.end method

.method public clearReaderDisplay()Lcom/stripe/proto/api/sdk/ClearReaderDisplayRequest;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->readerDisplayApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;

    invoke-interface {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;->clearReaderDisplay()Lcom/stripe/proto/api/sdk/ClearReaderDisplayRequest;

    move-result-object v0

    return-object v0
.end method

.method public collectInteracRefundMethod(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Z)Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest;
    .locals 1

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->refundApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;->collectInteracRefundMethod(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Z)Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest;

    move-result-object p1

    return-object p1
.end method

.method public collectPaymentMethod(Lcom/stripe/currency/Amount;ZZZLjava/lang/String;Lcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Ljava/lang/String;Lcom/stripe/proto/model/rest/AllowRedisplay;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;
    .locals 17
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

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->paymentIntentApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    invoke-interface/range {v1 .. v16}, Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;->collectPaymentMethod(Lcom/stripe/currency/Amount;ZZZLjava/lang/String;Lcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Ljava/lang/String;Lcom/stripe/proto/model/rest/AllowRedisplay;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;

    move-result-object v1

    return-object v1
.end method

.method public collectSetupIntentPaymentMethod(Ljava/lang/String;ZZLcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/model/rest/AllowRedisplay;Lcom/stripe/proto/model/rest/SetupIntent;)Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;
    .locals 9

    const-string v0, "setupIntent"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->setupIntentApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v8}, Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;->collectSetupIntentPaymentMethod(Ljava/lang/String;ZZLcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/model/rest/AllowRedisplay;Lcom/stripe/proto/model/rest/SetupIntent;)Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;

    move-result-object p1

    return-object p1
.end method

.method public confirmInteracRefund(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;
    .locals 1

    const-string v0, "refundParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethod"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refundReason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->refundApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;->confirmInteracRefund(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;

    move-result-object p1

    return-object p1
.end method

.method public confirmPayment(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;
    .locals 6

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->paymentIntentApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;->confirmPayment(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;

    move-result-object p1

    return-object p1
.end method

.method public confirmSetupIntent(Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->setupIntentApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;->confirmSetupIntent(Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;

    move-result-object p1

    return-object p1
.end method

.method public createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest;
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->paymentIntentApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;->createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest;

    move-result-object p1

    return-object p1
.end method

.method public createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest;
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->setupIntentApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;->createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest;

    move-result-object p1

    return-object p1
.end method

.method public discoverReaders(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/proto/api/sdk/DiscoverReadersRequest;
    .locals 1

    const-string v0, "connectionToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->discoveryApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;->discoverReaders(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/proto/api/sdk/DiscoverReadersRequest;

    move-result-object p1

    return-object p1
.end method

.method public getReaderSettings()Lcom/stripe/proto/api/sdk/GetReaderSettingsRequest;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->accessibilityJackRabbitApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;

    invoke-interface {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;->getReaderSettings()Lcom/stripe/proto/api/sdk/GetReaderSettingsRequest;

    move-result-object v0

    return-object v0
.end method

.method public handlePaymentIntentNextActions(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/HandlePaymentIntentNextActionsRequest;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->paymentIntentApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;->handlePaymentIntentNextActions(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/HandlePaymentIntentNextActionsRequest;

    move-result-object p1

    return-object p1
.end method

.method public onPaymentMethodCollectedForPaymentIntent()Lcom/stripe/proto/api/sdk/OnPaymentMethodCollectedForPaymentIntentRequest;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->paymentIntentApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;

    invoke-interface {v0}, Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;->onPaymentMethodCollectedForPaymentIntent()Lcom/stripe/proto/api/sdk/OnPaymentMethodCollectedForPaymentIntentRequest;

    move-result-object v0

    return-object v0
.end method

.method public resumeCollectPaymentMethod(Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->paymentIntentApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;

    invoke-interface {v0, p1, p2}, Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;->resumeCollectPaymentMethod(Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;

    move-result-object p1

    return-object p1
.end method

.method public setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;)Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;
    .locals 1

    const-string v0, "cart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->readerDisplayApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;->setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;)Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;

    move-result-object p1

    return-object p1
.end method

.method public setReaderSettings(Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;)Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest;
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;->accessibilityJackRabbitApiFactory:Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;->setReaderSettings(Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;)Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest;

    move-result-object p1

    return-object p1
.end method
