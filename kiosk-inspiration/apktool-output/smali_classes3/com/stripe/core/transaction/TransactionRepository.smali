.class public final Lcom/stripe/core/transaction/TransactionRepository;
.super Ljava/lang/Object;
.source "TransactionRepository.kt"

# interfaces
.implements Lcom/stripe/restclient/CoreTransactionRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/transaction/TransactionRepository$Companion;,
        Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionRepository.kt\ncom/stripe/core/transaction/TransactionRepository\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,438:1\n16#2:439\n*S KotlinDebug\n*F\n+ 1 TransactionRepository.kt\ncom/stripe/core/transaction/TransactionRepository\n*L\n37#1:439\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00dc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 \u00a4\u00012\u00020\u0001:\u0004\u00a4\u0001\u00a5\u0001B\u0017\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u008c\u0001\u001a\u00030\u008d\u0001J\u0008\u0010\u008e\u0001\u001a\u00030\u008d\u0001J\u0008\u0010\u008f\u0001\u001a\u00030\u008d\u0001J\n\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u0091\u0001J\u0011\u0010\u0092\u0001\u001a\u00020\u000b2\u0008\u0010\u0093\u0001\u001a\u00030\u0094\u0001J\u0007\u0010\u0095\u0001\u001a\u00020\u0014J\u0008\u0010\u0096\u0001\u001a\u00030\u008d\u0001J\u0008\u0010\u0097\u0001\u001a\u00030\u008d\u0001J\u001c\u0010\u0098\u0001\u001a\u00030\u008d\u00012\u0008\u0010\u0099\u0001\u001a\u00030\u009a\u00012\u0008\u0010\u009b\u0001\u001a\u00030\u009c\u0001J\u001d\u0010\u009d\u0001\u001a\u00030\u008d\u00012\u0008\u0010f\u001a\u0004\u0018\u00010\u000b2\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u000bJ\u001d\u0010\u009e\u0001\u001a\u00030\u008d\u00012\u0008\u0010\u0093\u0001\u001a\u00030\u0094\u00012\u0007\u0010\u009f\u0001\u001a\u00020\u000bH\u0016J\u0011\u0010\u00a0\u0001\u001a\u00030\u008d\u00012\u0007\u0010\u00a1\u0001\u001a\u00020&J\u0011\u0010\u00a2\u0001\u001a\u00030\u008d\u00012\u0007\u0010\u00a3\u0001\u001a\u00020\tR\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R/\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012*\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0013\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R(\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00188F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR(\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u001e8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u0017\u0010$\u001a\u0008\u0012\u0004\u0012\u00020&0%\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R(\u0010*\u001a\u0004\u0018\u00010)2\u0008\u0010\u0017\u001a\u0004\u0018\u00010)8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R(\u0010/\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000b8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00080\u0010\u0010\"\u0004\u00081\u0010\u0012R+\u00103\u001a\u0002022\u0006\u0010\n\u001a\u0002028F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108*\u0004\u00084\u0010\u000eR7\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u000b092\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b098F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?*\u0004\u0008;\u0010\u000eR$\u0010@\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00148F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008A\u0010\u0016\"\u0004\u0008B\u0010CR(\u0010D\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00148F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR(\u0010J\u001a\u0004\u0018\u00010I2\u0008\u0010\u0017\u001a\u0004\u0018\u00010I8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010NR(\u0010P\u001a\u0004\u0018\u00010O2\u0008\u0010\u0017\u001a\u0004\u0018\u00010O8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\u0011\u0010U\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008U\u0010\u0016R\u0011\u0010V\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008V\u0010\u0016R/\u0010W\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008Y\u0010\u0010\"\u0004\u0008Z\u0010\u0012*\u0004\u0008X\u0010\u000eR\u001e\u0010[\u001a\u0012\u0012\u0004\u0012\u00020]\u0012\u0004\u0012\u00020^0\\j\u0002`_X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010a\u001a\u0004\u0018\u00010`2\u0008\u0010\u0017\u001a\u0004\u0018\u00010`8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010eR\u0013\u0010f\u001a\u0004\u0018\u00010\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008g\u0010\u0010R(\u0010i\u001a\u0004\u0018\u00010h2\u0008\u0010\u0017\u001a\u0004\u0018\u00010h8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008j\u0010k\"\u0004\u0008l\u0010mR/\u0010o\u001a\u0004\u0018\u00010n2\u0008\u0010\n\u001a\u0004\u0018\u00010n8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008q\u0010r\"\u0004\u0008s\u0010t*\u0004\u0008p\u0010\u000eR/\u0010v\u001a\u0004\u0018\u00010u2\u0008\u0010\n\u001a\u0004\u0018\u00010u8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008x\u0010y\"\u0004\u0008z\u0010{*\u0004\u0008w\u0010\u000eR/\u0010|\u001a\u0004\u0018\u00010u2\u0008\u0010\n\u001a\u0004\u0018\u00010u8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\u001a\u0004\u0008~\u0010y\"\u0004\u0008\u007f\u0010{*\u0004\u0008}\u0010\u000eR\u0016\u0010\u0080\u0001\u001a\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0081\u0001\u0010\u0016R\u0015\u0010\u0082\u0001\u001a\u00030\u0083\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0015\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u000b8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0087\u0001\u0010\u0010R\u001b\u0010\u0088\u0001\u001a\t\u0012\u0004\u0012\u00020\t0\u0089\u0001\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u008a\u0001\u0010\u008b\u0001\u00a8\u0006\u00a6\u0001"
    }
    d2 = {
        "Lcom/stripe/core/transaction/TransactionRepository;",
        "Lcom/stripe/restclient/CoreTransactionRepository;",
        "settingsRepository",
        "Lcom/stripe/core/transaction/SettingsRepository;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "_transactionStateSummaryFlow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/stripe/core/transaction/TransactionStateSummary;",
        "<set-?>",
        "",
        "accountId",
        "getAccountId$delegate",
        "(Lcom/stripe/core/transaction/TransactionRepository;)Ljava/lang/Object;",
        "getAccountId",
        "()Ljava/lang/String;",
        "setAccountId",
        "(Ljava/lang/String;)V",
        "allowExtendedTransactions",
        "",
        "getAllowExtendedTransactions",
        "()Z",
        "value",
        "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "allowRedisplay",
        "getAllowRedisplay",
        "()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "setAllowRedisplay",
        "(Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V",
        "Lcom/stripe/currency/Amount;",
        "amountTip",
        "getAmountTip",
        "()Lcom/stripe/currency/Amount;",
        "setAmountTip",
        "(Lcom/stripe/currency/Amount;)V",
        "cardStatusFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;",
        "getCardStatusFlow",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "Lcom/stripe/transaction/CollectiblePayment;",
        "collectiblePayment",
        "getCollectiblePayment",
        "()Lcom/stripe/transaction/CollectiblePayment;",
        "setCollectiblePayment",
        "(Lcom/stripe/transaction/CollectiblePayment;)V",
        "connectionToken",
        "getConnectionToken",
        "setConnectionToken",
        "Lcom/stripe/transaction/PaymentCollectionDeviceCapability;",
        "devicePaymentCapability",
        "getDevicePaymentCapability$delegate",
        "getDevicePaymentCapability",
        "()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;",
        "setDevicePaymentCapability",
        "(Lcom/stripe/transaction/PaymentCollectionDeviceCapability;)V",
        "",
        "domesticDebitAids",
        "getDomesticDebitAids$delegate",
        "getDomesticDebitAids",
        "()Ljava/util/List;",
        "setDomesticDebitAids",
        "(Ljava/util/List;)V",
        "dynamicCurrencyConversionOfferPresented",
        "getDynamicCurrencyConversionOfferPresented",
        "setDynamicCurrencyConversionOfferPresented",
        "(Z)V",
        "dynamicCurrencyConversionSelected",
        "getDynamicCurrencyConversionSelected",
        "()Ljava/lang/Boolean;",
        "setDynamicCurrencyConversionSelected",
        "(Ljava/lang/Boolean;)V",
        "Lcom/stripe/restclient/IntegrationType;",
        "integrationType",
        "getIntegrationType",
        "()Lcom/stripe/restclient/IntegrationType;",
        "setIntegrationType",
        "(Lcom/stripe/restclient/IntegrationType;)V",
        "Lkotlinx/coroutines/Job;",
        "interstitialJob",
        "getInterstitialJob",
        "()Lkotlinx/coroutines/Job;",
        "setInterstitialJob",
        "(Lkotlinx/coroutines/Job;)V",
        "isInTransaction",
        "isInValidTransaction",
        "localNetworkSessionToken",
        "getLocalNetworkSessionToken$delegate",
        "getLocalNetworkSessionToken",
        "setLocalNetworkSessionToken",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "nonCardPaymentMethodType",
        "getNonCardPaymentMethodType",
        "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "setNonCardPaymentMethodType",
        "(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V",
        "paymentIntentId",
        "getPaymentIntentId",
        "Lcom/stripe/core/transaction/ConfirmRefundParams;",
        "refundParams",
        "getRefundParams",
        "()Lcom/stripe/core/transaction/ConfirmRefundParams;",
        "setRefundParams",
        "(Lcom/stripe/core/transaction/ConfirmRefundParams;)V",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "remotePosDeviceInfo",
        "getRemotePosDeviceInfo$delegate",
        "getRemotePosDeviceInfo",
        "()Lcom/stripe/proto/model/common/DeviceInfo;",
        "setRemotePosDeviceInfo",
        "(Lcom/stripe/proto/model/common/DeviceInfo;)V",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
        "remotePosSdkVersionInfo",
        "getRemotePosSdkVersionInfo$delegate",
        "getRemotePosSdkVersionInfo",
        "()Lcom/stripe/proto/model/common/VersionInfoPb;",
        "setRemotePosSdkVersionInfo",
        "(Lcom/stripe/proto/model/common/VersionInfoPb;)V",
        "remotePosSecondarySdkVersionInfo",
        "getRemotePosSecondarySdkVersionInfo$delegate",
        "getRemotePosSecondarySdkVersionInfo",
        "setRemotePosSecondarySdkVersionInfo",
        "remotePosSupportsExtendedTransactions",
        "getRemotePosSupportsExtendedTransactions",
        "settings",
        "Lcom/stripe/transaction/Settings;",
        "getSettings",
        "()Lcom/stripe/transaction/Settings;",
        "stripeAccountId",
        "getStripeAccountId",
        "transactionStateSummaryFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "getTransactionStateSummaryFlow",
        "()Lkotlinx/coroutines/flow/Flow;",
        "clearRemotePosInfo",
        "",
        "clearTipAmount",
        "clearTransactionContext",
        "getCancelableOperationContext",
        "Lcom/stripe/core/transaction/CancelableOperationContext;",
        "getRequestId",
        "opType",
        "Lcom/stripe/restclient/TransactionOpType;",
        "isInterstitialJobCancelable",
        "resetContext",
        "resetTransactionState",
        "setCancelableOperationContext",
        "cancelableOperation",
        "Lcom/stripe/stripeterminal/external/callable/Cancelable;",
        "cancelableOperationType",
        "Lcom/stripe/core/transaction/CancelableOperationType;",
        "setPaymentIntentId",
        "setRequestId",
        "requestId",
        "updateCardStatus",
        "cardStatus",
        "updateState",
        "state",
        "Companion",
        "TransactionContext",
        "transaction_release"
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
.field public static final Companion:Lcom/stripe/core/transaction/TransactionRepository$Companion;

.field private static _accountId:Ljava/lang/String;

.field private static final _cardStatusFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;",
            ">;"
        }
    .end annotation
