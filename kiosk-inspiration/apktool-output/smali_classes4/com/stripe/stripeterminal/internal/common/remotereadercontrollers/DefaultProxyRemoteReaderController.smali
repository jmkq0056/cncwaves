.class public final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;
.super Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;
.source "ProxyRemoteReaderController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProxyRemoteReaderController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProxyRemoteReaderController.kt\ncom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,357:1\n16#2:358\n*S KotlinDebug\n*F\n+ 1 ProxyRemoteReaderController.kt\ncom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController\n*L\n51#1:358\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J\u0008\u0010\u0011\u001a\u00020\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\u000fH\u0016J\u0008\u0010\u0013\u001a\u00020\u000fH\u0016J\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010!\u001a\u00020\u000fH\u0016J@\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0012\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u000f0(2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f0(H\u0016J\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0016J \u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u000207H\u0016J)\u00108\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0008\u00109\u001a\u0004\u0018\u00010:2\u0008\u0010;\u001a\u0004\u0018\u000107H\u0016\u00a2\u0006\u0002\u0010<J\u0010\u0010=\u001a\u00020\u001d2\u0006\u0010>\u001a\u00020\u001dH\u0016J\u001e\u0010?\u001a\u00020\u000f2\u0006\u0010@\u001a\u00020\n2\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00020\u000f0BH\u0016J\u0018\u0010C\u001a\u00020\u001d2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020GH\u0016J\u0008\u0010H\u001a\u00020\u000fH\u0016J(\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\n0J2\u0006\u0010K\u001a\u0002072\u0008\u0010L\u001a\u0004\u0018\u0001072\u0006\u0010M\u001a\u00020NH\u0016J\u0008\u0010O\u001a\u00020\u000fH\u0016J\n\u0010P\u001a\u0004\u0018\u00010\u0005H\u0007J\u0008\u0010Q\u001a\u00020RH\u0016J \u0010S\u001a\u00020T2\u0006\u0010@\u001a\u00020\n2\u0006\u0010K\u001a\u0002072\u0006\u0010U\u001a\u00020VH\u0014J\u0018\u0010W\u001a\u00020\u001a2\u0006\u0010X\u001a\u00020Y2\u0006\u0010F\u001a\u00020GH\u0015J\u0008\u0010Z\u001a\u00020\u000fH\u0016JB\u0010[\u001a\u00020\u000f2\u0006\u0010\\\u001a\u0002072\u0008\u0010]\u001a\u0004\u0018\u00010^2\u0012\u0010_\u001a\u000e\u0012\u0004\u0012\u00020`\u0012\u0004\u0012\u00020\u000f0(2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f0(H\u0016J\u0010\u0010a\u001a\u00020\u000f2\u0006\u0010b\u001a\u00020cH\u0016J\u0010\u0010d\u001a\u00020\u000f2\u0006\u0010e\u001a\u00020fH\u0016J\u0010\u0010g\u001a\u00020R2\u0006\u0010\u001f\u001a\u00020hH\u0016JT\u0010i\u001a\u00020\u000f2\u0006\u0010j\u001a\u00020k2\u0008\u0010l\u001a\u0004\u0018\u0001072\u0008\u0010m\u001a\u0004\u0018\u0001072\u0006\u0010%\u001a\u00020&2\u0012\u0010_\u001a\u000e\u0012\u0004\u0012\u00020`\u0012\u0004\u0012\u00020\u000f0(2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f0(H\u0016J\u00c0\u0001\u0010n\u001a\u00020\u000f2\u0006\u0010j\u001a\u00020k2\u0012\u0010_\u001a\u000e\u0012\u0004\u0012\u00020`\u0012\u0004\u0012\u00020\u000f0(2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f0(2\u0006\u0010o\u001a\u00020&2\u0006\u0010p\u001a\u00020&2\u0006\u0010q\u001a\u00020&2\u0008\u0010\\\u001a\u0004\u0018\u0001072\u0008\u0010r\u001a\u0004\u0018\u00010k2\u000e\u0010s\u001a\n\u0012\u0004\u0012\u00020t\u0018\u00010J2\u0008\u0010u\u001a\u0004\u0018\u0001072\u0008\u0010]\u001a\u0004\u0018\u00010^2\u0006\u0010%\u001a\u00020&2\u0008\u0010\u001b\u001a\u0004\u0018\u00010v2\u0006\u0010w\u001a\u00020&2\u0008\u0010x\u001a\u0004\u0018\u00010y2\u0008\u0010z\u001a\u0004\u0018\u0001072\u0008\u0010{\u001a\u0004\u0018\u00010|H\u0016Jp\u0010}\u001a\u00020\u000f2\u0008\u0010\\\u001a\u0004\u0018\u0001072\u0006\u0010%\u001a\u00020&2\u0006\u0010p\u001a\u00020&2\u0008\u0010]\u001a\u0004\u0018\u00010~2\u0008\u0010x\u001a\u0004\u0018\u00010y2\u0008\u0010{\u001a\u0004\u0018\u00010|2\u0006\u0010>\u001a\u00020\u007f2\u0012\u0010_\u001a\u000e\u0012\u0004\u0012\u00020`\u0012\u0004\u0012\u00020\u000f0(2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u000f0(H\u0016JG\u0010\u0080\u0001\u001a\u0003H\u0081\u0001\"\u0005\u0008\u0000\u0010\u0081\u00012\u0007\u0010\u0082\u0001\u001a\u0002072\t\u0008\u0002\u0010\u0083\u0001\u001a\u0002072\u001a\u0010\u0084\u0001\u001a\u0015\u0012\u0004\u0012\u00020\u0005\u0012\u0005\u0012\u0003H\u0081\u00010(\u00a2\u0006\u0003\u0008\u0085\u0001H\u0002\u00a2\u0006\u0003\u0010\u0086\u0001R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0087\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;",
        "ipReaderController",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;",
        "handoffReaderController",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "connectedReader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "getConnectedReader",
        "()Lcom/stripe/stripeterminal/external/models/Reader;",
        "currentController",
        "cancelCollectData",
        "",
        "cancelCollectInputs",
        "cancelCollectInteracRefundMethod",
        "cancelCollectPaymentMethod",
        "cancelCollectSetupIntentPaymentMethod",
        "cancelConfirmInteracRefund",
        "callback",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "cancelConfirmPaymentIntent",
        "cancelConfirmSetupIntent",
        "cancelPaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "paymentIntent",
        "cancelSetupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "intent",
        "params",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "clearReaderDisplay",
        "collectData",
        "type",
        "Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;",
        "enableCustomerCancellation",
        "",
        "onDataCollected",
        "Lkotlin/Function1;",
        "Lcom/stripe/proto/model/rest/ReaderCollectedData;",
        "onFailure",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "collectInputs",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;",
        "kmpCollectInputsParameters",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;",
        "confirmInteracRefund",
        "Lcom/stripe/stripeterminal/external/models/Refund;",
        "refundParams",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
        "paymentMethod",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "reason",
        "",
        "confirmPayment",
        "amountSurcharge",
        "",
        "returnUrl",
        "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "confirmSetupIntent",
        "setupIntent",
        "connectReader",
        "reader",
        "disconnectCallback",
        "Lkotlin/Function0;",
        "createSetupIntent",
        "setupIntentParameters",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
        "createConfiguration",
        "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;",
        "disconnectReader",
        "discoverReaders",
        "",
        "connectionToken",
        "location",
        "timeoutInSeconds",
        "",
        "finishConfirmPayment",
        "getCurrentController",
        "getReaderSettings",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettings;",
        "onActivateReader",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;",
        "connectionConfiguration",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "onCreatePaymentIntent",
        "paymentIntentParameters",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;",
        "onPaymentMethodCollectedForPaymentIntent",
        "resumeCollectPaymentMethod",
        "intentId",
        "offlineDetails",
        "Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
        "onPaymentCollected",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "setReaderController",
        "discoveryConfiguration",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "setReaderDisplay",
        "cart",
        "Lcom/stripe/stripeterminal/external/models/Cart;",
        "setReaderSettings",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;",
        "startInteracRefund",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "chargeId",
        "paymentIntentId",
        "startPaymentCollection",
        "skipTipping",
        "manualEntry",
        "updatePaymentIntent",
        "tipEligibleAmount",
        "computedPriorities",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
        "stripeAccountId",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "requestDynamicCurrencyConversion",
        "offlineBehavior",
        "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
        "surchargeNotice",
        "allowRedisplay",
        "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "startSetupIntentPaymentCollection",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "withCurrentController",
        "T",
        "methodName",
        "errorMessage",
        "method",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "common_publish"
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
.field private currentController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;

