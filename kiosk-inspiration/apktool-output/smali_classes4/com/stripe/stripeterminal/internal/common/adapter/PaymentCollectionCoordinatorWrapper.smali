.class public final Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;
.super Ljava/lang/Object;
.source "PaymentCollectionCoordinatorWrapper.kt"

# interfaces
.implements Lcom/stripe/paymentcollection/OnlineAuthStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Companion;,
        Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;,
        Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentCollectionCoordinatorWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentCollectionCoordinatorWrapper.kt\ncom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper\n+ 2 Delegates.kt\nkotlin/properties/Delegates\n+ 3 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 PaymentMethod.kt\ncom/stripe/proto/model/sdk/PaymentMethod$Companion\n*L\n1#1,589:1\n33#2,3:590\n16#3:593\n1549#4:594\n1620#4,3:595\n216#5:598\n*S KotlinDebug\n*F\n+ 1 PaymentCollectionCoordinatorWrapper.kt\ncom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper\n*L\n100#1:590,3\n97#1:593\n332#1:594\n332#1:595,3\n432#1:598\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 q2\u00020\u0001:\u0002qrB\'\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nB7\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u0002`\u000f\u00a2\u0006\u0002\u0010\u0010J\u0006\u0010%\u001a\u00020&J\u000e\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*J\u0086\u0001\u0010+\u001a\u00020(2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0008\u00100\u001a\u0004\u0018\u0001012\u0006\u00102\u001a\u00020\"2\u0006\u00103\u001a\u00020\"2\u0006\u00104\u001a\u00020\"2\u0008\u00105\u001a\u0004\u0018\u00010/2\u0006\u00106\u001a\u00020\"2\u0008\u00107\u001a\u0004\u0018\u0001082\u0006\u00109\u001a\u00020\"2\u0008\u0010:\u001a\u0004\u0018\u00010;2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020>0=2\u0006\u0010?\u001a\u00020\"2\u0006\u0010@\u001a\u00020\"H\u0002J\u0014\u0010A\u001a\u0008\u0012\u0004\u0012\u00020C0B2\u0006\u0010D\u001a\u00020;J\u000e\u0010E\u001a\u00020&2\u0006\u0010F\u001a\u00020GJ\u0010\u0010H\u001a\u00020&2\u0008\u0010I\u001a\u0004\u0018\u00010JJ\u0006\u0010K\u001a\u00020&J\u0011\u0010L\u001a\u00020&2\u0006\u0010M\u001a\u00020NH\u0096\u0001J\u0006\u0010O\u001a\u00020&J\u0006\u0010P\u001a\u00020(J\u000e\u0010Q\u001a\u00020&2\u0006\u0010R\u001a\u00020SJ\u000e\u0010T\u001a\u00020&2\u0006\u0010U\u001a\u00020VJ\u0010\u0010W\u001a\u00020&2\u0006\u0010X\u001a\u00020YH\u0002J\u0010\u0010Z\u001a\u00020&2\u0006\u0010[\u001a\u00020\\H\u0002J\u0010\u0010]\u001a\u00020&2\u0006\u0010X\u001a\u00020^H\u0002J\u0010\u0010_\u001a\u00020&2\u0006\u0010[\u001a\u00020`H\u0002J\u000e\u0010a\u001a\u00020&2\u0006\u0010b\u001a\u00020cJ\u0010\u0010d\u001a\u00020&2\u0006\u0010e\u001a\u00020fH\u0002J\u000c\u0010g\u001a\u00020h*\u00020iH\u0002J\u000c\u0010j\u001a\u00020k*\u00020iH\u0002J\u000c\u0010l\u001a\u00020m*\u00020VH\u0002J\u000c\u0010n\u001a\u000201*\u00020oH\u0002J\u000c\u0010p\u001a\u00020-*\u00020*H\u0002R(\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00128F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u0002`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R/\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00198F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u00020\"8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006s"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;",
        "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
        "paymentCollectionCoordinator",
        "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;",
        "transactionRepository",
        "Lcom/stripe/core/transaction/TransactionRepository;",
        "settingsRepository",
        "Lcom/stripe/core/transaction/SettingsRepository;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "value",
        "Lcom/stripe/transaction/CollectiblePayment;",
        "collectiblePayment",
        "getCollectiblePayment",
        "()Lcom/stripe/transaction/CollectiblePayment;",
        "setCollectiblePayment",
        "(Lcom/stripe/transaction/CollectiblePayment;)V",
        "<set-?>",
        "Lcom/stripe/paymentcollection/PaymentCollectionListener;",
        "paymentCollectionListener",
        "getPaymentCollectionListener",
        "()Lcom/stripe/paymentcollection/PaymentCollectionListener;",
        "setPaymentCollectionListener",
        "(Lcom/stripe/paymentcollection/PaymentCollectionListener;)V",
        "paymentCollectionListener$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "supportsSca",
        "",
        "getSupportsSca",
        "()Z",
        "cancelCollectPaymentMethod",
        "",
        "collectPaymentMethod",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "paymentMethodCollectionType",
        "Lcom/stripe/transaction/PaymentMethodCollectionType;",
        "collectPaymentMethodHelper",
        "transactionType",
        "Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "scaRequirement",
        "Lcom/stripe/paymentcollection/SCARequirement;",
        "skipTipping",
        "manualEntry",
        "isOffline",
        "tipEligibleAmount",
        "isDeferredAuthorizationCountry",
        "domesticDebitPriority",
        "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
        "enableCustomerCancellation",
        "surchargeNotice",
        "",
        "nonCardPaymentMethodTypes",
        "",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "requestIncrementalAuthorizationSupport",
        "forcePinEntry",
        "handleAuthResponse",
        "Lkotlinx/coroutines/Deferred;",
        "Lcom/stripe/hardware/emv/TransactionResult;",
        "tlvBlob",
        "handleNonCardPaymentMethodConfirmationResponse",
        "data",
        "Lcom/stripe/transaction/NonCardPaymentMethodData;",
        "onChargeAttemptChanged",
        "chargeAttempt",
        "Lcom/stripe/transaction/ChargeAttempt;",
        "onCollectPaymentMethodApiError",
        "onOnlineAuthStateChanged",
        "state",
        "Lcom/stripe/paymentcollection/OnlineAuthState;",
        "onReaderDisconnected",
        "readReusableCard",
        "selectDynamicCurrencyConversion",
        "dynamicCurrencyConversionData",
        "Lcom/stripe/transaction/DynamicCurrencyConversionData;",
        "setReaderDisplay",
        "cart",
        "Lcom/stripe/stripeterminal/external/models/Cart;",
        "updateCollectibleEmvPayment",
        "collectionResult",
        "Lcom/stripe/paymentcollection/EmvResult;",
        "updateCollectibleManualEntryPayment",
        "result",
        "Lcom/stripe/paymentcollection/ManualEntryResult;",
        "updateCollectibleMsrPayment",
        "Lcom/stripe/paymentcollection/MsrResult;",
        "updateCollectibleNonCardPaymentMethodPayment",
        "Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationResult;",
        "updateDevicePaymentCapability",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "updateTipResult",
        "tipResult",
        "Lcom/stripe/paymentcollection/TippingState$EndState;",
        "asFallbackReason",
        "Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;",
        "Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;",
        "asSwipeReason",
        "Lcom/stripe/stripeterminal/internal/models/SwipeReason;",
        "toCoreCart",
        "Lcom/stripe/cart/Cart;",
        "toScaRequirement",
        "Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;",
        "toTransactionType",
        "Companion",
        "Config",
        "adapter_release"
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Companion;

