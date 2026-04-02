.class public final Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;
.super Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;
.source "RemoteReaderAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0002XYBM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u0002`\u0011\u00a2\u0006\u0002\u0010\u0012J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0018H\u0016J\u0010\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u0018H\u0016J\u001a\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0016J\u0008\u0010$\u001a\u00020\u0018H\u0016J\u0010\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(H\u0017J\u0010\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0016J\n\u0010-\u001a\u0004\u0018\u00010\u0014H\u0016J\u0010\u0010.\u001a\u00020\u00182\u0006\u0010/\u001a\u000200H\u0016J\u0018\u00101\u001a\u00020\u00182\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u000205H\u0016J\u0008\u00106\u001a\u000207H\u0016J\u0010\u00108\u001a\u00020\u00182\u0006\u00109\u001a\u00020:H\u0016J\u0010\u0010;\u001a\u00020\u00182\u0006\u0010<\u001a\u00020\u001fH\u0016J.\u0010=\u001a\u00020!2\u0006\u0010 \u001a\u00020!2\u0006\u0010>\u001a\u00020?2\u0014\u0010@\u001a\u0010\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\u0018\u0018\u00010AH\u0014J\u0008\u0010B\u001a\u00020\u0018H\u0016J\u0008\u0010C\u001a\u00020*H\u0016J\u0010\u0010D\u001a\u00020\u00182\u0006\u0010 \u001a\u00020!H\u0016J!\u0010E\u001a\u0002HF\"\u0004\u0008\u0000\u0010F2\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u0002HF0\u000bH\u0002\u00a2\u0006\u0002\u0010HJ\u0010\u0010I\u001a\u00020\u00182\u0006\u0010J\u001a\u00020KH\u0016J\u0010\u0010L\u001a\u00020\u00182\u0006\u0010M\u001a\u00020NH\u0016J\u0010\u0010O\u001a\u0002072\u0006\u0010P\u001a\u00020QH\u0016J*\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020S2\u0008\u0010-\u001a\u0004\u0018\u00010\u00142\u0006\u0010U\u001a\u00020#2\u0006\u0010V\u001a\u00020WH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006Z"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;",
        "proxyRemoteReaderController",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;",
        "terminalStatusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "connectionTokenRepository",
        "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;",
        "offlineRepository",
        "Lcom/stripe/offlinemode/storage/OfflineRepository;",
        "getFeatureFlags",
        "Lkotlin/Function0;",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/offlinemode/storage/OfflineRepository;Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "currentRefundPaymentMethod",
        "Lcom/stripe/transaction/CollectiblePayment;",
        "adapterType",
        "Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;",
        "cancelCollectInputs",
        "",
        "cancelCollectPaymentMethod",
        "cancelDiscoverReaders",
        "cancelDiscoverReadersReason",
        "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;",
        "cancelInstallUpdate",
        "checkForUpdate",
        "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "failSilently",
        "",
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
        "disconnectReader",
        "disconnectReason",
        "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
        "discoverReaders",
        "config",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
        "getReaderSettings",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettings;",
        "handleNonCardPaymentMethodConfirmationResponse",
        "data",
        "Lcom/stripe/transaction/NonCardPaymentMethodData;",
        "installUpdate",
        "update",
        "onConnectReader",
        "connectionConfiguration",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "requestReconnection",
        "Lkotlin/Function1;",
        "onPaymentMethodCollectedForPaymentIntent",
        "readReusableCard",
        "rebootReader",
        "requireAccessibilityFlag",
        "T",
        "block",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "selectDynamicCurrencyConversion",
        "dynamicCurrencyConversionData",
        "Lcom/stripe/transaction/DynamicCurrencyConversionData;",
        "setReaderDisplay",
        "cart",
        "Lcom/stripe/stripeterminal/external/models/Cart;",
        "setReaderSettings",
        "params",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;",
        "updatePaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "paymentIntent",
        "requestDynamicCurrencyConversion",
        "apiPaymentIntentUpdater",
        "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
        "CollectPaymentMethodOperation",
        "DiscoverReadersOperation",
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


