.class public final Lcom/stripe/paymentcollection/CollectionHandler;
.super Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;
.source "PaymentCollectionStateHandlers.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/CollectionHandler$Companion;,
        Lcom/stripe/paymentcollection/CollectionHandler$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentCollectionStateHandlers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentCollectionStateHandlers.kt\ncom/stripe/paymentcollection/CollectionHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2902:1\n766#2:2903\n857#2,2:2904\n766#2:2906\n857#2,2:2907\n*S KotlinDebug\n*F\n+ 1 PaymentCollectionStateHandlers.kt\ncom/stripe/paymentcollection/CollectionHandler\n*L\n917#1:2903\n917#1:2904,2\n920#1:2906\n920#1:2907,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000  2\u00020\u0001:\u0001 B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u000f\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000b\u001a\u00020\u0008H\u0002J\u0008\u0010\u000c\u001a\u00020\u0008H\u0002J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u000f\u0010\u0012\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u001c\u0010\u0016\u001a\u00020\u00082\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u0019H\u0016J\u001a\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u000f2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u001f\u001a\u00020\u0008H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/CollectionHandler;",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;",
        "timer",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
        "logger",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V",
        "clearLastCollectionResultEvent",
        "",
        "clearNumberOfFailedInsertionsEvent",
        "()Lkotlin/Unit;",
        "generateAcknowledgeInterfaceResetEvent",
        "generateClearMagStripeDataEvent",
        "generateCollectionModel",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "generateConfigureReaderEvent",
        "generateUserInteractionEvent",
        "incrementNumberOfFailedInsertionsEvent",
        "isAuthorizationDataCollected",
        "",
        "isSuitableMagStripeDataAvailable",
        "onEnter",
        "current",
        "from",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        "onExit",
        "to",
        "onPaymentCollectionDataUpdate",
        "new",
        "old",
        "resetIsWaitingForCard",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/paymentcollection/CollectionHandler$Companion;

.field public static final TECHNICAL_FALLBACK_FAILED_INSERTION_THRESHOLD:I = 0x3


# instance fields
.field private final logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/paymentcollection/CollectionHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/paymentcollection/CollectionHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/paymentcollection/CollectionHandler;->Companion:Lcom/stripe/paymentcollection/CollectionHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V
    .locals 1

    const-string v0, "timer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 679
    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    .line 678
    iput-object p2, p0, Lcom/stripe/paymentcollection/CollectionHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    return-void
.end method

.method private final clearLastCollectionResultEvent()V
    .locals 76

    .line 1012
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/CollectionHandler;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v1, :cond_1

    .line 1013
    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getLastCollectionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getIntermediateTransactionError()Lcom/stripe/hardware/emv/IntermediateTransactionError;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
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

    const/16 v73, -0x4

    .line 1015
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 1014
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/CollectionHandler;->updateDataWithoutCallback(Ljava/lang/Object;)V

    return-void

    :cond_1
    move-object/from16 v1, p0

    return-void
.end method

.method private final clearNumberOfFailedInsertionsEvent()Lkotlin/Unit;
    .locals 76

    .line 994
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/CollectionHandler;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v1, :cond_0

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

    const/16 v72, -0x21

    const/16 v73, -0x1

    .line 996
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 995
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/CollectionHandler;->updateDataWithoutCallback(Ljava/lang/Object;)V

    .line 994
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_0
    move-object/from16 v1, p0

    const/4 v0, 0x0

    return-object v0
.end method

