.class public final Lcom/stripe/paymentcollection/MagStripePinEntryHandler;
.super Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000cH\u0016J\u001a\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/MagStripePinEntryHandler;",
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


# instance fields
.field private final logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;


# direct methods
.method public constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V
    .locals 1

    const-string v0, "timer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1746
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->MAGSTRIPE_PIN_ENTRY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 1745
    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    .line 1744
    iput-object p2, p0, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 0

    .line 1751
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    .line 1752
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->generateStartPinEntryEvent()V

    .line 1753
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->openPinEntryLog()V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1755
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1742
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 3

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1810
    invoke-super {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    .line 1811
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->CANCEL:Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-ne p1, v0, :cond_0

    .line 1815
    new-instance p1, Lcom/stripe/paymentcollection/StopReaderEvent;

    sget-object v0, Lcom/stripe/hardware/emv/CancellationPhase;->PIN:Lcom/stripe/hardware/emv/CancellationPhase;

    invoke-direct {p1, v0}, Lcom/stripe/paymentcollection/StopReaderEvent;-><init>(Lcom/stripe/hardware/emv/CancellationPhase;)V

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    .line 1816
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object p1

    .line 1817
    sget-object v0, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    .line 1818
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    .line 1819
    sget-object v2, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    .line 1816
    invoke-interface {p1, v0, v1, v2}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closePinEntryLog(Lcom/stripe/paymentcollection/metrics/Result;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onExit(Ljava/lang/Object;)V
    .locals 0

    .line 1742
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 8

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1763
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 1765
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripePinStatus()Lcom/stripe/paymentcollection/MagStripePinStatus;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripePinStatus()Lcom/stripe/paymentcollection/MagStripePinStatus;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1766
    iget-object v0, p0, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MagStripePinStatus changed to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripePinStatus()Lcom/stripe/paymentcollection/MagStripePinStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 1768
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripePinStatus()Lcom/stripe/paymentcollection/MagStripePinStatus;

    move-result-object v0

    .line 1769
    sget-object v1, Lcom/stripe/paymentcollection/MagStripePinStatus$Collected;->INSTANCE:Lcom/stripe/paymentcollection/MagStripePinStatus$Collected;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1770
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object v2

    sget-object v3, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closePinEntryLog$default(Lcom/stripe/paymentcollection/metrics/StageEventLogger;Lcom/stripe/paymentcollection/metrics/Result;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;ILjava/lang/Object;)V

    .line 1771
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->ONLINE_AUTHORIZATION_MAG_STRIPE:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "MagStripe PIN entered."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    move-object v2, p1

    .line 1775
    sget-object p1, Lcom/stripe/paymentcollection/MagStripePinStatus$Bypassed;->INSTANCE:Lcom/stripe/paymentcollection/MagStripePinStatus$Bypassed;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1776
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object v0

    sget-object v1, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closePinEntryLog$default(Lcom/stripe/paymentcollection/metrics/StageEventLogger;Lcom/stripe/paymentcollection/metrics/Result;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;ILjava/lang/Object;)V

    .line 1777
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->ONLINE_AUTHORIZATION_MAG_STRIPE:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "MagStripe PIN bypassed."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1781
    :cond_2
    instance-of p1, v0, Lcom/stripe/paymentcollection/MagStripePinStatus$Failed;

    if-eqz p1, :cond_3

    .line 1782
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object v0

    sget-object v1, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closePinEntryLog$default(Lcom/stripe/paymentcollection/metrics/StageEventLogger;Lcom/stripe/paymentcollection/metrics/Result;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;ILjava/lang/Object;)V

    .line 1783
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->clearContactCardStateAndPrepareNextCollection()V

    .line 1784
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "MagStripe PIN failed, recollect payment."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1788
    :cond_3
    sget-object p1, Lcom/stripe/paymentcollection/MagStripePinStatus$NotNeeded;->INSTANCE:Lcom/stripe/paymentcollection/MagStripePinStatus$NotNeeded;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1790
    iget-object p1, p0, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const-string v0, "MagStripePinStatus NotNeeded in MagStripe PIN state."

    invoke-interface {p1, v0}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 1793
    :cond_4
    sget-object p1, Lcom/stripe/paymentcollection/MagStripePinStatus$ToCollect;->INSTANCE:Lcom/stripe/paymentcollection/MagStripePinStatus$ToCollect;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    move-object v4, v2

    goto :goto_2

    :cond_5
    move-object v4, p1

    .line 1800
    :goto_2
    invoke-virtual {v4}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v2

    .line 1801
    invoke-virtual {v4}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getPinAsterisks()I

    move-result v3

    move-object p1, v4

    .line 1802
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSelectedLanguage()Ljava/lang/String;

    move-result-object v4

    .line 1803
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getPinEntryRetryReason()Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;

    move-result-object v5

    .line 1804
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getEnableCustomerCancellation()Z

    move-result v6

    .line 1805
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->getPinEntryAccessibilityData(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;

    move-result-object v7

    move-object v1, p0

    .line 1799
    invoke-virtual/range {v1 .. v7}, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;->generateUserInteractionEvent(Lcom/stripe/currency/Amount;ILjava/lang/String;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;ZLcom/stripe/hardware/paymentcollection/PinEntryAccessibilityData;)V

    return-void
.end method
