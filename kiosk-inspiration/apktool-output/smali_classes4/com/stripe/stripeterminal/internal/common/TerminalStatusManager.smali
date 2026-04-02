.class public final Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;
.super Ljava/lang/Object;
.source "TerminalStatusManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTerminalStatusManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TerminalStatusManager.kt\ncom/stripe/stripeterminal/internal/common/TerminalStatusManager\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,339:1\n16#2:340\n*S KotlinDebug\n*F\n+ 1 TerminalStatusManager.kt\ncom/stripe/stripeterminal/internal/common/TerminalStatusManager\n*L\n40#1:340\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u000e\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\rJ\u000e\u00101\u001a\u00020/2\u0006\u00100\u001a\u00020\rJ\u0006\u00102\u001a\u00020/J\u0006\u00103\u001a\u00020/J\u001c\u00104\u001a\u00020/2\u0008\u00105\u001a\u0004\u0018\u0001062\n\u0008\u0002\u00107\u001a\u0004\u0018\u000108J\u0006\u00109\u001a\u00020/J\u0006\u0010:\u001a\u00020/J\u0016\u0010;\u001a\u00020/2\u0006\u00100\u001a\u00020\r2\u0006\u0010<\u001a\u00020\u0010J\u000e\u0010=\u001a\u00020/2\u0006\u00100\u001a\u00020\rJ\u000e\u0010>\u001a\u00020/2\u0006\u0010<\u001a\u00020\u0010J\u000e\u0010?\u001a\u00020/2\u0006\u0010<\u001a\u00020\u0010J\u0006\u0010@\u001a\u00020/J\u0010\u0010A\u001a\u00020/2\u0008\u0010B\u001a\u0004\u0018\u00010CJ\u000e\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020FJ\u000e\u0010G\u001a\u00020/2\u0006\u0010H\u001a\u00020IJ\u000e\u0010J\u001a\u00020/2\u0006\u00105\u001a\u000206J\u000e\u0010K\u001a\u00020/2\u0006\u0010L\u001a\u00020MJ\u000e\u0010N\u001a\u00020/2\u0006\u0010O\u001a\u00020PJ\u0006\u0010Q\u001a\u00020/J\u0016\u0010R\u001a\u00020/2\u0006\u00105\u001a\u0002062\u0006\u0010S\u001a\u00020TJ\u001e\u0010U\u001a\u00020/2\u0006\u00100\u001a\u00020\r2\u0006\u0010V\u001a\u00020T2\u0006\u0010<\u001a\u00020\u0010J\u0006\u0010W\u001a\u00020/J\u0010\u0010X\u001a\u00020/2\u0006\u0010Y\u001a\u00020\u0015H\u0002J\u0010\u0010Z\u001a\u00020/2\u0006\u0010Y\u001a\u00020\u001eH\u0002J\u0006\u0010[\u001a\u00020/R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00100\u000f0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0012\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0015@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001aj\u0002`\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0011\u001a\u00020\u001e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u0017\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\r0)\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R#\u0010,\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00100\u000f0)\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010+R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/TerminalListener;",
        "transactionRepository",
        "Lcom/stripe/core/transaction/TransactionRepository;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lcom/stripe/stripeterminal/external/callable/TerminalListener;Lcom/stripe/core/transaction/TransactionRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "_readerConnectedFlow",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "_readerDisconnectedFlow",
        "Lkotlin/Pair;",
        "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
        "<set-?>",
        "connectedReader",
        "getConnectedReader",
        "()Lcom/stripe/stripeterminal/external/models/Reader;",
        "Lcom/stripe/stripeterminal/external/models/ConnectionStatus;",
        "connectionStatus",
        "getConnectionStatus",
        "()Lcom/stripe/stripeterminal/external/models/ConnectionStatus;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "Lcom/stripe/stripeterminal/external/models/PaymentStatus;",
        "paymentStatus",
        "getPaymentStatus",
        "()Lcom/stripe/stripeterminal/external/models/PaymentStatus;",
        "proxyReaderListener",
        "Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;",
        "getProxyReaderListener",
        "()Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;",
        "setProxyReaderListener",
        "(Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;)V",
        "readerConnectedFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "getReaderConnectedFlow",
        "()Lkotlinx/coroutines/flow/Flow;",
        "readerDisconnectedFlow",
        "getReaderDisconnectedFlow",
        "connected",
        "",
        "reader",
        "connecting",
        "endDiscovery",
        "endPaymentFlow",
        "finishInstallingUpdate",
        "update",
        "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "notConnected",
        "processing",
        "reconnectFailed",
        "disconnectReason",
        "reconnected",
        "reportDisconnect",
        "reportDisconnectForFailedReconnection",
        "reportLowBatteryWarning",
        "reportReaderBatteryInfo",
        "readerBatteryInfo",
        "Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;",
        "reportReaderEvent",
        "event",
        "Lcom/stripe/stripeterminal/external/models/ReaderEvent;",
        "reportReaderSoftwareUpdateProgress",
        "progress",
        "",
        "reportUpdateAvailable",
        "requestReaderDisplayMessage",
        "message",
        "Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;",
        "requestReaderInput",
        "options",
        "Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;",
        "startDiscovery",
        "startInstallingUpdate",
        "cancelable",
        "Lcom/stripe/stripeterminal/external/callable/Cancelable;",
        "startReconnecting",
        "cancelReconnect",
        "unexpectedDisconnect",
        "updateConnectionStatus",
        "status",
        "updatePaymentStatus",
        "waitForInput",
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
.field private final _readerConnectedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ">;"
        }
    .end annotation
