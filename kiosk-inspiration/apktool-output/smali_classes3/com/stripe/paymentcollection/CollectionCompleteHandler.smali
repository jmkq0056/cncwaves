.class public final Lcom/stripe/paymentcollection/CollectionCompleteHandler;
.super Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u001a\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/CollectionCompleteHandler;",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;",
        "timer",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
        "logger",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V",
        "onEnter",
        "",
        "current",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
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


# direct methods
.method public constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V
    .locals 1

    const-string v0, "timer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2308
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION_COMPLETE:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 2307
    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 0

    .line 2313
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    if-eqz p1, :cond_0

    .line 2315
    invoke-virtual {p0, p1, p1}, Lcom/stripe/paymentcollection/CollectionCompleteHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2304
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/CollectionCompleteHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 7

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2323
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 2325
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    .line 2326
    :goto_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCardSlotState()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    move-result-object v2

    sget-object v3, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->EMPTY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    if-eq v2, v3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    .line 2327
    :goto_1
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getConfirmedCollection()Z

    move-result v3

    .line 2328
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTippingState()Lcom/stripe/paymentcollection/TippingState;

    move-result-object v4

    instance-of v4, v4, Lcom/stripe/paymentcollection/TippingState$SelectionNeeded;

    .line 2329
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isPreDipEnabled()Z

    move-result v5

    .line 2330
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isCollectionEndedWithFailure()Z

    move-result v6

    if-eqz v2, :cond_2

    if-nez p2, :cond_3

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 2332
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getDynamicCurrencyConversionSelectionStatus()Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;

    move-result-object v1

    instance-of v1, v1, Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus$Requested;

    .line 2335
    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/CollectionCompleteHandler;->sendOnlineAuthRequestEventIfNeeded(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    if-eqz v6, :cond_5

    if-eqz v2, :cond_4

    .line 2340
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->REMOVE_CARD:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Remove card after collection fails / cancels."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/CollectionCompleteHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2342
    :cond_4
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->FINISHED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Finish as collection fails / cancels."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/CollectionCompleteHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_5
    if-eqz v0, :cond_6

    .line 2347
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->REMOVE_CARD:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Remove card after collection success."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/CollectionCompleteHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_6
    if-nez v3, :cond_7

    .line 2353
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->DISPLAY_CART_POST_COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 2354
    const-string p2, "Pre-dip collection complete."

    .line 2352
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/CollectionCompleteHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_7
    if-eqz v1, :cond_8

    .line 2359
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object p2, Lcom/stripe/paymentcollection/PaymentCollectionState;->DCC_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0, v1}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_8
    if-eqz v4, :cond_9

    .line 2365
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->TIPPING_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Tipping required."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/CollectionCompleteHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_9
    if-nez p2, :cond_a

    .line 2369
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->ONLINE_CONFIRMATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Waiting for payment confirmation."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/CollectionCompleteHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2373
    :cond_a
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->FINISHED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Finish as collection succeeds."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/CollectionCompleteHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