# instance fields
.field private final connectionTokenRepository:Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

.field private currentRefundPaymentMethod:Lcom/stripe/transaction/CollectiblePayment;

.field private final getFeatureFlags:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

.field private final proxyRemoteReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

.field private final terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/offlinemode/storage/OfflineRepository;Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .param p4    # Lcom/stripe/offlinemode/storage/OfflineRepository;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "proxyRemoteReaderController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalStatusManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionTokenRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getFeatureFlags"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p6}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    .line 42
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->proxyRemoteReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    .line 43
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    .line 44
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->connectionTokenRepository:Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

    .line 45
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    .line 46
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->getFeatureFlags:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$getConnectionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->connectionTokenRepository:Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

    return-object p0
.end method

.method public static final synthetic access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOfflineRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/offlinemode/storage/OfflineRepository;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    return-object p0
.end method

.method public static final synthetic access$getProxyRemoteReaderController$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->proxyRemoteReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    return-object p0
.end method

.method public static final synthetic access$getTerminalStatusManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    return-object p0
.end method

.method public static final synthetic access$setCurrentRefundPaymentMethod$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Lcom/stripe/transaction/CollectiblePayment;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->currentRefundPaymentMethod:Lcom/stripe/transaction/CollectiblePayment;

    return-void
.end method

