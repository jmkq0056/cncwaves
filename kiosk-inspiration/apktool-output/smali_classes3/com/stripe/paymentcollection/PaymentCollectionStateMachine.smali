.class public abstract Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;
.super Lcom/stripe/statemachine/StateMachine;
.source "PaymentCollectionStateMachine.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/statemachine/StateMachine<",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0006H&J\u0008\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\tH&J\u00fa\u0001\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00062\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010 \u001a\u00020\u00062\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0008\u0002\u0010#\u001a\u00020\u00062\u0008\u0008\u0002\u0010$\u001a\u00020\u00062\u0008\u0008\u0002\u0010%\u001a\u00020\u00062\u000e\u0008\u0002\u0010&\u001a\u0008\u0012\u0004\u0012\u00020(0\'2\u0006\u0010)\u001a\u00020\u00062\u0008\u0010*\u001a\u0004\u0018\u00010(2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020,0\'2\u0006\u0010-\u001a\u00020\u00062\u0006\u0010.\u001a\u00020\u00062\u0008\u0008\u0002\u0010/\u001a\u00020\u0006H&Jn\u00100\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u00101\u001a\u0002022\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010#\u001a\u00020\u00062\u0008\u0008\u0002\u0010$\u001a\u00020\u00062\u0008\u0008\u0002\u0010%\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u0006H&J\u0008\u00103\u001a\u00020\tH&J\u0008\u00104\u001a\u00020\u0006H&J\u0010\u00105\u001a\u00020\t2\u0006\u00106\u001a\u000207H&J\u0008\u00108\u001a\u00020\tH&J\u0008\u00109\u001a\u00020\tH&J\u0008\u0010:\u001a\u00020\tH&J\u0010\u0010;\u001a\u00020\t2\u0006\u0010<\u001a\u00020=H&J(\u0010>\u001a\u00020\t2\u0006\u0010?\u001a\u00020@2\n\u0008\u0002\u0010A\u001a\u0004\u0018\u00010(2\n\u0008\u0002\u0010B\u001a\u0004\u0018\u00010(H&J\u0008\u0010C\u001a\u00020\tH&J\u0010\u0010D\u001a\u00020\t2\u0006\u0010E\u001a\u00020FH&J\u0008\u0010G\u001a\u00020\tH&J\u0010\u0010H\u001a\u00020\u00062\u0006\u0010I\u001a\u00020JH&J\u0008\u0010K\u001a\u00020\tH&J\u0008\u0010L\u001a\u00020\tH&J\u0016\u0010M\u001a\u00020\t2\u000c\u0010N\u001a\u0008\u0012\u0004\u0012\u00020P0OH&J\u0016\u0010Q\u001a\u00020\t2\u000c\u0010R\u001a\u0008\u0012\u0004\u0012\u00020(0\'H&J\u0010\u0010S\u001a\u00020\t2\u0006\u0010T\u001a\u00020UH&J\u0010\u0010V\u001a\u00020\t2\u0006\u0010W\u001a\u00020\u0006H&J\u0010\u0010X\u001a\u00020\t2\u0006\u0010E\u001a\u00020YH&J\u0010\u0010Z\u001a\u00020\t2\u0006\u0010[\u001a\u00020(H&J\u0010\u0010\\\u001a\u00020\t2\u0006\u0010]\u001a\u00020^H&J\u0010\u0010_\u001a\u00020\t2\u0006\u0010`\u001a\u00020aH&J\u0010\u0010b\u001a\u00020\t2\u0006\u0010c\u001a\u00020\u0006H&J\u0010\u0010d\u001a\u00020\t2\u0006\u0010e\u001a\u00020fH&J\u0010\u0010g\u001a\u00020\t2\u0006\u0010h\u001a\u00020\u0006H&J\u0010\u0010i\u001a\u00020\t2\u0006\u0010j\u001a\u00020kH&J\u0010\u0010l\u001a\u00020\t2\u0006\u0010`\u001a\u00020mH&J\u0010\u0010n\u001a\u00020\t2\u0006\u0010o\u001a\u00020pH&J\u0010\u0010q\u001a\u00020\t2\u0006\u0010r\u001a\u00020sH&J\u0010\u0010t\u001a\u00020\t2\u0006\u0010W\u001a\u00020,H&J\u0010\u0010u\u001a\u00020\t2\u0006\u0010v\u001a\u00020(H&J.\u0010w\u001a\u00020\t2\u0006\u0010x\u001a\u00020(2\u001c\u0008\u0002\u0010y\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020(0\'\u0012\u0006\u0012\u0004\u0018\u00010(0zH&J\u0010\u0010{\u001a\u00020\t2\u0006\u0010|\u001a\u00020}H&J\u0011\u0010~\u001a\u00020\t2\u0007\u0010\u007f\u001a\u00030\u0080\u0001H&J\u0012\u0010\u0081\u0001\u001a\u00020\t2\u0007\u0010\u0082\u0001\u001a\u00020}H&J\u0014\u0010\u0083\u0001\u001a\u00020\t2\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010(H&J\u0012\u0010\u0085\u0001\u001a\u00020\t2\u0007\u0010\u0086\u0001\u001a\u00020\u0006H&J\u0012\u0010\u0087\u0001\u001a\u00020\t2\u0007\u0010`\u001a\u00030\u0088\u0001H&J\t\u0010\u0089\u0001\u001a\u00020\tH&J\u0013\u0010\u008a\u0001\u001a\u00020\t2\u0008\u0010\u008b\u0001\u001a\u00030\u008c\u0001H&J\u0015\u0010\u008d\u0001\u001a\u00020\t2\n\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008f\u0001H&\u00a8\u0006\u0090\u0001"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;",
        "Lcom/stripe/statemachine/StateMachine;",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "()V",
        "canResumeCollectionForSca",
        "",
        "canStartCollection",
        "cancel",
        "",
        "clearMagStripeReadState",
        "collectPayment",
        "transactionType",
        "Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "baseAmount",
        "Lcom/stripe/currency/Amount;",
        "emvTransactionType",
        "Lcom/stripe/hardware/emv/EmvTransactionType;",
        "tippingState",
        "Lcom/stripe/paymentcollection/TippingState;",
        "tippingConfig",
        "Lcom/stripe/hardware/tipping/TipConfigValidationResult;",
        "tippingAmount",
        "integrationType",
        "Lcom/stripe/restclient/IntegrationType;",
        "manualEntry",
        "deviceCapability",
        "Lcom/stripe/transaction/PaymentCollectionDeviceCapability;",
        "deviceType",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "isOffline",
        "tipEligibleAmount",
        "isDeferredAuthorizationCountry",
        "domesticDebitPriority",
        "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
        "isApplicationSelectionInQuickChipEnabled",
        "enableMagStripePin",
        "forceMagstripePin",
        "domesticDebitAids",
        "",
        "",
        "enableCustomerCancellation",
        "surchargeNotice",
        "nonCardPaymentMethodTypes",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "disablePredip",
        "useIncrementalAuthUi",
        "forcePinEntry",
        "displayCart",
        "cart",
        "Lcom/stripe/cart/Cart;",
        "displayNonCardPaymentMethods",
        "isFinished",
        "onAccessiblePinPadEvent",
        "accessiblePinPadTouchEvent",
        "Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;",
        "onCollectPaymentMethodApiError",
        "onDeviceKernelBusy",
        "onHardwareTransactionCanceled",
        "onOnlineAuthStateChanged",
        "state",
        "Lcom/stripe/paymentcollection/OnlineAuthState;",
        "onPinEntryStatusChange",
        "status",
        "Lcom/stripe/hardware/paymentcollection/PinEntryStatus;",
        "epb",
        "epbKsn",
        "onRequestAccountTypeSelection",
        "onTransactionCanceled",
        "reason",
        "Lcom/stripe/paymentcollection/CancelReason;",
        "resetTipSelection",
        "resumePaymentForSCA",
        "scaRequirement",
        "Lcom/stripe/paymentcollection/SCARequirement;",
        "returnToCardPaymentMethodCollection",
        "returnToNonCardPaymentMethodsSelection",
        "setActiveReaderInterfaces",
        "activeReaderInterfaces",
        "",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "setApplicationList",
        "applicationList",
        "setCardSlotState",
        "cardSlotState",
        "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;",
        "setDynamicCurrencyConversionSelected",
        "selected",
        "setEarlyTransactionAbortReason",
        "Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;",
        "setFinalConfirmation",
        "tlv",
        "setHardwareTippingSelectionResult",
        "hardwareResult",
        "Lcom/stripe/hardware/tipping/TipSelectionResult;",
        "setHardwareTransactionResult",
        "result",
        "Lcom/stripe/hardware/emv/TransactionResult$Result;",
        "setInterfaceResetRequired",
        "isRequired",
        "setIntermediateError",
        "error",
        "Lcom/stripe/hardware/emv/IntermediateTransactionError;",
        "setIsWaitingForCard",
        "isWaitingForCard",
        "setMagStripeReadResult",
        "magStripeReadResult",
        "Lcom/stripe/hardware/magstripe/MagStripeReadResult;",
        "setManualEntryCollectionResult",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;",
        "setManualEntryResult",
        "manualEntryResult",
        "Lcom/stripe/hardware/paymentcollection/ManualEntryResult;",
        "setNonCardPaymentMethodData",
        "data",
        "Lcom/stripe/transaction/NonCardPaymentMethodData;",
        "setNonCardPaymentMethodSelected",
        "setOnlineAuthResponse",
        "response",
        "setOnlineAuthorizationData",
        "onlineAuthorizationData",
        "getFirstSupportedLanguage",
        "Lkotlin/Function1;",
        "setPinEntryAsterisks",
        "count",
        "",
        "setSelectedAccountType",
        "selectedAccountType",
        "Lcom/stripe/hardware/emv/AccountType;",
        "setSelectedApplicationIndex",
        "selectedApplicationIndex",
        "setSelectedLanguage",
        "selectedLanguage",
        "setShowThankYouReceived",
        "showThankYouReceived",
        "setTippingSelectionResult",
        "Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;",
        "setUserRetryRequested",
        "startDynamicCurrencyConversionSelection",
        "dynamicCurrencyConversionData",
        "Lcom/stripe/transaction/DynamicCurrencyConversionData;",
        "updateChargeAttempt",
        "chargeAttempt",
        "Lcom/stripe/transaction/ChargeAttempt;",
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
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/stripe/statemachine/StateMachine;-><init>()V

    return-void
