.class public final Lcom/stripe/paymentcollection/AccountSelectionHandler;
.super Lcom/stripe/paymentcollection/PaymentCollectionScreenInputStateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\"\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001c\u0010\u0012\u001a\u00020\u00082\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J\u0010\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0014H\u0016J\u001a\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u00142\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0014H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/AccountSelectionHandler;",
        "Lcom/stripe/paymentcollection/PaymentCollectionScreenInputStateHandler;",
        "timer",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
        "logger",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V",
        "generateAccountTypeSelectionEvent",
        "",
        "accountType",
        "Lcom/stripe/hardware/emv/AccountType;",
        "generateUserInteractionEvent",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "language",
        "",
        "enableCustomerCancellation",
        "",
        "onEnter",
        "current",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "from",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        "onExit",
        "to",
        "onImplicitSelection",
        "data",
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

    .line 1517
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->ACCOUNT_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 1516
    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionScreenInputStateHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    .line 1515
    iput-object p2, p0, Lcom/stripe/paymentcollection/AccountSelectionHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    return-void
.end method

.method private final generateAccountTypeSelectionEvent(Lcom/stripe/hardware/emv/AccountType;)V
    .locals 1

    .line 1590
    new-instance v0, Lcom/stripe/paymentcollection/SelectAccountTypeEvent;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/SelectAccountTypeEvent;-><init>(Lcom/stripe/hardware/emv/AccountType;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/AccountSelectionHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method private final generateUserInteractionEvent(Lcom/stripe/currency/Amount;Ljava/lang/String;Z)V
    .locals 4

    .line 1601
    new-instance v0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;

    const/4 v1, 0x2

    .line 1603
    new-array v1, v1, [Lcom/stripe/hardware/emv/AccountType;

    const/4 v2, 0x0

    sget-object v3, Lcom/stripe/hardware/emv/AccountType;->CHECKING:Lcom/stripe/hardware/emv/AccountType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 1604
    sget-object v3, Lcom/stripe/hardware/emv/AccountType;->SAVINGS:Lcom/stripe/hardware/emv/AccountType;

    aput-object v3, v1, v2

    .line 1602
    invoke-static {v1}, Lkotlin/collections/SetsKt;->linkedSetOf([Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v1

    .line 1601
    invoke-direct {v0, v1, p1, p2, p3}, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;-><init>(Ljava/util/LinkedHashSet;Lcom/stripe/currency/Amount;Ljava/lang/String;Z)V

    .line 1611
    new-instance p1, Lcom/stripe/paymentcollection/PresentAccountTypeSelectionEvent;

    invoke-direct {p1, v0}, Lcom/stripe/paymentcollection/PresentAccountTypeSelectionEvent;-><init>(Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;)V

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/AccountSelectionHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 0

    .line 1527
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionScreenInputStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    if-eqz p1, :cond_2

    .line 1529
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/AccountSelectionHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->openAccountSelectionLog()V

    .line 1530
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSelectedApplicationIndex()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1531
    iget-object p1, p0, Lcom/stripe/paymentcollection/AccountSelectionHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const-string p2, "Attempt to select account without prior application selection."

    invoke-interface {p1, p2}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->e(Ljava/lang/String;)V

    return-void

    .line 1536
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getShouldAutoSelectAccount()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1538
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PROCESSING:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 1539
    const-string p2, "Account Type selection not required."

    .line 1537
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/AccountSelectionHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1544
    :cond_1
    invoke-virtual {p0, p1, p1}, Lcom/stripe/paymentcollection/AccountSelectionHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1513
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/AccountSelectionHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 2

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    invoke-super {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionScreenInputStateHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    .line 1550
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/AccountSelectionHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/stripe/paymentcollection/AccountSelectionHandler;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-interface {v0, v1, p1}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closeAccountSelectionLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public bridge synthetic onExit(Ljava/lang/Object;)V
    .locals 0

    .line 1513
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/AccountSelectionHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onImplicitSelection(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 77

    move-object/from16 v0, p0

    const-string v1, "data"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1522
    new-instance v1, Lcom/stripe/paymentcollection/AccountSelectionStatus$AccountSelected;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/stripe/paymentcollection/AccountSelectionStatus$AccountSelected;-><init>(Lcom/stripe/hardware/emv/AccountType;)V

    move-object/from16 v17, v1

    check-cast v17, Lcom/stripe/paymentcollection/AccountSelectionStatus;

    const/16 v75, 0x3f

    const/16 v76, 0x0

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

    const/16 v72, 0x0

    const/16 v73, -0x4001

    const/16 v74, -0x1

    invoke-static/range {v2 .. v76}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/AccountSelectionHandler;->updateDataWithoutCallback(Ljava/lang/Object;)V

    .line 1523
    sget-object v1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PROCESSING:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v2, "Account Type selected with unknown value"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/paymentcollection/AccountSelectionHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 1

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1557
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionScreenInputStateHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 1560
    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/AccountSelectionHandler;->transitionOnImplicitSelectionIfNeeded(Lcom/stripe/paymentcollection/PaymentCollectionData;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1563
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSelectedAccount()Lcom/stripe/hardware/emv/AccountType;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1565
    invoke-direct {p0, p2}, Lcom/stripe/paymentcollection/AccountSelectionHandler;->generateAccountTypeSelectionEvent(Lcom/stripe/hardware/emv/AccountType;)V

    .line 1568
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PROCESSING:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 1569
    const-string p2, "Account Type selected"

    .line 1567
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/AccountSelectionHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1575
    :cond_1
    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/AccountSelectionHandler;->checkForPrematureTransactionCompletionAndTransitionIfNeeded(Lcom/stripe/paymentcollection/PaymentCollectionData;)Z

    move-result p2

    if-eqz p2, :cond_2

    :goto_0
    return-void

    .line 1580
    :cond_2
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object p2

    .line 1581
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSelectedLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1582
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getEnableCustomerCancellation()Z

    move-result p1

    .line 1579
    invoke-direct {p0, p2, v0, p1}, Lcom/stripe/paymentcollection/AccountSelectionHandler;->generateUserInteractionEvent(Lcom/stripe/currency/Amount;Ljava/lang/String;Z)V

    return-void
.end method
