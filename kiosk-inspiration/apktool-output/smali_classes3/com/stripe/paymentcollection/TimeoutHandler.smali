.class public final Lcom/stripe/paymentcollection/TimeoutHandler;
.super Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/TimeoutHandler;",
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

    .line 2481
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->TIMEOUT:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 2480
    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 76

    move-object/from16 v0, p0

    .line 2486
    invoke-super/range {p0 .. p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    if-eqz p1, :cond_1

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

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

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

    const/16 v73, -0x2001

    move-object/from16 v1, p1

    move-object/from16 v47, p2

    .line 2490
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/stripe/paymentcollection/TimeoutHandler;->updateDataWithoutCallback(Ljava/lang/Object;)V

    .line 2491
    sget-object v2, Lcom/stripe/paymentcollection/TimeoutEvent;->INSTANCE:Lcom/stripe/paymentcollection/TimeoutEvent;

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {v0, v2}, Lcom/stripe/paymentcollection/TimeoutHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    .line 2493
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/TimeoutHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->onCancel(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 2494
    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCardSlotState()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    move-result-object v1

    sget-object v2, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->EMPTY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    if-ne v1, v2, :cond_0

    .line 2495
    sget-object v1, Lcom/stripe/paymentcollection/PaymentCollectionState;->FINISHED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v2, "Transaction timed out."

    invoke-virtual {v0, v1, v2}, Lcom/stripe/paymentcollection/TimeoutHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 2497
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object v2, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION_COMPLETE:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2477
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/TimeoutHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method