.method private final generateAcknowledgeInterfaceResetEvent()V
    .locals 1

    .line 1028
    sget-object v0, Lcom/stripe/paymentcollection/AcknowledgeInterfaceResetEvent;->INSTANCE:Lcom/stripe/paymentcollection/AcknowledgeInterfaceResetEvent;

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/CollectionHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method private final generateClearMagStripeDataEvent()V
    .locals 1

    .line 1006
    sget-object v0, Lcom/stripe/paymentcollection/ClearMagStripeStateEvent;->INSTANCE:Lcom/stripe/paymentcollection/ClearMagStripeStateEvent;

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/CollectionHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method private final generateCollectionModel(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 13

    .line 888
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripeReadResult()Lcom/stripe/hardware/magstripe/MagStripeReadResult;

    move-result-object v0

    .line 889
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getIntermediateTransactionError()Lcom/stripe/hardware/emv/IntermediateTransactionError;

    move-result-object v1

    .line 892
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCardSlotState()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    move-result-object v2

    sget-object v3, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->CARD_INSERTED_INCORRECTLY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    if-ne v2, v3, :cond_0

    .line 893
    sget-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CHIP_CARD_INSERTED_INCORRECTLY:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 896
    :cond_0
    instance-of v2, v0, Lcom/stripe/hardware/magstripe/MagStripeReadFailure;

    if-eqz v2, :cond_1

    .line 897
    sget-object v1, Lcom/stripe/hardware/paymentcollection/RecoverableError;->Companion:Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion;

    check-cast v0, Lcom/stripe/hardware/magstripe/MagStripeReadFailure;

    invoke-virtual {v0}, Lcom/stripe/hardware/magstripe/MagStripeReadFailure;->getFailureType()Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion;->fromMagStripeReadFailure(Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;)Lcom/stripe/hardware/paymentcollection/RecoverableError;

    move-result-object v0

    goto :goto_0

    .line 900
    :cond_1
    instance-of v2, v0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    invoke-virtual {v0}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->getIccCapable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 901
    sget-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CHIP_CARD_SWIPED:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    goto :goto_0

    .line 904
    :cond_2
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object v0

    sget-object v2, Lcom/stripe/hardware/paymentcollection/TransactionType;->STRONG_CUSTOMER_AUTHENTICATION:Lcom/stripe/hardware/paymentcollection/TransactionType;

    if-ne v0, v2, :cond_3

    .line 905
    sget-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->CHIP_CARD_MUST_BE_INSERTED_FOR_SCA:Lcom/stripe/hardware/paymentcollection/RecoverableError;

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 909
    sget-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError;->Companion:Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion;

    invoke-virtual {v0, v1}, Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion;->fromIntermediateTransactionError(Lcom/stripe/hardware/emv/IntermediateTransactionError;)Lcom/stripe/hardware/paymentcollection/RecoverableError;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-nez v5, :cond_5

    const/4 v0, -0x1

    goto :goto_2

    .line 915
    :cond_5
    sget-object v0, Lcom/stripe/paymentcollection/CollectionHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lcom/stripe/hardware/paymentcollection/RecoverableError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 923
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getActiveReaderInterfacesForDisplay()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_5

    .line 922
    :cond_6
    sget-object v0, Lcom/stripe/hardware/ReaderConfiguration;->Companion:Lcom/stripe/hardware/ReaderConfiguration$Companion;

    invoke-virtual {v0}, Lcom/stripe/hardware/ReaderConfiguration$Companion;->getINSERT()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_5

    .line 920
    :cond_7
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getActiveReaderInterfacesForDisplay()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 2906
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 2907
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    .line 920
    sget-object v4, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->NFC:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    if-eq v3, v4, :cond_8

    .line 2907
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2908
    :cond_9
    check-cast v1, Ljava/util/List;

    .line 2906
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    goto :goto_5

    .line 917
    :cond_a
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getActiveReaderInterfacesForDisplay()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 2903
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 2904
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    .line 917
    sget-object v4, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->MAGSTRIPE:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    if-eq v3, v4, :cond_b

    .line 2904
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2905
    :cond_c
    check-cast v1, Ljava/util/List;

    .line 2903
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    .line 927
    :goto_5
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object v2

    .line 928
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v3

    .line 930
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    .line 931
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCardSlotState()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    move-result-object v7

    .line 932
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTippingState()Lcom/stripe/paymentcollection/TippingState;

    move-result-object v0

    instance-of v8, v0, Lcom/stripe/paymentcollection/TippingState$Completed;

    .line 933
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getBaseAmount()Lcom/stripe/currency/Amount;

    move-result-object v4

    .line 934
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getEnableCustomerCancellation()Z

    move-result v9

    .line 935
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSurchargeNotice()Ljava/lang/String;

    move-result-object v10

    .line 936
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getNonCardPaymentMethodTypes()Ljava/util/List;

    move-result-object v11

    .line 937
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getUseIncrementalAuthUi()Z

    move-result v12

    .line 926
    new-instance v1, Lcom/stripe/hardware/paymentcollection/CollectionModel;

    invoke-direct/range {v1 .. v12}, Lcom/stripe/hardware/paymentcollection/CollectionModel;-><init>(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/RecoverableError;Ljava/util/Set;Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;ZZLjava/lang/String;Ljava/util/List;Z)V

    .line 940
    new-instance p1, Lcom/stripe/paymentcollection/PresentPaymentMethodEvent;

    invoke-direct {p1, v1}, Lcom/stripe/paymentcollection/PresentPaymentMethodEvent;-><init>(Lcom/stripe/hardware/paymentcollection/CollectionModel;)V

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/CollectionHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method private final generateConfigureReaderEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 11

    .line 951
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getEmvTransactionType()Lcom/stripe/hardware/emv/EmvTransactionType;

    move-result-object v0

    sget-object v1, Lcom/stripe/hardware/emv/EmvTransactionType;->QUICK:Lcom/stripe/hardware/emv/EmvTransactionType;

    if-ne v0, v1, :cond_0

    .line 952
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object v0

    sget-object v1, Lcom/stripe/hardware/paymentcollection/TransactionType;->CHARGE:Lcom/stripe/hardware/paymentcollection/TransactionType;

    if-ne v0, v1, :cond_0

    .line 953
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 955
    invoke-static {}, Lcom/stripe/currency/AmountKt;->getQUICK_EMV_AMOUNT()Lcom/stripe/currency/Amount;

    move-result-object v0

    goto :goto_0

    .line 957
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 961
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getDesiredReaderInterfaces()Ljava/util/Set;

    move-result-object v1

    .line 963
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object v3

    .line 964
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getEmvTransactionType()Lcom/stripe/hardware/emv/EmvTransactionType;

    move-result-object v4

    .line 965
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isOffline()Z

    move-result v5

    .line 966
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isDeferredAuthorizationCountry()Z

    move-result v6

    .line 967
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v7

    .line 968
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getDomesticDebitPriority()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    move-result-object v8

    .line 969
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getDomesticDebitAids()Ljava/util/List;

    move-result-object v9

    .line 970
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getForcePinEntry()Z

    move-result v10

    .line 960
    invoke-static/range {v1 .. v10}, Lcom/stripe/paymentcollection/UtilsKt;->generateConfigureReaderEvent(Ljava/util/Set;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;ZZLcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Ljava/util/List;Z)Lcom/stripe/hardware/ReaderConfiguration;

    move-result-object p1

    .line 973
    new-instance v0, Lcom/stripe/paymentcollection/ConfigureReaderEvent;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/ConfigureReaderEvent;-><init>(Lcom/stripe/hardware/ReaderConfiguration;)V

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, v0}, Lcom/stripe/paymentcollection/CollectionHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    return-void
.end method