.method private final requireAccessibilityFlag(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->getFeatureFlags:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    iget-boolean v0, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessibility_app:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 208
    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 209
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 208
    const-string v2, "This operation is not supported for this reader"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method


# virtual methods
.method public adapterType()Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;
    .locals 1

    .line 190
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->REMOTE:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    return-object v0
.end method

.method public cancelCollectInputs()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->proxyRemoteReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->cancelCollectInputs()V

    return-void
.end method

.method public cancelCollectPaymentMethod()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "cancelCollectPaymentMethod"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->currentRefundPaymentMethod:Lcom/stripe/transaction/CollectiblePayment;

    .line 67
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    instance-of v0, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.RemoteReaderAdapter.CollectPaymentMethodOperation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->cancel()V

    return-void

    .line 70
    :cond_0
    const-class v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->logUnexpectedOperationInProgressWarning(Lkotlin/reflect/KClass;)V

    return-void
.end method

.method public cancelDiscoverReaders(Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;)V
    .locals 3

    const-string v0, "cancelDiscoverReadersReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "cancelDiscoverReaders"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->currentRefundPaymentMethod:Lcom/stripe/transaction/CollectiblePayment;

    .line 77
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    .line 78
    instance-of v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.RemoteReaderAdapter.DiscoverReadersOperation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->cancel(Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;)V

    return-void

    .line 82
    :cond_0
    instance-of p1, v0, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;

    if-eqz p1, :cond_1

    .line 84
    const-class p1, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->setOperationToCancel(Lkotlin/reflect/KClass;)V

    return-void

    .line 87
    :cond_1
    const-class p1, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->logUnexpectedOperationInProgressWarning(Lkotlin/reflect/KClass;)V

    return-void
.end method

.method public cancelInstallUpdate()V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkForUpdate(Lcom/stripe/stripeterminal/external/models/Reader;Z)Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;
    .locals 0

    const-string p2, "reader"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearReaderDisplay()V
    .locals 3

    .line 151
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "clearReaderDisplay"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->currentRefundPaymentMethod:Lcom/stripe/transaction/CollectiblePayment;

    .line 154
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;

    move-object v1, p0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/Adapter;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    .line 155
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->proxyRemoteReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->clearReaderDisplay()V

    return-void
.end method

.method public collectInputsBlocking(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;)Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;
    .locals 1

    const-string v0, "kmpCollectInputsParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->proxyRemoteReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->collectInputs(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;)Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;

    move-result-object p1

    return-object p1
.end method

.method public collectPaymentMethod(Lcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 3

    const-string v0, "paymentMethodCollectionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "collectPaymentMethod"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->currentRefundPaymentMethod:Lcom/stripe/transaction/CollectiblePayment;

    .line 105
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Lcom/stripe/transaction/PaymentMethodCollectionType;)V

    .line 106
    move-object p1, v0

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    .line 108
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$CollectPaymentMethodOperation;->execute()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object p1

    return-object p1
.end method

.method public collectiblePayment()Lcom/stripe/transaction/CollectiblePayment;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->currentRefundPaymentMethod:Lcom/stripe/transaction/CollectiblePayment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/transaction/CollectiblePayment;->getPayment()Lcom/stripe/transaction/payment/Payment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/transaction/payment/Payment;->isCollectible()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->currentRefundPaymentMethod:Lcom/stripe/transaction/CollectiblePayment;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public disconnectReader(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V
    .locals 3

    const-string v0, "disconnectReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "disconnectReader"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->currentRefundPaymentMethod:Lcom/stripe/transaction/CollectiblePayment;

    .line 170
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->terminalStatusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->reportDisconnect(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    .line 171
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->proxyRemoteReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->disconnectReader()V

    return-void
.end method

.method public discoverReaders(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V
    .locals 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "discoverReaders"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->currentRefundPaymentMethod:Lcom/stripe/transaction/CollectiblePayment;

    .line 178
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    .line 179
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;->execute()Ljava/lang/Object;

    return-void
.end method

.method public getReaderSettings()Lcom/stripe/stripeterminal/external/models/ReaderSettings;
    .locals 1

    .line 219
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$getReaderSettings$1;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$getReaderSettings$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->requireAccessibilityFlag(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/ReaderSettings;

    return-object v0
.end method

.method public handleNonCardPaymentMethodConfirmationResponse(Lcom/stripe/transaction/NonCardPaymentMethodData;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public installUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V
    .locals 1

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onConnectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function1;)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 0
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

    const-string p3, "reader"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "connectionConfiguration"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 141
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->currentRefundPaymentMethod:Lcom/stripe/transaction/CollectiblePayment;

    .line 143
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->proxyRemoteReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    new-instance p3, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$onConnectReader$1;

    invoke-direct {p3, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$onConnectReader$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, p1, p3}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->connectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/jvm/functions/Function0;)V

    return-object p1
.end method

.method public onPaymentMethodCollectedForPaymentIntent()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->proxyRemoteReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->onPaymentMethodCollectedForPaymentIntent()V

    return-void
.end method

.method public readReusableCard()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rebootReader(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 9

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "rebootReader"

    invoke-interface {p1, v1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 160
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 161
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 160
    const-string v4, "Internet readers do not support rebooting"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2
.end method

.method public selectDynamicCurrencyConversion(Lcom/stripe/transaction/DynamicCurrencyConversionData;)V
    .locals 1

    const-string v0, "dynamicCurrencyConversionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;)V
    .locals 3

    const-string v0, "cart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "setReaderDisplay"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->currentRefundPaymentMethod:Lcom/stripe/transaction/CollectiblePayment;

    .line 200
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;

    move-object v1, p0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/Adapter;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    .line 201
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->proxyRemoteReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;)V

    return-void
.end method

.method public setReaderSettings(Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;)Lcom/stripe/stripeterminal/external/models/ReaderSettings;
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$setReaderSettings$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$setReaderSettings$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->requireAccessibilityFlag(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/ReaderSettings;

    return-object p1
.end method

.method public updatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;ZLcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 0

    const-string p2, "paymentIntent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "apiPaymentIntentUpdater"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Lkotlin/Pair;

    const-string p4, "updatePaymentIntent"

    invoke-interface {p2, p4, p3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    const/4 p2, 0x0

    .line 119
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->currentRefundPaymentMethod:Lcom/stripe/transaction/CollectiblePayment;

    .line 121
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getPaymentMethodData()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getIpPaymentIntent()Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object p3, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {p3, p2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkPaymentIntent(Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p2

    :cond_1
    :goto_0
    return-object p1
.end method