.end method

.method public static synthetic collectPayment$default(Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;Lcom/stripe/restclient/IntegrationType;ZLcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;ZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZLjava/util/List;ZLjava/lang/String;Ljava/util/List;ZZZILjava/lang/Object;)Z
    .locals 28

    move/from16 v0, p25

    if-nez p26, :cond_e

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit16 v1, v0, 0x80

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v11, v3

    goto :goto_2

    :cond_2
    move/from16 v11, p8

    :goto_2
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3

    .line 103
    invoke-static {}, Lcom/stripe/transaction/PaymentCollectionDeviceCapabilityKt;->getDEFAULT_PAYMENT_COLLECTION_CAPABILITY()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    move-result-object v1

    move-object v12, v1

    goto :goto_3

    :cond_3
    move-object/from16 v12, p9

    :goto_3
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_4

    .line 104
    sget-object v1, Lcom/stripe/stripeterminal/external/models/DeviceType;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-object v13, v1

    goto :goto_4

    :cond_4
    move-object/from16 v13, p10

    :goto_4
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_5

    move v14, v3

    goto :goto_5

    :cond_5
    move/from16 v14, p11

    :goto_5
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_6

    move-object v15, v2

    goto :goto_6

    :cond_6
    move-object/from16 v15, p12

    :goto_6
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_7

    move/from16 v16, v3

    goto :goto_7

    :cond_7
    move/from16 v16, p13

    :goto_7
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_8

    move-object/from16 v17, v2

    goto :goto_8

    :cond_8
    move-object/from16 v17, p14

    :goto_8
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_9

    move/from16 v18, v3

    goto :goto_9

    :cond_9
    move/from16 v18, p15

    :goto_9
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    move/from16 v19, v3

    goto :goto_a

    :cond_a
    move/from16 v19, p16

    :goto_a
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    move/from16 v20, v3

    goto :goto_b

    :cond_b
    move/from16 v20, p17

    :goto_b
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    .line 112
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_c

    :cond_c
    move-object/from16 v21, p18

    :goto_c
    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    move/from16 v27, v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v22, p19

    move-object/from16 v23, p20

    move-object/from16 v24, p21

    move/from16 v25, p22

    move/from16 v26, p23

    move-object/from16 v3, p0

    goto :goto_d

    :cond_d
    move/from16 v27, p24

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v22, p19

    move-object/from16 v23, p20

    move-object/from16 v24, p21

    move/from16 v25, p22

    move/from16 v26, p23

    .line 94
    :goto_d
    invoke-virtual/range {v3 .. v27}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->collectPayment(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;Lcom/stripe/restclient/IntegrationType;ZLcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;ZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZLjava/util/List;ZLjava/lang/String;Ljava/util/List;ZZZ)Z

    move-result v0

    return v0

    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: collectPayment"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic displayCart$default(Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/cart/Cart;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;ZZZZILjava/lang/Object;)Z
    .locals 14

    move/from16 v0, p12

    if-nez p13, :cond_6

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    .line 68
    invoke-static {}, Lcom/stripe/transaction/PaymentCollectionDeviceCapabilityKt;->getDEFAULT_PAYMENT_COLLECTION_CAPABILITY()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    .line 69
    sget-object v1, Lcom/stripe/stripeterminal/external/models/DeviceType;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-object v9, v1

    goto :goto_2

    :cond_2
    move-object/from16 v9, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move v10, v2

    goto :goto_3

    :cond_3
    move/from16 v10, p8

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move v11, v2

    goto :goto_4

    :cond_4
    move/from16 v11, p9

    :goto_4
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_5

    move v12, v2

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v13, p11

    move-object v2, p0

    goto :goto_5

    :cond_5
    move/from16 v12, p10

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v13, p11

    .line 62
    :goto_5
    invoke-virtual/range {v2 .. v13}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->displayCart(Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/cart/Cart;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;ZZZZ)Z

    move-result p0

    return p0

    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: displayCart"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic onPinEntryStatusChange$default(Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 200
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->onPinEntryStatusChange(Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onPinEntryStatusChange"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic setOnlineAuthorizationData$default(Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 225
    sget-object p2, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine$setOnlineAuthorizationData$1;->INSTANCE:Lcom/stripe/paymentcollection/PaymentCollectionStateMachine$setOnlineAuthorizationData$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 223
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->setOnlineAuthorizationData(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setOnlineAuthorizationData"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract canResumeCollectionForSca()Z
.end method

.method public abstract canStartCollection()Z
.end method

.method public abstract cancel()V
.end method

.method public abstract clearMagStripeReadState()V
.end method

.method public abstract collectPayment(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;Lcom/stripe/restclient/IntegrationType;ZLcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;ZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZLjava/util/List;ZLjava/lang/String;Ljava/util/List;ZZZ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/TransactionType;",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/hardware/emv/EmvTransactionType;",
            "Lcom/stripe/paymentcollection/TippingState;",
            "Lcom/stripe/hardware/tipping/TipConfigValidationResult;",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/restclient/IntegrationType;",
            "Z",
            "Lcom/stripe/transaction/PaymentCollectionDeviceCapability;",
            "Lcom/stripe/stripeterminal/external/models/DeviceType;",
            "Z",
            "Lcom/stripe/currency/Amount;",
            "Z",
            "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
            "ZZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;ZZZ)Z"
        }
    .end annotation
.end method

.method public abstract displayCart(Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/cart/Cart;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;ZZZZ)Z
.end method

.method public abstract displayNonCardPaymentMethods()V
.end method

.method public abstract isFinished()Z
.end method

.method public abstract onAccessiblePinPadEvent(Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;)V
.end method

.method public abstract onCollectPaymentMethodApiError()V
.end method

.method public abstract onDeviceKernelBusy()V
.end method

.method public abstract onHardwareTransactionCanceled()V
.end method

.method public abstract onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V
.end method

.method public abstract onPinEntryStatusChange(Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRequestAccountTypeSelection()V
.end method

.method public abstract onTransactionCanceled(Lcom/stripe/paymentcollection/CancelReason;)V
.end method

.method public abstract resetTipSelection()V
.end method

.method public abstract resumePaymentForSCA(Lcom/stripe/paymentcollection/SCARequirement;)Z
.end method

.method public abstract returnToCardPaymentMethodCollection()V
.end method

.method public abstract returnToNonCardPaymentMethodsSelection()V
.end method

.method public abstract setActiveReaderInterfaces(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setApplicationList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCardSlotState(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V
.end method

.method public abstract setDynamicCurrencyConversionSelected(Z)V
.end method

.method public abstract setEarlyTransactionAbortReason(Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;)V
.end method

.method public abstract setFinalConfirmation(Ljava/lang/String;)V
.end method

.method public abstract setHardwareTippingSelectionResult(Lcom/stripe/hardware/tipping/TipSelectionResult;)V
.end method

.method public abstract setHardwareTransactionResult(Lcom/stripe/hardware/emv/TransactionResult$Result;)V
.end method

.method public abstract setInterfaceResetRequired(Z)V
.end method

.method public abstract setIntermediateError(Lcom/stripe/hardware/emv/IntermediateTransactionError;)V
.end method

.method public abstract setIsWaitingForCard(Z)V
.end method

.method public abstract setMagStripeReadResult(Lcom/stripe/hardware/magstripe/MagStripeReadResult;)V
.end method

.method public abstract setManualEntryCollectionResult(Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;)V
.end method

.method public abstract setManualEntryResult(Lcom/stripe/hardware/paymentcollection/ManualEntryResult;)V
.end method

.method public abstract setNonCardPaymentMethodData(Lcom/stripe/transaction/NonCardPaymentMethodData;)V
.end method

.method public abstract setNonCardPaymentMethodSelected(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V
.end method

.method public abstract setOnlineAuthResponse(Ljava/lang/String;)V
.end method

.method public abstract setOnlineAuthorizationData(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPinEntryAsterisks(I)V
.end method

.method public abstract setSelectedAccountType(Lcom/stripe/hardware/emv/AccountType;)V
.end method

.method public abstract setSelectedApplicationIndex(I)V
.end method

.method public abstract setSelectedLanguage(Ljava/lang/String;)V
.end method

.method public abstract setShowThankYouReceived(Z)V
.end method

.method public abstract setTippingSelectionResult(Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;)V
.end method

.method public abstract setUserRetryRequested()V
.end method

.method public abstract startDynamicCurrencyConversionSelection(Lcom/stripe/transaction/DynamicCurrencyConversionData;)V
.end method

.method public abstract updateChargeAttempt(Lcom/stripe/transaction/ChargeAttempt;)V
.end method
