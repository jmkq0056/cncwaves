.class public final Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;
.super Lcom/stripe/stripeterminal/internal/common/Adapter;
.source "ProxyAdapter.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProxyAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProxyAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,261:1\n255#1:262\n256#1,2:264\n255#1:267\n256#1,2:269\n255#1:271\n256#1,2:273\n255#1:275\n256#1,2:277\n255#1:279\n256#1,2:281\n255#1:283\n256#1,2:285\n255#1:287\n256#1,2:289\n255#1:291\n256#1,2:293\n255#1:295\n256#1,2:297\n255#1:299\n256#1,2:301\n255#1:303\n256#1,2:305\n255#1:307\n256#1,2:309\n255#1:311\n256#1,2:313\n255#1:315\n256#1,2:317\n255#1:319\n256#1,2:321\n255#1:323\n256#1,2:325\n255#1:327\n256#1,2:329\n255#1:331\n256#1,2:333\n255#1:335\n256#1,2:337\n255#1:339\n256#1,2:341\n255#1:343\n256#1,2:345\n255#1:347\n256#1,2:349\n1#2:263\n1#2:266\n1#2:268\n1#2:272\n1#2:276\n1#2:280\n1#2:284\n1#2:288\n1#2:292\n1#2:296\n1#2:300\n1#2:304\n1#2:308\n1#2:312\n1#2:316\n1#2:320\n1#2:324\n1#2:328\n1#2:332\n1#2:336\n1#2:340\n1#2:344\n1#2:348\n1#2:351\n*S KotlinDebug\n*F\n+ 1 ProxyAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter\n*L\n75#1:262\n75#1:264,2\n87#1:267\n87#1:269,2\n92#1:271\n92#1:273,2\n94#1:275\n94#1:277,2\n101#1:279\n101#1:281,2\n110#1:283\n110#1:285,2\n121#1:287\n121#1:289,2\n133#1:291\n133#1:293,2\n137#1:295\n137#1:297,2\n142#1:299\n142#1:301,2\n169#1:303\n169#1:305,2\n173#1:307\n173#1:309,2\n191#1:311\n191#1:313,2\n196#1:315\n196#1:317,2\n203#1:319\n203#1:321,2\n207#1:323\n207#1:325,2\n211#1:327\n211#1:329,2\n216#1:331\n216#1:333,2\n226#1:335\n226#1:337,2\n228#1:339\n228#1:341,2\n240#1:343\n240#1:345,2\n247#1:347\n247#1:349,2\n75#1:263\n87#1:268\n92#1:272\n94#1:276\n101#1:280\n110#1:284\n121#1:288\n133#1:292\n137#1:296\n142#1:300\n169#1:304\n173#1:308\n191#1:312\n196#1:316\n203#1:320\n207#1:324\n211#1:328\n216#1:332\n226#1:336\n228#1:340\n240#1:344\n247#1:348\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00be\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u0002`\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0014H\u0016J\u0008\u0010\u001a\u001a\u00020\u0014H\u0016J\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000eH\u0016J\u0008\u0010 \u001a\u00020\u0014H\u0016J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0017J\u0010\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(H\u0016J\n\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0008\u0010+\u001a\u00020\u0014H\u0016J\u0010\u0010,\u001a\u00020\u00142\u0006\u0010-\u001a\u00020.H\u0016J\u0018\u0010/\u001a\u00020\u00142\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0016J\u0013\u00104\u001a\u0004\u0018\u00010\u00012\u0006\u00105\u001a\u000201H\u0096\u0001J\u0012\u00106\u001a\u0004\u0018\u0001072\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0008\u00108\u001a\u000209H\u0016J\u0016\u0010:\u001a\u0008\u0012\u0004\u0012\u00020<0;2\u0006\u0010=\u001a\u00020>H\u0016J\u0010\u0010?\u001a\u00020\u00142\u0006\u0010@\u001a\u00020AH\u0016J\u0010\u0010B\u001a\u00020\u00142\u0006\u0010C\u001a\u00020\u001cH\u0016J\u0016\u0010D\u001a\u00020\u00142\u0006\u0010E\u001a\u00020FH\u0096@\u00a2\u0006\u0002\u0010GJ\u0012\u0010H\u001a\u00020\u00142\u0008\u0010I\u001a\u0004\u0018\u00010JH\u0016J\u0008\u0010K\u001a\u00020\u0014H\u0016J.\u0010L\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010M\u001a\u00020N2\u0014\u0010O\u001a\u0010\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u0014\u0018\u00010PH\u0014J\u0010\u0010Q\u001a\u00020\u00142\u0006\u0010R\u001a\u00020SH\u0016J\u0008\u0010T\u001a\u00020\u0014H\u0016J\u0018\u0010U\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010V\u001a\u00020WH\u0016J\u0008\u0010X\u001a\u00020&H\u0016J\u0010\u0010Y\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010Z\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0018\u0010[\u001a\u0004\u0018\u00010\\2\u000c\u0010]\u001a\u0008\u0012\u0004\u0012\u00020\u00140^H\u0016J\u0010\u0010_\u001a\u00020\u00142\u0006\u0010`\u001a\u00020aH\u0016J\u0013\u0010b\u001a\u0004\u0018\u00010\u00012\u0006\u00105\u001a\u000201H\u0096\u0001J\u001a\u0010c\u001a\u00020\u00142\n\u0010d\u001a\u00060ej\u0002`fH\u0096@\u00a2\u0006\u0002\u0010gJ\u0010\u0010h\u001a\u00020\u00142\u0006\u0010i\u001a\u00020jH\u0016J\u0010\u0010k\u001a\u0002092\u0006\u0010l\u001a\u00020mH\u0016J\u001c\u0010n\u001a\u00020\u00142\u0008\u0010o\u001a\u0004\u0018\u00010p2\u0008\u0010q\u001a\u0004\u0018\u00010rH\u0016J\u0010\u0010s\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0018\u0010t\u001a\u00020u2\u0006\u0010v\u001a\u00020w2\u0006\u00105\u001a\u000201H\u0016J*\u0010x\u001a\u00020y2\u0006\u0010z\u001a\u00020y2\u0008\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010{\u001a\u00020\u000e2\u0006\u0010|\u001a\u00020}H\u0016J;\u0010~\u001a\u0002H\u007f\"\u0006\u0008\u0000\u0010\u007f\u0018\u00012\u0007\u0010\u0080\u0001\u001a\u00020>2\u0019\u0010\u0081\u0001\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H\u007f0P\u00a2\u0006\u0003\u0008\u0082\u0001H\u0082\u0008\u00a2\u0006\u0003\u0010\u0083\u0001R\u0014\u0010\n\u001a\u0004\u0018\u00010\u0001X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0084\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;",
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;",
        "repository",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "currentAdapter",
        "getCurrentAdapter",
        "()Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "immediateRecollectForSca",
        "",
        "getImmediateRecollectForSca",
        "()Z",
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
        "disableAutoReconnect",
        "disconnectReader",
        "disconnectReason",
        "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
        "discoverReaders",
        "config",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
        "getAdapterByDiscoveryConfiguration",
        "discoveryConfiguration",
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
        "installUpdate",
        "update",
        "killAidlServer",
        "delayMs",
        "",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onChargeAttemptChanged",
        "chargeAttempt",
        "Lcom/stripe/transaction/ChargeAttempt;",
        "onCollectPaymentMethodApiError",
        "onConnectReader",
        "connectionConfiguration",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "requestReconnection",
        "Lkotlin/Function1;",
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
        "setAdapterByDiscoveryConfiguration",
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
        "updatePaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "paymentIntent",
        "requestDynamicCurrencyConversion",
        "apiPaymentIntentUpdater",
        "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
        "withCurrentAdapter",
        "T",
        "methodName",
        "method",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
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
.field private final repository:Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p2}, Lcom/stripe/stripeterminal/internal/common/Adapter;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    .line 47
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->repository:Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;

    return-void
