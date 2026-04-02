.class public final Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;
.super Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;
.source "CotsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;,
        Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b8\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0006\u0082\u0001\u0083\u0001\u0084\u0001BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fj\u0002`\u0012\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010&\u001a\u00020\'H\u0016J>\u0010(\u001a\u0004\u0018\u0001H)\"\u0004\u0008\u0000\u0010)2\'\u0010*\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H)0,\u0012\u0006\u0012\u0004\u0018\u00010-0+\u00a2\u0006\u0002\u0008.H\u0002\u00a2\u0006\u0002\u0010/J\u0008\u00100\u001a\u000201H\u0016J\u0010\u00102\u001a\u0002012\u0006\u00103\u001a\u000204H\u0016J\u0008\u00105\u001a\u000201H\u0016J\u0008\u00106\u001a\u000201H\u0016J\u0012\u00107\u001a\u0002012\u0008\u00108\u001a\u0004\u0018\u000109H\u0002J\u001a\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?H\u0016J\u0008\u0010@\u001a\u000201H\u0002J\u0010\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020DH\u0016J\u000e\u0010E\u001a\u00020B2\u0006\u0010C\u001a\u00020DJ\u0008\u0010F\u001a\u00020BH\u0002J\n\u0010G\u001a\u0004\u0018\u00010HH\u0016J\u0010\u0010I\u001a\u0002012\u0006\u0010J\u001a\u00020KH\u0016J\u0018\u0010L\u001a\u0002012\u0006\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020PH\u0016J\u0008\u0010Q\u001a\u000201H\u0016J\u0012\u0010R\u001a\u00020S2\u0008\u00108\u001a\u0004\u0018\u000109H\u0002J\u0010\u0010T\u001a\u0002012\u0006\u0010U\u001a\u00020VH\u0016J\u0008\u0010W\u001a\u000201H\u0016J\u0006\u0010X\u001a\u000201J\u0010\u0010Y\u001a\u0002012\u0006\u0010Z\u001a\u00020;H\u0016J\u0008\u0010[\u001a\u00020?H\u0002J\u0008\u0010\\\u001a\u00020?H\u0002J\u0016\u0010]\u001a\u0002012\u0006\u0010^\u001a\u00020_H\u0096@\u00a2\u0006\u0002\u0010`J\u0010\u0010a\u001a\u0002012\u0006\u0010b\u001a\u00020?H\u0002J.\u0010c\u001a\u00020=2\u0006\u0010<\u001a\u00020=2\u0006\u0010d\u001a\u00020e2\u0014\u0010f\u001a\u0010\u0012\u0004\u0012\u00020K\u0012\u0004\u0012\u000201\u0018\u00010gH\u0014J\u0008\u0010h\u001a\u000201H\u0016J\u0018\u0010i\u001a\u0002012\u0006\u0010<\u001a\u00020=2\u0006\u0010j\u001a\u00020 H\u0016J\u0008\u0010k\u001a\u00020BH\u0016J\u0010\u0010l\u001a\u0002012\u0006\u0010<\u001a\u00020=H\u0016J\u0010\u0010m\u001a\u00020=2\u0006\u0010<\u001a\u00020=H\u0016J\u0010\u0010n\u001a\u0002012\u0006\u0010o\u001a\u00020pH\u0016J\u0016\u0010q\u001a\u0002012\u0006\u0010r\u001a\u00020sH\u0096@\u00a2\u0006\u0002\u0010tJ\u0018\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020x2\u0006\u0010y\u001a\u00020NH\u0016J*\u0010z\u001a\u00020{2\u0006\u0010|\u001a\u00020{2\u0008\u0010G\u001a\u0004\u0018\u00010H2\u0006\u0010}\u001a\u00020?2\u0006\u0010~\u001a\u00020\u007fH\u0016J\u0010\u0010\u0080\u0001\u001a\u0005\u0018\u00010\u0081\u0001*\u00020#H\u0002R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010!\u001a\u00020\"*\u00020#8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%\u00a8\u0006\u0085\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;",
        "applicationInformationProvider",
        "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
        "cotsServiceClient",
        "Lcom/stripe/cots/common/CotsClientInterface;",
        "terminalStatusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "featureFlagsRepository",
        "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
        "appScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "nfcAntennaLogger",
        "Lcom/stripe/cots/common/NfcAntennaLogger;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/cots/common/CotsClientInterface;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/cots/common/NfcAntennaLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "appInfo",
        "Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "getAppInfo",
        "()Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "appInfo$delegate",
        "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
        "cachedPayment",
        "Lcom/stripe/cots/common/ExpiringValue;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;",
        "disconnectListenerJob",
        "Lkotlinx/coroutines/Job;",
        "lastActivateReaderResponse",
        "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;",
        "toMessage",
        "",
        "Lcom/stripe/cots/aidlservice/CotsReader$CotsError;",
        "getToMessage",
        "(Lcom/stripe/cots/aidlservice/CotsReader$CotsError;)Ljava/lang/String;",
        "adapterType",
        "Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;",
        "callAidlWithExceptionConverted",
        "T",
        "call",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "cancelCollectPaymentMethod",
        "",
        "cancelDiscoverReaders",
        "cancelDiscoverReadersReason",
        "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;",
        "cancelInstallUpdate",
        "cancelReconnectReader",
        "checkAndThrowCotsError",
        "cotsReader",
        "Lcom/stripe/cots/aidlservice/CotsReader;",
        "checkForUpdate",
        "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "failSilently",
        "",
        "clearCachedPayment",
        "collectPaymentMethod",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "paymentMethodCollectionType",
        "Lcom/stripe/transaction/PaymentMethodCollectionType;",
        "collectPaymentMethodHandler",
        "collectPinAndUpdatePaymentMethodData",
        "collectiblePayment",
        "Lcom/stripe/transaction/CollectiblePayment;",
        "disconnectReader",
        "disconnectReason",
        "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
        "discoverReaders",
        "config",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
        "dispose",
        "getCotsDescriptor",
        "Lcom/stripe/stripeterminal/internal/common/CotsDescriptor;",
        "handleNonCardPaymentMethodConfirmationResponse",
        "data",
        "Lcom/stripe/transaction/NonCardPaymentMethodData;",
        "init",
        "initKeystore",
        "installUpdate",
        "update",
        "isTtpaEftposEnabled",
        "isTtpaPinEnabled",
        "killAidlServer",
        "delayMs",
        "",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onAidlDisconnect",
        "unexpected",
        "onConnectReader",
        "connectionConfiguration",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "requestReconnection",
        "Lkotlin/Function1;",
        "onPaymentMethodCollectedForPaymentIntent",
        "onReaderActivated",
        "response",
        "readReusableCard",
        "rebootReader",
        "reconnectReader",
        "selectDynamicCurrencyConversion",
        "dynamicCurrencyConversionData",
        "Lcom/stripe/transaction/DynamicCurrencyConversionData;",
        "setFakedContactlessOutcome",
        "fakedContactlessOutcomeType",
        "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;",
        "(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "supportsReadersOfType",
        "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;",
        "deviceType",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "discoveryConfiguration",
        "updatePaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "paymentIntent",
        "requestDynamicCurrencyConversion",
        "apiPaymentIntentUpdater",
        "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
        "toCommonCotsError",
        "Lcom/stripe/cots/common/CotsError;",
        "CachedPayment",
        "DiscoverReadersOperation",
        "ReconnectReaderOperation",
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


# instance fields
.field private final appInfo$delegate:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

.field private final appScope:Lkotlinx/coroutines/CoroutineScope;

.field private cachedPayment:Lcom/stripe/cots/common/ExpiringValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/cots/common/ExpiringValue<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;",
            ">;"
        }
    .end annotation