.field private static final REUSABLE_CARD_AMOUNT:Lcom/stripe/currency/Amount;


# instance fields
.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentCollectionCoordinator:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

.field private final paymentCollectionListener$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

.field private final transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 100
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "paymentCollectionListener"

    const-string v3, "getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;"

    const-class v4, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->Companion:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Companion;

    .line 586
    new-instance v0, Lcom/stripe/currency/Amount;

    const-wide/16 v1, 0x0

    sget-object v3, Lcom/stripe/currency/CurrencyCode;->USD:Lcom/stripe/currency/CurrencyCode;

    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/currency/Amount;-><init>(JLcom/stripe/currency/CurrencyCode;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->REUSABLE_CARD_AMOUNT:Lcom/stripe/currency/Amount;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "paymentCollectionCoordinator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    const-class v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p4

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "paymentCollectionCoordinator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->paymentCollectionCoordinator:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    .line 68
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    .line 69
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    .line 70
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 100
    sget-object p1, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 590
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$special$$inlined$observable$1;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;)V

    check-cast p1, Lkotlin/properties/ReadWriteProperty;

    .line 100
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->paymentCollectionListener$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static final synthetic access$getPaymentCollectionCoordinator$p(Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->paymentCollectionCoordinator:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    return-object p0
.end method

.method private final asFallbackReason(Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;)Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;
    .locals 1

    .line 571
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    sget-object p1, Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;->EMPTY_CANDIDATE_LIST:Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;

    return-object p1

    .line 574
    :cond_2
    sget-object p1, Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;->CHIP_ERROR:Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;

    return-object p1

    .line 573
    :cond_3
    :goto_0
    sget-object p1, Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;->NONE:Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;

    return-object p1
.end method

.method private final asSwipeReason(Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;)Lcom/stripe/stripeterminal/internal/models/SwipeReason;
    .locals 1

    .line 508
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 512
    sget-object p1, Lcom/stripe/stripeterminal/internal/models/SwipeReason;->COLLECT_DATA:Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 511
    :cond_1
    sget-object p1, Lcom/stripe/stripeterminal/internal/models/SwipeReason;->EMPTY_CANDIDATE_LIST:Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    return-object p1

    .line 510
    :cond_2
    sget-object p1, Lcom/stripe/stripeterminal/internal/models/SwipeReason;->CHIP_ERROR:Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    return-object p1

    .line 509
    :cond_3
    sget-object p1, Lcom/stripe/stripeterminal/internal/models/SwipeReason;->CHIP_ERROR:Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    return-object p1
.end method

.method private final collectPaymentMethodHelper(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/SCARequirement;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZ)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/hardware/paymentcollection/TransactionType;",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/paymentcollection/SCARequirement;",
            "ZZZ",
            "Lcom/stripe/currency/Amount;",
            "Z",
            "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;ZZ)",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 365
    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->setCollectiblePayment(Lcom/stripe/transaction/CollectiblePayment;)V

    .line 367
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 375
    sget-object v2, Lcom/stripe/hardware/paymentcollection/TransactionType;->STRONG_CUSTOMER_AUTHENTICATION:Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-object/from16 v3, p1

    if-ne v3, v2, :cond_0

    .line 376
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v2}, Lcom/stripe/core/transaction/TransactionRepository;->getAmountTip()Lcom/stripe/currency/Amount;

    move-result-object v2

    move-object v6, v2

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v0

    move-object v6, v2

    .line 381
    :goto_0
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;

    const/16 v18, 0x0

    move-object/from16 v2, p2

    move-object/from16 v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-direct/range {v0 .. v18}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/paymentcollection/SCARequirement;Lcom/stripe/currency/Amount;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3, v0, v2, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionResult;

    .line 403
    instance-of v2, v0, Lcom/stripe/paymentcollection/EmvResult;

    if-eqz v2, :cond_2

    .line 404
    check-cast v0, Lcom/stripe/paymentcollection/EmvResult;

    invoke-direct {v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->updateCollectibleEmvPayment(Lcom/stripe/paymentcollection/EmvResult;)V

    .line 405
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/EmvResult;->getTipResult()Lcom/stripe/paymentcollection/TippingState$EndState;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->updateTipResult(Lcom/stripe/paymentcollection/TippingState$EndState;)V

    .line 406
    new-instance v2, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    .line 407
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/EmvResult;->getEmvBlob()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->getCollectiblePayment()Lcom/stripe/transaction/CollectiblePayment;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/stripe/transaction/CollectiblePayment;->getPayment()Lcom/stripe/transaction/payment/Payment;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/stripe/transaction/payment/Payment;->asProtobuf()Lcom/stripe/proto/model/sdk/PaymentMethod;

    move-result-object v3

    :cond_1
    const/16 v4, 0x3de

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 p2, v0

    move-object/from16 p1, v2

    move-object/from16 p7, v3

    move/from16 p12, v4

    move-object/from16 p13, v5

    move-object/from16 p3, v6

    move-object/from16 p4, v7

    move-object/from16 p5, v8

    move-object/from16 p6, v9

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    .line 406
    invoke-direct/range {p1 .. p13}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;-><init>(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p1

    return-object v0

    .line 412
    :cond_2
    instance-of v2, v0, Lcom/stripe/paymentcollection/MsrResult;

    if-eqz v2, :cond_4

    .line 413
    check-cast v0, Lcom/stripe/paymentcollection/MsrResult;

    invoke-direct {v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->updateCollectibleMsrPayment(Lcom/stripe/paymentcollection/MsrResult;)V

    .line 414
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/MsrResult;->getTipResult()Lcom/stripe/paymentcollection/TippingState$EndState;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->updateTipResult(Lcom/stripe/paymentcollection/TippingState$EndState;)V

    .line 416
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/MsrResult;->getMagStripeReadSuccess()Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->getEncryptedTrack2()Ljava/lang/String;

    move-result-object v2

    .line 417
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/MsrResult;->getMagStripeReadSuccess()Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    move-result-object v4

    .line 418
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/MsrResult;->getCollectionAuthority()Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->asSwipeReason(Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;)Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    move-result-object v0

    .line 419
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->getCollectiblePayment()Lcom/stripe/transaction/CollectiblePayment;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/stripe/transaction/CollectiblePayment;->getPayment()Lcom/stripe/transaction/payment/Payment;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/stripe/transaction/payment/Payment;->asProtobuf()Lcom/stripe/proto/model/sdk/PaymentMethod;

    move-result-object v3

    .line 415
    :cond_3
    new-instance v5, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    const/16 v6, 0x3d1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 p4, v0

    move-object/from16 p5, v2

    move-object/from16 p7, v3

    move-object/from16 p3, v4

    move-object/from16 p1, v5

    move/from16 p12, v6

    move-object/from16 p13, v7

    move-object/from16 p2, v8

    move-object/from16 p6, v9

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    invoke-direct/range {p1 .. p13}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;-><init>(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p1

    return-object v0

    .line 423
    :cond_4
    instance-of v2, v0, Lcom/stripe/paymentcollection/ManualEntryResult;

    if-eqz v2, :cond_6

    .line 424
    check-cast v0, Lcom/stripe/paymentcollection/ManualEntryResult;

    invoke-direct {v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->updateCollectibleManualEntryPayment(Lcom/stripe/paymentcollection/ManualEntryResult;)V

    .line 425
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/ManualEntryResult;->getTipResult()Lcom/stripe/paymentcollection/TippingState$EndState;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->updateTipResult(Lcom/stripe/paymentcollection/TippingState$EndState;)V

    .line 426
    new-instance v0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->getCollectiblePayment()Lcom/stripe/transaction/CollectiblePayment;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/stripe/transaction/CollectiblePayment;->getPayment()Lcom/stripe/transaction/payment/Payment;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/stripe/transaction/payment/Payment;->asProtobuf()Lcom/stripe/proto/model/sdk/PaymentMethod;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, v3

    :goto_1
    const/16 v3, 0x3df

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

    move-object/from16 p1, v0

    move-object/from16 p7, v2

    move/from16 p12, v3

    move-object/from16 p13, v4

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    move-object/from16 p4, v7

    move-object/from16 p5, v8

    move-object/from16 p6, v9

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    invoke-direct/range {p1 .. p13}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;-><init>(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 429
    :cond_6
    instance-of v2, v0, Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationResult;

    if-eqz v2, :cond_7

    .line 430
    check-cast v0, Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationResult;

    invoke-direct {v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->updateCollectibleNonCardPaymentMethodPayment(Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationResult;)V

    .line 431
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationResult;->getTipResult()Lcom/stripe/paymentcollection/TippingState$EndState;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->updateTipResult(Lcom/stripe/paymentcollection/TippingState$EndState;)V

    .line 432
    sget-object v2, Lcom/stripe/proto/model/sdk/PaymentMethod;->Companion:Lcom/stripe/proto/model/sdk/PaymentMethod$Companion;

    .line 598
    new-instance v2, Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;

    invoke-direct {v2}, Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;-><init>()V

    .line 433
    new-instance v4, Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationResult;->getPaymentMethodType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    invoke-direct {v4, v0, v3, v5, v3}, Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;-><init>(Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v4, v2, Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;->non_card_payment:Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;

    .line 434
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 598
    invoke-virtual {v2}, Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;->build()Lcom/stripe/proto/model/sdk/PaymentMethod;

    move-result-object v0

    .line 432
    new-instance v2, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x37f

    const/4 v13, 0x0

    move-object/from16 p9, v0

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move/from16 p12, v12

    move-object/from16 p13, v13

    invoke-direct/range {p1 .. p13}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;-><init>(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p1

    return-object v0

    .line 437
    :cond_7
    instance-of v2, v0, Lcom/stripe/paymentcollection/PassthroughResult;

    if-eqz v2, :cond_8

    .line 439
    check-cast v0, Lcom/stripe/paymentcollection/PassthroughResult;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PassthroughResult;->getMagStripeReadSuccess()Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->getEncryptedTrack2()Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PassthroughResult;->getMagStripeReadSuccess()Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    move-result-object v0

    .line 438
    new-instance v3, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    const/16 v4, 0x3f5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 p3, v0

    move-object/from16 p5, v2

    move-object/from16 p1, v3

    move/from16 p12, v4

    move-object/from16 p13, v5

    move-object/from16 p2, v6

    move-object/from16 p4, v7

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    invoke-direct/range {p1 .. p13}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;-><init>(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p1

    return-object v0

    .line 444
    :cond_8
    sget-object v2, Lcom/stripe/paymentcollection/Cancelled;->INSTANCE:Lcom/stripe/paymentcollection/Cancelled;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 449
    sget-object v2, Lcom/stripe/paymentcollection/BatteryCriticallyLow;->INSTANCE:Lcom/stripe/paymentcollection/BatteryCriticallyLow;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 454
    sget-object v2, Lcom/stripe/paymentcollection/DeviceMissingEncryptionKey;->INSTANCE:Lcom/stripe/paymentcollection/DeviceMissingEncryptionKey;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 460
    sget-object v2, Lcom/stripe/paymentcollection/Timeout;->INSTANCE:Lcom/stripe/paymentcollection/Timeout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 465
    sget-object v2, Lcom/stripe/paymentcollection/Failed;->INSTANCE:Lcom/stripe/paymentcollection/Failed;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 466
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_COMMUNICATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v3, 0xc

    const/4 v4, 0x0

    .line 465
    const-string v5, "Transaction failed with unexpected reader failure."

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    invoke-direct/range {p1 .. p7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_9
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 460
    :cond_a
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 461
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_READ_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v3, 0xc

    const/4 v4, 0x0

    .line 460
    const-string v5, "Transaction timed out."

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    invoke-direct/range {p1 .. p7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 454
    :cond_b
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 455
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_MISSING_ENCRYPTION_KEYS:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v3, 0xc

    const/4 v4, 0x0

    .line 454
    const-string v5, "The reader is missing encryption keys required for taking payments and has disconnected. Reconnect to the reader to attempt to re-install the keys. If the error persists, contact support."

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    invoke-direct/range {p1 .. p7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 449
    :cond_c
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 450
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_BATTERY_CRITICALLY_LOW:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v3, 0xc

    const/4 v4, 0x0

    .line 449
    const-string v5, "Reader battery is critically low."

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    invoke-direct/range {p1 .. p7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 444
    :cond_d
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 445
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v3, 0xc

    const/4 v4, 0x0

    .line 444
    const-string v5, "User canceled the transaction."

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    invoke-direct/range {p1 .. p7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 367
    :cond_e
    move-object v0, v1

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    .line 368
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 369
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v3, 0xc

    const/4 v4, 0x0

    .line 368
    const-string v5, "No connected reader"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move-object/from16 p5, v7

    invoke-direct/range {p1 .. p7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 372
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast v0, Ljava/lang/Throwable;

    const/4 v3, 0x0

    new-array v3, v3, [Lkotlin/Pair;

    const-string v4, "paymentCollectionListener is not set."

    invoke-interface {v2, v4, v0, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 371
    throw v0
.end method

.method private final getSupportsSca()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository;->getAllowExtendedTransactions()Z

    move-result v0

    return v0
.end method

.method private final toCoreCart(Lcom/stripe/stripeterminal/external/models/Cart;)Lcom/stripe/cart/Cart;
    .locals 11

    .line 332
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Cart;->getLineItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 594
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 595
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 596
    check-cast v2, Lcom/stripe/stripeterminal/external/models/CartLineItem;

    .line 334
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CartLineItem;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 335
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CartLineItem;->getQuantity()I

    move-result v4

    .line 336
    new-instance v6, Lcom/stripe/currency/Amount;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CartLineItem;->getAmount()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Cart;->getCurrency()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v3, v7}, Lcom/stripe/currency/Amount;-><init>(JLjava/lang/String;)V

    .line 337
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 338
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 333
    new-instance v3, Lcom/stripe/cart/Item;

    invoke-direct/range {v3 .. v8}, Lcom/stripe/cart/Item;-><init>(ILjava/lang/String;Lcom/stripe/currency/Amount;Ljava/util/List;Ljava/util/List;)V

    .line 596
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 597
    :cond_0
    move-object v5, v1

    check-cast v5, Ljava/util/List;

    .line 341
    new-instance v9, Lcom/stripe/currency/Amount;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Cart;->getTax()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Cart;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v0, v1, v2}, Lcom/stripe/currency/Amount;-><init>(JLjava/lang/String;)V

    .line 342
    new-instance v10, Lcom/stripe/currency/Amount;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Cart;->getTotal()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Cart;->getCurrency()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v10, v0, v1, p1}, Lcom/stripe/currency/Amount;-><init>(JLjava/lang/String;)V

    .line 343
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 344
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 345
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 331
    new-instance v4, Lcom/stripe/cart/Cart;

    invoke-direct/range {v4 .. v10}, Lcom/stripe/cart/Cart;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;)V

    return-object v4
.end method

.method private final toScaRequirement(Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;)Lcom/stripe/paymentcollection/SCARequirement;
    .locals 1

    .line 579
    invoke-virtual {p1}, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->getRequirement()Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;

    move-result-object p1

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 582
    sget-object p1, Lcom/stripe/paymentcollection/SCARequirement;->ONLINE_OR_OFFLINE_PIN:Lcom/stripe/paymentcollection/SCARequirement;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 580
    :cond_1
    sget-object p1, Lcom/stripe/paymentcollection/SCARequirement;->GENERIC:Lcom/stripe/paymentcollection/SCARequirement;

    return-object p1
.end method

.method private final toTransactionType(Lcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/hardware/paymentcollection/TransactionType;
    .locals 1

    .line 517
    instance-of v0, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;

    if-eqz v0, :cond_0

    .line 518
    sget-object p1, Lcom/stripe/hardware/paymentcollection/TransactionType;->REFUND:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-object p1

    .line 520
    :cond_0
    instance-of v0, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    if-eqz v0, :cond_1

    .line 521
    sget-object p1, Lcom/stripe/hardware/paymentcollection/TransactionType;->CHARGE:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-object p1

    .line 523
    :cond_1
    instance-of v0, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    if-eqz v0, :cond_2

    .line 524
    sget-object p1, Lcom/stripe/hardware/paymentcollection/TransactionType;->STRONG_CUSTOMER_AUTHENTICATION:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-object p1

    .line 526
    :cond_2
    instance-of v0, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    if-eqz v0, :cond_3

    .line 527
    sget-object p1, Lcom/stripe/hardware/paymentcollection/TransactionType;->SETUP:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-object p1

    .line 529
    :cond_3
    instance-of p1, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;

    if-eqz p1, :cond_4

    .line 530
    sget-object p1, Lcom/stripe/hardware/paymentcollection/TransactionType;->MAGSTRIPE_PASSTHROUGH:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-object p1

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final updateCollectibleEmvPayment(Lcom/stripe/paymentcollection/EmvResult;)V
    .locals 9

    .line 536
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/SettingsRepository;->getSettings()Lcom/stripe/transaction/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/transaction/Settings;->getEmvTransactionType()Lcom/stripe/hardware/emv/EmvTransactionType;

    move-result-object v4

    .line 537
    sget-object v0, Lcom/stripe/hardware/emv/TlvMap;->Companion:Lcom/stripe/hardware/emv/TlvMap$Companion;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/EmvResult;->getEmvBlob()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/hardware/emv/TlvMap$Companion;->toTlvMap(Ljava/lang/String;)Lcom/stripe/hardware/emv/TlvMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/hardware/emv/TlvMap;->getSourceType()Lcom/stripe/hardware/emv/SourceType;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/stripe/hardware/emv/SourceType;->CARD_PRESENT:Lcom/stripe/hardware/emv/SourceType;

    :cond_1
    move-object v5, v0

    .line 538
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/EmvResult;->getInterfaceType()Lcom/stripe/hardware/emv/InterfaceType;

    move-result-object v3

    .line 540
    new-instance v1, Lcom/stripe/transaction/payment/EmvPayment;

    .line 541
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/EmvResult;->getEmvBlob()Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 540
    invoke-direct/range {v1 .. v8}, Lcom/stripe/transaction/payment/EmvPayment;-><init>(Ljava/lang/String;Lcom/stripe/hardware/emv/InterfaceType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/emv/SourceType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 547
    new-instance p1, Lcom/stripe/transaction/CollectiblePayment;

    check-cast v1, Lcom/stripe/transaction/payment/Payment;

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->getSupportsSca()Z

    move-result v0

    invoke-direct {p1, v1, v3, v0}, Lcom/stripe/transaction/CollectiblePayment;-><init>(Lcom/stripe/transaction/payment/Payment;Lcom/stripe/hardware/emv/InterfaceType;Z)V

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->setCollectiblePayment(Lcom/stripe/transaction/CollectiblePayment;)V

    return-void
.end method

.method private final updateCollectibleManualEntryPayment(Lcom/stripe/paymentcollection/ManualEntryResult;)V
    .locals 9

    .line 483
    new-instance v0, Lcom/stripe/transaction/CollectiblePayment;

    .line 484
    new-instance v1, Lcom/stripe/transaction/payment/ManualEntryPayment;

    .line 485
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/ManualEntryResult;->getData()Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;->getEncPAN()Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/ManualEntryResult;->getData()Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;->getExpiryDate()Ljava/lang/String;

    move-result-object v3

    .line 487
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/ManualEntryResult;->getData()Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;->getEncCVV()Ljava/lang/String;

    move-result-object v4

    .line 488
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/ManualEntryResult;->getData()Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;->getMaskedPan()Ljava/lang/String;

    move-result-object v5

    .line 489
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/ManualEntryResult;->getData()Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;->getKsn()Ljava/lang/String;

    move-result-object v6

    .line 490
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/ManualEntryResult;->getData()Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;->getPosEntryMode()Ljava/lang/String;

    move-result-object v7

    .line 491
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/ManualEntryResult;->getData()Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/manualentry/ManualEntryResultModel;->getZipCode()Ljava/lang/String;

    move-result-object v8

    .line 484
    invoke-direct/range {v1 .. v8}, Lcom/stripe/transaction/payment/ManualEntryPayment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lcom/stripe/transaction/payment/Payment;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 483
    invoke-direct/range {v0 .. v5}, Lcom/stripe/transaction/CollectiblePayment;-><init>(Lcom/stripe/transaction/payment/Payment;Lcom/stripe/hardware/emv/InterfaceType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->setCollectiblePayment(Lcom/stripe/transaction/CollectiblePayment;)V

    return-void
.end method

.method private final updateCollectibleMsrPayment(Lcom/stripe/paymentcollection/MsrResult;)V
    .locals 9

    .line 552
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/MsrResult;->getMagStripeReadSuccess()Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    move-result-object v0

    .line 553
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/MsrResult;->getCollectionAuthority()Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    move-result-object p1

    .line 554
    new-instance v1, Lcom/stripe/transaction/payment/MagstripePayment;

    .line 555
    invoke-virtual {v0}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->getEncryptedTrack2()Ljava/lang/String;

    move-result-object v2

    .line 556
    invoke-virtual {v0}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->getKsn()Ljava/lang/String;

    move-result-object v3

    .line 557
    invoke-virtual {v0}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->getMaskedPan()Ljava/lang/String;

    move-result-object v4

    .line 558
    invoke-virtual {v0}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->getExpiryDate()Ljava/lang/String;

    move-result-object v5

    .line 559
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->asFallbackReason(Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;)Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;

    move-result-object v6

    .line 560
    invoke-virtual {v0}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->getEpb()Ljava/lang/String;

    move-result-object v7

    .line 561
    invoke-virtual {v0}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->getEpbKsn()Ljava/lang/String;

    move-result-object v8

    .line 554
    invoke-direct/range {v1 .. v8}, Lcom/stripe/transaction/payment/MagstripePayment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    new-instance v2, Lcom/stripe/transaction/CollectiblePayment;

    move-object v3, v1

    check-cast v3, Lcom/stripe/transaction/payment/Payment;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/stripe/transaction/CollectiblePayment;-><init>(Lcom/stripe/transaction/payment/Payment;Lcom/stripe/hardware/emv/InterfaceType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->setCollectiblePayment(Lcom/stripe/transaction/CollectiblePayment;)V

    return-void
.end method

.method private final updateCollectibleNonCardPaymentMethodPayment(Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationResult;)V
    .locals 6

    .line 497
    new-instance v0, Lcom/stripe/transaction/CollectiblePayment;

    .line 498
    new-instance v1, Lcom/stripe/transaction/payment/NonCardPayment;

    .line 499
    invoke-virtual {p1}, Lcom/stripe/paymentcollection/NonCardPaymentMethodConfirmationResult;->getPaymentMethodType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object p1

    .line 498
    invoke-direct {v1, p1}, Lcom/stripe/transaction/payment/NonCardPayment;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V

    check-cast v1, Lcom/stripe/transaction/payment/Payment;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 497
    invoke-direct/range {v0 .. v5}, Lcom/stripe/transaction/CollectiblePayment;-><init>(Lcom/stripe/transaction/payment/Payment;Lcom/stripe/hardware/emv/InterfaceType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->setCollectiblePayment(Lcom/stripe/transaction/CollectiblePayment;)V

    return-void
.end method

.method private final updateTipResult(Lcom/stripe/paymentcollection/TippingState$EndState;)V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    .line 476
    sget-object v1, Lcom/stripe/paymentcollection/TippingState$Ineligible;->INSTANCE:Lcom/stripe/paymentcollection/TippingState$Ineligible;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 478
    :cond_0
    instance-of v1, p1, Lcom/stripe/paymentcollection/TippingState$Completed;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/stripe/paymentcollection/TippingState$Completed;

    invoke-virtual {p1}, Lcom/stripe/paymentcollection/TippingState$Completed;->getResult()Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/hardware/paymentcollection/TippingSelectionResult;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object p1

    .line 473
    :goto_0
    invoke-virtual {v0, p1}, Lcom/stripe/core/transaction/TransactionRepository;->setAmountTip(Lcom/stripe/currency/Amount;)V

    return-void

    .line 478
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final cancelCollectPaymentMethod()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "cancelCollectPaymentMethod"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 278
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->paymentCollectionCoordinator:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->cancelPaymentMethodCollection()Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final collectPaymentMethod(Lcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "paymentMethodCollectionType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-direct/range {p0 .. p1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->toTransactionType(Lcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object v2

    move-object v3, v2

    .line 152
    invoke-interface {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v2

    .line 154
    instance-of v4, v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    if-eqz v4, :cond_0

    new-instance v5, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;

    .line 155
    move-object v6, v1

    check-cast v6, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    move-object v7, v6

    invoke-virtual {v7}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getSkipTipping()Z

    move-result v6

    move-object v8, v7

    .line 156
    invoke-virtual {v8}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getManualEntry()Z

    move-result v7

    move-object v9, v8

    .line 157
    invoke-virtual {v9}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->isOffline()Z

    move-result v8

    move-object v10, v9

    .line 158
    invoke-virtual {v10}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->isDeferredAuthorizationCountry()Z

    move-result v9

    move-object v11, v10

    .line 159
    invoke-virtual {v11}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getTipEligibleAmount()Lcom/stripe/currency/Amount;

    move-result-object v10

    move-object v12, v11

    .line 160
    invoke-virtual {v12}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getDomesticDebitPriority()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    move-result-object v11

    move-object v13, v12

    .line 161
    invoke-interface {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType;->getEnableCustomerCancellation()Z

    move-result v12

    move-object v14, v13

    .line 162
    invoke-virtual {v14}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getSurchargeNotice()Ljava/lang/String;

    move-result-object v13

    move-object v15, v14

    .line 163
    invoke-virtual {v15}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getNonCardPaymentMethodTypes()Ljava/util/List;

    move-result-object v14

    move-object/from16 v16, v15

    .line 164
    invoke-virtual/range {v16 .. v16}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getRequestIncrementalAuthorizationSupport()Z

    move-result v15

    .line 165
    invoke-virtual/range {v16 .. v16}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getForcePinEntry()Z

    move-result v16

    .line 154
    invoke-direct/range {v5 .. v16}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;-><init>(ZZZZLcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZ)V

    goto/16 :goto_1

    .line 168
    :cond_0
    instance-of v5, v1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    if-eqz v5, :cond_1

    new-instance v6, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;

    .line 170
    move-object v5, v1

    check-cast v5, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    invoke-virtual {v5}, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->getManualEntry()Z

    move-result v8

    .line 171
    invoke-virtual {v5}, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->isOffline()Z

    move-result v9

    .line 172
    invoke-virtual {v5}, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->isDeferredAuthorizationCountry()Z

    move-result v10

    .line 175
    invoke-interface {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType;->getEnableCustomerCancellation()Z

    move-result v13

    .line 177
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    .line 179
    invoke-virtual {v5}, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->getForcePinEntryEnabled()Z

    move-result v17

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 168
    invoke-direct/range {v6 .. v17}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;-><init>(ZZZZLcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZ)V

    :goto_0
    move-object v5, v6

    goto :goto_1

    .line 182
    :cond_1
    instance-of v5, v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;

    if-eqz v5, :cond_2

    .line 183
    new-instance v6, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;

    .line 190
    invoke-interface {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType;->getEnableCustomerCancellation()Z

    move-result v13

    .line 192
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 183
    invoke-direct/range {v6 .. v17}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;-><init>(ZZZZLcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZ)V

    goto :goto_0

    .line 198
    :cond_2
    instance-of v5, v1, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    if-eqz v5, :cond_3

    .line 199
    new-instance v6, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;

    .line 206
    invoke-interface {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType;->getEnableCustomerCancellation()Z

    move-result v13

    .line 208
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 199
    invoke-direct/range {v6 .. v17}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;-><init>(ZZZZLcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZ)V

    goto :goto_0

    .line 214
    :cond_3
    instance-of v5, v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;

    if-eqz v5, :cond_a

    .line 215
    new-instance v6, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;

    .line 222
    invoke-interface {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType;->getEnableCustomerCancellation()Z

    move-result v13

    .line 224
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 215
    invoke-direct/range {v6 .. v17}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;-><init>(ZZZZLcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZ)V

    goto :goto_0

    .line 231
    :goto_1
    invoke-virtual {v5}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->getManualEntry()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    .line 232
    iget-object v6, v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v8, 0x0

    new-array v8, v8, [Lkotlin/Pair;

    const-string v9, "Tipping is not supported for MOTO (manual entry) transactions, disabling tipping"

    invoke-interface {v6, v9, v8}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    move v6, v7

    goto :goto_2

    .line 235
    :cond_4
    invoke-virtual {v5}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->getSkipTipping()Z

    move-result v6

    .line 239
    :goto_2
    instance-of v8, v1, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    if-eqz v8, :cond_5

    .line 240
    check-cast v1, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->toScaRequirement(Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;)Lcom/stripe/paymentcollection/SCARequirement;

    move-result-object v1

    :goto_3
    move-object v4, v5

    goto :goto_6

    .line 243
    :cond_5
    instance-of v8, v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;

    if-eqz v8, :cond_6

    move v4, v7

    :cond_6
    if-eqz v4, :cond_7

    move v4, v7

    goto :goto_4

    .line 245
    :cond_7
    instance-of v4, v1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    :goto_4
    if-eqz v4, :cond_8

    goto :goto_5

    .line 246
    :cond_8
    instance-of v7, v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;

    :goto_5
    if-eqz v7, :cond_9

    const/4 v1, 0x0

    goto :goto_3

    .line 256
    :goto_6
    invoke-virtual {v4}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->getManualEntry()Z

    move-result v5

    move-object v7, v4

    move v4, v6

    .line 257
    invoke-virtual {v7}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->isOffline()Z

    move-result v6

    move-object v8, v7

    .line 258
    invoke-virtual {v8}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->getTipEligibleAmount()Lcom/stripe/currency/Amount;

    move-result-object v7

    move-object v9, v8

    .line 259
    invoke-virtual {v9}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->isDeferredAuthorizationCountry()Z

    move-result v8

    move-object v10, v9

    .line 260
    invoke-virtual {v10}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->getDomesticDebitPriority()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    move-result-object v9

    move-object v11, v10

    .line 261
    invoke-virtual {v11}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->getEnableCustomerCancellation()Z

    move-result v10

    move-object v12, v11

    .line 262
    invoke-virtual {v12}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->getSurchargeNotice()Ljava/lang/String;

    move-result-object v11

    move-object v13, v12

    .line 263
    invoke-virtual {v13}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->getNonCardPaymentMethodTypes()Ljava/util/List;

    move-result-object v12

    move-object v14, v13

    .line 264
    invoke-virtual {v14}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->getRequestIncrementalAuthorizationSupport()Z

    move-result v13

    .line 265
    invoke-virtual {v14}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$Config;->getForcePinEntry()Z

    move-result v14

    move-object/from16 v18, v3

    move-object v3, v1

    move-object/from16 v1, v18

    .line 251
    invoke-direct/range {v0 .. v14}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->collectPaymentMethodHelper(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/SCARequirement;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZ)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v1

    return-object v1

    .line 247
    :cond_9
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 215
    :cond_a
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final getCollectiblePayment()Lcom/stripe/transaction/CollectiblePayment;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository;->getCollectiblePayment()Lcom/stripe/transaction/CollectiblePayment;

    move-result-object v0

    return-object v0
.end method

.method public final getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->paymentCollectionListener$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionListener;

    return-object v0
.end method

.method public final handleAuthResponse(Ljava/lang/String;)Lkotlinx/coroutines/Deferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;"
        }
    .end annotation

    const-string v0, "tlvBlob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->paymentCollectionCoordinator:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-virtual {v0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->handleOnlineAuthResponse(Ljava/lang/String;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1
.end method

.method public final handleNonCardPaymentMethodConfirmationResponse(Lcom/stripe/transaction/NonCardPaymentMethodData;)V
    .locals 9

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$handleNonCardPaymentMethodConfirmationResponse$nonCardPaymentMethodActionResult$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$handleNonCardPaymentMethodConfirmationResponse$nonCardPaymentMethodActionResult$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/transaction/NonCardPaymentMethodData;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/hardware/emv/TransactionResult;

    .line 306
    invoke-virtual {v0}, Lcom/stripe/hardware/emv/TransactionResult;->getResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, p1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    .line 316
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 317
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 316
    const-string v3, "Unexpected error handling non-card payment method confirmation."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 311
    :cond_0
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 312
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 311
    const-string v4, "User canceled payment with non-card method."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    :cond_1
    return-void
.end method

.method public final onChargeAttemptChanged(Lcom/stripe/transaction/ChargeAttempt;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->paymentCollectionCoordinator:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-virtual {v0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->updateChargeAttempt(Lcom/stripe/transaction/ChargeAttempt;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final onCollectPaymentMethodApiError()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->paymentCollectionCoordinator:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onCollectPaymentMethodApiError()Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->paymentCollectionCoordinator:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-virtual {v0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V

    return-void
.end method

.method public final onReaderDisconnected()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->paymentCollectionCoordinator:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->onHardwareTransactionCanceled()V

    return-void
.end method

.method public final readReusableCard()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 15

    .line 126
    sget-object v1, Lcom/stripe/hardware/paymentcollection/TransactionType;->REUSABLE_CARD:Lcom/stripe/hardware/paymentcollection/TransactionType;

    .line 127
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->REUSABLE_CARD_AMOUNT:Lcom/stripe/currency/Amount;

    .line 137
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    .line 125
    invoke-direct/range {v0 .. v14}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->collectPaymentMethodHelper(Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/currency/Amount;Lcom/stripe/paymentcollection/SCARequirement;ZZZLcom/stripe/currency/Amount;ZLcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;ZLjava/lang/String;Ljava/util/List;ZZ)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v1

    return-object v1
.end method

.method public final selectDynamicCurrencyConversion(Lcom/stripe/transaction/DynamicCurrencyConversionData;)V
    .locals 2

    const-string v0, "dynamicCurrencyConversionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$selectDynamicCurrencyConversion$result$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper$selectDynamicCurrencyConversion$result$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/transaction/DynamicCurrencyConversionData;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 273
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0, p1}, Lcom/stripe/core/transaction/TransactionRepository;->setDynamicCurrencyConversionSelected(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setCollectiblePayment(Lcom/stripe/transaction/CollectiblePayment;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0, p1}, Lcom/stripe/core/transaction/TransactionRepository;->setCollectiblePayment(Lcom/stripe/transaction/CollectiblePayment;)V

    return-void
.end method

.method public final setPaymentCollectionListener(Lcom/stripe/paymentcollection/PaymentCollectionListener;)V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->paymentCollectionListener$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;)V
    .locals 2

    const-string v0, "cart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->paymentCollectionCoordinator:Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->toCoreCart(Lcom/stripe/stripeterminal/external/models/Cart;)Lcom/stripe/cart/Cart;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;->displayCart(Lcom/stripe/cart/Cart;Lcom/stripe/paymentcollection/PaymentCollectionListener;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final updateDevicePaymentCapability(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 3

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/Adapter;->Companion:Lcom/stripe/stripeterminal/internal/common/Adapter$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter$Companion;->getPaymentCollectionCapability(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    move-result-object p1

    .line 325
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updating devicePaymentCapability to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 326
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0, p1}, Lcom/stripe/core/transaction/TransactionRepository;->setDevicePaymentCapability(Lcom/stripe/transaction/PaymentCollectionDeviceCapability;)V

    return-void
.end method
