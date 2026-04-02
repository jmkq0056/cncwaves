.class public final Lcom/stripe/paymentcollection/TippingHandler;
.super Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u001c\u0010\r\u001a\u00020\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0010H\u0016J\u001a\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000bH\u0016\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/TippingHandler;",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;",
        "timer",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
        "logger",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V",
        "generateCancelCollectTippingThroughKernelEvent",
        "",
        "generateCollectTippingThroughKernelEvent",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "generateUserInteractionEvent",
        "onEnter",
        "current",
        "from",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        "onExit",
        "to",
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


# direct methods
.method public constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V
    .locals 1

    const-string v0, "timer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->TIPPING_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 514
    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    return-void
.end method

.method private final generateCancelCollectTippingThroughKernelEvent()V
    .locals 1

    .line 578
    sget-object v0, Lcom/stripe/paymentcollection/CancelHardwareTippingCollectionEvent;->INSTANCE:Lcom/stripe/paymentcollection/CancelHardwareTippingCollectionEvent;

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/TippingHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method private final generateCollectTippingThroughKernelEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 1

    .line 574
    new-instance v0, Lcom/stripe/paymentcollection/HardwareTippingCollectionEvent;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTippingConfig()Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/HardwareTippingCollectionEvent;-><init>(Lcom/stripe/hardware/tipping/TipConfigValidationResult;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/TippingHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method private final generateUserInteractionEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 3

    .line 564
    new-instance v0, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;

    .line 565
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v1

    .line 566
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTipEligibleAmount()Lcom/stripe/currency/Amount;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v2

    .line 567
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getEnableCustomerCancellation()Z

    move-result p1

    .line 564
    invoke-direct {v0, v1, v2, p1}, Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;-><init>(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Z)V

    .line 570
    new-instance p1, Lcom/stripe/paymentcollection/TippingSelectionEvent;

    invoke-direct {p1, v0}, Lcom/stripe/paymentcollection/TippingSelectionEvent;-><init>(Lcom/stripe/hardware/paymentcollection/TippingSelectionModel;)V

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/TippingHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 0

    .line 520
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    .line 521
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/TippingHandler;->getTippingLogger()Lcom/stripe/paymentcollection/metrics/TippingLogger;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/paymentcollection/metrics/TippingLogger;->openTippingSelectionLog()V

    if-eqz p1, :cond_1

    .line 523
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getDeviceCapability()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    move-result-object p2

    invoke-virtual {p2}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->getDirectlyControlsScreenInput()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 524
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/TippingHandler;->generateUserInteractionEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    return-void

    .line 526
    :cond_0
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/TippingHandler;->generateCollectTippingThroughKernelEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 511
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/TippingHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 1

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    invoke-super {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    .line 533
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/TippingHandler;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz p1, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/TippingHandler;->getTippingLogger()Lcom/stripe/paymentcollection/metrics/TippingLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/stripe/paymentcollection/metrics/TippingLogger;->closeTippingSelectionLog(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 535
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getDeviceCapability()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->getDirectlyControlsScreenInput()Z

    move-result p1

    if-nez p1, :cond_0

    .line 538
    invoke-direct {p0}, Lcom/stripe/paymentcollection/TippingHandler;->generateCancelCollectTippingThroughKernelEvent()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onExit(Ljava/lang/Object;)V
    .locals 0

    .line 511
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/TippingHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 2

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 549
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTippingState()Lcom/stripe/paymentcollection/TippingState;

    move-result-object v0

    instance-of v0, v0, Lcom/stripe/paymentcollection/TippingState$Completed;

    if-eqz v0, :cond_0

    .line 550
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "Tipping completed."

    invoke-virtual {p0, v0, v1}, Lcom/stripe/paymentcollection/TippingHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 553
    invoke-virtual {p2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getShowThankYouReceived()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getShowThankYouReceived()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 555
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->RECOVERABLE_ERROR_SUMMARY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Received Thank You event. Attempt recovery"

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/TippingHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