.end field

.field private static _connectionToken:Ljava/lang/String;

.field private static _devicePaymentCapability:Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

.field private static _domesticDebitAids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static _localNetworkSessionToken:Ljava/lang/String;

.field private static _remotePosDeviceInfo:Lcom/stripe/proto/model/common/DeviceInfo;

.field private static _remotePosSdkVersionInfo:Lcom/stripe/proto/model/common/VersionInfoPb;

.field private static _remotePosSecondarySdkVersionInfo:Lcom/stripe/proto/model/common/VersionInfoPb;

.field private static currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;


# instance fields
.field private final _transactionStateSummaryFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/stripe/core/transaction/TransactionStateSummary;",
            ">;"
        }
    .end annotation
.end field

.field private final cardStatusFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;",
            ">;"
        }
    .end annotation
.end field

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

.field private final settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

.field private final transactionStateSummaryFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/transaction/TransactionStateSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/stripe/core/transaction/TransactionRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/transaction/TransactionRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/transaction/TransactionRepository;->Companion:Lcom/stripe/core/transaction/TransactionRepository$Companion;

    .line 46
    new-instance v2, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    const/16 v16, 0x1fff

    const/16 v17, 0x0

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

    invoke-direct/range {v2 .. v17}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;-><init>(Ljava/util/EnumMap;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/CollectiblePayment;Lcom/stripe/core/transaction/CancelableOperationContext;Lkotlinx/coroutines/Job;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/transaction/ConfirmRefundParams;ZLjava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    .line 56
    sget-object v0, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->EMPTY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    .line 55
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/transaction/TransactionRepository;->_cardStatusFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 80
    invoke-static {}, Lcom/stripe/transaction/PaymentCollectionDeviceCapabilityKt;->getDEFAULT_PAYMENT_COLLECTION_CAPABILITY()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/transaction/TransactionRepository;->_devicePaymentCapability:Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    .line 90
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/transaction/TransactionRepository;->_domesticDebitAids:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "settingsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionRepository;->settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    .line 439
    const-class p1, Lcom/stripe/core/transaction/TransactionRepository;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 99
    sget-object p1, Lcom/stripe/core/transaction/TransactionStateSummary$Empty;->INSTANCE:Lcom/stripe/core/transaction/TransactionStateSummary$Empty;

    .line 98
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionRepository;->_transactionStateSummaryFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 101
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionRepository;->transactionStateSummaryFlow:Lkotlinx/coroutines/flow/Flow;

    .line 106
    sget-object p1, Lcom/stripe/core/transaction/TransactionRepository;->_cardStatusFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/transaction/TransactionRepository;->cardStatusFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method private static getAccountId$delegate(Lcom/stripe/core/transaction/TransactionRepository;)Ljava/lang/Object;
    .locals 6

    .line 279
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    sget-object v1, Lcom/stripe/core/transaction/TransactionRepository;->Companion:Lcom/stripe/core/transaction/TransactionRepository$Companion;

    const-class v2, Lcom/stripe/core/transaction/TransactionRepository$Companion;

    const-string v4, "get_accountId()Ljava/lang/String;"

    const/4 v5, 0x0

    const-string v3, "_accountId"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/internal/MutablePropertyReference0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object p0

    return-object p0
.end method

.method private static getDevicePaymentCapability$delegate(Lcom/stripe/core/transaction/TransactionRepository;)Ljava/lang/Object;
    .locals 6

    .line 267
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    sget-object v1, Lcom/stripe/core/transaction/TransactionRepository;->Companion:Lcom/stripe/core/transaction/TransactionRepository$Companion;

    const-class v2, Lcom/stripe/core/transaction/TransactionRepository$Companion;

    const-string v4, "get_devicePaymentCapability()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;"

    const/4 v5, 0x0

    const-string v3, "_devicePaymentCapability"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/internal/MutablePropertyReference0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object p0

    return-object p0
.end method

.method private static getDomesticDebitAids$delegate(Lcom/stripe/core/transaction/TransactionRepository;)Ljava/lang/Object;
    .locals 6

    .line 294
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    sget-object v1, Lcom/stripe/core/transaction/TransactionRepository;->Companion:Lcom/stripe/core/transaction/TransactionRepository$Companion;

    const-class v2, Lcom/stripe/core/transaction/TransactionRepository$Companion;

    const-string v4, "get_domesticDebitAids()Ljava/util/List;"

    const/4 v5, 0x0

    const-string v3, "_domesticDebitAids"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/internal/MutablePropertyReference0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object p0

    return-object p0
.end method

.method private static getLocalNetworkSessionToken$delegate(Lcom/stripe/core/transaction/TransactionRepository;)Ljava/lang/Object;
    .locals 6

    .line 274
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    sget-object v1, Lcom/stripe/core/transaction/TransactionRepository;->Companion:Lcom/stripe/core/transaction/TransactionRepository$Companion;

    const-class v2, Lcom/stripe/core/transaction/TransactionRepository$Companion;

    const-string v4, "get_localNetworkSessionToken()Ljava/lang/String;"

    const/4 v5, 0x0

    const-string v3, "_localNetworkSessionToken"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/internal/MutablePropertyReference0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object p0

    return-object p0
.end method

.method private static getRemotePosDeviceInfo$delegate(Lcom/stripe/core/transaction/TransactionRepository;)Ljava/lang/Object;
    .locals 6

    .line 261
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    sget-object v1, Lcom/stripe/core/transaction/TransactionRepository;->Companion:Lcom/stripe/core/transaction/TransactionRepository$Companion;

    const-class v2, Lcom/stripe/core/transaction/TransactionRepository$Companion;

    const-string v4, "get_remotePosDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;"

    const/4 v5, 0x0

    const-string v3, "_remotePosDeviceInfo"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/internal/MutablePropertyReference0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object p0

    return-object p0
.end method

.method private static getRemotePosSdkVersionInfo$delegate(Lcom/stripe/core/transaction/TransactionRepository;)Ljava/lang/Object;
    .locals 6

    .line 251
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    sget-object v1, Lcom/stripe/core/transaction/TransactionRepository;->Companion:Lcom/stripe/core/transaction/TransactionRepository$Companion;

    const-class v2, Lcom/stripe/core/transaction/TransactionRepository$Companion;

    const-string v4, "get_remotePosSdkVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;"

    const/4 v5, 0x0

    const-string v3, "_remotePosSdkVersionInfo"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/internal/MutablePropertyReference0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object p0

    return-object p0
.end method

.method private static getRemotePosSecondarySdkVersionInfo$delegate(Lcom/stripe/core/transaction/TransactionRepository;)Ljava/lang/Object;
    .locals 6

    .line 256
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    sget-object v1, Lcom/stripe/core/transaction/TransactionRepository;->Companion:Lcom/stripe/core/transaction/TransactionRepository$Companion;

    const-class v2, Lcom/stripe/core/transaction/TransactionRepository$Companion;

    const-string v4, "get_remotePosSecondarySdkVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;"

    const/4 v5, 0x0

    const-string v3, "_remotePosSecondarySdkVersionInfo"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/internal/MutablePropertyReference0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object p0

    return-object p0
.end method

.method private final getRemotePosSupportsExtendedTransactions()Z
    .locals 2

    .line 246
    invoke-virtual {p0}, Lcom/stripe/core/transaction/TransactionRepository;->getIntegrationType()Lcom/stripe/restclient/IntegrationType;

    move-result-object v0

    sget-object v1, Lcom/stripe/restclient/IntegrationType;->SERVER_DRIVEN:Lcom/stripe/restclient/IntegrationType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/stripe/core/transaction/TransactionRepository;->getRemotePosSdkVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/stripe/core/transaction/TransactionRepositoryKt;->allowExtendedTransactions(Lcom/stripe/proto/model/common/VersionInfoPb;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final clearRemotePosInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, v0}, Lcom/stripe/core/transaction/TransactionRepository;->setRemotePosSdkVersionInfo(Lcom/stripe/proto/model/common/VersionInfoPb;)V

    .line 199
    invoke-virtual {p0, v0}, Lcom/stripe/core/transaction/TransactionRepository;->setRemotePosSecondarySdkVersionInfo(Lcom/stripe/proto/model/common/VersionInfoPb;)V

    .line 200
    invoke-virtual {p0, v0}, Lcom/stripe/core/transaction/TransactionRepository;->setRemotePosDeviceInfo(Lcom/stripe/proto/model/common/DeviceInfo;)V

    return-void
.end method

.method public final clearTipAmount()V
    .locals 2

    .line 185
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->setAmountTip(Lcom/stripe/currency/Amount;)V

    return-void
.end method

.method public final clearTransactionContext()V
    .locals 20

    move-object/from16 v0, p0

    .line 189
    iget-object v1, v0, Lcom/stripe/core/transaction/TransactionRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "clearTransactionContext()"

    invoke-interface {v1, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 192
    new-instance v4, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    .line 193
    sget-object v1, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v1}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->getInterstitialJob()Lkotlinx/coroutines/Job;

    move-result-object v9

    const/16 v18, 0x1fef

    const/16 v19, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 192
    invoke-direct/range {v4 .. v19}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;-><init>(Ljava/util/EnumMap;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/transaction/CollectiblePayment;Lcom/stripe/core/transaction/CancelableOperationContext;Lkotlinx/coroutines/Job;Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/transaction/ConfirmRefundParams;ZLjava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    return-void
.end method

.method public final getAccountId()Ljava/lang/String;
    .locals 1

    .line 279
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->_accountId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAllowExtendedTransactions()Z
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcom/stripe/core/transaction/TransactionRepository;->getRemotePosSdkVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/stripe/core/transaction/TransactionRepository;->getRemotePosSupportsExtendedTransactions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/stripe/core/transaction/TransactionRepository;->getDevicePaymentCapability()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->getSupportExtendedTransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getAllowRedisplay()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;
    .locals 1

    .line 402
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->getAllowRedisplay()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    move-result-object v0

    return-object v0
.end method

.method public final getAmountTip()Lcom/stripe/currency/Amount;
    .locals 1

    .line 343
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->getAmountTip()Lcom/stripe/currency/Amount;

    move-result-object v0

    return-object v0
.end method

.method public final getCancelableOperationContext()Lcom/stripe/core/transaction/CancelableOperationContext;
    .locals 1

    .line 308
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->getCancelableOperationContext()Lcom/stripe/core/transaction/CancelableOperationContext;

    move-result-object v0

    return-object v0
.end method

.method public final getCardStatusFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository;->cardStatusFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getCollectiblePayment()Lcom/stripe/transaction/CollectiblePayment;
    .locals 1

    .line 286
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->getCollectiblePayment()Lcom/stripe/transaction/CollectiblePayment;

    move-result-object v0

    return-object v0
.end method

.method public final getConnectionToken()Ljava/lang/String;
    .locals 2

    .line 211
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->_connectionToken:Ljava/lang/String;

    const/4 v1, 0x0

    .line 213
    sput-object v1, Lcom/stripe/core/transaction/TransactionRepository;->_connectionToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getDevicePaymentCapability()Lcom/stripe/transaction/PaymentCollectionDeviceCapability;
    .locals 1

    .line 267
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->_devicePaymentCapability:Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    return-object v0
.end method

.method public final getDomesticDebitAids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->_domesticDebitAids:Ljava/util/List;

    return-object v0
.end method

.method public final getDynamicCurrencyConversionOfferPresented()Z
    .locals 1

    .line 384
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->getDynamicCurrencyConversionOfferPresented()Z

    move-result v0

    return v0
.end method

.method public final getDynamicCurrencyConversionSelected()Ljava/lang/Boolean;
    .locals 1

    .line 390
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->getDynamicCurrencyConversionSelected()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIntegrationType()Lcom/stripe/restclient/IntegrationType;
    .locals 1

    .line 221
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->getIntegrationType()Lcom/stripe/restclient/IntegrationType;

    move-result-object v0

    return-object v0
.end method

.method public final getInterstitialJob()Lkotlinx/coroutines/Job;
    .locals 1

    .line 316
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->getInterstitialJob()Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalNetworkSessionToken()Ljava/lang/String;
    .locals 1

    .line 274
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->_localNetworkSessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getNonCardPaymentMethodType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .locals 1

    .line 396
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->getNonCardPaymentMethodType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object v0

    return-object v0
.end method

.method public final getPaymentIntentId()Ljava/lang/String;
    .locals 1

    .line 352
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->getPaymentIntentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRefundParams()Lcom/stripe/core/transaction/ConfirmRefundParams;
    .locals 1

    .line 378
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->getRefundParams()Lcom/stripe/core/transaction/ConfirmRefundParams;

    move-result-object v0

    return-object v0
.end method

.method public final getRemotePosDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;
    .locals 1

    .line 261
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->_remotePosDeviceInfo:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object v0
.end method

.method public final getRemotePosSdkVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;
    .locals 1

    .line 251
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->_remotePosSdkVersionInfo:Lcom/stripe/proto/model/common/VersionInfoPb;

    return-object v0
.end method

.method public final getRemotePosSecondarySdkVersionInfo()Lcom/stripe/proto/model/common/VersionInfoPb;
    .locals 1

    .line 256
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->_remotePosSecondarySdkVersionInfo:Lcom/stripe/proto/model/common/VersionInfoPb;

    return-object v0
.end method

.method public final getRequestId(Lcom/stripe/restclient/TransactionOpType;)Ljava/lang/String;
    .locals 1

    const-string v0, "opType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->getRequestIds()Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public final getSettings()Lcom/stripe/transaction/Settings;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository;->settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/SettingsRepository;->getSettings()Lcom/stripe/transaction/Settings;

    move-result-object v0

    return-object v0
.end method

.method public final getStripeAccountId()Ljava/lang/String;
    .locals 1

    .line 358
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->getStripeAccountId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTransactionStateSummaryFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/transaction/TransactionStateSummary;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository;->transactionStateSummaryFlow:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final isInTransaction()Z
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository;->_transactionStateSummaryFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/stripe/core/transaction/TransactionStateSummary$Empty;->INSTANCE:Lcom/stripe/core/transaction/TransactionStateSummary$Empty;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isInValidTransaction()Z
    .locals 2

    .line 230
    invoke-virtual {p0}, Lcom/stripe/core/transaction/TransactionRepository;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository;->_transactionStateSummaryFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/stripe/core/transaction/TransactionStateSummary$UnrecoverableError;->INSTANCE:Lcom/stripe/core/transaction/TransactionStateSummary$UnrecoverableError;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository;->_transactionStateSummaryFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/stripe/core/transaction/TransactionStateSummary$Timeout;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository;->_transactionStateSummaryFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/stripe/core/transaction/TransactionStateSummary$Cancelled;->INSTANCE:Lcom/stripe/core/transaction/TransactionStateSummary$Cancelled;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isInterstitialJobCancelable()Z
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/stripe/core/transaction/TransactionRepository;->getInterstitialJob()Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final resetContext()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "resetContext()"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 180
    invoke-virtual {p0}, Lcom/stripe/core/transaction/TransactionRepository;->clearTransactionContext()V

    .line 181
    invoke-virtual {p0}, Lcom/stripe/core/transaction/TransactionRepository;->resetTransactionState()V

    return-void
.end method

.method public final resetTransactionState()V
    .locals 1

    .line 204
    sget-object v0, Lcom/stripe/core/transaction/TransactionStateSummary$Empty;->INSTANCE:Lcom/stripe/core/transaction/TransactionStateSummary$Empty;

    check-cast v0, Lcom/stripe/core/transaction/TransactionStateSummary;

    invoke-virtual {p0, v0}, Lcom/stripe/core/transaction/TransactionRepository;->updateState(Lcom/stripe/core/transaction/TransactionStateSummary;)V

    return-void
.end method

.method public final setAccountId(Ljava/lang/String;)V
    .locals 0

    .line 279
    sput-object p1, Lcom/stripe/core/transaction/TransactionRepository;->_accountId:Ljava/lang/String;

    return-void
.end method

.method public final setAllowRedisplay(Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V
    .locals 1

    .line 404
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0, p1}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->setAllowRedisplay(Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V

    return-void
.end method

.method public final setAmountTip(Lcom/stripe/currency/Amount;)V
    .locals 1

    .line 345
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0, p1}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->setAmountTip(Lcom/stripe/currency/Amount;)V

    return-void
.end method

.method public final setCancelableOperationContext(Lcom/stripe/stripeterminal/external/callable/Cancelable;Lcom/stripe/core/transaction/CancelableOperationType;)V
    .locals 4

    const-string v0, "cancelableOperation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelableOperationType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "setCancelableOperationContext"

    invoke-interface {v1, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 301
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    new-instance v1, Lcom/stripe/core/transaction/CancelableOperationContext;

    invoke-direct {v1, p1, p2}, Lcom/stripe/core/transaction/CancelableOperationContext;-><init>(Lcom/stripe/stripeterminal/external/callable/Cancelable;Lcom/stripe/core/transaction/CancelableOperationType;)V

    invoke-virtual {v0, v1}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->setCancelableOperationContext(Lcom/stripe/core/transaction/CancelableOperationContext;)V

    return-void
.end method

.method public final setCollectiblePayment(Lcom/stripe/transaction/CollectiblePayment;)V
    .locals 1

    .line 288
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0, p1}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->setCollectiblePayment(Lcom/stripe/transaction/CollectiblePayment;)V

    return-void
.end method

.method public final setConnectionToken(Ljava/lang/String;)V
    .locals 0

    .line 217
    sput-object p1, Lcom/stripe/core/transaction/TransactionRepository;->_connectionToken:Ljava/lang/String;

    return-void
.end method

.method public final setDevicePaymentCapability(Lcom/stripe/transaction/PaymentCollectionDeviceCapability;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    sput-object p1, Lcom/stripe/core/transaction/TransactionRepository;->_devicePaymentCapability:Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    return-void
.end method

.method public final setDomesticDebitAids(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    sput-object p1, Lcom/stripe/core/transaction/TransactionRepository;->_domesticDebitAids:Ljava/util/List;

    return-void
.end method

.method public final setDynamicCurrencyConversionOfferPresented(Z)V
    .locals 1

    .line 386
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0, p1}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->setDynamicCurrencyConversionOfferPresented(Z)V

    return-void
.end method

.method public final setDynamicCurrencyConversionSelected(Ljava/lang/Boolean;)V
    .locals 1

    .line 392
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0, p1}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->setDynamicCurrencyConversionSelected(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setIntegrationType(Lcom/stripe/restclient/IntegrationType;)V
    .locals 1

    .line 223
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0, p1}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->setIntegrationType(Lcom/stripe/restclient/IntegrationType;)V

    return-void
.end method

.method public final setInterstitialJob(Lkotlinx/coroutines/Job;)V
    .locals 1

    .line 318
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0, p1}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->setInterstitialJob(Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public final setLocalNetworkSessionToken(Ljava/lang/String;)V
    .locals 0

    .line 274
    sput-object p1, Lcom/stripe/core/transaction/TransactionRepository;->_localNetworkSessionToken:Ljava/lang/String;

    return-void
.end method

.method public final setNonCardPaymentMethodType(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V
    .locals 1

    .line 398
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0, p1}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->setNonCardPaymentMethodType(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;)V

    return-void
.end method

.method public final setPaymentIntentId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPaymentIntentId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 367
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0, p1}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->setPaymentIntentId(Ljava/lang/String;)V

    .line 368
    sget-object p1, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {p1, p2}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->setStripeAccountId(Ljava/lang/String;)V

    return-void
.end method

.method public final setRefundParams(Lcom/stripe/core/transaction/ConfirmRefundParams;)V
    .locals 1

    .line 380
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0, p1}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->setRefundParams(Lcom/stripe/core/transaction/ConfirmRefundParams;)V

    return-void
