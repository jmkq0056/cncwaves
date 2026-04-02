.class public final Lcom/stripe/paymentcollection/PinEntryHandler;
.super Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/PinEntryHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000cH\u0016J\u001a\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/PinEntryHandler;",
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

    .line 1622
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->PIN_ENTRY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 1621
    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 0

    .line 1627
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1629
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PinEntryHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1618
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PinEntryHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 3

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1728
    invoke-super {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    .line 1729
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->CANCEL:Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-ne p1, v0, :cond_0

    .line 1730
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PinEntryHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object p1

    .line 1731
    sget-object v0, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    .line 1732
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PinEntryHandler;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    .line 1733
    sget-object v2, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    .line 1730
    invoke-interface {p1, v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closePinEntryLog(Lcom/stripe/paymentcollection/metrics/Result;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onExit(Ljava/lang/Object;)V
    .locals 0

    .line 1618
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/PinEntryHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 13

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1637
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 1639
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getPinEntryStatus()Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getPinEntryStatus()Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eq v0, v1, :cond_2

    .line 1640
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getPinEntryStatus()Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    move-result-object v0

    sget-object v1, Lcom/stripe/paymentcollection/PinEntryHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1683
    :pswitch_0
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PinEntryHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object v1

    sget-object v2, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closePinEntryLog$default(Lcom/stripe/paymentcollection/metrics/StageEventLogger;Lcom/stripe/paymentcollection/metrics/Result;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;ILjava/lang/Object;)V

    move-object v9, v3

    goto :goto_2

    :pswitch_1
    move-object v9, p1

    .line 1671
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PinEntryHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object v7

    sget-object v8, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closePinEntryLog$default(Lcom/stripe/paymentcollection/metrics/StageEventLogger;Lcom/stripe/paymentcollection/metrics/Result;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;ILjava/lang/Object;)V

    .line 1672
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PREPARE_TO_COLLECT_AGAIN:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "PIN entry aborted."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PinEntryHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_2
    move-object v9, p1

    .line 1654
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PinEntryHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object p1

    .line 1655
    sget-object p2, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    .line 1657
    sget-object v0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    .line 1654
    invoke-interface {p1, p2, v9, v0}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closePinEntryLog(Lcom/stripe/paymentcollection/metrics/Result;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;)V

    .line 1661
    invoke-virtual {v9}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getDeviceCapability()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->getRetryUponPinCancel()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1662
    sget-object p1, Lcom/stripe/paymentcollection/HardwareTransactionCancelledEvent;->INSTANCE:Lcom/stripe/paymentcollection/HardwareTransactionCancelledEvent;

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/PinEntryHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void

    .line 1664
    :cond_1
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PREPARE_TO_COLLECT_AGAIN:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "PIN entry canceled."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PinEntryHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :pswitch_3
    move-object v9, p1

    .line 1649
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PinEntryHandler;->generateStartPinEntryEvent()V

    .line 1650
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PinEntryHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->openPinEntryLog()V

    goto :goto_2

    :pswitch_4
    move-object v9, p1

    .line 1643
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PROCESSING:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "PIN verified."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PinEntryHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1644
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PinEntryHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object v7

    sget-object v8, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closePinEntryLog$default(Lcom/stripe/paymentcollection/metrics/StageEventLogger;Lcom/stripe/paymentcollection/metrics/Result;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;ILjava/lang/Object;)V

    return-void

    :cond_2
    :goto_1
    move-object v9, p1

    .line 1694
    :goto_2
    invoke-virtual {v9}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getOnlineAuthorizationData()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v9}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getPinEntryStatus()Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    move-result-object p1

    sget-object v0, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->REQUESTED:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    if-eq p1, v0, :cond_3

    .line 1695
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PROCESSING:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "PIN entered."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PinEntryHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1696
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/PinEntryHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object v7

    sget-object v8, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closePinEntryLog$default(Lcom/stripe/paymentcollection/metrics/StageEventLogger;Lcom/stripe/paymentcollection/metrics/Result;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;ILjava/lang/Object;)V

    return-void

    .line 1702
    :cond_3
    invoke-virtual {v9}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isDeclined()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v9}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getHardwareTransactionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object p1

    sget-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->TERMINATED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    if-ne p1, v0, :cond_4

    goto :goto_3

    .line 1712
    :cond_4
    invoke-virtual {v9}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isWaitingForCard()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isWaitingForCard()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v9}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getPinEntryStatus()Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    move-result-object p1

    sget-object v0, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ENTERED:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    if-ne p1, v0, :cond_5

    .line 1713
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Card must be presented again."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PinEntryHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1718
    :cond_5
    invoke-virtual {v9}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v1

    .line 1719
    invoke-virtual {v9}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getPinAsterisks()I

    move-result v2

    .line 1720
    invoke-virtual {v9}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSelectedLanguage()Ljava/lang/String;

    move-result-object v3

    .line 1721
    invoke-virtual {v9}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getPinEntryRetryReason()Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;

    move-result-object v4

    .line 1722
    invoke-virtual {v9}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getEnableCustomerCancellation()Z

    move-result v5

    .line 1723
    invoke-virtual {p0, v9, p2}, Lcom/stripe/paymentcollection/PinEntryHandler;->getPinEntryAccessibilityData(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;

    move-result-object v6

    move-object v0, p0

    .line 1717
    invoke-virtual/range {v0 .. v6}, Lcom/stripe/paymentcollection/PinEntryHandler;->generateUserInteractionEvent(Lcom/stripe/currency/Amount;ILjava/lang/String;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;ZLcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;)V

    return-void

    :cond_6
    :goto_3
    move-object v0, p0

    .line 1704
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PREPARE_TO_COLLECT_AGAIN:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 1705
    const-string p2, "Transaction declined. Prepare to collect again."

    .line 1703
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PinEntryHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