.end field

.field private final cotsServiceClient:Lcom/stripe/cots/common/CotsClientInterface;

.field private disconnectListenerJob:Lkotlinx/coroutines/Job;

.field private final featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

.field private lastActivateReaderResponse:Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

.field private final nfcAntennaLogger:Lcom/stripe/cots/common/NfcAntennaLogger;

.field private final terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 100
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "appInfo"

    const-string v3, "getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;"

    const-class v4, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/cots/common/CotsClientInterface;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/cots/common/NfcAntennaLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            "Lcom/stripe/cots/common/CotsClientInterface;",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/stripe/cots/common/NfcAntennaLogger;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "applicationInformationProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cotsServiceClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalStatusManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlagsRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appScope"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nfcAntennaLogger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, p7}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    .line 89
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->cotsServiceClient:Lcom/stripe/cots/common/CotsClientInterface;

    .line 90
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    .line 91
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    .line 92
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->appScope:Lkotlinx/coroutines/CoroutineScope;

    .line 93
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->nfcAntennaLogger:Lcom/stripe/cots/common/NfcAntennaLogger;

    .line 100
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->appInfo$delegate:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    return-void
.end method

.method public static final synthetic access$callAidlWithExceptionConverted(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->callAidlWithExceptionConverted(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$checkAndThrowCotsError(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/cots/aidlservice/CotsReader;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->checkAndThrowCotsError(Lcom/stripe/cots/aidlservice/CotsReader;)V

    return-void
.end method

.method public static final synthetic access$getAppInfo(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;)Lcom/stripe/terminal/appinfo/ApplicationInformation;
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCotsDescriptor(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/cots/aidlservice/CotsReader;)Lcom/stripe/stripeterminal/internal/common/CotsDescriptor;
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->getCotsDescriptor(Lcom/stripe/cots/aidlservice/CotsReader;)Lcom/stripe/stripeterminal/internal/common/CotsDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCotsServiceClient$p(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;)Lcom/stripe/cots/common/CotsClientInterface;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->cotsServiceClient:Lcom/stripe/cots/common/CotsClientInterface;

    return-object p0
.end method

.method public static final synthetic access$getLastActivateReaderResponse$p(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->lastActivateReaderResponse:Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    return-object p0
.end method

.method public static final synthetic access$onAidlDisconnect(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->onAidlDisconnect(Z)V

    return-void
.end method

.method private final callAidlWithExceptionConverted(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/stripe/cots/common/CotsClientInterface;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 705
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    .line 706
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$callAidlWithExceptionConverted$1$1;

    invoke-direct {v0, p1, p0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$callAidlWithExceptionConverted$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 705
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 707
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 708
    instance-of p1, v0, Lcom/stripe/cots/common/CotsException;

    if-eqz p1, :cond_4

    .line 709
    move-object p1, v0

    check-cast p1, Lcom/stripe/cots/common/CotsException;

    .line 710
    instance-of v1, p1, Lcom/stripe/cots/common/DebuggableException;

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 711
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_DEBUG_NOT_SUPPORTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    move-object v5, v2

    goto :goto_1

    :cond_0
    move-object v5, p1

    :goto_1
    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    .line 713
    :cond_1
    instance-of p1, p1, Lcom/stripe/cots/common/ReaderNotConnectedException;

    if-eqz p1, :cond_3

    .line 714
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    invoke-virtual {p1, v1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->reportDisconnect(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    .line 715
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->unexpectedDisconnect()V

    .line 716
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 717
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 718
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object v5, p1

    :goto_2
    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 716
    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_4
    move-object p1, v0

    .line 724
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 725
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 726
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Contactless transaction failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 724
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 729
    :cond_5
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move-object v1, p1

    :goto_3
    return-object v1
.end method

.method private final checkAndThrowCotsError(Lcom/stripe/cots/aidlservice/CotsReader;)V
    .locals 8

    if-eqz p1, :cond_1

    .line 617
    iget-object v0, p1, Lcom/stripe/cots/aidlservice/CotsReader;->errorCode:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {v0}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 651
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 647
    :pswitch_1
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_DEBUG_NOT_SUPPORTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 644
    :pswitch_2
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 641
    :pswitch_3
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_RESPONSE_DECODING_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 638
    :pswitch_4
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_CONNECTION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 635
    :pswitch_5
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_DEVICE_TAMPERED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 632
    :pswitch_6
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 629
    :pswitch_7
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_UNSUPPORTED_DEVICE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 626
    :pswitch_8
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 623
    :pswitch_9
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_INSECURE_ENVIRONMENT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 620
    :pswitch_a
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_UNSUPPORTED_DEVICE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v2, v0

    .line 654
    iget-object v0, p1, Lcom/stripe/cots/aidlservice/CotsReader;->errorMessage:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 655
    iget-object p1, p1, Lcom/stripe/cots/aidlservice/CotsReader;->errorCode:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->getToMessage(Lcom/stripe/cots/aidlservice/CotsReader$CotsError;)Ljava/lang/String;

    move-result-object v0

    .line 654
    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 657
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    :pswitch_b
    return-void

    .line 612
    :cond_1
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 613
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 612
    const-string v2, "Null cotsReader"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
    .end packed-switch
.end method

.method private final clearCachedPayment()V
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->cachedPayment:Lcom/stripe/cots/common/ExpiringValue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/cots/common/ExpiringValue;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 700
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->cachedPayment:Lcom/stripe/cots/common/ExpiringValue;

    return-void
.end method

.method private final collectPinAndUpdatePaymentMethodData()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->cachedPayment:Lcom/stripe/cots/common/ExpiringValue;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/stripe/cots/common/ExpiringValue;->getOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;

    if-eqz v0, :cond_5

    .line 260
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->getPaymentMethodData()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v1

    .line 261
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$collectPinAndUpdatePaymentMethodData$response$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$collectPinAndUpdatePaymentMethodData$response$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->callAidlWithExceptionConverted(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;

    if-eqz v0, :cond_4

    .line 270
    iget-object v2, v0, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;->result:Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;

    sget-object v3, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v0, 0x2

    if-eq v2, v0, :cond_2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_1

    const/4 v0, 0x4

    if-eq v2, v0, :cond_0

    .line 293
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 294
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_DEVICE_TAMPERED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 293
    const-string v3, "PIN collection failed because we were unable to verify the integrity of the device."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 289
    :cond_1
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v4, "PIN collection was canceled."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    .line 285
    :cond_2
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    const-string v5, "PIN collection failed. Please try again."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    .line 272
    :cond_3
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->clearCachedPayment()V

    .line 273
    sget-object v4, Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;

    .line 274
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getTlv()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 275
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getEncryptedTrack2()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 276
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getCryptogram()Ljava/lang/String;

    move-result-object v7

    .line 277
    iget-object v8, v0, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;->clientPublicKey:Ljava/lang/String;

    .line 278
    iget-object v9, v0, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;->serverPublicKeyHash:Ljava/lang/String;

    .line 279
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 280
    iget-object v11, v0, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;->pinBlock:Ljava/lang/String;

    .line 273
    invoke-virtual/range {v4 .. v11}, Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;->newEncryptedEmvDataWithTtpaPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v0

    return-object v0

    .line 265
    :cond_4
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 266
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 265
    const-string v3, "SCA collection result is null"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 255
    :cond_5
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 256
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 255
    const-string v4, "Cached payment data for SCA collection is null"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2
.end method

.method private final getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->appInfo$delegate:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method private final getCotsDescriptor(Lcom/stripe/cots/aidlservice/CotsReader;)Lcom/stripe/stripeterminal/internal/common/CotsDescriptor;
    .locals 6

    .line 689
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/CotsDescriptor;

    if-eqz p1, :cond_0

    .line 690
    iget-object v1, p1, Lcom/stripe/cots/aidlservice/CotsReader;->serial:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    .line 691
    :cond_1
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 692
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    .line 693
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_2

    .line 694
    iget-boolean p1, p1, Lcom/stripe/cots/aidlservice/CotsReader;->isSimulated:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    move v5, p1

    .line 689
    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/internal/common/CotsDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private final getToMessage(Lcom/stripe/cots/aidlservice/CotsReader$CotsError;)Ljava/lang/String;
    .locals 0

    .line 686
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->toCommonCotsError(Lcom/stripe/cots/aidlservice/CotsReader$CotsError;)Lcom/stripe/cots/common/CotsError;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/stripe/cots/common/CotsError;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const-string p1, "Unknown error"

    return-object p1
.end method

.method private final isTtpaEftposEnabled()Z
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getTtpaEftposEnabled()Z

    move-result v0

    return v0
.end method

.method private final isTtpaPinEnabled()Z
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getTtpaPinEntryEnabled()Z

    move-result v0

    return v0
.end method

.method private final onAidlDisconnect(Z)V
    .locals 4

    .line 506
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->clearCachedPayment()V

    .line 507
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "unexpected"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onDisconnect"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 508
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->getRequestReconnection()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 509
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    invoke-virtual {v1}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getTtpAutoReconnectEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 511
    sget-object p1, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 513
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    sget-object v0, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->reportDisconnect(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    .line 514
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->unexpectedDisconnect()V

    :cond_1
    return-void
.end method

.method private final toCommonCotsError(Lcom/stripe/cots/aidlservice/CotsReader$CotsError;)Lcom/stripe/cots/common/CotsError;
    .locals 1

    .line 661
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p1}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 682
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 681
    :pswitch_1
    sget-object p1, Lcom/stripe/cots/common/CotsError;->UNEXPECTED_ERROR:Lcom/stripe/cots/common/CotsError;

    return-object p1

    .line 673
    :pswitch_2
    sget-object p1, Lcom/stripe/cots/common/CotsError;->DISCOVERY_DEBUG_NOT_ALLOWED:Lcom/stripe/cots/common/CotsError;

    return-object p1

    .line 677
    :pswitch_3
    sget-object p1, Lcom/stripe/cots/common/CotsError;->ATTESTATION_SERVER_ERROR:Lcom/stripe/cots/common/CotsError;

    return-object p1

    .line 679
    :pswitch_4
    sget-object p1, Lcom/stripe/cots/common/CotsError;->ATTESTATION_API_RESPONSE_DECODING:Lcom/stripe/cots/common/CotsError;

    return-object p1

    .line 676
    :pswitch_5
    sget-object p1, Lcom/stripe/cots/common/CotsError;->ATTESTATION_API_CONNECTION_ERROR:Lcom/stripe/cots/common/CotsError;

    return-object p1

    .line 675
    :pswitch_6
    sget-object p1, Lcom/stripe/cots/common/CotsError;->ATTESTATION_DEVICE_TAMPERED:Lcom/stripe/cots/common/CotsError;

    return-object p1

    .line 667
    :pswitch_7
    sget-object p1, Lcom/stripe/cots/common/CotsError;->DISCOVERY_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/cots/common/CotsError;

    return-object p1

    .line 669
    :pswitch_8
    sget-object p1, Lcom/stripe/cots/common/CotsError;->DISCOVERY_MISSING_NFC_READER:Lcom/stripe/cots/common/CotsError;

    return-object p1

    .line 664
    :pswitch_9
    sget-object p1, Lcom/stripe/cots/common/CotsError;->DISCOVERY_MISSING_KEY_CERTIFICATES:Lcom/stripe/cots/common/CotsError;

    return-object p1

    .line 671
    :pswitch_a
    sget-object p1, Lcom/stripe/cots/common/CotsError;->DISCOVERY_UNTRUSTED_SOFTWARE:Lcom/stripe/cots/common/CotsError;

    return-object p1

    .line 670
    :pswitch_b
    sget-object p1, Lcom/stripe/cots/common/CotsError;->DISCOVERY_UNTRUSTED_HARDWARE:Lcom/stripe/cots/common/CotsError;

    return-object p1

    .line 662
    :pswitch_c
    sget-object p1, Lcom/stripe/cots/common/CotsError;->NONE:Lcom/stripe/cots/common/CotsError;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public adapterType()Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;
    .locals 1

    .line 560
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->COTS:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    return-object v0
.end method

.method public cancelCollectPaymentMethod()V
    .locals 2

    .line 126
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$cancelCollectPaymentMethod$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$cancelCollectPaymentMethod$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->callAidlWithExceptionConverted(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    return-void
.end method

.method public cancelDiscoverReaders(Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;)V
    .locals 2

    const-string v0, "cancelDiscoverReadersReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    .line 133
    instance-of v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.CotsAdapter.DiscoverReadersOperation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;->cancel(Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;)V

    .line 135
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-direct {p1, v0}, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/Adapter;)V

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    return-void

    .line 138
    :cond_0
    instance-of p1, v0, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;

    if-eqz p1, :cond_1

    .line 140
    const-class p1, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->setOperationToCancel(Lkotlin/reflect/KClass;)V

    return-void

    .line 143
    :cond_1
    const-class p1, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->logUnexpectedOperationInProgressWarning(Lkotlin/reflect/KClass;)V

    return-void
.end method

.method public cancelInstallUpdate()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v2, "The Tap to Pay adapter doesn\'t support updates"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public cancelReconnectReader()V
    .locals 2

    .line 574
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    .line 575
    instance-of v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;

    if-eqz v1, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.CotsAdapter.ReconnectReaderOperation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;->cancel()V

    .line 577
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;

    move-object v1, p0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/Adapter;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    return-void

    .line 580
    :cond_0
    instance-of v0, v0, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;

    if-eqz v0, :cond_1

    .line 582
    const-class v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->setOperationToCancel(Lkotlin/reflect/KClass;)V

    return-void

    .line 585
    :cond_1
    const-class v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->logUnexpectedOperationInProgressWarning(Lkotlin/reflect/KClass;)V

    return-void
.end method

.method public checkForUpdate(Lcom/stripe/stripeterminal/external/models/Reader;Z)Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string p2, "reader"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v2, "The Tap to Pay adapter doesn\'t support updates"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public collectPaymentMethod(Lcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "paymentMethodCollectionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    instance-of v0, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;

    if-nez v0, :cond_7

    .line 195
    instance-of v0, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    if-eqz v0, :cond_3

    .line 196
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->isTtpaPinEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    check-cast p1, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    invoke-virtual {p1}, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->getIntentId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->cachedPayment:Lcom/stripe/cots/common/ExpiringValue;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/cots/common/ExpiringValue;->getOrNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->getIntentId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->collectPinAndUpdatePaymentMethodData()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object p1

    return-object p1

    .line 198
    :cond_1
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 199
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid payment intent id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->getIntentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " for SCA PIN collection."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 198
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "Tap to Pay shouldn\'t be getting SCA collectPaymentMethod requests"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    goto :goto_2

    .line 209
    :cond_3
    instance-of v0, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;

    if-nez v0, :cond_6

    .line 214
    instance-of v0, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    .line 215
    :cond_4
    instance-of v0, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    :goto_1
    if-eqz v0, :cond_5

    .line 216
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->clearCachedPayment()V

    .line 219
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->collectPaymentMethodHandler(Lcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object p1

    return-object p1

    .line 209
    :cond_6
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 210
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 209
    const-string v2, "Passthrough is not available with Tap to Pay on Android"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 190
    :cond_7
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 191
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 190
    const-string v3, "Refunds are not available with Tap to Pay on Android"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public final collectPaymentMethodHandler(Lcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "paymentMethodCollectionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$collectPaymentMethodHandler$result$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$collectPaymentMethodHandler$result$1;-><init>(Lcom/stripe/transaction/PaymentMethodCollectionType;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->callAidlWithExceptionConverted(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;

    if-eqz v0, :cond_0

    .line 321
    iget-object v2, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->outcome:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v2}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ordinal()I

    move-result v2

    aget v2, v3, v2

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 437
    :pswitch_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 431
    :pswitch_1
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 432
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_INSECURE_ENVIRONMENT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 431
    const-string v5, "The security of the payment collection process could not be guaranteed."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    .line 426
    :pswitch_2
    new-instance v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 427
    sget-object v5, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_READ_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v9, 0xc

    const/4 v10, 0x0

    .line 426
    const-string v6, "Transaction timed out."

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v4

    .line 418
    :pswitch_3
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    sget-object v0, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->reportDisconnect(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    .line 419
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->unexpectedDisconnect()V

    .line 420
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 421
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 420
    const-string v2, "Tap to Pay reader is not connected"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 412
    :pswitch_4
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 413
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_NFC_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 412
    const-string v3, "NFC is disabled"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 407
    :pswitch_5
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 408
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->INVALID_REQUIRED_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 407
    const-string v4, "Currency is unsupported or not set"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    .line 402
    :pswitch_6
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 403
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 404
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Contactless transaction failed "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 402
    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    .line 391
    :pswitch_7
    new-instance v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 392
    sget-object v5, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v9, 0xc

    const/4 v10, 0x0

    .line 391
    const-string v6, "Contactless transaction was canceled"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v4

    .line 386
    :pswitch_8
    new-instance v5, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 387
    sget-object v6, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_DEVICE_TAMPERED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v10, 0xc

    const/4 v11, 0x0

    .line 386
    const-string v7, "Contactless transaction failed because we were unable to verify the integrity of the device."

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v5

    .line 363
    :pswitch_9
    iget-object p1, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->ttpaPinData:Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;

    .line 364
    iget-object v1, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->emvBlob:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 365
    iget-object v1, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->encryptedTrack2:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 366
    iget-object v1, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->cryptogram:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    if-eqz p1, :cond_2

    .line 369
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;

    .line 370
    iget-object v3, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->emvBlob:Ljava/lang/String;

    .line 371
    iget-object v4, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->encryptedTrack2:Ljava/lang/String;

    .line 372
    iget-object v5, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->cryptogram:Ljava/lang/String;

    .line 373
    iget-object v6, p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->clientPublicKey:Ljava/lang/String;

    .line 374
    iget-object v7, p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->serverPublicKeyHash:Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 376
    iget-object v9, p1, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;->pinBlock:Ljava/lang/String;

    .line 369
    invoke-virtual/range {v2 .. v9}, Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;->newEncryptedEmvDataWithTtpaPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object p1

    return-object p1

    .line 379
    :cond_2
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 380
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 379
    const-string v2, "Invalid contactless result"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 324
    :pswitch_a
    iget-object v2, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->emvBlob:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 325
    iget-object v2, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->encryptedTrack2:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 326
    iget-object v2, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->cryptogram:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 328
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;

    .line 329
    iget-object v3, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->emvBlob:Ljava/lang/String;

    .line 330
    iget-object v4, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->encryptedTrack2:Ljava/lang/String;

    .line 331
    iget-object v0, v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;->cryptogram:Ljava/lang/String;

    .line 328
    invoke-virtual {v2, v3, v4, v0}, Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;->newEncryptedEmvData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v0

    .line 333
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->isTtpaPinEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 335
    instance-of v2, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    invoke-virtual {v2}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getIntentId()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 336
    :cond_3
    instance-of v2, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    invoke-virtual {v2}, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;->getIntentId()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 337
    :cond_4
    instance-of v2, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_2

    .line 338
    :cond_5
    instance-of v2, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;

    :goto_2
    if-eqz v2, :cond_6

    goto :goto_3

    .line 339
    :cond_6
    instance-of v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    :goto_3
    if-eqz v3, :cond_7

    move-object v2, v1

    .line 341
    :goto_4
    new-instance v3, Lcom/stripe/cots/common/ExpiringValue;

    .line 342
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;

    .line 344
    new-instance v5, Lcom/stripe/currency/CurrencyFormatter;

    invoke-direct {v5}, Lcom/stripe/currency/CurrencyFormatter;-><init>()V

    invoke-interface {p1}, Lcom/stripe/transaction/PaymentMethodCollectionType;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object p1

    const/4 v6, 0x2

    invoke-static {v5, p1, v1, v6, v1}, Lcom/stripe/currency/CurrencyFormatter;->format$default(Lcom/stripe/currency/CurrencyFormatter;Lcom/stripe/currency/Amount;Ljava/util/Locale;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 342
    invoke-direct {v4, v2, p1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V

    .line 341
    invoke-direct {v3, v4}, Lcom/stripe/cots/common/ExpiringValue;-><init>(Ljava/lang/Object;)V

    .line 348
    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->appScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$collectPaymentMethodHandler$1$1;

    invoke-direct {p1, v3, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$collectPaymentMethodHandler$1$1;-><init>(Lcom/stripe/cots/common/ExpiringValue;Lkotlin/coroutines/Continuation;)V

    move-object v8, p1

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 341
    iput-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->cachedPayment:Lcom/stripe/cots/common/ExpiringValue;

    return-object v0

    .line 339
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_8
    return-object v0

    .line 355
    :cond_9
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 356
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 355
    const-string v2, "Invalid contactless result"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 437
    :pswitch_b
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 438
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 439
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid contactless result "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 437
    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method

.method public collectiblePayment()Lcom/stripe/transaction/CollectiblePayment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public disconnectReader(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "disconnectReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "disconnectReader"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 529
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$disconnectReader$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$disconnectReader$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->callAidlWithExceptionConverted(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 532
    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->lastActivateReaderResponse:Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    .line 533
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->clearCachedPayment()V

    .line 534
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->reportDisconnect(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    return-void
.end method

.method public discoverReaders(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "listener"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;

    invoke-direct {p1, p0, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$DiscoverReadersOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    .line 540
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;->execute()Ljava/lang/Object;

    return-void
.end method

.method public dispose()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->disconnectListenerJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 120
    :cond_0
    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->disconnectListenerJob:Lkotlinx/coroutines/Job;

    .line 121
    invoke-virtual {p0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->setRequestReconnection(Lkotlin/jvm/functions/Function1;)V

    .line 122
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->clearCachedPayment()V

    return-void
.end method

.method public handleNonCardPaymentMethodConfirmationResponse(Lcom/stripe/transaction/NonCardPaymentMethodData;)V
    .locals 8

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 248
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 247
    const-string v3, "The Tap to Pay adapter doesn\'t support non-card payments"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public init()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->cotsServiceClient:Lcom/stripe/cots/common/CotsClientInterface;

    invoke-interface {v0}, Lcom/stripe/cots/common/CotsClientInterface;->getDisconnectFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$init$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$init$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->appScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->disconnectListenerJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final initKeystore()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->cotsServiceClient:Lcom/stripe/cots/common/CotsClientInterface;

    invoke-interface {v0}, Lcom/stripe/cots/common/CotsClientInterface;->initializeKeys()V

    return-void
.end method

.method public installUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 546
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 545
    const-string v3, "The Tap to Pay adapter doesn\'t support updates"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public killAidlServer(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->cotsServiceClient:Lcom/stripe/cots/common/CotsClientInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/cots/common/CotsClientInterface;->killAidlServer(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method protected onConnectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function1;)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/models/Reader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0, p3}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->setRequestReconnection(Lkotlin/jvm/functions/Function1;)V

    .line 451
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object p2

    sget-object p3, Lcom/stripe/stripeterminal/external/models/DeviceType;->TAP_TO_PAY_DEVICE:Lcom/stripe/stripeterminal/external/models/DeviceType;

    if-ne p2, p3, :cond_0

    .line 455
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->nfcAntennaLogger:Lcom/stripe/cots/common/NfcAntennaLogger;

    invoke-virtual {p2}, Lcom/stripe/cots/common/NfcAntennaLogger;->logDiscoveredAntennas()V

    return-object p1

    .line 453
    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v2, "Invalid reader type"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public onPaymentMethodCollectedForPaymentIntent()V
    .locals 0

    return-void
.end method

.method public onReaderActivated(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 462
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    .line 464
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v0

    sget-object v2, Lcom/stripe/stripeterminal/external/models/DeviceType;->TAP_TO_PAY_DEVICE:Lcom/stripe/stripeterminal/external/models/DeviceType;

    if-ne v0, v2, :cond_4

    .line 468
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getLocation()Lcom/stripe/stripeterminal/external/models/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Location;->getAddress()Lcom/stripe/stripeterminal/external/models/Address;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Address;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    .line 469
    :cond_1
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->isSimulated()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 470
    :cond_2
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 471
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->MISSING_REQUIRED_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 472
    const-string v4, "Must have a country code to connect to a Tap to Pay reader."

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 470
    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    .line 476
    :cond_3
    :goto_1
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;

    invoke-direct {p1, p2, p0, v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$1$cotsReader$1;-><init>(Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->callAidlWithExceptionConverted(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/cots/aidlservice/CotsReader;

    .line 486
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->lastActivateReaderResponse:Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    .line 487
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->checkAndThrowCotsError(Lcom/stripe/cots/aidlservice/CotsReader;)V

    .line 488
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 462
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 465
    :cond_4
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const-string v4, "Invalid reader type"

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 462
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 488
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_7

    .line 492
    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    .line 494
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$3$1;

    invoke-direct {p1, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$onReaderActivated$3$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->callAidlWithExceptionConverted(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    if-eqz p1, :cond_5

    .line 497
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    invoke-virtual {p2, p1}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->putFeatureFlags(Lcom/stripe/proto/model/config/ReaderFeatureFlags;)V

    .line 496
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 492
    :cond_5
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p1, v0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 499
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 501
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateReader failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    invoke-interface {p2, p1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    :cond_6
    return-void

    .line 490
    :cond_7
    throw p1
.end method

.method public readReusableCard()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 553
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 554
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 553
    const-string v2, "The Tap to Pay adapter doesn\'t support readReusableCard"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public rebootReader(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 521
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 520
    const-string v3, "The Tap to Pay adapter doesn\'t support rebooting"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public reconnectReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getTtpAutoReconnectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$ReconnectReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    .line 566
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;->execute()Ljava/lang/Object;

    return-object p1

    .line 569
    :cond_0
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;->reconnectReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object p1

    return-object p1
.end method

.method public selectDynamicCurrencyConversion(Lcom/stripe/transaction/DynamicCurrencyConversionData;)V
    .locals 8

    const-string v0, "dynamicCurrencyConversionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v3, "The Tap to Pay adapter doesn\'t support dcc"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public setFakedContactlessOutcome(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 599
    sget-object v0, Lcom/stripe/cots/common/CotsFakedContactlessOutcomeRepository;->INSTANCE:Lcom/stripe/cots/common/CotsFakedContactlessOutcomeRepository;

    invoke-virtual {v0}, Lcom/stripe/cots/common/CotsFakedContactlessOutcomeRepository;->getSelectedOutcome()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 600
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->cotsServiceClient:Lcom/stripe/cots/common/CotsClientInterface;

    invoke-interface {v0, p1, p2}, Lcom/stripe/cots/common/CotsClientInterface;->setFakedContactlessOutcome(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public supportsReadersOfType(Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;
    .locals 7

    const-string v0, "deviceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "discoveryConfiguration"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;->cotsServiceClient:Lcom/stripe/cots/common/CotsClientInterface;

    invoke-interface {p1}, Lcom/stripe/cots/common/CotsClientInterface;->checkDeviceCompatibility()Lcom/stripe/cots/common/CotsError;

    move-result-object p1

    .line 163
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/cots/common/CotsError;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 175
    sget-object p2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 173
    :cond_0
    sget-object p2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_UNSUPPORTED_DEVICE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 169
    :cond_1
    sget-object p2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_DEBUG_NOT_SUPPORTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 166
    :cond_2
    sget-object p2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v1, p2

    .line 178
    new-instance p2, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$NotSupported;

    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    invoke-virtual {p1}, Lcom/stripe/cots/common/CotsError;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p2, v0}, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$NotSupported;-><init>(Ljava/lang/Throwable;)V

    check-cast p2, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;

    return-object p2

    .line 164
    :cond_3
    sget-object p1, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$Supported;->INSTANCE:Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$Supported;

    check-cast p1, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;

    return-object p1
.end method

.method public updatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;ZLcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 1

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiPaymentIntentUpdater"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-interface {p4, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;->invoke(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;Z)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1
.end method
