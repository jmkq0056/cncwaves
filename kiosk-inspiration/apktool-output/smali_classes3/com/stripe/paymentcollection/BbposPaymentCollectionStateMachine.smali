.class public final Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;
.super Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;
.source "BbposPaymentCollectionStateMachine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposPaymentCollectionStateMachine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposPaymentCollectionStateMachine.kt\ncom/stripe/paymentcollection/BbposPaymentCollectionStateMachine\n+ 2 Logger.kt\ncom/stripe/paymentcollection/log/LoggerKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1317:1\n17#2:1318\n17#2:1320\n17#2:1321\n17#2:1322\n17#2:1323\n17#2:1324\n17#2:1325\n17#2:1326\n17#2:1327\n17#2:1328\n17#2:1329\n17#2:1330\n17#2:1331\n17#2:1332\n17#2:1333\n17#2:1334\n17#2:1335\n17#2:1336\n17#2:1337\n17#2:1338\n17#2:1339\n17#2:1340\n17#2:1341\n17#2:1342\n17#2:1343\n17#2:1344\n17#2:1345\n17#2:1346\n17#2:1347\n17#2:1348\n1855#3:1319\n1856#3:1349\n766#3:1350\n857#3,2:1351\n661#3,11:1354\n1#4:1353\n*S KotlinDebug\n*F\n+ 1 BbposPaymentCollectionStateMachine.kt\ncom/stripe/paymentcollection/BbposPaymentCollectionStateMachine\n*L\n88#1:1318\n98#1:1320\n101#1:1321\n106#1:1322\n109#1:1323\n110#1:1324\n111#1:1325\n112#1:1326\n113#1:1327\n114#1:1328\n115#1:1329\n116#1:1330\n117#1:1331\n120#1:1332\n125#1:1333\n128#1:1334\n131#1:1335\n134#1:1336\n135#1:1337\n136#1:1338\n137#1:1339\n138#1:1340\n139#1:1341\n142#1:1342\n147#1:1343\n152#1:1344\n157#1:1345\n162#1:1346\n165#1:1347\n168#1:1348\n96#1:1319\n96#1:1349\n494#1:1350\n494#1:1351,2\n1309#1:1354,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e6\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0017H\u0016J\u0008\u0010\u0019\u001a\u00020\u0014H\u0016J\u0008\u0010\u001a\u001a\u00020\u0014H\u0016J\u00de\u0001\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\u001f2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010)\u001a\u00020\u00172\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00172\u0008\u0010/\u001a\u0004\u0018\u00010\u001f2\u0006\u00100\u001a\u00020\u00172\u0008\u00101\u001a\u0004\u0018\u0001022\u0006\u00103\u001a\u00020\u00172\u0006\u00104\u001a\u00020\u00172\u0006\u00105\u001a\u00020\u00172\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u000208072\u0006\u00109\u001a\u00020\u00172\u0008\u0010:\u001a\u0004\u0018\u0001082\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00020<072\u0006\u0010=\u001a\u00020\u00172\u0006\u0010>\u001a\u00020\u00172\u0006\u0010?\u001a\u00020\u0017H\u0016J\u0018\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020%2\u0006\u0010C\u001a\u00020DH\u0002Jb\u0010E\u001a\u00020\u00172\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010F\u001a\u00020G2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u00103\u001a\u00020\u00172\u0006\u00104\u001a\u00020\u00172\u0006\u00105\u001a\u00020\u00172\u0006\u0010=\u001a\u00020\u0017H\u0016J\u0008\u0010H\u001a\u00020\u0014H\u0016J2\u0010I\u001a\u0008\u0012\u0004\u0012\u00020K0J2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020+2\u0008\u0008\u0002\u0010)\u001a\u00020\u00172\u0008\u0008\u0002\u0010.\u001a\u00020\u0017H\u0002J*\u0010L\u001a\u0008\u0012\u0004\u0012\u00020K0J2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010)\u001a\u00020\u00172\u0008\u0008\u0002\u0010.\u001a\u00020\u0017H\u0002J\u0008\u0010M\u001a\u00020\u0017H\u0016J\u0010\u0010N\u001a\u00020\u00142\u0006\u0010O\u001a\u00020PH\u0016J\u0008\u0010Q\u001a\u00020\u0014H\u0016J\u0008\u0010R\u001a\u00020\u0014H\u0016J\u0008\u0010S\u001a\u00020\u0014H\u0016J\u0010\u0010T\u001a\u00020\u00142\u0006\u0010U\u001a\u00020VH\u0016J$\u0010W\u001a\u00020\u00142\u0006\u0010X\u001a\u00020Y2\u0008\u0010Z\u001a\u0004\u0018\u0001082\u0008\u0010[\u001a\u0004\u0018\u000108H\u0016J\u0008\u0010\\\u001a\u00020\u0014H\u0016J.\u0010\u0011\u001a\u00020\u00142\u0006\u0010]\u001a\u00020\u00132\u0008\u0010^\u001a\u0004\u0018\u00010\u00132\u0008\u0010_\u001a\u0004\u0018\u00010`2\u0008\u0010a\u001a\u0004\u0018\u000108H\u0014J\u0010\u0010b\u001a\u00020\u00142\u0006\u0010a\u001a\u00020cH\u0016J\u0014\u0010d\u001a\u0004\u0018\u00010e2\u0008\u0010f\u001a\u0004\u0018\u00010YH\u0002J\u0008\u0010g\u001a\u00020\u0014H\u0002J\u0008\u0010h\u001a\u00020\u0014H\u0016J\u0010\u0010i\u001a\u00020\u00172\u0006\u0010j\u001a\u00020kH\u0016J\u0008\u0010l\u001a\u00020\u0014H\u0016J\u0008\u0010m\u001a\u00020\u0014H\u0016J\u0016\u0010n\u001a\u00020\u00142\u000c\u0010o\u001a\u0008\u0012\u0004\u0012\u00020K0JH\u0016J\u0016\u0010p\u001a\u00020\u00142\u000c\u0010q\u001a\u0008\u0012\u0004\u0012\u00020807H\u0016J\u0010\u0010r\u001a\u00020\u00142\u0006\u0010s\u001a\u00020tH\u0016J\u0010\u0010u\u001a\u00020\u00142\u0006\u0010v\u001a\u00020\u0017H\u0016J\u0010\u0010w\u001a\u00020\u00142\u0006\u0010a\u001a\u00020xH\u0016J\u0010\u0010y\u001a\u00020\u00142\u0006\u0010z\u001a\u000208H\u0016J\u0010\u0010{\u001a\u00020\u00142\u0006\u0010|\u001a\u00020}H\u0016J\u0011\u0010~\u001a\u00020\u00142\u0007\u0010\u007f\u001a\u00030\u0080\u0001H\u0016J\t\u0010\u0081\u0001\u001a\u00020\u0014H\u0002J\u0012\u0010\u0082\u0001\u001a\u00020\u00142\u0007\u0010\u0083\u0001\u001a\u00020\u0017H\u0016J\u0013\u0010\u0084\u0001\u001a\u00020\u00142\u0008\u0010\u0085\u0001\u001a\u00030\u0086\u0001H\u0016J\u0012\u0010\u0087\u0001\u001a\u00020\u00142\u0007\u0010\u0088\u0001\u001a\u00020\u0017H\u0016J\u0013\u0010\u0089\u0001\u001a\u00020\u00142\u0008\u0010\u008a\u0001\u001a\u00030\u008b\u0001H\u0016J\u0012\u0010\u008c\u0001\u001a\u00020\u00142\u0007\u0010\u007f\u001a\u00030\u008d\u0001H\u0016J\u0013\u0010\u008e\u0001\u001a\u00020\u00142\u0008\u0010\u008f\u0001\u001a\u00030\u0090\u0001H\u0016J\u0012\u0010\u0091\u0001\u001a\u00020\u00142\u0007\u0010_\u001a\u00030\u0092\u0001H\u0016J\u0011\u0010\u0093\u0001\u001a\u00020\u00142\u0006\u0010v\u001a\u00020<H\u0016J\u0012\u0010\u0094\u0001\u001a\u00020\u00142\u0007\u0010\u0095\u0001\u001a\u000208H\u0016J/\u0010\u0096\u0001\u001a\u00020\u00142\u0007\u0010\u0097\u0001\u001a\u0002082\u001b\u0010\u0098\u0001\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020807\u0012\u0006\u0012\u0004\u0018\u0001080\u0012H\u0016J\u0013\u0010\u0099\u0001\u001a\u00020\u00142\u0008\u0010\u009a\u0001\u001a\u00030\u009b\u0001H\u0016J\u0013\u0010\u009c\u0001\u001a\u00020\u00142\u0008\u0010\u009d\u0001\u001a\u00030\u009e\u0001H\u0016J\u0013\u0010\u009f\u0001\u001a\u00020\u00142\u0008\u0010\u00a0\u0001\u001a\u00030\u009b\u0001H\u0016J\u0014\u0010\u00a1\u0001\u001a\u00020\u00142\t\u0010\u00a2\u0001\u001a\u0004\u0018\u000108H\u0016J\u0012\u0010\u00a3\u0001\u001a\u00020\u00142\u0007\u0010\u00a4\u0001\u001a\u00020\u0017H\u0016J\u0012\u0010\u00a5\u0001\u001a\u00020\u00142\u0007\u0010\u007f\u001a\u00030\u00a6\u0001H\u0016J\t\u0010\u00a7\u0001\u001a\u00020\u0014H\u0016J\u0013\u0010\u00a8\u0001\u001a\u00020\u00142\u0008\u0010\u00a9\u0001\u001a\u00030\u00aa\u0001H\u0016J\u0015\u0010\u00ab\u0001\u001a\u00020\u00142\n\u0010\u00ac\u0001\u001a\u0005\u0018\u00010\u00ad\u0001H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0011\u001a\u0016\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0012j\u0004\u0018\u0001`\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00ae\u0001"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;",
        "eventDelegate",
        "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;",
        "eventLoggers",
        "Lcom/stripe/paymentcollection/metrics/EventLoggers;",
        "timer",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
        "paymentCollectionFeatureFlagRepository",
        "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;",
        "manualEntryStateMachine",
        "Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;",
        "loggerFactory",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/metrics/EventLoggers;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)V",
        "logger",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;",
        "onStateChanging",
        "Lkotlin/Function1;",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        "",
        "Lcom/stripe/paymentcollection/OnStateChanging;",
        "canResumeCollectionForSca",
        "",
        "canStartCollection",
        "cancel",
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
        "determineTipSelectionType",
        "Lcom/stripe/hardware/paymentcollection/TippingSelectionType;",
        "config",
        "bbposSdkTipSelectionType",
        "Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;",
        "displayCart",
        "cart",
        "Lcom/stripe/cart/Cart;",
        "displayNonCardPaymentMethods",
        "getDesiredReaderInterfaces",
        "",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "interfacesSupportedByTransaction",
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
        "to",
        "from",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "reason",
        "onTransactionCanceled",
        "Lcom/stripe/paymentcollection/CancelReason;",
        "pinEntryStatusToFailureReasonForViewModel",
        "Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;",
        "pinEntryStatus",
        "registerHandlers",
        "resetTipSelection",
        "resumePaymentForSCA",
        "scaRequirement",
        "Lcom/stripe/paymentcollection/SCARequirement;",
        "returnToCardPaymentMethodCollection",
        "returnToNonCardPaymentMethodsSelection",
        "setActiveReaderInterfaces",
        "activeReaderInterfaces",
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
        "setInitialState",
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
        "Lcom/stripe/transaction/NonCardPaymentMethodData;",
        "setNonCardPaymentMethodSelected",
        "setOnlineAuthResponse",
        "response",
        "setOnlineAuthorizationData",
        "onlineAuthorizationData",
        "getFirstSupportedLanguage",
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