.end field

.field private final _readerDisconnectedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lkotlin/Pair<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
            ">;>;"
        }
    .end annotation
.end field

.field private connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

.field private connectionStatus:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

.field private final listener:Lcom/stripe/stripeterminal/external/callable/TerminalListener;

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

.field private paymentStatus:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

.field private proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

.field private final readerConnectedFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ">;"
        }
    .end annotation
.end field

.field private final readerDisconnectedFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Lkotlin/Pair<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
            ">;>;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/external/callable/TerminalListener;Lcom/stripe/core/transaction/TransactionRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1
    .param p3    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/AppScope;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->listener:Lcom/stripe/stripeterminal/external/callable/TerminalListener;

    .line 36
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    .line 37
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 340
    const-class p1, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x7

    .line 44
    invoke-static {p1, p1, p2, p3, p2}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->_readerConnectedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 49
    check-cast p4, Lkotlinx/coroutines/flow/Flow;

    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->readerConnectedFlow:Lkotlinx/coroutines/flow/Flow;

    .line 51
    invoke-static {p1, p1, p2, p3, p2}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->_readerDisconnectedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 56
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->readerDisconnectedFlow:Lkotlinx/coroutines/flow/Flow;

    .line 60
    sget-object p1, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->NOT_CONNECTED:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectionStatus:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    .line 62
    sget-object p1, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->NOT_READY:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->paymentStatus:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    return-void
.end method

