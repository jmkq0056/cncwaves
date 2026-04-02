.class public final Lcom/stripe/paymentcollection/PrepareToCollectAgainHandler;
.super Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u001a\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/PrepareToCollectAgainHandler;",
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

    .line 1832
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->PREPARE_TO_COLLECT_AGAIN:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 1831
    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 1

    .line 1837
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    if-eqz p1, :cond_0

    .line 1839
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PrepareToCollectAgainHandler;->getCollectionEventLogger()Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    move-result-object p2

    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PrepareToCollectAgainHandler;->getState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-interface {p2, p1, v0}, Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;->end(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    .line 1840
    invoke-virtual {p0, p1, p1}, Lcom/stripe/paymentcollection/PrepareToCollectAgainHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1828
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PrepareToCollectAgainHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 7

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1848
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 1850
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCardSlotState()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    move-result-object v0

    sget-object v1, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->EMPTY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1852
    :goto_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCardSlotState()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    move-result-object v1

    sget-object v4, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->CARD_INSERTED_INCORRECTLY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    if-ne v1, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 1853
    :goto_1
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getHardwareTransactionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v3

    .line 1855
    :goto_3
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isWaitingForCard()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isWaitingForCard()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    if-eqz v5, :cond_5

    .line 1859
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->RECOVERABLE_ERROR_SUMMARY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Transaction can be recovered."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PrepareToCollectAgainHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_5
    if-eqz v4, :cond_6

    if-nez v0, :cond_6

    .line 1862
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PrepareToCollectAgainHandler;->generateStartPollingForCardStatusEvent()Lkotlin/Unit;

    goto :goto_5

    :cond_6
    if-eqz v2, :cond_7

    .line 1864
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Card must be presented again."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PrepareToCollectAgainHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_5
    if-nez v0, :cond_9

    .line 1873
    new-instance p2, Lcom/stripe/paymentcollection/PresentRemoveCardEvent;

    .line 1874
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RemoveCardModel;

    .line 1875
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v2

    .line 1876
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSelectedLanguage()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_8

    .line 1878
    sget-object v1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CHIP_CARD_INSERTED_INCORRECTLY:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    .line 1874
    :goto_6
    invoke-direct {v0, v2, p1, v1}, Lcom/stripe/hardware/paymentcollection/RemoveCardModel;-><init>(Lcom/stripe/currency/Amount;Ljava/lang/String;Lcom/stripe/hardware/paymentcollection/RecoverableError;)V

    .line 1873
    invoke-direct {p2, v0}, Lcom/stripe/paymentcollection/PresentRemoveCardEvent;-><init>(Lcom/stripe/hardware/paymentcollection/RemoveCardModel;)V

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    .line 1872
    invoke-virtual {p0, p2}, Lcom/stripe/paymentcollection/PrepareToCollectAgainHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void

    .line 1887
    :cond_9
    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/PrepareToCollectAgainHandler;->createPresentProcessingEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/PresentProcessingEvent;

    move-result-object p1

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    .line 1886
    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/PrepareToCollectAgainHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method