.end method

.method public final setRemotePosDeviceInfo(Lcom/stripe/proto/model/common/DeviceInfo;)V
    .locals 0

    .line 261
    sput-object p1, Lcom/stripe/core/transaction/TransactionRepository;->_remotePosDeviceInfo:Lcom/stripe/proto/model/common/DeviceInfo;

    return-void
.end method

.method public final setRemotePosSdkVersionInfo(Lcom/stripe/proto/model/common/VersionInfoPb;)V
    .locals 0

    .line 251
    sput-object p1, Lcom/stripe/core/transaction/TransactionRepository;->_remotePosSdkVersionInfo:Lcom/stripe/proto/model/common/VersionInfoPb;

    return-void
.end method

.method public final setRemotePosSecondarySdkVersionInfo(Lcom/stripe/proto/model/common/VersionInfoPb;)V
    .locals 0

    .line 256
    sput-object p1, Lcom/stripe/core/transaction/TransactionRepository;->_remotePosSecondarySdkVersionInfo:Lcom/stripe/proto/model/common/VersionInfoPb;

    return-void
.end method

.method public setRequestId(Lcom/stripe/restclient/TransactionOpType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "opType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->currentTransactionContext:Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository$TransactionContext;->getRequestIds()Ljava/util/EnumMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final updateCardStatus(Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;)V
    .locals 4

    const-string v0, "cardStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "updateCardStatus"

    invoke-interface {v1, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 110
    sget-object v0, Lcom/stripe/core/transaction/TransactionRepository;->_cardStatusFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateState(Lcom/stripe/core/transaction/TransactionStateSummary;)V
    .locals 4

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/stripe/core/transaction/TransactionRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "updateState"

    invoke-interface {v1, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 175
    iget-object v0, p0, Lcom/stripe/core/transaction/TransactionRepository;->_transactionStateSummaryFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method