.method public static final synthetic access$get_readerConnectedFlow$p(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->_readerConnectedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method public static final synthetic access$get_readerDisconnectedFlow$p(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->_readerDisconnectedFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method public static synthetic finishInstallingUpdate$default(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/models/TerminalException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 167
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->finishInstallingUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method private final updateConnectionStatus(Lcom/stripe/stripeterminal/external/models/ConnectionStatus;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectionStatus:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    if-eq p1, v0, :cond_1

    .line 331
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectionStatus:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    .line 332
    sget-object v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->NOT_CONNECTED:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    if-ne p1, v0, :cond_0

    .line 333
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stripe/core/transaction/TransactionRepository;->setDomesticDebitAids(Ljava/util/List;)V

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->listener:Lcom/stripe/stripeterminal/external/callable/TerminalListener;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectionStatus:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    invoke-interface {p1, v0}, Lcom/stripe/stripeterminal/external/callable/TerminalListener;->onConnectionStatusChange(Lcom/stripe/stripeterminal/external/models/ConnectionStatus;)V

    :cond_1
    return-void
.end method

.method private final updatePaymentStatus(Lcom/stripe/stripeterminal/external/models/PaymentStatus;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->paymentStatus:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    if-eq p1, v0, :cond_0

    .line 324
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->paymentStatus:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    .line 325
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->listener:Lcom/stripe/stripeterminal/external/callable/TerminalListener;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/TerminalListener;->onPaymentStatusChange(Lcom/stripe/stripeterminal/external/models/PaymentStatus;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final connected(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 7

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "connected."

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 84
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    .line 85
    sget-object v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->CONNECTED:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->updateConnectionStatus(Lcom/stripe/stripeterminal/external/models/ConnectionStatus;)V

    .line 86
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->READY:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->updatePaymentStatus(Lcom/stripe/stripeterminal/external/models/PaymentStatus;)V

    .line 87
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager$connected$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager$connected$1;-><init>(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final connecting(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 3

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "connecting."

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 98
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    .line 99
    sget-object p1, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->CONNECTING:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->updateConnectionStatus(Lcom/stripe/stripeterminal/external/models/ConnectionStatus;)V

    return-void
.end method

.method public final endDiscovery()V
    .locals 1

    .line 76
    sget-object v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->NOT_CONNECTED:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->updateConnectionStatus(Lcom/stripe/stripeterminal/external/models/ConnectionStatus;)V

    return-void
.end method

.method public final endPaymentFlow()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "endPaymentFlow."

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 107
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectionStatus:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->CONNECTED:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    if-ne v0, v1, :cond_0

    .line 108
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->READY:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->updatePaymentStatus(Lcom/stripe/stripeterminal/external/models/PaymentStatus;)V

    return-void

    .line 110
    :cond_0
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->NOT_READY:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->updatePaymentStatus(Lcom/stripe/stripeterminal/external/models/PaymentStatus;)V

    return-void
.end method

.method public final finishInstallingUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "finishInstallingUpdate."

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 171
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->onFinishInstallingUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    :cond_0
    return-void
.end method

.method public final getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    return-object v0
.end method

.method public final getConnectionStatus()Lcom/stripe/stripeterminal/external/models/ConnectionStatus;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectionStatus:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    return-object v0
.end method

.method public final getPaymentStatus()Lcom/stripe/stripeterminal/external/models/PaymentStatus;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->paymentStatus:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    return-object v0
.end method

.method public final getProxyReaderListener()Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    return-object v0
.end method

.method public final getReaderConnectedFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->readerConnectedFlow:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getReaderDisconnectedFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lkotlin/Pair<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
            ">;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->readerDisconnectedFlow:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final notConnected()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "notConnected."

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    .line 120
    sget-object v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->NOT_CONNECTED:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->updateConnectionStatus(Lcom/stripe/stripeterminal/external/models/ConnectionStatus;)V

    .line 121
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->NOT_READY:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->updatePaymentStatus(Lcom/stripe/stripeterminal/external/models/PaymentStatus;)V

    return-void
.end method

.method public final processing()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "processing."

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 129
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->PROCESSING:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->updatePaymentStatus(Lcom/stripe/stripeterminal/external/models/PaymentStatus;)V

    return-void
.end method

.method public final reconnectFailed(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V
    .locals 3

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disconnectReason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "reconnectFailed."

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 305
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->onReaderReconnectFailed(Lcom/stripe/stripeterminal/external/models/Reader;)V

    .line 308
    :cond_0
    invoke-virtual {p0, p2}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->reportDisconnectForFailedReconnection(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    .line 309
    sget-object p1, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->NOT_CONNECTED:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->updateConnectionStatus(Lcom/stripe/stripeterminal/external/models/ConnectionStatus;)V

    :cond_1
    const/4 p1, 0x0

    .line 311
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    return-void
.end method

.method public final reconnected(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 3

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "reconnected."

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 296
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    .line 297
    sget-object v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->CONNECTED:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->updateConnectionStatus(Lcom/stripe/stripeterminal/external/models/ConnectionStatus;)V

    .line 298
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->READY:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->updatePaymentStatus(Lcom/stripe/stripeterminal/external/models/PaymentStatus;)V

    .line 299
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->onReaderReconnectSucceeded(Lcom/stripe/stripeterminal/external/models/Reader;)V

    :cond_0
    return-void
.end method

.method public final reportDisconnect(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V
    .locals 8

    const-string v0, "disconnectReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportDisconnect "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 249
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectionStatus:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->CONNECTED:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    if-ne v0, v1, :cond_1

    .line 250
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    if-eqz v0, :cond_1

    .line 251
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->onDisconnect(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager$reportDisconnect$1$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, p1, v3}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager$reportDisconnect$1$1;-><init>(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/DisconnectReason;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method

.method public final reportDisconnectForFailedReconnection(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V
    .locals 8

    const-string v0, "disconnectReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportDisconnectForFailedReconnection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 265
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    if-eqz v0, :cond_1

    .line 266
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->onDisconnect(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager$reportDisconnectForFailedReconnection$1$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, p1, v3}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager$reportDisconnectForFailedReconnection$1$1;-><init>(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/DisconnectReason;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method

.method public final reportLowBatteryWarning()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "reportLowBatteryWarning."

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 194
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->onReportLowBatteryWarning()V

    :cond_0
    return-void
.end method

.method public final reportReaderBatteryInfo(Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;)V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportReaderBatteryInfo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 205
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->getBatteryLevel()Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->isCharging()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 211
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->getBatteryLevel()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/external/models/Reader;->setBatteryLevel(Ljava/lang/Float;)V

    .line 213
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    if-eqz v0, :cond_3

    .line 214
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->getBatteryLevel()Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 215
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->getBatteryStatus()Lcom/stripe/stripeterminal/external/models/BatteryStatus;

    move-result-object v2

    .line 216
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;->isCharging()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 213
    invoke-virtual {v0, v1, v2, p1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->onBatteryLevelUpdate(FLcom/stripe/stripeterminal/external/models/BatteryStatus;Z)V

    return-void

    .line 207
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v0, "onReportReaderBatteryInfo batteryLevel and/or isCharging are null"

    new-array v1, v2, [Lkotlin/Pair;

    invoke-interface {p1, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    :cond_3
    return-void
.end method

.method public final reportReaderEvent(Lcom/stripe/stripeterminal/external/models/ReaderEvent;)V
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportCardStatusChange "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 226
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->onReportReaderEvent(Lcom/stripe/stripeterminal/external/models/ReaderEvent;)V

    :cond_0
    return-void
.end method

.method public final reportReaderSoftwareUpdateProgress(F)V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportReaderSoftwareUpdateProgress "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 159
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->onReportReaderSoftwareUpdateProgress(F)V

    :cond_0
    return-void
.end method

.method public final reportUpdateAvailable(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V
    .locals 3

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "reportUpdateAvailable."

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 236
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->onReportAvailableUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V

    :cond_0
    return-void
.end method

.method public final requestReaderDisplayMessage(Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestReaderDisplayMessage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 138
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->onRequestReaderDisplayMessage(Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;)V

    :cond_0
    return-void
.end method

.method public final requestReaderInput(Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;)V
    .locals 3

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestReaderInput "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 149
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->onRequestReaderInput(Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;)V

    :cond_0
    return-void
.end method

.method public final setProxyReaderListener(Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    return-void
.end method

.method public final startDiscovery()V
    .locals 1

    .line 69
    sget-object v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->DISCOVERING:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->updateConnectionStatus(Lcom/stripe/stripeterminal/external/models/ConnectionStatus;)V

    return-void
.end method

.method public final startInstallingUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/callable/Cancelable;)V
    .locals 3

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "startInstallingUpdate."

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 179
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->getComponents()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;->INCREMENTAL:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate$UpdateComponent;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->onStartInstallingUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/callable/Cancelable;)V

    :cond_1
    return-void
.end method

.method public final startReconnecting(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/callable/Cancelable;Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V
    .locals 3

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelReconnect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disconnectReason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "startReconnecting."

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 289
    sget-object v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->CONNECTING:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->updateConnectionStatus(Lcom/stripe/stripeterminal/external/models/ConnectionStatus;)V

    .line 290
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->NOT_READY:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->updatePaymentStatus(Lcom/stripe/stripeterminal/external/models/PaymentStatus;)V

    .line 291
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->onReaderReconnectStarted(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/callable/Cancelable;Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    :cond_0
    return-void
.end method

.method public final unexpectedDisconnect()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "unexpectedDisconnect."

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 278
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    const/4 v1, 0x0

    .line 279
    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connectedReader:Lcom/stripe/stripeterminal/external/models/Reader;

    if-eqz v0, :cond_0

    .line 282
    sget-object v0, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->NOT_CONNECTED:Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->updateConnectionStatus(Lcom/stripe/stripeterminal/external/models/ConnectionStatus;)V

    .line 283
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->NOT_READY:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->updatePaymentStatus(Lcom/stripe/stripeterminal/external/models/PaymentStatus;)V

    :cond_0
    return-void
.end method

.method public final waitForInput()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "waitForInput."

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 319
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentStatus;->WAITING_FOR_INPUT:Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->updatePaymentStatus(Lcom/stripe/stripeterminal/external/models/PaymentStatus;)V

    return-void
.end method