.method private final generateUserInteractionEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 1

    .line 880
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getConfirmedCollection()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCartToDisplay()Lcom/stripe/cart/Cart;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/CollectionHandler;->generateDisplayCartEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lkotlin/Unit;

    return-void

    .line 883
    :cond_0
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/CollectionHandler;->generateCollectionModel(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    return-void
.end method

.method private final incrementNumberOfFailedInsertionsEvent()Lkotlin/Unit;
    .locals 76

    .line 864
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/CollectionHandler;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v1, :cond_0

    .line 867
    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getNumberOfFailedInsertions()I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    const/16 v74, 0x3f

    const/16 v75, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

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

    const/16 v72, -0x21

    const/16 v73, -0x1

    .line 866
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 865
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/CollectionHandler;->updateDataWithoutCallback(Ljava/lang/Object;)V

    .line 864
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_0
    move-object/from16 v1, p0

    const/4 v0, 0x0

    return-object v0
.end method

.method private final isAuthorizationDataCollected(Lcom/stripe/paymentcollection/PaymentCollectionData;)Z
    .locals 1

    .line 988
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getOnlineAuthorizationData()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    xor-int/2addr p1, v0

    return p1
.end method

.method private final isSuitableMagStripeDataAvailable(Lcom/stripe/paymentcollection/PaymentCollectionData;)Z
    .locals 0

    .line 982
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripePaymentCollectionAuthority()Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final resetIsWaitingForCard()V
    .locals 76

    .line 1034
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/CollectionHandler;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v1, :cond_0

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

    const/16 v73, -0x101

    .line 1036
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 1035
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/CollectionHandler;->updateDataWithoutCallback(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method


# virtual methods
.method public onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 2

    .line 685
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    if-eqz p1, :cond_1

    .line 688
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object v0

    sget-object v1, Lcom/stripe/hardware/paymentcollection/TransactionType;->STRONG_CUSTOMER_AUTHENTICATION:Lcom/stripe/hardware/paymentcollection/TransactionType;

    if-ne v0, v1, :cond_0

    .line 689
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getEmvTransactionType()Lcom/stripe/hardware/emv/EmvTransactionType;

    move-result-object v0

    sget-object v1, Lcom/stripe/hardware/emv/EmvTransactionType;->TRADITIONAL:Lcom/stripe/hardware/emv/EmvTransactionType;

    if-ne v0, v1, :cond_0

    .line 690
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->ONLINE_AUTHORIZATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/CollectionHandler;->generateConfigureReaderEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 694
    :goto_0
    invoke-virtual {p0, p1, p1}, Lcom/stripe/paymentcollection/CollectionHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onEnter(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 676
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/CollectionHandler;->onEnter(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 77

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "to"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    invoke-super/range {p0 .. p1}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    .line 701
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/CollectionHandler;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/CollectionHandler;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-interface {v2, v3}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closeWaitForCardPresentLog(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 708
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/CollectionHandler;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-direct {v0, v2}, Lcom/stripe/paymentcollection/CollectionHandler;->isSuitableMagStripeDataAvailable(Lcom/stripe/paymentcollection/PaymentCollectionData;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 709
    invoke-direct {v0}, Lcom/stripe/paymentcollection/CollectionHandler;->generateClearMagStripeDataEvent()V

    .line 718
    :cond_0
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/CollectionHandler;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getBadCardRead()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/CollectionHandler;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-direct {v0, v2}, Lcom/stripe/paymentcollection/CollectionHandler;->isSuitableMagStripeDataAvailable(Lcom/stripe/paymentcollection/PaymentCollectionData;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 720
    invoke-direct {v0}, Lcom/stripe/paymentcollection/CollectionHandler;->clearNumberOfFailedInsertionsEvent()Lkotlin/Unit;

    .line 731
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/CollectionHandler;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-direct {v0, v2}, Lcom/stripe/paymentcollection/CollectionHandler;->isSuitableMagStripeDataAvailable(Lcom/stripe/paymentcollection/PaymentCollectionData;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/stripe/paymentcollection/PaymentCollectionState;->PREPARE_TO_COLLECT_AGAIN:Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-eq v1, v2, :cond_3

    .line 732
    invoke-direct {v0}, Lcom/stripe/paymentcollection/CollectionHandler;->clearLastCollectionResultEvent()V

    .line 742
    :cond_3
    sget-object v2, Lcom/stripe/paymentcollection/PaymentCollectionState;->TIPPING_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-eq v1, v2, :cond_4

    .line 743
    sget-object v2, Lcom/stripe/paymentcollection/PaymentCollectionState;->NON_CARD_PAYMENT_METHOD_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-ne v1, v2, :cond_5

    .line 745
    :cond_4
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/CollectionHandler;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    const/16 v75, 0x3f

    const/16 v76, 0x0

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

    const/16 v33, 0x1

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

    const v73, -0x40000001    # -1.9999999f

    const/16 v74, -0x1

    invoke-static/range {v2 .. v76}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/CollectionHandler;->updateDataWithoutCallback(Ljava/lang/Object;)V

    .line 746
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/CollectionHandler;->generateStopReaderEvent()V

    .line 753
    :cond_5
    invoke-direct {v0}, Lcom/stripe/paymentcollection/CollectionHandler;->resetIsWaitingForCard()V

    return-void
.end method

.method public bridge synthetic onExit(Ljava/lang/Object;)V
    .locals 0

    .line 676
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/CollectionHandler;->onExit(Lcom/stripe/paymentcollection/PaymentCollectionState;)V

    return-void
.end method

.method public onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 11

    const-string v0, "new"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 760
    invoke-super {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->onPaymentCollectionDataUpdate(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 762
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getShouldStartNonCardPaymentMethodSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    move-object p1, p0

    check-cast p1, Lcom/stripe/statemachine/StateMachine$StateHandler;

    sget-object p2, Lcom/stripe/paymentcollection/PaymentCollectionState;->NON_CARD_PAYMENT_METHOD_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0, v1}, Lcom/stripe/statemachine/StateMachine$StateHandler;->transitionTo$default(Lcom/stripe/statemachine/StateMachine$StateHandler;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 768
    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/CollectionHandler;->startCollectionIfNeeded(Lcom/stripe/paymentcollection/PaymentCollectionData;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 772
    :cond_1
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/CollectionHandler;->isAuthorizationDataCollected(Lcom/stripe/paymentcollection/PaymentCollectionData;)Z

    move-result v0

    .line 774
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCardSlotState()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    move-result-object v1

    sget-object v2, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->CARD_INSERTED_CORRECTLY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    .line 776
    :goto_0
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getBadCardRead()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isDeclined()Z

    move-result v2

    if-nez v2, :cond_4

    .line 777
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getHardwareTransactionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v2

    sget-object v5, Lcom/stripe/hardware/emv/TransactionResult$Result;->CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/emv/TransactionResult$Result;

    if-eq v2, v5, :cond_4

    .line 778
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getHardwareTransactionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v2

    sget-object v5, Lcom/stripe/hardware/emv/TransactionResult$Result;->CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    if-eq v2, v5, :cond_4

    .line 779
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getHardwareTransactionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v2

    sget-object v5, Lcom/stripe/hardware/emv/TransactionResult$Result;->INSERT_OR_SWIPE_REQUIRED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    if-eq v2, v5, :cond_4

    .line 780
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getHardwareTransactionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v2

    sget-object v5, Lcom/stripe/hardware/emv/TransactionResult$Result;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    if-eq v2, v5, :cond_4

    .line 781
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getHardwareTransactionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v2

    sget-object v5, Lcom/stripe/hardware/emv/TransactionResult$Result;->EMPTY_CANDIDATE_LIST:Lcom/stripe/hardware/emv/TransactionResult$Result;

    if-eq v2, v5, :cond_4

    .line 782
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getHardwareTransactionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v2

    sget-object v5, Lcom/stripe/hardware/emv/TransactionResult$Result;->TERMINATED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    if-eq v2, v5, :cond_4

    .line 783
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getHardwareTransactionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v2

    sget-object v5, Lcom/stripe/hardware/emv/TransactionResult$Result;->CARD_STILL_INSERTED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    if-ne v2, v5, :cond_3

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    .line 784
    :goto_2
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripePinStatus()Lcom/stripe/paymentcollection/MagStripePinStatus;

    move-result-object v5

    sget-object v6, Lcom/stripe/paymentcollection/MagStripePinStatus$ToCollect;->INSTANCE:Lcom/stripe/paymentcollection/MagStripePinStatus$ToCollect;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 785
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/CollectionHandler;->isSuitableMagStripeDataAvailable(Lcom/stripe/paymentcollection/PaymentCollectionData;)Z

    move-result v6

    .line 787
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getHardwareTransactionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v7

    invoke-static {v7}, Lcom/stripe/paymentcollection/UtilsKt;->isFatalError(Lcom/stripe/hardware/emv/TransactionResult$Result;)Z

    move-result v7

    .line 788
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getHardwareTransactionResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v8

    sget-object v9, Lcom/stripe/hardware/emv/TransactionResult$Result;->TIMEOUT:Lcom/stripe/hardware/emv/TransactionResult$Result;

    if-ne v8, v9, :cond_5

    move v8, v3

    goto :goto_3

    :cond_5
    move v8, v4

    .line 790
    :goto_3
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getPinEntryStatus()Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    move-result-object v9

    sget-object v10, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->REQUESTED:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    if-ne v9, v10, :cond_6

    goto :goto_4

    :cond_6
    move v3, v4

    :goto_4
    if-eqz v7, :cond_7

    .line 795
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->FINISHED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Fatal error, abort."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/CollectionHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_7
    if-eqz v0, :cond_8

    .line 800
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PROCESSING:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Contactless card presented."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/CollectionHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_8
    if-eqz v6, :cond_a

    if-eqz v5, :cond_9

    .line 806
    sget-object p1, Lcom/stripe/paymentcollection/RequestPinEntryEvent;->INSTANCE:Lcom/stripe/paymentcollection/RequestPinEntryEvent;

    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionEvent;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/CollectionHandler;->yieldEvent(Lcom/stripe/paymentcollection/PaymentCollectionEvent;)V

    .line 810
    :cond_9
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PROCESSING:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 811
    const-string p2, "Magnetic stripe read."

    .line 809
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/CollectionHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_a
    if-eqz v2, :cond_c

    .line 816
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getBadCardRead()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 817
    iget-object p1, p0, Lcom/stripe/paymentcollection/CollectionHandler;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const-string p2, "badCardRead"

    new-array v0, v4, [Lkotlin/Pair;

    invoke-interface {p1, p2, v0}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 818
    invoke-direct {p0}, Lcom/stripe/paymentcollection/CollectionHandler;->incrementNumberOfFailedInsertionsEvent()Lkotlin/Unit;

    .line 822
    :cond_b
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PREPARE_TO_COLLECT_AGAIN:Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 823
    const-string p2, "Error in collection. Prepare to collect again."

    .line 821
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/CollectionHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_c
    if-eqz v8, :cond_d

    .line 829
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->TIMEOUT:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Transaction timed out."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/CollectionHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_d
    if-eqz p2, :cond_e

    .line 832
    invoke-virtual {p2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getShowThankYouReceived()Z

    move-result p2

    if-nez p2, :cond_e

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getShowThankYouReceived()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 834
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->RECOVERABLE_ERROR_SUMMARY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Received Thank You event. Attempt recovery"

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/CollectionHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_e
    if-eqz v1, :cond_f

    .line 839
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PROCESSING:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Card inserted."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/CollectionHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_f
    if-eqz v3, :cond_10

    .line 844
    sget-object p1, Lcom/stripe/paymentcollection/PaymentCollectionState;->PROCESSING:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string p2, "Collect card PIN."

    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/CollectionHandler;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 849
    :cond_10
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getInterfaceResetRequired()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 850
    invoke-direct {p0}, Lcom/stripe/paymentcollection/CollectionHandler;->generateAcknowledgeInterfaceResetEvent()V

    .line 851
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/CollectionHandler;->generateConfigureReaderEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 855
    :cond_11
    invoke-direct {p0, p1}, Lcom/stripe/paymentcollection/CollectionHandler;->generateUserInteractionEvent(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    return-void
.end method
