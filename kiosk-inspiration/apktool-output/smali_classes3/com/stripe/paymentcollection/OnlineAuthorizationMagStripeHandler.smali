.class public final Lcom/stripe/paymentcollection/OnlineAuthorizationMagStripeHandler;
.super Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001c\u0010\u0012\u001a\u00020\u00082\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00112\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0011H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/OnlineAuthorizationMagStripeHandler;",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;",
        "timer",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
        "logger",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V",
        "generateMagStripeAuthRequestEvent",
        "",
        "result",
        "Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;",
        "collectionAuthority",
        "Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;",
        "tipResult",
        "Lcom/stripe/paymentcollection/TippingState$EndState;",
        "generatePresentProcessingEvent",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "onEnter",
        "current",
        "from",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        "onPaymentCollectionDataUpdate",
        "new",
        "old",
        "public_release"
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
.field private final logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;


# direct methods
.method public constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V
    .locals 1

    const-string v0, "timer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2115
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->ONLINE_AUTHORIZATION_MAG_STRIPE:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 2114
    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    .line 2113
    iput-object p2, p0, Lcom/stripe/paymentcollection/OnlineAuthorizationMagStripeHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    return-void
.end method

.method private final generateMagStripeAuthRequestEvent(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;Lcom/stripe/paymentcollection/TippingState$EndState;)V
    .locals 1

    .line 2186
    new-instance v0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;-><init>(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;Lcom/stripe/paymentcollection/TippingState$EndState;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    .line 2185
    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/OnlineAuthorizationMagStripeHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method private final generatePresentProcessingEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 0

    .line 2199
    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/OnlineAuthorizationMagStripeHandler;->createPresentProcessingEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/PresentProcessingEvent;

    move-result-object p1

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    .line 2198
    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/OnlineAuthorizationMagStripeHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 4

    .line 2120
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    if-eqz p1, :cond_2

    .line 2123
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/OnlineAuthorizationMagStripeHandler;->generatePresentProcessingEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 2126
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripeReadResult()Lcom/stripe/hardware/magstripe/MagStripeReadResult;

    move-result-object p2

    .line 2127
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripePaymentCollectionAuthority()Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    move-result-object v0

    .line 2128
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTippingState()Lcom/stripe/paymentcollection/TippingState;

    move-result-object v1

    .line 2130
    instance-of v2, p2, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 2132
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/OnlineAuthorizationMagStripeHandler;->getDiscreteEventLogger()Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;->logAllowingMagStripe(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 2136
    instance-of v2, v1, Lcom/stripe/paymentcollection/TippingState$EndState;

    if-eqz v2, :cond_1

    .line 2137
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/OnlineAuthorizationMagStripeHandler;->getOnlineAuthStateLogger()Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;

    move-result-object v2

    sget-object v3, Lcom/stripe/paymentcollection/OnlineAuthState$ReadyToStartConfirmation;->INSTANCE:Lcom/stripe/paymentcollection/OnlineAuthState$ReadyToStartConfirmation;

    check-cast v3, Lcom/stripe/paymentcollection/OnlineAuthState;

    invoke-interface {v2, v3, p1}, Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;->updateOnlineAuthState(Lcom/stripe/paymentcollection/OnlineAuthState;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 2139
    check-cast p2, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    .line 2141
    check-cast v1, Lcom/stripe/paymentcollection/TippingState$EndState;

    .line 2138
    invoke-direct {p0, p2, v0, v1}, Lcom/stripe/paymentcollection/OnlineAuthorizationMagStripeHandler;->generateMagStripeAuthRequestEvent(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;Lcom/stripe/paymentcollection/TippingState$EndState;)V

    goto :goto_0

    .line 2145
    :cond_0
    iget-object p2, p0, Lcom/stripe/paymentcollection/OnlineAuthorizationMagStripeHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const-string v0, "Entered Mag Stripe Authorization without card data"

    invoke-interface {p2, v0}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->e(Ljava/lang/String;)V

    .line 2147
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getShouldAutoRespondOnlineAuth()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2149
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object p2, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION_COMPLETE:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0, v1}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2111
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/OnlineAuthorizationMagStripeHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 2

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2158
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 2160
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getDynamicCurrencyConversionSelectionStatus()Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;

    move-result-object p2

    instance-of p2, p2, Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus$Requested;

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 2166
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object p2, Lcom/stripe/paymentcollection/PaymentCollectionState;->DCC_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-static {p1, p2, v1, v0, v1}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 2167
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getOnlineAuthorizationResponse()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2168
    new-instance p1, Lcom/stripe/paymentcollection/SecondGenACResponseEvent;

    sget-object p2, Lcom/stripe/paymentcollection/MagStripeSecondGenACResponse;->INSTANCE:Lcom/stripe/paymentcollection/MagStripeSecondGenACResponse;

    check-cast p2, Lcom/stripe/paymentcollection/SecondGenACResponse;

    invoke-direct {p1, p2}, Lcom/stripe/paymentcollection/SecondGenACResponseEvent;-><init>(Lcom/stripe/paymentcollection/SecondGenACResponse;)V

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/OnlineAuthorizationMagStripeHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    .line 2170
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object p2, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION_COMPLETE:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-static {p1, p2, v1, v0, v1}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method
