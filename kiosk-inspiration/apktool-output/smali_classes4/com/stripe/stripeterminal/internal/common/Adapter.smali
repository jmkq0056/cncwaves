.class public abstract Lcom/stripe/stripeterminal/internal/common/Adapter;
.super Ljava/lang/Object;
.source "Adapter.kt"

# interfaces
.implements Lcom/stripe/transaction/ChargeAttemptChangeListener;
.implements Lcom/stripe/paymentcollection/OnlineAuthStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/Adapter$Companion;,
        Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;,
        Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c2\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000 \u008f\u00012\u00020\u00012\u00020\u0002:\u0006\u008f\u0001\u0090\u0001\u0091\u0001B\u001d\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u001b\u001a\u00020\u001cH&J\u0008\u0010\u001d\u001a\u00020\u001eH&J\u0008\u0010\u001f\u001a\u00020\u001eH&J\u0010\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\"H&J\u0008\u0010#\u001a\u00020\u001eH&J\u0008\u0010$\u001a\u00020\u001eH&J\u001c\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010\'\u001a\u00020(2\u0008\u0008\u0002\u0010)\u001a\u00020\nH&J\u0008\u0010*\u001a\u00020\u001eH&J\u0010\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.H\'J\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H&J\n\u00103\u001a\u0004\u0018\u000104H&J.\u00105\u001a\u00020(2\u0006\u0010\'\u001a\u00020(2\u0006\u00106\u001a\u0002072\u0016\u0008\u0002\u00108\u001a\u0010\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u001e\u0018\u000109J\u0008\u0010;\u001a\u00020\u001eH&J\u0010\u0010<\u001a\u00020\u001e2\u0006\u0010=\u001a\u00020:H&J\u0018\u0010>\u001a\u00020\u001e2\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020BH&J\u0008\u0010C\u001a\u00020\u001eH\u0016J\u0012\u0010D\u001a\u0004\u0018\u00010E2\u0006\u0010\'\u001a\u00020(H&J\u0008\u0010F\u001a\u00020GH&J\u0016\u0010H\u001a\u0008\u0012\u0004\u0012\u00020J0I2\u0006\u0010K\u001a\u00020LH&J\u0010\u0010M\u001a\u00020\u001e2\u0006\u0010N\u001a\u00020OH&J\u0008\u0010P\u001a\u00020\u001eH\u0016J\u0010\u0010Q\u001a\u00020\u001e2\u0006\u0010R\u001a\u00020&H&J\u0018\u0010S\u001a\u00020\u001e2\u0008\u0008\u0002\u0010T\u001a\u00020UH\u0096@\u00a2\u0006\u0002\u0010VJ \u0010W\u001a\u00020\u001e\"\u0008\u0008\u0000\u0010X*\u00020Y2\u000c\u0010Z\u001a\u0008\u0012\u0004\u0012\u0002HX0\u0016H\u0004J\u0008\u0010[\u001a\u00020\u001eH\u0016J0\u0010\\\u001a\u00020(2\u0006\u0010\'\u001a\u00020(2\u0006\u00106\u001a\u0002072\u0016\u0008\u0002\u00108\u001a\u0010\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020\u001e\u0018\u000109H$J\u0010\u0010]\u001a\u00020\u001e2\u0006\u0010^\u001a\u00020_H\u0016J\u0008\u0010`\u001a\u00020\u001eH&J\u0018\u0010a\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020(2\u0006\u0010b\u001a\u00020cH\u0016J\u0008\u0010d\u001a\u000200H&J\u0010\u0010e\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020(H&J\u0010\u0010f\u001a\u00020(2\u0006\u0010\'\u001a\u00020(H&J\u0018\u0010g\u001a\u0004\u0018\u00010h2\u000c\u0010i\u001a\u0008\u0012\u0004\u0012\u00020\u001e0jH&J\u0010\u0010k\u001a\u00020\u001e2\u0006\u0010l\u001a\u00020mH&J\u001a\u0010n\u001a\u00020\u001e2\n\u0010o\u001a\u00060pj\u0002`qH\u0096@\u00a2\u0006\u0002\u0010rJ\u0010\u0010s\u001a\u00020\u001e2\u0006\u0010t\u001a\u00020uH&J\u0010\u0010v\u001a\u00020G2\u0006\u0010w\u001a\u00020xH&J\u001c\u0010y\u001a\u00020\u001e2\u0008\u0010z\u001a\u0004\u0018\u00010{2\u0008\u0010|\u001a\u0004\u0018\u00010}H\u0016J\u0010\u0010~\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020(H&J\u001c\u0010\u007f\u001a\u00030\u0080\u00012\u0008\u0010\u0081\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u0083\u0001\u001a\u00020@H\u0016J\u0010\u0010\u0084\u0001\u001a\u00020\u001eH\u0096@\u00a2\u0006\u0003\u0010\u0085\u0001J\u001b\u0010\u0086\u0001\u001a\u00020L2\u0007\u0010\u0087\u0001\u001a\u00020L2\u0007\u0010\u0088\u0001\u001a\u00020LH\u0002J1\u0010\u0089\u0001\u001a\u00030\u008a\u00012\u0008\u0010\u008b\u0001\u001a\u00030\u008a\u00012\u0008\u00103\u001a\u0004\u0018\u0001042\u0007\u0010\u008c\u0001\u001a\u00020\n2\u0008\u0010\u008d\u0001\u001a\u00030\u008e\u0001H&R\u0014\u0010\t\u001a\u00020\nX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR$\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u0007X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\"\u0010\u000f\u001a\n\u0012\u0002\u0008\u00030\u0010R\u00020\u0000X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R \u0010\u0015\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0016X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u0092\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "Lcom/stripe/transaction/ChargeAttemptChangeListener;",
        "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "immediateRecollectForSca",
        "",
        "getImmediateRecollectForSca",
        "()Z",
        "getLogger",
        "()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "operationInProgress",
        "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;",
        "getOperationInProgress",
        "()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;",
        "setOperationInProgress",
        "(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V",
        "operationToCancel",
        "Lkotlin/reflect/KClass;",
        "getOperationToCancel",
        "()Lkotlin/reflect/KClass;",
        "setOperationToCancel",
        "(Lkotlin/reflect/KClass;)V",
        "adapterType",
        "Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;",
        "cancelCollectInputs",
        "",
        "cancelCollectPaymentMethod",
        "cancelDiscoverReaders",
        "cancelDiscoverReadersReason",
        "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;",
        "cancelInstallUpdate",
        "cancelReconnectReader",
        "checkForUpdate",
        "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "failSilently",
        "clearReaderDisplay",
        "collectInputsBlocking",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;",
        "kmpCollectInputsParameters",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;",
        "collectPaymentMethod",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "paymentMethodCollectionType",
        "Lcom/stripe/transaction/PaymentMethodCollectionType;",
        "collectiblePayment",
        "Lcom/stripe/transaction/CollectiblePayment;",
        "connectReader",
        "connectionConfiguration",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "requestReconnection",
        "Lkotlin/Function1;",
        "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
        "disableAutoReconnect",
        "disconnectReader",
        "disconnectReason",
        "discoverReaders",
        "config",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
        "dispose",
        "getReaderInfo",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "getReaderSettings",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettings;",
        "handleAuthResponse",
        "Lkotlinx/coroutines/Deferred;",
        "Lcom/stripe/hardware/emv/TransactionResult;",
        "tlvBlob",
        "",
        "handleNonCardPaymentMethodConfirmationResponse",
        "data",
        "Lcom/stripe/transaction/NonCardPaymentMethodData;",
        "init",
        "installUpdate",
        "update",
        "killAidlServer",
        "delayMs",
        "",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "logUnexpectedOperationInProgressWarning",
        "T",
        "",
        "clazz",
        "onCollectPaymentMethodApiError",
        "onConnectReader",
        "onOnlineAuthStateChanged",
        "state",
        "Lcom/stripe/paymentcollection/OnlineAuthState;",
        "onPaymentMethodCollectedForPaymentIntent",
        "onReaderActivated",
        "response",
        "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;",
        "readReusableCard",
        "rebootReader",
        "reconnectReader",
        "requestReaderBatteryInfo",
        "Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;",
        "endPolling",
        "Lkotlin/Function0;",
        "selectDynamicCurrencyConversion",
        "dynamicCurrencyConversionData",
        "Lcom/stripe/transaction/DynamicCurrencyConversionData;",
        "setFakedContactlessOutcome",
        "fakedContactlessOutcomeType",
        "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;",
        "Lcom/stripe/stripeterminal/internal/common/proto/FakedContactlessOutcomeType;",
        "(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setReaderDisplay",
        "cart",
        "Lcom/stripe/stripeterminal/external/models/Cart;",
        "setReaderSettings",
        "params",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;",
        "setReconnectParams",
        "bluetoothConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
        "usbConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
        "startSession",
        "supportsReadersOfType",
        "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;",
        "deviceType",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "discoveryConfiguration",
        "testPinCollection",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unexpectedOperationInProgressMessage",
        "expected",
        "found",
        "updatePaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "paymentIntent",
        "requestDynamicCurrencyConversion",
        "apiPaymentIntentUpdater",
        "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
        "Companion",
        "NullOperation",
        "ReaderOperation",
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
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/Adapter$Companion;


