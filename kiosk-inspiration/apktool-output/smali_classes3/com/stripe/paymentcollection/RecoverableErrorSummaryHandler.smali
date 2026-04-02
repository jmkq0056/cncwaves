.class public final Lcom/stripe/paymentcollection/RecoverableErrorSummaryHandler;
.super Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentCollectionStateHandlers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentCollectionStateHandlers.kt\ncom/stripe/paymentcollection/RecoverableErrorSummaryHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2902:1\n1#2:2903\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000cH\u0016J\u001a\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/RecoverableErrorSummaryHandler;",
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

    .line 1897
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->RECOVERABLE_ERROR_SUMMARY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 1896
    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    .line 1895
    iput-object p2, p0, Lcom/stripe/paymentcollection/RecoverableErrorSummaryHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 6

    .line 1913
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1916
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getDeviceCapability()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->getDirectlyControlsScreenInput()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1919
    iget-object v0, p0, Lcom/stripe/paymentcollection/RecoverableErrorSummaryHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const-string v2, "Ready to collect again - does not control input."

    new-array p2, p2, [Lkotlin/Pair;

    invoke-interface {v0, v2, p2}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    if-eqz p1, :cond_1

    .line 1920
    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/RecoverableErrorSummaryHandler;->startCollectionIfNeeded(Lcom/stripe/paymentcollection/PaymentCollectionData;)Z

    return-void

    .line 1921
    :cond_1
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object p2, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const/4 v0, 0x2

    invoke-static {p1, p2, v1, v0, v1}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 1927
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getHardwareTransactionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1929
    sget-object v1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->Companion:Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion;

    invoke-virtual {v1, v0}, Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion;->fromTransactionResult(Lcom/stripe/hardware/emv/TransactionResult$Result;)Lcom/stripe/hardware/paymentcollection/RecoverableError;

    move-result-object v0

    move-object v1, v0

    .line 1936
    :cond_3
    sget-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CARD_REMOVED_TOO_SOON:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    const/4 v2, 0x1

    if-ne v1, v0, :cond_4

    .line 1937
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getApplicationList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, p2

    :goto_1
    if-eqz p1, :cond_8

    .line 1947
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getHardwareTransactionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v3

    sget-object v4, Lcom/stripe/hardware/emv/TransactionResult$Result;->TERMINATED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    if-ne v3, v4, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, p2

    .line 1948
    :goto_2
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getIntermediateTransactionError()Lcom/stripe/hardware/emv/IntermediateTransactionError;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    move v4, p2

    .line 1949
    :goto_3
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getEarlyTransactionAbortReason()Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;

    move-result-object v5

    if-nez v5, :cond_7

    move v5, v2

    goto :goto_4

    :cond_7
    move v5, p2

    :goto_4
    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    move v2, p2

    :goto_5
    if-eqz v0, :cond_9

    .line 1956
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Ready to collect again - technical fallback."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/RecoverableErrorSummaryHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_9
    if-eqz v1, :cond_a

    .line 1959
    new-instance p2, Lcom/stripe/paymentcollection/DisplayRecoverableErrorEvent;

    .line 1960
    new-instance v0, Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;

    .line 1962
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getEnableCustomerCancellation()Z

    move-result p1

    .line 1960
    invoke-direct {v0, v1, p1}, Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;-><init>(Lcom/stripe/hardware/paymentcollection/RecoverableError;Z)V

    .line 1959
    invoke-direct {p2, v0}, Lcom/stripe/paymentcollection/DisplayRecoverableErrorEvent;-><init>(Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;)V

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    .line 1958
    invoke-virtual {p0, p2}, Lcom/stripe/paymentcollection/RecoverableErrorSummaryHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void

    :cond_a
    if-eqz v2, :cond_c

    .line 1968
    new-instance v0, Lcom/stripe/paymentcollection/DisplayRecoverableErrorEvent;

    .line 1969
    new-instance v1, Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;

    .line 1970
    sget-object v2, Lcom/stripe/hardware/paymentcollection/RecoverableError;->DECLINED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    if-eqz p1, :cond_b

    .line 1971
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getEnableCustomerCancellation()Z

    move-result p2

    .line 1969
    :cond_b
    invoke-direct {v1, v2, p2}, Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;-><init>(Lcom/stripe/hardware/paymentcollection/RecoverableError;Z)V

    .line 1968
    invoke-direct {v0, v1}, Lcom/stripe/paymentcollection/DisplayRecoverableErrorEvent;-><init>(Lcom/stripe/hardware/paymentcollection/RecoverableErrorModel;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    .line 1967
    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/RecoverableErrorSummaryHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void

    .line 1976
    :cond_c
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Ready to collect again - no result."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/RecoverableErrorSummaryHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1893
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/RecoverableErrorSummaryHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 1

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1902
    invoke-super {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    .line 1906
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-ne p1, v0, :cond_0

    .line 1907
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/RecoverableErrorSummaryHandler;->clearContactCardStateAndPrepareNextCollection()V

    .line 1908
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/RecoverableErrorSummaryHandler;->getCollectionEventLogger()Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;

    move-result-object p1

    invoke-interface {p1}, Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;->start()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onExit(Ljava/lang/Object;)V
    .locals 0

    .line 1893
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/RecoverableErrorSummaryHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 1

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1981
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 1982
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/RecoverableErrorSummaryHandler;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz p1, :cond_0

    .line 1983
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getUserRetryRequested()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1984
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Ready to collect again - retry requested."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/RecoverableErrorSummaryHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