# instance fields
.field private final eventDelegate:Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;

.field private final eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

.field private final logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

.field private final loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

.field private final manualEntryStateMachine:Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;

.field private onStateChanging:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/paymentcollection/PaymentCollectionState;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentCollectionFeatureFlagRepository:Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

.field private final timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;


# direct methods
.method public constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;Lcom/stripe/paymentcollection/metrics/EventLoggers;Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;)V
    .locals 1

    const-string v0, "eventDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventLoggers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentCollectionFeatureFlagRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manualEntryStateMachine"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->eventDelegate:Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;

    .line 82
    iput-object p2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    .line 83
    iput-object p3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    .line 84
    iput-object p4, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->paymentCollectionFeatureFlagRepository:Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    .line 85
    iput-object p5, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->manualEntryStateMachine:Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;

    .line 86
    iput-object p6, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1318
    const-class p1, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p6, p1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    .line 92
    invoke-direct {p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->registerHandlers()V

    .line 93
    invoke-direct {p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->setInitialState()V

    return-void
.end method

.method private final determineTipSelectionType(Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;)Lcom/stripe/hardware/paymentcollection/TippingSelectionType;
    .locals 1

    .line 1130
    instance-of v0, p1, Lcom/stripe/hardware/tipping/FixedAmountTips;

    if-eqz v0, :cond_0

    .line 1131
    check-cast p1, Lcom/stripe/hardware/tipping/FixedAmountTips;

    invoke-virtual {p1}, Lcom/stripe/hardware/tipping/FixedAmountTips;->isSmartTip()Z

    move-result p1

    goto :goto_0

    .line 1134
    :cond_0
    instance-of v0, p1, Lcom/stripe/hardware/tipping/PercentageTips;

    if-eqz v0, :cond_1

    .line 1135
    check-cast p1, Lcom/stripe/hardware/tipping/PercentageTips;

    invoke-virtual {p1}, Lcom/stripe/hardware/tipping/PercentageTips;->isSmartTip()Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1142
    :goto_0
    sget-object v0, Lcom/stripe/hardware/tipping/FixedAmount;->INSTANCE:Lcom/stripe/hardware/tipping/FixedAmount;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 1144
    sget-object p1, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->SELECTED_FIXED_SMART_TIP:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    return-object p1

    .line 1146
    :cond_2
    sget-object p1, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->SELECTED_FIXED:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    return-object p1

    .line 1150
    :cond_3
    sget-object v0, Lcom/stripe/hardware/tipping/Percentage;->INSTANCE:Lcom/stripe/hardware/tipping/Percentage;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    .line 1152
    sget-object p1, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->SELECTED_PERCENTAGE_SMART_TIP:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    return-object p1

    .line 1154
    :cond_4
    sget-object p1, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->SELECTED_PERCENTAGE:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    return-object p1

    .line 1158
    :cond_5
    sget-object p1, Lcom/stripe/hardware/tipping/Unknown;->INSTANCE:Lcom/stripe/hardware/tipping/Unknown;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->NO_TIP_SELECTION_TYPE_FROM_BBPOS:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    return-object p1

    .line 1159
    :cond_6
    sget-object p1, Lcom/stripe/hardware/tipping/Custom;->INSTANCE:Lcom/stripe/hardware/tipping/Custom;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->CUSTOMIZED:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    return-object p1

    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final getDesiredReaderInterfaces(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;ZZ)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/TransactionType;",
            "Lcom/stripe/transaction/PaymentCollectionDeviceCapability;",
            "ZZ)",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    .line 492
    invoke-direct {p0, p1, p3, p4}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->interfacesSupportedByTransaction(Lcom/stripe/hardware/paymentcollection/TransactionType;ZZ)Ljava/util/Set;

    move-result-object p1

    .line 494
    check-cast p1, Ljava/lang/Iterable;

    .line 1350
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/Collection;

    .line 1351
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    .line 496
    invoke-virtual {p2}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->getSupportedInterface()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    invoke-interface {p3, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1352
    :cond_1
    check-cast p3, Ljava/util/List;

    .line 1350
    check-cast p3, Ljava/lang/Iterable;

    .line 497
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method static synthetic getDesiredReaderInterfaces$default(Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;ZZILjava/lang/Object;)Ljava/util/Set;
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v0

    .line 486
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getDesiredReaderInterfaces(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;ZZ)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private final interfacesSupportedByTransaction(Lcom/stripe/hardware/paymentcollection/TransactionType;ZZ)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/TransactionType;",
            "ZZ)",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 506
    sget-object p1, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->MANUAL_ENTRY:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 509
    :cond_0
    sget-object p2, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/stripe/hardware/paymentcollection/TransactionType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 548
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 549
    :pswitch_0
    new-array p1, v1, [Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->MAGSTRIPE:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object p2, p1, v2

    .line 548
    invoke-static {p1}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    .line 541
    :pswitch_1
    new-array p1, p2, [Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->MAGSTRIPE:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object p2, p1, v2

    .line 542
    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->ICC:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object p2, p1, v1

    .line 543
    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->NFC:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object p2, p1, v0

    .line 540
    invoke-static {p1}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    .line 534
    :pswitch_2
    new-array p1, v0, [Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->MAGSTRIPE:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object p2, p1, v2

    .line 535
    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->ICC:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object p2, p1, v1

    .line 533
    invoke-static {p1}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    .line 527
    :pswitch_3
    new-array p1, v0, [Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->ICC:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object p2, p1, v2

    .line 528
    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->NFC:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object p2, p1, v1

    .line 526
    invoke-static {p1}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    .line 519
    :pswitch_4
    new-array p1, p2, [Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->MAGSTRIPE:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object p2, p1, v2

    .line 520
    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->ICC:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object p2, p1, v1

    .line 521
    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->NFC:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object p2, p1, v0

    .line 518
    invoke-static {p1}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    .line 512
    :pswitch_5
    new-array p1, v0, [Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->ICC:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object p2, p1, v2

    .line 513
    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->MAGSTRIPE:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    aput-object p2, p1, v1

    .line 511
    invoke-static {p1}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    if-eqz p3, :cond_1

    .line 555
    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->MAGSTRIPE:Lcom/stripe/hardware/ReaderConfiguration$ReaderType;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 558
    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic interfacesSupportedByTransaction$default(Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;Lcom/stripe/hardware/paymentcollection/TransactionType;ZZILjava/lang/Object;)Ljava/util/Set;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    .line 500
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->interfacesSupportedByTransaction(Lcom/stripe/hardware/paymentcollection/TransactionType;ZZ)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private final pinEntryStatusToFailureReasonForViewModel(Lcom/stripe/hardware/paymentcollection/PinEntryStatus;)Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 815
    :cond_0
    sget-object v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 816
    :cond_1
    sget-object p1, Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;->WRONG_PIN_LENGTH:Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;

    return-object p1

    .line 818
    :cond_2
    sget-object p1, Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;->CARD_ERROR:Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;

    return-object p1

    .line 817
    :cond_3
    sget-object p1, Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;->INCORRECT_PIN:Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;

    return-object p1
.end method

.method private final registerHandlers()V
    .locals 6

    .line 96
    invoke-static {}, Lcom/stripe/paymentcollection/PaymentCollectionState;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1319
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionState;

    .line 97
    sget-object v2, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 166
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v1, Lcom/stripe/paymentcollection/PassthroughConfirmationHandler;

    .line 167
    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    .line 168
    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1348
    const-class v4, Lcom/stripe/paymentcollection/PassthroughConfirmationHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 166
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/PassthroughConfirmationHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 165
    :pswitch_1
    new-instance v1, Lcom/stripe/paymentcollection/InterstitialHandler;

    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1347
    const-class v4, Lcom/stripe/paymentcollection/InterstitialHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 165
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/InterstitialHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 160
    :pswitch_2
    new-instance v1, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;

    .line 161
    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    .line 162
    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1346
    const-class v4, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 160
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/NonCardPaymentMethodActionRequiredHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 155
    :pswitch_3
    new-instance v1, Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationHandler;

    .line 156
    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    .line 157
    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1345
    const-class v4, Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 155
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 150
    :pswitch_4
    new-instance v1, Lcom/stripe/paymentcollection/NonCardPaymentMethodsSelectionHandler;

    .line 151
    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    .line 152
    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1344
    const-class v4, Lcom/stripe/paymentcollection/NonCardPaymentMethodsSelectionHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 150
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/NonCardPaymentMethodsSelectionHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 145
    :pswitch_5
    new-instance v1, Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionHandler;

    .line 146
    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    .line 147
    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1343
    const-class v4, Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 145
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 140
    :pswitch_6
    new-instance v1, Lcom/stripe/paymentcollection/CollectPaymentMethodApiErrorHandler;

    .line 141
    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    .line 142
    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1342
    const-class v4, Lcom/stripe/paymentcollection/CollectPaymentMethodApiErrorHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 140
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/CollectPaymentMethodApiErrorHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 139
    :pswitch_7
    new-instance v1, Lcom/stripe/paymentcollection/TimeoutHandler;

    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1341
    const-class v4, Lcom/stripe/paymentcollection/TimeoutHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 139
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/TimeoutHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 138
    :pswitch_8
    new-instance v1, Lcom/stripe/paymentcollection/FinishedHandler;

    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1340
    const-class v4, Lcom/stripe/paymentcollection/FinishedHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 138
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/FinishedHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 137
    :pswitch_9
    new-instance v1, Lcom/stripe/paymentcollection/CancelHandler;

    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1339
    const-class v4, Lcom/stripe/paymentcollection/CancelHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 137
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/CancelHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 136
    :pswitch_a
    new-instance v1, Lcom/stripe/paymentcollection/CollectionCompleteHandler;

    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1338
    const-class v4, Lcom/stripe/paymentcollection/CollectionCompleteHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 136
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/CollectionCompleteHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 135
    :pswitch_b
    new-instance v1, Lcom/stripe/paymentcollection/OnlineConfirmationHandler;

    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1337
    const-class v4, Lcom/stripe/paymentcollection/OnlineConfirmationHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 135
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/OnlineConfirmationHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 134
    :pswitch_c
    new-instance v1, Lcom/stripe/paymentcollection/RemoveCardHandler;

    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1336
    const-class v4, Lcom/stripe/paymentcollection/RemoveCardHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 134
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/RemoveCardHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 129
    :pswitch_d
    new-instance v1, Lcom/stripe/paymentcollection/OnlineAuthorizationMagStripeHandler;

    .line 130
    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    .line 131
    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1335
    const-class v4, Lcom/stripe/paymentcollection/OnlineAuthorizationMagStripeHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 129
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/OnlineAuthorizationMagStripeHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 128
    :pswitch_e
    new-instance v1, Lcom/stripe/paymentcollection/OnlineAuthorizationHandler;

    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1334
    const-class v4, Lcom/stripe/paymentcollection/OnlineAuthorizationHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 128
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/OnlineAuthorizationHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 123
    :pswitch_f
    new-instance v1, Lcom/stripe/paymentcollection/RecoverableErrorSummaryHandler;

    .line 124
    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    .line 125
    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1333
    const-class v4, Lcom/stripe/paymentcollection/RecoverableErrorSummaryHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 123
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/RecoverableErrorSummaryHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 118
    :pswitch_10
    new-instance v1, Lcom/stripe/paymentcollection/PrepareToCollectAgainHandler;

    .line 119
    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    .line 120
    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1332
    const-class v4, Lcom/stripe/paymentcollection/PrepareToCollectAgainHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 118
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/PrepareToCollectAgainHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 117
    :pswitch_11
    new-instance v1, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;

    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1331
    const-class v4, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 117
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/MagStripePinEntryHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 116
    :pswitch_12
    new-instance v1, Lcom/stripe/paymentcollection/PinEntryHandler;

    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1330
    const-class v4, Lcom/stripe/paymentcollection/PinEntryHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 116
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/PinEntryHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 115
    :pswitch_13
    new-instance v1, Lcom/stripe/paymentcollection/AccountSelectionHandler;

    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1329
    const-class v4, Lcom/stripe/paymentcollection/AccountSelectionHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 115
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/AccountSelectionHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 114
    :pswitch_14
    new-instance v1, Lcom/stripe/paymentcollection/LanguageSelectionHandler;

    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1328
    const-class v4, Lcom/stripe/paymentcollection/LanguageSelectionHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 114
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/LanguageSelectionHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 113
    :pswitch_15
    new-instance v1, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;

    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1327
    const-class v4, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 113
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/ApplicationSelectionHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 112
    :pswitch_16
    new-instance v1, Lcom/stripe/paymentcollection/ProcessingHandler;

    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1326
    const-class v4, Lcom/stripe/paymentcollection/ProcessingHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 112
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/ProcessingHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto/16 :goto_1

    .line 111
    :pswitch_17
    new-instance v1, Lcom/stripe/paymentcollection/ManualEntryHandler;

    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->manualEntryStateMachine:Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;

    iget-object v4, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1325
    const-class v5, Lcom/stripe/paymentcollection/ManualEntryHandler;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v4

    .line 111
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/paymentcollection/ManualEntryHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto :goto_1

    .line 110
    :pswitch_18
    new-instance v1, Lcom/stripe/paymentcollection/CollectionHandler;

    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1324
    const-class v4, Lcom/stripe/paymentcollection/CollectionHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 110
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/CollectionHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto :goto_1

    .line 109
    :pswitch_19
    new-instance v1, Lcom/stripe/paymentcollection/TippingHandler;

    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1323
    const-class v4, Lcom/stripe/paymentcollection/TippingHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 109
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/TippingHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto :goto_1

    .line 104
    :pswitch_1a
    new-instance v1, Lcom/stripe/paymentcollection/DisplayCartPostCollectionHandler;

    .line 105
    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    .line 106
    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1322
    const-class v4, Lcom/stripe/paymentcollection/DisplayCartPostCollectionHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 104
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/DisplayCartPostCollectionHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto :goto_1

    .line 99
    :pswitch_1b
    new-instance v1, Lcom/stripe/paymentcollection/DisplayCartPreCollectionHandler;

    .line 100
    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    .line 101
    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1321
    const-class v4, Lcom/stripe/paymentcollection/DisplayCartPreCollectionHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 99
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/DisplayCartPreCollectionHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    goto :goto_1

    .line 98
    :pswitch_1c
    new-instance v1, Lcom/stripe/paymentcollection/EmptyHandler;

    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    iget-object v3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->loggerFactory:Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;

    .line 1320
    const-class v4, Lcom/stripe/paymentcollection/EmptyHandler;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    move-result-object v3

    .line 98
    invoke-direct {v1, v2, v3}, Lcom/stripe/paymentcollection/EmptyHandler;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;

    .line 171
    :goto_1
    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->eventDelegate:Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;

    invoke-virtual {v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->setEventDelegate(Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;)V

    .line 172
    iget-object v2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    invoke-virtual {v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->setEventLoggers$public_release(Lcom/stripe/paymentcollection/metrics/EventLoggers;)V

    .line 173
    move-object v2, p0

    check-cast v2, Lcom/stripe/statemachine/StateMachine;

    invoke-virtual {v1, v2}, Lcom/stripe/paymentcollection/PaymentCollectionStateHandler;->register(Lcom/stripe/statemachine/StateMachine;)V

    goto/16 :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final setInitialState()V
    .locals 4

    .line 178
    move-object v0, p0

    check-cast v0, Lcom/stripe/statemachine/StateMachine;

    sget-object v1, Lcom/stripe/paymentcollection/PaymentCollectionState;->EMPTY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/stripe/statemachine/StateMachine;->transitionTo$default(Lcom/stripe/statemachine/StateMachine;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public canResumeCollectionForSca()Z
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getState()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/stripe/paymentcollection/PaymentCollectionState;->ONLINE_AUTHORIZATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-ne v0, v1, :cond_3

    .line 203
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v0, v0, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;

    if-eqz v0, :cond_3

    .line 204
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getOnlineAuthorizationData()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getOnlineAuthorizationResponse()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public canStartCollection()Z
    .locals 5

    const/4 v0, 0x3

    .line 195
    new-array v0, v0, [Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v1, Lcom/stripe/paymentcollection/PaymentCollectionState;->EMPTY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/paymentcollection/PaymentCollectionState;->TIPPING_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v4, Lcom/stripe/paymentcollection/PaymentCollectionState;->MANUAL_ENTRY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    aput-object v4, v0, v1

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getState()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getConfirmedCollection()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v3
.end method

.method public cancel()V
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->timer:Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;

    invoke-interface {v0}, Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;->cancel()V

    return-void
.end method

.method public clearMagStripeReadState()V
    .locals 76

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v1, :cond_0

    .line 645
    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripeReadResult()Lcom/stripe/hardware/magstripe/MagStripeReadResult;

    move-result-object v0

    if-eqz v0, :cond_0

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

    const/16 v72, -0x41

    const/16 v73, -0x1

    .line 647
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 646
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public collectPayment(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;Lcom/stripe/restclient/IntegrationType;ZLcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;ZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZLjava/util/List;ZLjava/lang/String;Ljava/util/List;ZZZ)Z
    .locals 76
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

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v1, p8

    move-object/from16 v3, p9

    const-string v4, "transactionType"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "baseAmount"

    move-object/from16 v5, p2

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "emvTransactionType"

    move-object/from16 v6, p3

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "tippingState"

    move-object/from16 v7, p4

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "tippingConfig"

    move-object/from16 v8, p5

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "deviceCapability"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "deviceType"

    move-object/from16 v9, p10

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "domesticDebitAids"

    move-object/from16 v10, p18

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "nonCardPaymentMethodTypes"

    move-object/from16 v11, p21

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->canStartCollection()Z

    move-result v4

    const/4 v12, 0x0

    if-nez v4, :cond_0

    .line 353
    iget-object v1, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempt to begin payment from invalid state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Lkotlin/Pair;

    invoke-interface {v1, v2, v3}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    return v12

    :cond_0
    move/from16 v4, p11

    .line 357
    invoke-direct {v0, v2, v3, v1, v4}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getDesiredReaderInterfaces(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;ZZ)Ljava/util/Set;

    move-result-object v40

    .line 364
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v13, :cond_1

    .line 365
    invoke-virtual {v13}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getConfirmedCollection()Z

    move-result v14

    if-nez v14, :cond_1

    .line 366
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getState()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-eqz v14, :cond_1

    .line 369
    iget-object v14, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    invoke-virtual {v14}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object v14

    .line 371
    sget-object v15, Lcom/stripe/paymentcollection/metrics/DisplayCartResult;->STARTED_COLLECTION:Lcom/stripe/paymentcollection/metrics/DisplayCartResult;

    .line 369
    invoke-interface {v14, v13, v15}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closeDisplayCartLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/DisplayCartResult;)V

    :cond_1
    if-eqz p6, :cond_2

    .line 378
    invoke-virtual/range {p6 .. p6}, Lcom/stripe/currency/Amount;->getCurrency()Lcom/stripe/currency/CurrencyCode;

    move-result-object v13

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v5}, Lcom/stripe/currency/Amount;->getCurrency()Lcom/stripe/currency/CurrencyCode;

    move-result-object v14

    if-eq v13, v14, :cond_3

    move-object v13, v5

    move/from16 v16, v12

    goto :goto_1

    .line 381
    :cond_3
    new-instance v13, Lcom/stripe/currency/Amount;

    invoke-virtual/range {p6 .. p6}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v14

    invoke-virtual {v5}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v16

    add-long v14, v14, v16

    move/from16 v16, v12

    invoke-virtual {v5}, Lcom/stripe/currency/Amount;->getCurrency()Lcom/stripe/currency/CurrencyCode;

    move-result-object v12

    invoke-direct {v13, v14, v15, v12}, Lcom/stripe/currency/Amount;-><init>(JLcom/stripe/currency/CurrencyCode;)V

    .line 384
    :goto_1
    iget-object v12, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->paymentCollectionFeatureFlagRepository:Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    invoke-interface {v12}, Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;->motoTransactionsEnabled()Z

    move-result v12

    if-eqz v1, :cond_4

    if-nez v12, :cond_4

    .line 386
    iget-object v1, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    const-string v2, "MOTO transactions are not enabled for the registered account"

    invoke-interface {v1, v2}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->e(Ljava/lang/String;)V

    return v16

    .line 391
    :cond_4
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v12, :cond_5

    .line 419
    iget-object v14, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->paymentCollectionFeatureFlagRepository:Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    invoke-interface {v14}, Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;->sposGirocardEnabled()Z

    move-result v71

    const/16 v74, 0x13

    const/16 v75, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v1, v12

    const/4 v12, 0x0

    move-object v4, v13

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

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x1

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v51, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v70, 0x0

    const v72, -0x38000990

    const v73, -0x30fdccc1

    move-object/from16 v29, p4

    move-object/from16 v30, p5

    move-object/from16 v48, p7

    move/from16 v45, p8

    move/from16 v52, p11

    move-object/from16 v31, p12

    move/from16 v53, p13

    move-object/from16 v55, p14

    move/from16 v56, p15

    move/from16 v57, p19

    move-object/from16 v62, p20

    move-object/from16 v63, p21

    move/from16 v68, p22

    move/from16 v69, p23

    move-object/from16 v49, v3

    move-object v3, v5

    move-object/from16 v50, v9

    move-object/from16 v54, v10

    move-object/from16 v5, p3

    move/from16 v9, p16

    move/from16 v10, p17

    .line 391
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v1

    if-eqz v1, :cond_6

    goto/16 :goto_2

    :cond_5
    move-object v4, v13

    .line 448
    :cond_6
    iget-object v1, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->paymentCollectionFeatureFlagRepository:Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    invoke-interface {v1}, Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;->sposGirocardEnabled()Z

    move-result v71

    .line 420
    new-instance v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    const/16 v74, 0x3

    const/16 v75, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

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

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v51, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const v72, -0x38000990

    const v73, -0x30fdc8c1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v29, p4

    move-object/from16 v30, p5

    move-object/from16 v48, p7

    move/from16 v45, p8

    move-object/from16 v49, p9

    move-object/from16 v50, p10

    move/from16 v52, p11

    move-object/from16 v31, p12

    move/from16 v53, p13

    move-object/from16 v55, p14

    move/from16 v56, p15

    move/from16 v9, p16

    move/from16 v10, p17

    move-object/from16 v54, p18

    move/from16 v57, p19

    move-object/from16 v62, p20

    move-object/from16 v63, p21

    move/from16 v68, p22

    move/from16 v69, p23

    move/from16 v70, p24

    invoke-direct/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;-><init>(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 390
    :goto_2
    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    const/4 v1, 0x1

    return v1
.end method

.method public displayCart(Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/cart/Cart;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;ZZZZ)Z
    .locals 77

    move-object/from16 v0, p0

    const-string v1, "emvTransactionType"

    move-object/from16 v7, p1

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tippingState"

    move-object/from16 v8, p2

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tippingConfig"

    move-object/from16 v9, p3

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cart"

    move-object/from16 v10, p4

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deviceCapability"

    move-object/from16 v2, p6

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deviceType"

    move-object/from16 v11, p7

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->canStartCollection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    iget-object v1, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempt to begin payment from invalid state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Lkotlin/Pair;

    invoke-interface {v1, v2, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    return v3

    .line 238
    :cond_0
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v1, :cond_1

    .line 239
    iget-object v3, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    invoke-virtual {v3}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object v3

    .line 241
    sget-object v4, Lcom/stripe/paymentcollection/metrics/DisplayCartResult;->CART_UPDATED:Lcom/stripe/paymentcollection/metrics/DisplayCartResult;

    .line 239
    invoke-interface {v3, v1, v4}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closeDisplayCartLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/DisplayCartResult;)V

    .line 246
    :cond_1
    iget-object v1, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->openDisplayCartLog()V

    .line 249
    sget-object v3, Lcom/stripe/hardware/paymentcollection/TransactionType;->CHARGE:Lcom/stripe/hardware/paymentcollection/TransactionType;

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 251
    invoke-static/range {v0 .. v6}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getDesiredReaderInterfaces$default(Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;ZZILjava/lang/Object;)Ljava/util/Set;

    move-result-object v41

    .line 255
    invoke-virtual {v10}, Lcom/stripe/cart/Cart;->getBalance()Lcom/stripe/currency/Amount;

    move-result-object v4

    .line 258
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v2, :cond_2

    const/16 v75, 0x33

    const/16 v76, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

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

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

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

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const v73, -0x18000190

    const v74, -0x10c1c6c1

    move-object v5, v4

    move-object/from16 v6, p1

    move-object/from16 v30, p2

    move-object/from16 v31, p3

    move-object/from16 v49, p5

    move-object/from16 v50, p6

    move/from16 v57, p8

    move/from16 v69, p11

    move-object v3, v1

    move-object/from16 v44, v10

    move-object/from16 v51, v11

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-static/range {v2 .. v76}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 298
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v64

    .line 279
    new-instance v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    const/16 v75, 0x23

    const/16 v76, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

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

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const v73, -0x18000190

    const v74, -0x30c1c6c1

    move-object v5, v4

    move-object/from16 v6, p1

    move-object/from16 v30, p2

    move-object/from16 v31, p3

    move-object/from16 v44, p4

    move-object/from16 v49, p5

    move-object/from16 v50, p6

    move-object/from16 v51, p7

    move/from16 v57, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v69, p11

    invoke-direct/range {v2 .. v76}, Lcom/stripe/paymentcollection/PaymentCollectionData;-><init>(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v2

    .line 257
    :cond_3
    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    const/4 v1, 0x1

    return v1
.end method

.method public displayNonCardPaymentMethods()V
    .locals 76

    .line 1305
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v1, :cond_4

    .line 1309
    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getNonCardPaymentMethodTypes()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1356
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1357
    move-object v6, v5

    check-cast v6, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    .line 1310
    invoke-virtual {v6}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->isNonCardPaymentMethod()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    move-object v4, v5

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v4

    .line 1364
    :goto_1
    move-object/from16 v65, v2

    check-cast v65, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

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

    const/16 v64, 0x1

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, -0x1

    const v73, 0x3fffffff    # 1.9999999f

    .line 1307
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 1306
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_4
    move-object/from16 v1, p0

    return-void
.end method

.method public isFinished()Z
    .locals 2

    .line 1041
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getState()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/stripe/paymentcollection/PaymentCollectionState;->FINISHED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAccessiblePinPadEvent(Lcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;)V
    .locals 76

    const-string v0, "accessiblePinPadTouchEvent"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 836
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_0

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

    const v72, -0x80001

    const/16 v73, -0x1

    move-object/from16 v21, v1

    move-object v1, v0

    .line 838
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 837
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public onCollectPaymentMethodApiError()V
    .locals 2

    .line 1223
    sget-object v0, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECT_PAYMENT_METHOD_API_ERROR:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const-string v1, "API error when updating payment intent"

    invoke-virtual {p0, v0, v1}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->transitionTo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceKernelBusy()V
    .locals 3

    .line 1082
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getStateHandler()Lcom/stripe/statemachine/StateMachine$StateHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v1, :cond_0

    .line 1084
    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getDeviceCapability()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->getDirectlyControlsScreenInput()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1085
    instance-of v2, v0, Lcom/stripe/paymentcollection/PaymentCollectionScreenInputStateHandler;

    if-eqz v2, :cond_0

    .line 1087
    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionScreenInputStateHandler;

    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/PaymentCollectionScreenInputStateHandler;->onImplicitSelection(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    :cond_0
    return-void
.end method

.method public onHardwareTransactionCanceled()V
    .locals 77

    move-object/from16 v0, p0

    .line 1177
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-nez v2, :cond_0

    return-void

    .line 1182
    :cond_0
    invoke-virtual {v2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

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

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x1

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

    const/16 v73, -0x1

    const/16 v74, -0x21

    .line 1184
    invoke-static/range {v2 .. v76}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    .line 1185
    :cond_1
    invoke-virtual {v2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getExpectingHardwareCancellation()Z

    move-result v1

    if-eqz v1, :cond_2

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

    const v73, -0x40000001    # -1.9999999f

    const/16 v74, -0x1

    .line 1190
    invoke-static/range {v2 .. v76}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    .line 1193
    :cond_2
    sget-object v1, Lcom/stripe/paymentcollection/CancelReason;->HARDWARE_CANCELLED:Lcom/stripe/paymentcollection/CancelReason;

    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->onTransactionCanceled(Lcom/stripe/paymentcollection/CancelReason;)V

    return-void
.end method

.method public onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1047
    iget-object v0, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getOnlineAuthStateLogger()Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-interface {v0, p1, v1}, Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;->updateOnlineAuthState(Lcom/stripe/paymentcollection/OnlineAuthState;Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    return-void
.end method

.method public onPinEntryStatusChange(Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 76

    move-object/from16 v0, p1

    const-string v1, "status"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getPinEntryStatus()Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-ne v0, v1, :cond_2

    :cond_1
    move-object/from16 v1, p0

    goto/16 :goto_4

    .line 760
    :cond_2
    sget-object v1, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v0}, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    goto :goto_1

    .line 762
    :cond_3
    sget-object v2, Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;->PIN_ENTRY_TIMED_OUT:Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;

    goto :goto_1

    .line 761
    :cond_4
    sget-object v2, Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;->PIN_ENTRY_CANCELED:Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;

    .line 766
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->pinEntryStatusToFailureReasonForViewModel(Lcom/stripe/hardware/paymentcollection/PinEntryStatus;)Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;

    move-result-object v1

    .line 768
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v3, :cond_1

    .line 771
    sget-object v4, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ENTERED:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    if-ne v0, v4, :cond_5

    .line 772
    invoke-virtual {v3}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripeReadResult()Lcom/stripe/hardware/magstripe/MagStripeReadResult;

    move-result-object v4

    instance-of v4, v4, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    if-eqz v4, :cond_5

    .line 774
    invoke-virtual {v3}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripeReadResult()Lcom/stripe/hardware/magstripe/MagStripeReadResult;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    const/16 v13, 0x1f

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-static/range {v5 .. v14}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->copy$default(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    move-result-object v4

    check-cast v4, Lcom/stripe/hardware/magstripe/MagStripeReadResult;

    goto :goto_2

    .line 779
    :cond_5
    invoke-virtual {v3}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripeReadResult()Lcom/stripe/hardware/magstripe/MagStripeReadResult;

    move-result-object v4

    :goto_2
    move-object v8, v4

    .line 782
    sget-object v4, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v0}, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move-object/from16 v1, p0

    .line 796
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v4, 0x0

    goto :goto_3

    :pswitch_1
    invoke-virtual {v3}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getPinAsterisks()I

    move-result v4

    :goto_3
    move/from16 v19, v4

    if-nez v2, :cond_6

    .line 803
    invoke-virtual {v3}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getEarlyTransactionAbortReason()Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;

    move-result-object v2

    :cond_6
    move-object/from16 v22, v2

    if-nez v1, :cond_7

    .line 805
    invoke-virtual {v3}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getPinEntryRetryReason()Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;

    move-result-object v1

    :cond_7
    move-object/from16 v18, v1

    const/16 v74, 0x3f

    const/16 v75, 0x0

    const/4 v2, 0x0

    move-object v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

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

    const v72, -0x138041

    const/16 v73, -0x1

    move-object/from16 v17, v0

    .line 800
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 799
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onRequestAccountTypeSelection()V
    .locals 76

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v1, :cond_0

    .line 691
    sget-object v0, Lcom/stripe/paymentcollection/AccountSelectionStatus$Requested;->INSTANCE:Lcom/stripe/paymentcollection/AccountSelectionStatus$Requested;

    move-object/from16 v16, v0

    check-cast v16, Lcom/stripe/paymentcollection/AccountSelectionStatus;

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

    const/16 v72, -0x4001

    const/16 v73, -0x1

    .line 690
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 689
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method protected onStateChanging(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionData;Ljava/lang/String;)V
    .locals 2

    const-string p3, "to"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object p3, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStateChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/stripe/paymentcollection/PaymentCollectionState;->name()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/PaymentCollectionState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    new-array p4, p4, [Lkotlin/Pair;

    invoke-interface {p3, p2, p4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 188
    iget-object p2, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->onStateChanging:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public bridge synthetic onStateChanging(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 80
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionState;

    check-cast p2, Lcom/stripe/paymentcollection/PaymentCollectionState;

    check-cast p3, Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->onStateChanging(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionData;Ljava/lang/String;)V

    return-void
.end method

.method public onTransactionCanceled(Lcom/stripe/paymentcollection/CancelReason;)V
    .locals 76

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reason"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1201
    iget-object v2, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onTransactionCanceled: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Lkotlin/Pair;

    invoke-interface {v2, v3, v5}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 1202
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getState()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-nez v37, :cond_0

    goto :goto_0

    .line 1203
    :cond_0
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-nez v2, :cond_1

    goto :goto_0

    .line 1205
    :cond_1
    invoke-virtual {v2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    return-void

    .line 1213
    :cond_2
    sget-object v3, Lcom/stripe/paymentcollection/CancelReason;->HARDWARE_CANCELLED:Lcom/stripe/paymentcollection/CancelReason;

    if-ne v1, v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    move/from16 v39, v4

    const/16 v74, 0x3f

    const/16 v75, 0x0

    move-object v1, v2

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

    const/16 v73, -0x39

    move-object/from16 v38, p1

    .line 1208
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v1

    .line 1207
    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void
.end method

.method public resetTipSelection()V
    .locals 77

    move-object/from16 v0, p0

    .line 592
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getState()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-eq v1, v2, :cond_0

    .line 593
    iget-object v1, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempt to return to tip selection from an invalid state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->w(Ljava/lang/String;)V

    return-void

    .line 596
    :cond_0
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v2, :cond_1

    .line 597
    iget-object v1, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getTippingLogger()Lcom/stripe/paymentcollection/metrics/TippingLogger;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/stripe/paymentcollection/metrics/TippingLogger;->logReselectTipping(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 601
    invoke-virtual {v2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getBaseAmount()Lcom/stripe/currency/Amount;

    move-result-object v5

    .line 603
    sget-object v1, Lcom/stripe/paymentcollection/TippingState$SelectionNeeded;->INSTANCE:Lcom/stripe/paymentcollection/TippingState$SelectionNeeded;

    move-object/from16 v30, v1

    check-cast v30, Lcom/stripe/paymentcollection/TippingState;

    const/16 v75, 0x3f

    const/16 v76, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

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

    const v73, -0x8000005

    const/16 v74, -0x1

    .line 599
    invoke-static/range {v2 .. v76}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v1

    .line 598
    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public resumePaymentForSCA(Lcom/stripe/paymentcollection/SCARequirement;)Z
    .locals 77

    move-object/from16 v0, p0

    const-string v1, "scaRequirement"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->canResumeCollectionForSca()Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    iget-object v1, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempt to resume payment from invalid state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Lkotlin/Pair;

    invoke-interface {v1, v2, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    return v3

    .line 467
    :cond_0
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v1, :cond_1

    .line 470
    sget-object v3, Lcom/stripe/hardware/paymentcollection/TransactionType;->STRONG_CUSTOMER_AUTHENTICATION:Lcom/stripe/hardware/paymentcollection/TransactionType;

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

    const/16 v72, 0x0

    const v73, -0x5e00002

    const/16 v74, -0x1001

    move-object/from16 v47, v2

    move-object v2, v1

    .line 469
    invoke-static/range {v2 .. v76}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v1

    .line 468
    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    .line 480
    iget-object v1, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getStageEventLogger()Lcom/stripe/paymentcollection/metrics/StageEventLogger;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    sget-object v3, Lcom/stripe/paymentcollection/metrics/PendingPosCommand;->RESUME_PAYMENT:Lcom/stripe/paymentcollection/metrics/PendingPosCommand;

    invoke-interface {v1, v2, v3}, Lcom/stripe/paymentcollection/metrics/StageEventLogger;->closeWaitForPosCommandLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PendingPosCommand;)V

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public returnToCardPaymentMethodCollection()V
    .locals 76

    .line 1295
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

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

    const v73, -0x40000001    # -1.9999999f

    .line 1297
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 1296
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public returnToNonCardPaymentMethodsSelection()V
    .locals 76

    .line 1275
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

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

    const v73, 0x7fffffff

    .line 1277
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 1276
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public setActiveReaderInterfaces(Ljava/util/Set;)V
    .locals 76
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "activeReaderInterfaces"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v2, :cond_0

    .line 1013
    invoke-virtual {v2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getActiveReaderInterfacesForDisplay()Ljava/util/Set;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1014
    iget-object v3, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    invoke-virtual {v3}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getDiscreteEventLogger()Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;->logReaderInterfaceChanged(Ljava/util/Set;)V

    const/16 v74, 0x3f

    const/16 v75, 0x0

    move-object v1, v2

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

    const/16 v73, -0x81

    move-object/from16 v41, p1

    .line 1016
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v1

    .line 1015
    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setApplicationList(Ljava/util/List;)V
    .locals 76
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "applicationList"

    move-object/from16 v12, p1

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

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

    const/16 v72, -0x1401

    const/16 v73, -0x1

    .line 676
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 675
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public setCardSlotState(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V
    .locals 76

    move-object/from16 v11, p1

    const-string v0, "cardSlotState"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getShouldStartManualEntry()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->EMPTY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    if-eq v11, v0, :cond_0

    goto/16 :goto_0

    .line 635
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v1, :cond_1

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

    const/16 v72, -0x201

    const/16 v73, -0x1

    .line 636
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_1
    :goto_0
    move-object/from16 v1, p0

    return-void
.end method

.method public setDynamicCurrencyConversionSelected(Z)V
    .locals 76

    .line 1231
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v1, :cond_0

    .line 1232
    new-instance v0, Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus$DynamicCurrencyConversionSelected;

    move/from16 v2, p1

    invoke-direct {v0, v2}, Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus$DynamicCurrencyConversionSelected;-><init>(Z)V

    .line 1235
    move-object/from16 v60, v0

    check-cast v60, Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;

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

    const v73, -0x4000001

    .line 1234
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 1233
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public setEarlyTransactionAbortReason(Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;)V
    .locals 76

    const-string v0, "reason"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_0

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

    const v72, -0x100001

    const/16 v73, -0x1

    move-object/from16 v22, v1

    move-object v1, v0

    .line 851
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 850
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public setFinalConfirmation(Ljava/lang/String;)V
    .locals 76

    const-string v0, "tlv"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getOnlineAuthorizationData()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

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

    const v72, -0x2000001

    const/16 v73, -0x1

    move-object/from16 v27, v1

    move-object v1, v0

    .line 902
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 901
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public setHardwareTippingSelectionResult(Lcom/stripe/hardware/tipping/TipSelectionResult;)V
    .locals 11

    const-string v0, "hardwareResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1097
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_3

    .line 1098
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/currency/Amount;->getCurrency()Lcom/stripe/currency/CurrencyCode;

    move-result-object v1

    .line 1102
    sget-object v2, Lcom/stripe/hardware/tipping/NoTipSelected;->INSTANCE:Lcom/stripe/hardware/tipping/NoTipSelected;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v5, Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;

    new-instance v6, Lcom/stripe/currency/Amount;

    invoke-direct {v6, v3, v4, v1}, Lcom/stripe/currency/Amount;-><init>(JLcom/stripe/currency/CurrencyCode;)V

    sget-object v7, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->NO_TIP:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;-><init>(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TippingSelectionType;Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 1103
    :cond_0
    instance-of v2, p1, Lcom/stripe/hardware/tipping/TipSelected;

    if-eqz v2, :cond_1

    .line 1105
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTippingConfig()Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    move-result-object v0

    .line 1106
    check-cast p1, Lcom/stripe/hardware/tipping/TipSelected;

    invoke-virtual {p1}, Lcom/stripe/hardware/tipping/TipSelected;->getBbposSdkTipSelectionType()Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;

    move-result-object v2

    .line 1104
    invoke-direct {p0, v0, v2}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->determineTipSelectionType(Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/hardware/tipping/BbposSdkTipSelectionType;)Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    move-result-object v5

    .line 1108
    new-instance v3, Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;

    .line 1109
    new-instance v4, Lcom/stripe/currency/Amount;

    invoke-virtual {p1}, Lcom/stripe/hardware/tipping/TipSelected;->getTipsAmount()J

    move-result-wide v6

    invoke-direct {v4, v6, v7, v1}, Lcom/stripe/currency/Amount;-><init>(JLcom/stripe/currency/CurrencyCode;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 1108
    invoke-direct/range {v3 .. v8}, Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;-><init>(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TippingSelectionType;Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v3

    goto :goto_0

    .line 1114
    :cond_1
    instance-of v0, p1, Lcom/stripe/hardware/tipping/TipSelectionFailure;

    if-eqz v0, :cond_2

    new-instance v5, Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;

    .line 1115
    new-instance v0, Lcom/stripe/currency/Amount;

    invoke-direct {v0, v3, v4, v1}, Lcom/stripe/currency/Amount;-><init>(JLcom/stripe/currency/CurrencyCode;)V

    .line 1116
    sget-object v1, Lcom/stripe/hardware/paymentcollection/TippingSelectionType;->NO_TIP:Lcom/stripe/hardware/paymentcollection/TippingSelectionType;

    .line 1117
    check-cast p1, Lcom/stripe/hardware/tipping/TipSelectionFailure;

    invoke-virtual {p1}, Lcom/stripe/hardware/tipping/TipSelectionFailure;->getTippingSelectionFailureReason()Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;

    move-result-object p1

    .line 1114
    invoke-direct {v5, v0, v1, p1}, Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;-><init>(Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TippingSelectionType;Lcom/stripe/hardware/tipping/TippingSelectionFailureReason;)V

    .line 1121
    :goto_0
    invoke-virtual {p0, v5}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->setTippingSelectionResult(Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;)V

    return-void

    .line 1114
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public setHardwareTransactionResult(Lcom/stripe/hardware/emv/TransactionResult$Result;)V
    .locals 76

    const-string v0, "result"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_0

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

    const v72, 0x7fffffff

    const/16 v73, -0x1

    move-object/from16 v33, v1

    move-object v1, v0

    .line 959
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 958
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public setInterfaceResetRequired(Z)V
    .locals 76

    .line 614
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

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

    const/16 v72, -0x11

    const/16 v73, -0x1

    move/from16 v6, p1

    .line 616
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 615
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public setIntermediateError(Lcom/stripe/hardware/emv/IntermediateTransactionError;)V
    .locals 77

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "error"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 977
    sget-object v2, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    if-ne v1, v2, :cond_2

    .line 979
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    sget-object v4, Lcom/stripe/hardware/paymentcollection/TransactionType;->SETUP:Lcom/stripe/hardware/paymentcollection/TransactionType;

    if-eq v2, v4, :cond_4

    .line 980
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object v3

    :cond_1
    sget-object v2, Lcom/stripe/hardware/paymentcollection/TransactionType;->REUSABLE_CARD:Lcom/stripe/hardware/paymentcollection/TransactionType;

    if-ne v3, v2, :cond_2

    goto/16 :goto_1

    .line 987
    :cond_2
    sget-object v2, Lcom/stripe/hardware/emv/IntermediateTransactionError;->NOT_ACCEPTED_TRY_AGAIN:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    if-ne v1, v2, :cond_3

    .line 988
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v2, :cond_4

    .line 992
    sget-object v14, Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;->NOT_ACCEPTED:Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;

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

    const/16 v72, 0x0

    const/16 v73, -0x801

    const/16 v74, -0x1

    .line 990
    invoke-static/range {v2 .. v76}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v1

    .line 989
    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    .line 999
    :cond_3
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v2, :cond_4

    const/16 v74, 0x3f

    const/16 v75, 0x0

    move-object v1, v2

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

    const/16 v73, -0x2

    move-object/from16 v34, p1

    .line 1001
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v1

    .line 1000
    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setIsWaitingForCard(Z)V
    .locals 76

    .line 1029
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

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

    move/from16 v42, p1

    .line 1031
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 1030
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public setMagStripeReadResult(Lcom/stripe/hardware/magstripe/MagStripeReadResult;)V
    .locals 76

    const-string v0, "magStripeReadResult"

    move-object/from16 v8, p1

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

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

    const/16 v72, -0x41

    const/16 v73, -0x1

    .line 662
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 661
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public setManualEntryCollectionResult(Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;)V
    .locals 76

    const-string v0, "result"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1164
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_0

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

    const v73, -0x20001

    move-object/from16 v51, v1

    move-object v1, v0

    .line 1166
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 1165
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public setManualEntryResult(Lcom/stripe/hardware/paymentcollection/ManualEntryResult;)V
    .locals 1

    const-string v0, "manualEntryResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->manualEntryStateMachine:Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;

    invoke-virtual {v0, p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;->setManualEntryResult(Lcom/stripe/hardware/paymentcollection/ManualEntryResult;)V

    return-void
.end method

.method public setNonCardPaymentMethodData(Lcom/stripe/transaction/NonCardPaymentMethodData;)V
    .locals 76

    const-string v0, "data"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1285
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_0

    const/16 v74, 0x3d

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

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, -0x1

    const/16 v73, -0x1

    move-object/from16 v67, v1

    move-object v1, v0

    .line 1287
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 1286
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public setNonCardPaymentMethodSelected(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V
    .locals 76

    const-string v0, "selected"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1264
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_0

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

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, -0x1

    const v73, 0x3fffffff    # 1.9999999f

    move-object/from16 v65, v1

    move-object v1, v0

    .line 1266
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 1265
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public setOnlineAuthResponse(Ljava/lang/String;)V
    .locals 76

    const-string v0, "response"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_0

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

    const v72, -0x800001

    const/16 v73, -0x1

    move-object/from16 v25, v1

    move-object v1, v0

    .line 917
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 916
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public setOnlineAuthorizationData(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 76
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "onlineAuthorizationData"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "getFirstSupportedLanguage"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 867
    sget-object v3, Lcom/stripe/hardware/emv/TlvMap;->Companion:Lcom/stripe/hardware/emv/TlvMap$Companion;

    invoke-virtual {v3, v1}, Lcom/stripe/hardware/emv/TlvMap$Companion;->toTlvMap(Ljava/lang/String;)Lcom/stripe/hardware/emv/TlvMap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 868
    invoke-virtual {v3}, Lcom/stripe/hardware/emv/TlvMap;->getInterfaceType()Lcom/stripe/hardware/emv/InterfaceType;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_1

    .line 869
    iget-object v2, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ignore invalid onlineAuthorizationData "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->w(Ljava/lang/String;)V

    return-void

    .line 872
    :cond_1
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v4, :cond_5

    .line 874
    invoke-virtual {v4}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSelectedLanguage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    .line 876
    invoke-virtual {v3}, Lcom/stripe/hardware/emv/TlvMap;->getLanguagePreferences()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 877
    :cond_2
    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 878
    invoke-virtual {v3}, Lcom/stripe/hardware/emv/TlvMap;->getLanguagePreferences()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    :cond_3
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 879
    iget-object v2, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "selected language: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v6, v6, [Lkotlin/Pair;

    invoke-interface {v2, v3, v6}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    :cond_4
    move-object v15, v5

    const/16 v74, 0x3f

    const/16 v75, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v4

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

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

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

    const v72, -0x202001

    const/16 v73, -0x1

    move-object/from16 v23, p1

    .line 884
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v1

    .line 883
    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public setPinEntryAsterisks(I)V
    .locals 76

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

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

    const v72, -0x20001

    const/16 v73, -0x1

    move/from16 v19, p1

    .line 828
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 827
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public setSelectedAccountType(Lcom/stripe/hardware/emv/AccountType;)V
    .locals 77

    move-object/from16 v0, p1

    const-string v1, "selectedAccountType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v2, :cond_0

    .line 733
    new-instance v1, Lcom/stripe/paymentcollection/AccountSelectionStatus$AccountSelected;

    invoke-direct {v1, v0}, Lcom/stripe/paymentcollection/AccountSelectionStatus$AccountSelected;-><init>(Lcom/stripe/hardware/emv/AccountType;)V

    move-object/from16 v17, v1

    check-cast v17, Lcom/stripe/paymentcollection/AccountSelectionStatus;

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

    .line 732
    invoke-static/range {v2 .. v76}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 731
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public setSelectedApplicationIndex(I)V
    .locals 76

    .line 702
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v1, :cond_0

    .line 705
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

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

    const/16 v72, -0x1001

    const/16 v73, -0x1

    .line 704
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 703
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public setSelectedLanguage(Ljava/lang/String;)V
    .locals 76

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

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

    const/16 v72, -0x2001

    const/16 v73, -0x1

    move-object/from16 v15, p1

    .line 718
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 717
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public setShowThankYouReceived(Z)V
    .locals 76

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

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

    const v73, -0x2000001

    move/from16 v59, p1

    .line 746
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 745
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public setTippingSelectionResult(Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;)V
    .locals 77

    move-object/from16 v0, p1

    const-string v1, "result"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v2, :cond_1

    .line 571
    invoke-virtual {v0}, Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v1

    .line 572
    invoke-virtual {v1}, Lcom/stripe/currency/Amount;->getCurrency()Lcom/stripe/currency/CurrencyCode;

    move-result-object v3

    invoke-virtual {v2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stripe/currency/Amount;->getCurrency()Lcom/stripe/currency/CurrencyCode;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 578
    new-instance v5, Lcom/stripe/currency/Amount;

    .line 579
    invoke-virtual {v2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getBaseAmount()Lcom/stripe/currency/Amount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v6

    add-long/2addr v3, v6

    .line 580
    invoke-virtual {v2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/currency/Amount;->getCurrency()Lcom/stripe/currency/CurrencyCode;

    move-result-object v1

    .line 578
    invoke-direct {v5, v3, v4, v1}, Lcom/stripe/currency/Amount;-><init>(JLcom/stripe/currency/CurrencyCode;)V

    .line 582
    new-instance v1, Lcom/stripe/paymentcollection/TippingState$Completed;

    invoke-direct {v1, v0}, Lcom/stripe/paymentcollection/TippingState$Completed;-><init>(Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;)V

    move-object/from16 v30, v1

    check-cast v30, Lcom/stripe/paymentcollection/TippingState;

    const/16 v75, 0x3f

    const/16 v76, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

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

    const v73, -0x8000005

    const/16 v74, -0x1

    .line 577
    invoke-static/range {v2 .. v76}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v2, p0

    .line 576
    invoke-virtual {v2, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v0, v2

    move-object/from16 v2, p0

    .line 572
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 573
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Tip currency ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/stripe/currency/Amount;->getCurrency()Lcom/stripe/currency/CurrencyCode;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") not the same as transaction "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/currency/Amount;->getCurrency()Lcom/stripe/currency/CurrencyCode;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object/from16 v2, p0

    return-void
.end method

.method public setUserRetryRequested()V
    .locals 76

    .line 1061
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

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

    const/16 v36, 0x1

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

    const/16 v73, -0x5

    .line 1063
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 1062
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public startDynamicCurrencyConversionSelection(Lcom/stripe/transaction/DynamicCurrencyConversionData;)V
    .locals 76

    const-string v0, "dynamicCurrencyConversionData"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1249
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v0, :cond_0

    .line 1252
    sget-object v2, Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus$Requested;->INSTANCE:Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus$Requested;

    move-object/from16 v60, v2

    check-cast v60, Lcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;

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

    const v73, -0xc000001

    move-object/from16 v61, v1

    move-object v1, v0

    .line 1251
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v0

    move-object/from16 v1, p0

    .line 1250
    invoke-virtual {v1, v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object/from16 v1, p0

    return-void
.end method

.method public updateChargeAttempt(Lcom/stripe/transaction/ChargeAttempt;)V
    .locals 76

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 928
    iget-object v2, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateChargeAttempt "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lkotlin/Pair;

    invoke-interface {v2, v3, v4}, Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 929
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/PaymentCollectionData;

    if-eqz v2, :cond_3

    const/16 v74, 0x3f

    const/16 v75, 0x0

    move-object v1, v2

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

    const v72, -0x4000001

    const/16 v73, -0x1

    move-object/from16 v28, p1

    .line 930
    invoke-static/range {v1 .. v75}, Lcom/stripe/paymentcollection/PaymentCollectionData;->copy$default(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/emv/EmvTransactionType;ZILcom/stripe/hardware/magstripe/MagStripeReadResult;ZZLcom/stripe/hardware/paymentcollection/ContactCardSlotState;Ljava/util/List;Lcom/stripe/hardware/paymentcollection/ApplicationSelectionModel$ApplicationSelectionRetryReason;Ljava/lang/Integer;Ljava/lang/String;Lcom/stripe/paymentcollection/AccountSelectionStatus;Lcom/stripe/hardware/paymentcollection/PinEntryStatus;Lcom/stripe/hardware/paymentcollection/PinEntryRetryReason;IZLcom/stripe/hardware/paymentcollection/AccessiblePinPadTouchEvent;Lcom/stripe/paymentcollection/EarlyTransactionAbortReason;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/stripe/transaction/ChargeAttempt;Lcom/stripe/paymentcollection/TippingState;Lcom/stripe/hardware/tipping/TipConfigValidationResult;Lcom/stripe/currency/Amount;ZLcom/stripe/hardware/emv/TransactionResult$Result;Lcom/stripe/hardware/emv/IntermediateTransactionError;Lcom/stripe/hardware/emv/TransactionResult$Result;ZLcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/CancelReason;ZLjava/util/Set;Ljava/util/Set;ZLcom/stripe/cart/Cart;ZZLcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/PaymentCollectionDeviceCapability;Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/paymentcollection/manualentry/ManualEntryCollectionResult;ZZLjava/util/List;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZZZZLcom/stripe/paymentcollection/DynamicCurrencyConversionSelectionStatus;Lcom/stripe/transaction/DynamicCurrencyConversionData;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/stripeterminal/external/models/PaymentMethodType;ZLcom/stripe/transaction/NonCardPaymentMethodData;ZZZZIIILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionData;

    move-result-object v1

    move-object/from16 v2, v28

    .line 933
    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->updateData(Ljava/lang/Object;)V

    if-eqz v2, :cond_3

    .line 935
    iget-object v3, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    invoke-virtual {v3}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getDiscreteEventLogger()Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;->logOnlineConfirmResult(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 937
    instance-of v3, v2, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;

    if-eqz v3, :cond_3

    .line 938
    check-cast v2, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;

    invoke-virtual {v2}, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;->getAmountSurcharge()Lcom/stripe/currency/Amount;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_1

    .line 939
    iget-object v3, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    invoke-virtual {v3}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getDiscreteEventLogger()Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;->logSurcharge(Lcom/stripe/paymentcollection/PaymentCollectionData;)V

    .line 941
    :cond_1
    invoke-virtual {v2}, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;->getAmountRequested()Lcom/stripe/currency/Amount;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 943
    invoke-virtual {v3}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;->getAmountCharged()Lcom/stripe/currency/Amount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    move-object v4, v3

    :cond_2
    if-eqz v4, :cond_3

    .line 945
    iget-object v3, v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;->eventLoggers:Lcom/stripe/paymentcollection/metrics/EventLoggers;

    invoke-virtual {v3}, Lcom/stripe/paymentcollection/metrics/EventLoggers;->getDiscreteEventLogger()Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;

    move-result-object v3

    invoke-virtual {v2}, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;->getAmountCharged()Lcom/stripe/currency/Amount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v4

    invoke-interface {v3, v1, v4, v5}, Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;->logPartialAuthApproved(Lcom/stripe/paymentcollection/PaymentCollectionData;J)V

    :cond_3
    return-void
.end method
