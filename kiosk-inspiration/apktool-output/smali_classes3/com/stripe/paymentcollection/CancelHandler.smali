.class public final Lcom/stripe/paymentcollection/CancelHandler;
.super Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u001a\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/CancelHandler;",
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


# instance fields
.field private final logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;


# direct methods
.method public constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V
    .locals 1

    const-string v0, "timer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2386
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->CANCEL:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 2385
    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    .line 2384
    iput-object p2, p0, Lcom/stripe/paymentcollection/CancelHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 76

    move-object/from16 v0, p0

    .line 2391
    invoke-super/range {p0 .. p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    if-eqz p1, :cond_0

    const/16 v74, 0x3f

    const/16 v75, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, -0x1

    const/16 v73, -0x9

    move-object/from16 v1, p1

    move-object/from16 v37, p2

    .line 2395
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/stripe/paymentcollection/CancelHandler;->updateDataWithoutCallback(Ljava/lang/Object;)V

    .line 2396
    invoke-virtual {v0, v1, v1}, Lcom/stripe/paymentcollection/CancelHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2382
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/CancelHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 5

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2401
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 2404
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getKernelConfirmedCancel()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getHardwareTransactionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2415
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getOnlineAuthorizationData()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getOnlineAuthorizationData()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 2416
    iget-object p1, p0, Lcom/stripe/paymentcollection/CancelHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const-string p2, "online request after a cancel, calling StopReaderEvent"

    new-array v0, v3, [Lkotlin/Pair;

    invoke-interface {p1, p2, v0}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 2417
    new-instance p1, Lcom/stripe/paymentcollection/StopReaderEvent;

    sget-object p2, Lcom/stripe/hardware/emv/CancellationPhase;->AUTH:Lcom/stripe/hardware/emv/CancellationPhase;

    invoke-direct {p1, p2}, Lcom/stripe/paymentcollection/StopReaderEvent;-><init>(Lcom/stripe/hardware/emv/CancellationPhase;)V

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/CancelHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void

    .line 2420
    :cond_2
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getPinEntryStatus()Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    move-result-object v0

    sget-object v4, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->REQUESTED:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    if-ne v0, v4, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getPinEntryStatus()Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    sget-object v4, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->NOT_REQUESTED:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    if-ne v0, v4, :cond_4

    .line 2421
    iget-object p1, p0, Lcom/stripe/paymentcollection/CancelHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const-string p2, "pin entry request after a cancel, calling StopReaderEvent"

    new-array v0, v3, [Lkotlin/Pair;

    invoke-interface {p1, p2, v0}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 2422
    new-instance p1, Lcom/stripe/paymentcollection/StopReaderEvent;

    sget-object p2, Lcom/stripe/hardware/emv/CancellationPhase;->PIN:Lcom/stripe/hardware/emv/CancellationPhase;

    invoke-direct {p1, p2}, Lcom/stripe/paymentcollection/StopReaderEvent;-><init>(Lcom/stripe/hardware/emv/CancellationPhase;)V

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/CancelHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void

    .line 2425
    :cond_4
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAccountSelectionStatus()Lcom/stripe/paymentcollection/AccountSelectionStatus;

    move-result-object v0

    sget-object v4, Lcom/stripe/paymentcollection/AccountSelectionStatus$Requested;->INSTANCE:Lcom/stripe/paymentcollection/AccountSelectionStatus$Requested;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    .line 2426
    invoke-virtual {p2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAccountSelectionStatus()Lcom/stripe/paymentcollection/AccountSelectionStatus;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v2

    :goto_2
    sget-object v4, Lcom/stripe/paymentcollection/AccountSelectionStatus$NotRequested;->INSTANCE:Lcom/stripe/paymentcollection/AccountSelectionStatus$NotRequested;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2427
    iget-object p1, p0, Lcom/stripe/paymentcollection/CancelHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const-string p2, "account selection request after a cancel, calling StopReaderEvent"

    new-array v0, v3, [Lkotlin/Pair;

    invoke-interface {p1, p2, v0}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 2428
    new-instance p1, Lcom/stripe/paymentcollection/StopReaderEvent;

    sget-object p2, Lcom/stripe/hardware/emv/CancellationPhase;->ACCOUNT_TYPE_SELECTION:Lcom/stripe/hardware/emv/CancellationPhase;

    invoke-direct {p1, p2}, Lcom/stripe/paymentcollection/StopReaderEvent;-><init>(Lcom/stripe/hardware/emv/CancellationPhase;)V

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/CancelHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void

    .line 2431
    :cond_6
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getApplicationList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getApplicationList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 2432
    iget-object p1, p0, Lcom/stripe/paymentcollection/CancelHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const-string p2, "app selection request after a cancel, calling StopReaderEvent"

    new-array v0, v3, [Lkotlin/Pair;

    invoke-interface {p1, p2, v0}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 2433
    new-instance p1, Lcom/stripe/paymentcollection/StopReaderEvent;

    sget-object p2, Lcom/stripe/hardware/emv/CancellationPhase;->APPLICATION_SELECTION:Lcom/stripe/hardware/emv/CancellationPhase;

    invoke-direct {p1, p2}, Lcom/stripe/paymentcollection/StopReaderEvent;-><init>(Lcom/stripe/hardware/emv/CancellationPhase;)V

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/CancelHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void

    .line 2436
    :cond_7
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getStateWhenCancelled()Lcom/stripe/paymentcollection/PaymentCollectionState;

    move-result-object p2

    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->NON_CARD_PAYMENT_METHOD_ACTION_REQUIRED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-ne p2, v0, :cond_8

    .line 2437
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object p2, Lcom/stripe/paymentcollection/PaymentCollectionState;->INTERSTITIAL:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-static {p1, p2, v2, v1, v2}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 2440
    :cond_8
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getEarlyTransactionAbortReason()Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;

    move-result-object p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/stripe/paymentcollection/CancelHandler;->generateStopReaderEvent()V

    :cond_9
    return-void

    .line 2405
    :cond_a
    :goto_3
    sget-object p2, Lcom/stripe/paymentcollection/CollectionCancelledEvent;->INSTANCE:Lcom/stripe/paymentcollection/CollectionCancelledEvent;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p2}, Lcom/stripe/paymentcollection/CancelHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    .line 2406
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/CancelHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->onCancel(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 2407
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCardSlotState()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    move-result-object p1

    sget-object p2, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->EMPTY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    if-ne p1, p2, :cond_b

    .line 2408
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->FINISHED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Transaction cancelled."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/CancelHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2410
    :cond_b
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object p2, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION_COMPLETE:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-static {p1, p2, v2, v1, v2}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