# instance fields
.field private final immediateRecollectForSca:Z

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

.field private operationInProgress:Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation<",
            "*>;"
        }
    .end annotation
.end field

.field private operationToCancel:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/Adapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/Adapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/Adapter;->Companion:Lcom/stripe/stripeterminal/internal/common/Adapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/Adapter;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 59
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;

    invoke-direct {p1, p0}, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/Adapter;)V

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/Adapter;->operationInProgress:Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    const/4 p1, 0x1

    .line 163
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/internal/common/Adapter;->immediateRecollectForSca:Z

    return-void
.end method

.method public static synthetic checkForUpdate$default(Lcom/stripe/stripeterminal/internal/common/Adapter;Lcom/stripe/stripeterminal/external/models/Reader;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 96
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/Adapter;->checkForUpdate(Lcom/stripe/stripeterminal/external/models/Reader;Z)Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: checkForUpdate"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic connectReader$default(Lcom/stripe/stripeterminal/internal/common/Adapter;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 188
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/Adapter;->connectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function1;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: connectReader"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic killAidlServer$default(Lcom/stripe/stripeterminal/internal/common/Adapter;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const-wide/16 p1, 0x0

    .line 307
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/Adapter;->killAidlServer(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: killAidlServer"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic killAidlServer$suspendImpl(Lcom/stripe/stripeterminal/internal/common/Adapter;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 308
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 309
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 308
    const-string v2, "This adapter doesn\'t support killAidlServer"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public static synthetic onConnectReader$default(Lcom/stripe/stripeterminal/internal/common/Adapter;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 204
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/Adapter;->onConnectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function1;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onConnectReader"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic setFakedContactlessOutcome$suspendImpl(Lcom/stripe/stripeterminal/internal/common/Adapter;Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
            "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 325
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 326
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 325
    const-string v2, "Setting faked contactless outcome is not supported outside of testing environments"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method static synthetic testPinCollection$suspendImpl(Lcom/stripe/stripeterminal/internal/common/Adapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 315
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 316
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 315
    const-string v2, "This adapter doesn\'t support testPinCollection"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method private final unexpectedOperationInProgressMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected operation in progress. Expected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public abstract adapterType()Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;
.end method

.method public abstract cancelCollectInputs()V
.end method

.method public abstract cancelCollectPaymentMethod()V
.end method

.method public abstract cancelDiscoverReaders(Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;)V
.end method

.method public abstract cancelInstallUpdate()V
.end method

.method public abstract cancelReconnectReader()V
.end method

.method public abstract checkForUpdate(Lcom/stripe/stripeterminal/external/models/Reader;Z)Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract clearReaderDisplay()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract collectInputsBlocking(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;)Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;
.end method

.method public abstract collectPaymentMethod(Lcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract collectiblePayment()Lcom/stripe/transaction/CollectiblePayment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public final connectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function1;)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 4
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

    const-string v1, "connectionConfiguration"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/Adapter;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v2, 0x3

    .line 195
    new-array v2, v2, [Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 196
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->toDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/proto/model/common/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "deviceInfo"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 197
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "connectionConfigurationType"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 193
    const-string v0, "connectReader"

    invoke-interface {v1, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 200
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/Adapter;->onConnectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function1;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object p1

    return-object p1
.end method

.method public abstract disableAutoReconnect()V
.end method

.method public abstract disconnectReader(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract discoverReaders(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getImmediateRecollectForSca()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/Adapter;->immediateRecollectForSca:Z

    return v0
.end method

.method protected final getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/Adapter;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-object v0
.end method

.method protected final getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation<",
            "*>;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/Adapter;->operationInProgress:Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    return-object v0
.end method

.method protected final getOperationToCancel()Lkotlin/reflect/KClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "*>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/Adapter;->operationToCancel:Lkotlin/reflect/KClass;

    return-object v0
.end method

.method public abstract getReaderInfo(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/hardware/status/ReaderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract getReaderSettings()Lcom/stripe/stripeterminal/external/models/ReaderSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract handleAuthResponse(Ljava/lang/String;)Lkotlinx/coroutines/Deferred;
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
.end method

.method public abstract handleNonCardPaymentMethodConfirmationResponse(Lcom/stripe/transaction/NonCardPaymentMethodData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public abstract installUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public killAidlServer(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/Adapter;->killAidlServer$suspendImpl(Lcom/stripe/stripeterminal/internal/common/Adapter;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final logUnexpectedOperationInProgressWarning(Lkotlin/reflect/KClass;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/Adapter;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-object v1, v0

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    .line 340
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 341
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 342
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/Adapter;->operationInProgress:Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->unexpectedOperationInProgressMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 340
    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Ljava/lang/Throwable;

    const/4 p1, 0x0

    .line 339
    new-array v4, p1, [Lkotlin/Pair;

    const/4 v5, 0x2

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->w$default(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;ILjava/lang/Object;)V

    return-void
.end method

.method public onCollectPaymentMethodApiError()V
    .locals 0

    return-void
.end method

.method protected abstract onConnectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function1;)Lcom/stripe/stripeterminal/external/models/Reader;
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
.end method

.method public onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract onPaymentMethodCollectedForPaymentIntent()V
.end method

.method public onReaderActivated(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;)V
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract readReusableCard()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract rebootReader(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract reconnectReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/external/models/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract requestReaderBatteryInfo(Lkotlin/jvm/functions/Function0;)Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract selectDynamicCurrencyConversion(Lcom/stripe/transaction/DynamicCurrencyConversionData;)V
.end method

.method public setFakedContactlessOutcome(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/Adapter;->setFakedContactlessOutcome$suspendImpl(Lcom/stripe/stripeterminal/internal/common/Adapter;Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/Adapter;->operationInProgress:Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    return-void
.end method

.method protected final setOperationToCancel(Lkotlin/reflect/KClass;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/Adapter;->operationToCancel:Lkotlin/reflect/KClass;

    return-void
.end method

.method public abstract setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract setReaderSettings(Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;)Lcom/stripe/stripeterminal/external/models/ReaderSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public setReconnectParams(Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 333
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/Adapter;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 p2, 0x0

    .line 334
    new-array p2, p2, [Lkotlin/Pair;

    .line 333
    const-string v0, "Unexpectedly called setReconnectParams from adapter without defined handling."

    invoke-interface {p1, v0, p2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method

.method public abstract startSession(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public supportsReadersOfType(Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;
    .locals 1

    const-string v0, "deviceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "discoveryConfiguration"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object p1, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$Supported;->INSTANCE:Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$Supported;

    check-cast p1, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;

    return-object p1
.end method

.method public testPinCollection(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->testPinCollection$suspendImpl(Lcom/stripe/stripeterminal/internal/common/Adapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract updatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;ZLcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
.end method