.end method

.method private final synthetic withCurrentAdapter(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 256
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "discoverReaders must be called before "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 255
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method


# virtual methods
.method public adapterType()Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;
    .locals 8

    .line 233
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->adapterType()Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 234
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 233
    const-string v3, "AdapterType does not exist"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public cancelCollectInputs()V
    .locals 8

    .line 339
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->cancelCollectInputs()V

    return-void

    .line 339
    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 341
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 339
    const-string v3, "discoverReaders must be called before cancelCollectInputs"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public cancelCollectPaymentMethod()V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->cancelCollectPaymentMethod()V

    :cond_0
    return-void
.end method

.method public cancelDiscoverReaders(Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;)V
    .locals 1

    const-string v0, "cancelDiscoverReadersReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->cancelDiscoverReaders(Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;)V

    :cond_0
    return-void
.end method

.method public cancelInstallUpdate()V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->cancelInstallUpdate()V

    :cond_0
    return-void
.end method

.method public cancelReconnectReader()V
    .locals 8

    .line 295
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->cancelReconnectReader()V

    return-void

    .line 295
    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 297
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 295
    const-string v3, "discoverReaders must be called before cancelReconnectReader"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public checkForUpdate(Lcom/stripe/stripeterminal/external/models/Reader;Z)Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/Adapter;->checkForUpdate(Lcom/stripe/stripeterminal/external/models/Reader;Z)Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    move-result-object p1

    return-object p1

    .line 262
    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 264
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 262
    const-string v2, "discoverReaders must be called before checkForUpdate"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public clearReaderDisplay()V
    .locals 8

    .line 267
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->clearReaderDisplay()V

    return-void

    .line 267
    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 269
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 267
    const-string v3, "discoverReaders must be called before clearReaderDisplay"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public collectInputsBlocking(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;)Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;
    .locals 7

    const-string v0, "kmpCollectInputsParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->collectInputsBlocking(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;)Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;

    move-result-object p1

    return-object p1

    .line 335
    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 337
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 335
    const-string v2, "discoverReaders must be called before collectInputs"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public collectPaymentMethod(Lcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "paymentMethodCollectionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->collectPaymentMethod(Lcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object p1

    return-object p1

    .line 279
    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 281
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 279
    const-string v2, "discoverReaders must be called before collectPaymentMethod"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public collectiblePayment()Lcom/stripe/transaction/CollectiblePayment;
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->collectiblePayment()Lcom/stripe/transaction/CollectiblePayment;

    move-result-object v0

    return-object v0
.end method

.method public disableAutoReconnect()V
    .locals 8

    .line 307
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->disableAutoReconnect()V

    return-void

    .line 307
    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 309
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 307
    const-string v3, "discoverReaders must be called before disableAutoReconnect"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public disconnectReader(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "disconnectReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->disconnectReader(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    :cond_0
    return-void
.end method

.method public discoverReaders(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->setAdapterByDiscoveryConfiguration(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/Adapter;->discoverReaders(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    .line 162
    :cond_1
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v2, "No DeviceType selected"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public getAdapterByDiscoveryConfiguration(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/internal/common/Adapter;
    .locals 1

    const-string v0, "discoveryConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->repository:Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;->getAdapterByDiscoveryConfiguration(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->repository:Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getImmediateRecollectForSca()Z
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->getImmediateRecollectForSca()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getReaderInfo(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/hardware/status/ReaderInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->getReaderInfo(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/hardware/status/ReaderInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReaderSettings()Lcom/stripe/stripeterminal/external/models/ReaderSettings;
    .locals 8

    .line 275
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->getReaderSettings()Lcom/stripe/stripeterminal/external/models/ReaderSettings;

    move-result-object v0

    return-object v0

    .line 275
    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 277
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 275
    const-string v3, "discoverReaders must be called before getReaderSettings"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public handleAuthResponse(Ljava/lang/String;)Lkotlinx/coroutines/Deferred;
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

    .line 187
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->handleAuthResponse(Ljava/lang/String;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1
.end method

.method public handleNonCardPaymentMethodConfirmationResponse(Lcom/stripe/transaction/NonCardPaymentMethodData;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->handleNonCardPaymentMethodConfirmationResponse(Lcom/stripe/transaction/NonCardPaymentMethodData;)V

    return-void

    .line 315
    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 317
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 315
    const-string v3, "discoverReaders must be called before handleNonCardPaymentMethodConfirmationResponse"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public installUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->installUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V

    :cond_0
    return-void
.end method

.method public killAidlServer(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    .line 343
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/Adapter;->killAidlServer(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    .line 343
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 345
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 343
    const-string v2, "discoverReaders must be called before killAidlServer"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public onChargeAttemptChanged(Lcom/stripe/transaction/ChargeAttempt;)V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->onChargeAttemptChanged(Lcom/stripe/transaction/ChargeAttempt;)V

    :cond_0
    return-void
.end method

.method public onCollectPaymentMethodApiError()V
    .locals 1

    .line 243
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->onCollectPaymentMethodApiError()V

    :cond_0
    return-void
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

    .line 291
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/Adapter;->connectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function1;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object p1

    return-object p1

    .line 291
    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 293
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 291
    const-string v2, "discoverReaders must be called before connectReader"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V

    :cond_0
    return-void
.end method

.method public onPaymentMethodCollectedForPaymentIntent()V
    .locals 8

    .line 287
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->onPaymentMethodCollectedForPaymentIntent()V

    return-void

    .line 287
    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 289
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 287
    const-string v3, "discoverReaders must be called before collectPaymentMethod"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public onReaderActivated(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;)V
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/Adapter;->onReaderActivated(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;)V

    :cond_0
    return-void
.end method

.method public readReusableCard()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 319
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->readReusableCard()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v0

    return-object v0

    .line 319
    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 321
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 319
    const-string v3, "discoverReaders must be called before readReusableCard"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public rebootReader(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->rebootReader(Lcom/stripe/stripeterminal/external/models/Reader;)V

    :cond_0
    return-void
.end method

.method public reconnectReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->reconnectReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object p1

    return-object p1

    .line 299
    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 301
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 299
    const-string v2, "discoverReaders must be called before reconnectReader"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public requestReaderBatteryInfo(Lkotlin/jvm/functions/Function0;)Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;"
        }
    .end annotation

    const-string v0, "endPolling"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->requestReaderBatteryInfo(Lkotlin/jvm/functions/Function0;)Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;

    move-result-object p1

    return-object p1

    .line 331
    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 333
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 331
    const-string v2, "discoverReaders must be called before requestReaderBatteryInfo"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public selectDynamicCurrencyConversion(Lcom/stripe/transaction/DynamicCurrencyConversionData;)V
    .locals 8

    const-string v0, "dynamicCurrencyConversionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->selectDynamicCurrencyConversion(Lcom/stripe/transaction/DynamicCurrencyConversionData;)V

    return-void

    .line 311
    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 313
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 311
    const-string v3, "discoverReaders must be called before selectDynamicCurrencyConversion"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public setAdapterByDiscoveryConfiguration(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/internal/common/Adapter;
    .locals 1

    const-string v0, "discoveryConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->repository:Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;->setAdapterByDiscoveryConfiguration(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object p1

    return-object p1
.end method

.method public setFakedContactlessOutcome(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    .line 347
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/Adapter;->setFakedContactlessOutcome(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    .line 347
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 349
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 347
    const-string v2, "discoverReaders must be called before setFakedContactlessOutcome"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;)V
    .locals 8

    const-string v0, "cart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;)V

    return-void

    .line 323
    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 325
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 323
    const-string v3, "discoverReaders must be called before setReaderDisplay"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public setReaderSettings(Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;)Lcom/stripe/stripeterminal/external/models/ReaderSettings;
    .locals 7

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->setReaderSettings(Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;)Lcom/stripe/stripeterminal/external/models/ReaderSettings;

    move-result-object p1

    return-object p1

    .line 271
    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 273
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 271
    const-string v2, "discoverReaders must be called before setReaderSettings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public setReconnectParams(Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/Adapter;->setReconnectParams(Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;)V

    return-void

    .line 303
    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 305
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 303
    const-string v3, "discoverReaders must be called before setReconnectParams"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public startSession(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 8

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->startSession(Lcom/stripe/stripeterminal/external/models/Reader;)V

    return-void

    .line 327
    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 329
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 327
    const-string v3, "discoverReaders must be called before startSession"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public supportsReadersOfType(Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;
    .locals 7

    const-string v0, "deviceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discoveryConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;

    invoke-virtual {p0, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getAdapterByDiscoveryConfiguration(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/Adapter;->supportsReadersOfType(Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_1
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 83
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;

    if-nez p1, :cond_2

    new-instance p1, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$NotSupported;

    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v2, "No Adapter for type"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p1, v0}, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$NotSupported;-><init>(Ljava/lang/Throwable;)V

    check-cast p1, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;

    :cond_2
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 84
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    new-instance p1, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$NotSupported;

    invoke-direct {p1, p2}, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult$NotSupported;-><init>(Ljava/lang/Throwable;)V

    check-cast p1, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;

    :goto_3
    check-cast p1, Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;

    return-object p1
.end method

.method public updatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;ZLcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 7

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiPaymentIntentUpdater"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/Adapter;->updatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;ZLcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1

    .line 283
    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 285
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 283
    const-string v2, "discoverReaders must be called before collectPaymentMethod"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method