.field private final handoffReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;

.field private final ipReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1

    const-string v0, "ipReaderController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    const-class v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p3

    .line 50
    invoke-direct {p0, p3}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    .line 47
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->ipReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    .line 48
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->handoffReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;

    return-void
.end method

.method private final withCurrentController(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 351
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->currentController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;

    if-eqz p1, :cond_0

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 352
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    .line 351
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method static synthetic withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 348
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "DiscoverReaders must be called before "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 346
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancelCollectData()V
    .locals 7

    .line 337
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelCollectData$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelCollectData$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "cancel collect data"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelCollectInputs()V
    .locals 7

    .line 88
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelCollectInputs$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelCollectInputs$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "canceling collect inputs"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelCollectInteracRefundMethod()V
    .locals 7

    .line 119
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelCollectInteracRefundMethod$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelCollectInteracRefundMethod$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "canceling refund payment method collection"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelCollectPaymentMethod()V
    .locals 7

    .line 123
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelCollectPaymentMethod$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelCollectPaymentMethod$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "canceling payment method collection"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelCollectSetupIntentPaymentMethod()V
    .locals 7

    .line 128
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelCollectSetupIntentPaymentMethod$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelCollectSetupIntentPaymentMethod$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "canceling SetupIntent payment method collection"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelConfirmInteracRefund(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelConfirmInteracRefund$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelConfirmInteracRefund$1;-><init>(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "canceling Refund confirmation"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelConfirmPaymentIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelConfirmPaymentIntent$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelConfirmPaymentIntent$1;-><init>(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "canceling PaymentIntent confirmation"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelConfirmSetupIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 7

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelConfirmSetupIntent$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelConfirmSetupIntent$1;-><init>(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "canceling SetupIntent confirmation"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 7

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelPaymentIntent$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelPaymentIntent$1;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "cancelling a payment intent"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object p1
.end method

.method public cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 7

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelSetupIntent$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$cancelSetupIntent$1;-><init>(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "cancelling a setup intent"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    return-object p1
.end method

.method public clearReaderDisplay()V
    .locals 7

    .line 132
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$clearReaderDisplay$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$clearReaderDisplay$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "clearing reader display"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public collectData(Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/proto/model/rest/ReaderCollectedData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDataCollected"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFailure"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$collectData$1;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$collectData$1;-><init>(Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "collect data"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public collectInputs(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;)Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;
    .locals 7

    const-string v0, "kmpCollectInputsParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$collectInputs$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$collectInputs$1;-><init>(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "starting collect inputs"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;

    return-object p1
.end method

.method public confirmInteracRefund(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/Refund;
    .locals 7

    const-string v0, "refundParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethod"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$confirmInteracRefund$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$confirmInteracRefund$1;-><init>(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "confirming a refund"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/Refund;

    return-object p1
.end method

.method public confirmPayment(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 7

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$confirmPayment$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$confirmPayment$1;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "confirming a payment intent"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object p1
.end method

.method public confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 7

    const-string v0, "setupIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$confirmSetupIntent$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$confirmSetupIntent$1;-><init>(Lcom/stripe/stripeterminal/external/models/SetupIntent;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "confirming a setup intent"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    return-object p1
.end method

.method public connectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disconnectCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$connectReader$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$connectReader$1;-><init>(Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/jvm/functions/Function0;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "connecting to a reader"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 7

    const-string v0, "setupIntentParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$createSetupIntent$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$createSetupIntent$1;-><init>(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "creating a setup intent"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    return-object p1
.end method

.method public disconnectReader()V
    .locals 7

    .line 192
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$disconnectReader$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$disconnectReader$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "disconnecting from a reader"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public discoverReaders(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ">;"
        }
    .end annotation

    const-string v0, "connectionToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$discoverReaders$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$discoverReaders$1;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string p1, "discoverReaders"

    const-string p2, "Unexpected internal error"

    invoke-direct {p0, p1, p2, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public finishConfirmPayment()V
    .locals 7

    .line 296
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$finishConfirmPayment$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$finishConfirmPayment$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "confirming a payment intent"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 7

    .line 321
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$connectedReader$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$connectedReader$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "connectedReader"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/Reader;

    return-object v0
.end method

.method public final getCurrentController()Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->currentController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;

    return-object v0
.end method

.method public getReaderSettings()Lcom/stripe/stripeterminal/external/models/ReaderSettings;
    .locals 7

    .line 217
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$getReaderSettings$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$getReaderSettings$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "querying reader settings"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/ReaderSettings;

    return-object v0
.end method

.method protected onActivateReader(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;
    .locals 7

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionConfiguration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$onActivateReader$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$onActivateReader$1;-><init>(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "connecting to a reader"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    return-object p1
.end method

.method protected onCreatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 7

    const-string v0, "paymentIntentParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$onCreatePaymentIntent$1;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$onCreatePaymentIntent$1;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "creating a payment intent"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object p1
.end method

.method public onPaymentMethodCollectedForPaymentIntent()V
    .locals 7

    .line 314
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$onPaymentMethodCollectedForPaymentIntent$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$onPaymentMethodCollectedForPaymentIntent$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "collected payment method for payment intent"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resumeCollectPaymentMethod(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "intentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPaymentCollected"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFailure"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$resumeCollectPaymentMethod$1;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$resumeCollectPaymentMethod$1;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "resuming collecting a payment"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setReaderController(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)V
    .locals 8

    const-string v0, "discoveryConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->ipReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;

    goto :goto_0

    .line 63
    :cond_0
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$HandoffDiscoveryConfiguration;

    if-eqz v0, :cond_2

    .line 64
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->handoffReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;

    if-eqz p1, :cond_1

    .line 61
    :goto_0
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->currentController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;

    return-void

    .line 65
    :cond_1
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 66
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 65
    const-string v2, "The Terminal `handoffclient` module must be included for this DiscoveryConfiguration"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 74
    :cond_2
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 75
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Encountered unexpected discovery configuration "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 74
    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;)V
    .locals 7

    const-string v0, "cart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$setReaderDisplay$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$setReaderDisplay$1;-><init>(Lcom/stripe/stripeterminal/external/models/Cart;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "setting reader display"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setReaderSettings(Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;)Lcom/stripe/stripeterminal/external/models/ReaderSettings;
    .locals 7

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$setReaderSettings$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$setReaderSettings$1;-><init>(Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "setting reader settings"

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/ReaderSettings;

    return-object p1
.end method

.method public startInteracRefund(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/currency/Amount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPaymentCollected"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFailure"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startInteracRefund$1;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startInteracRefund$1;-><init>(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object p4, v1

    check-cast p4, Lkotlin/jvm/functions/Function1;

    const/4 p5, 0x2

    const/4 p6, 0x0

    const-string p2, "collecting a refund payment method"

    const/4 p3, 0x0

    move-object p1, p0

    invoke-static/range {p1 .. p6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startPaymentCollection(Lcom/stripe/currency/Amount;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZZLjava/lang/String;Lcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/currency/Amount;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;ZZZ",
            "Ljava/lang/String;",
            "Lcom/stripe/currency/Amount;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
            "Z",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Z",
            "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
            ")V"
        }
    .end annotation

    const-string v0, "amount"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPaymentCollected"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFailure"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-direct/range {v1 .. v18}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startPaymentCollection$1;-><init>(Lcom/stripe/currency/Amount;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZZLjava/lang/String;Lcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "collecting a payment method"

    const/4 v4, 0x0

    move-object/from16 p1, p0

    move/from16 p5, v0

    move-object/from16 p4, v1

    move-object/from16 p6, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    invoke-static/range {p1 .. p6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startSetupIntentPaymentCollection(Ljava/lang/String;ZZLcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/proto/model/rest/SetupIntent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;",
            "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
            "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setupIntent"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPaymentCollected"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFailure"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v10}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;-><init>(Ljava/lang/String;ZZLcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/proto/model/rest/SetupIntent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object p4, v1

    check-cast p4, Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    const/4 p2, 0x0

    const-string p3, "collecting a SetupIntent payment method"

    const/4 v0, 0x0

    move/from16 p5, p1

    move-object/from16 p6, p2

    move-object p2, p3

    move-object p3, v0

    move-object p1, p0

    invoke-static/range {p1 .. p6}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->withCurrentController$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
