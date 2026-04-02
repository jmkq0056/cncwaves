.class public final Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;
.super Ljava/lang/Object;
.source "RemoteReaderResourceRepository.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository$Companion;,
        Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoteReaderResourceRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteReaderResourceRepository.kt\ncom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,273:1\n16#2:274\n*S KotlinDebug\n*F\n+ 1 RemoteReaderResourceRepository.kt\ncom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository\n*L\n53#1:274\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 b2\u00020\u0001:\u0001bB\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJX\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152>\u0010\u0016\u001a:\u0012\u0015\u0012\u0013\u0018\u00010\u0018\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001b\u0012\u0015\u0012\u0013\u0018\u00010\u001c\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u001e0\u0017j\u0002`\u001fH\u0016J \u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!2\u0006\u0010#\u001a\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010$H\u0016J\u0010\u0010&\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020(H\u0016J\u0010\u0010)\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020(H\u0016J\u0010\u0010*\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020(H\u0016J\u0010\u0010+\u001a\u00020\"2\u0006\u0010,\u001a\u00020\"H\u0016J\u0008\u0010-\u001a\u00020\u001eH\u0016J\u0018\u0010.\u001a\u00020/2\u0006\u0010,\u001a\u00020/2\u0006\u00100\u001a\u000201H\u0016J\u001a\u00102\u001a\u0002032\u0006\u0010#\u001a\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010$H\u0016Jq\u00104\u001a\u00020\"2\u0006\u00105\u001a\u00020\"2\u000e\u00106\u001a\n\u0012\u0006\u0012\u0004\u0018\u000108072\u0018\u00109\u001a\u0014\u0012\u0004\u0012\u00020$\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020;0!0:2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020=072\u0006\u0010>\u001a\u0002032\u0006\u0010?\u001a\u00020@2\u0008\u0010A\u001a\u0004\u0018\u00010B2\u0008\u0010C\u001a\u0004\u0018\u00010$H\u0016\u00a2\u0006\u0002\u0010DJ<\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020H2\u0008\u0010I\u001a\u0004\u0018\u0001082\u0018\u00109\u001a\u0014\u0012\u0004\u0012\u00020$\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020;0!0:2\u0006\u0010?\u001a\u00020@H\u0016JR\u0010J\u001a\u00020/2\u0006\u0010,\u001a\u00020/2\u0008\u0010I\u001a\u0004\u0018\u0001082\u0018\u00109\u001a\u0014\u0012\u0004\u0012\u00020$\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020;0!0:2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020=072\u0006\u0010>\u001a\u0002032\u0006\u0010?\u001a\u00020@H\u0016J\u0018\u0010K\u001a\u00020\"2\u0006\u0010L\u001a\u00020M2\u0006\u0010N\u001a\u00020OH\u0016J\u0010\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020=H\u0016J\u0018\u0010S\u001a\u00020/2\u0006\u0010T\u001a\u00020U2\u0006\u0010N\u001a\u00020OH\u0016J\u0008\u0010V\u001a\u00020$H\u0002J\"\u0010W\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020Y0X2\u000c\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020$0[H\u0016J\u0018\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020_2\u0006\u0010R\u001a\u00020=H\u0016J\"\u0010`\u001a\u00020\"2\u0006\u00105\u001a\u00020\"2\u0008\u0010I\u001a\u0004\u0018\u0001082\u0006\u0010a\u001a\u000203H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u0002`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;",
        "proxyReaderController",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;",
        "connectionTokenRepository",
        "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;",
        "stripeConnectivityRepository",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "activateReader",
        "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "connectionConfiguration",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "setReconnectParams",
        "Lkotlin/Function2;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
        "Lkotlin/ParameterName;",
        "name",
        "bluetoothConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
        "usbConfig",
        "",
        "Lcom/stripe/offlinemode/helpers/SetReconnectParams;",
        "awaitActionRequiredPaymentIntentCompletion",
        "Lkotlinx/coroutines/Deferred;",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "paymentIntentId",
        "",
        "accountId",
        "cancelConfirmPaymentIntent",
        "callback",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "cancelConfirmRefund",
        "cancelConfirmSetupIntent",
        "cancelPaymentIntent",
        "intent",
        "cancelPaymentIntentActionRequired",
        "cancelSetupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "params",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "completePaymentIntentActionRequired",
        "",
        "confirmPaymentIntent",
        "paymentIntent",
        "getCollectiblePayment",
        "Lkotlin/Function0;",
        "Lcom/stripe/transaction/CollectiblePayment;",
        "handleAuthResponse",
        "Lkotlin/Function1;",
        "Lcom/stripe/hardware/emv/TransactionResult;",
        "collectScaPaymentMethodData",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "immediateRecollectForSca",
        "authStateListener",
        "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
        "amountSurcharge",
        "",
        "returnUrl",
        "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "confirmRefund",
        "Lcom/stripe/stripeterminal/external/models/Refund;",
        "refundParams",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
        "collectiblePayment",
        "confirmSetupIntent",
        "createPaymentIntent",
        "paymentIntentParameters",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;",
        "createConfiguration",
        "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;",
        "createReaderCollectedData",
        "Lcom/stripe/stripeterminal/external/models/CollectedData;",
        "paymentMethodData",
        "createSetupIntent",
        "setupIntentParameters",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
        "getConnectionToken",
        "getReaderLocations",
        "",
        "Lcom/stripe/stripeterminal/external/models/Location;",
        "deviceSerials",
        "",
        "readReusableCard",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethod;",
        "readReusableCardParams",
        "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;",
        "updatePaymentIntent",
        "requestDynamicCurrencyConversion",
        "Companion",
        "resourcerepository_release"
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
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository$Companion;

.field public static final OFFLINE_CONN_TOKEN:Ljava/lang/String; = "psst_offline_token"


# instance fields
.field private final connectionTokenRepository:Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

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

.field private final proxyReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

.field private final stripeConnectivityRepository:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->Companion:Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "proxyReaderController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionTokenRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripeConnectivityRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->proxyReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    .line 48
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->connectionTokenRepository:Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

    .line 49
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->stripeConnectivityRepository:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    .line 274
    const-class p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method private final getConnectionToken()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->stripeConnectivityRepository:Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;->networkStatus()Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    const-string v2, "psst_offline_token"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v1, "Network status offline, using offline token"

    new-array v3, v3, [Lkotlin/Pair;

    invoke-interface {v0, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    return-object v2

    .line 253
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->connectionTokenRepository:Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->getTokenAndRefresh()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 255
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v1

    sget-object v4, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v1

    aget v1, v4, v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 259
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v1, "Failed to fetch connection Token, fallback to offline token"

    new-array v3, v3, [Lkotlin/Pair;

    invoke-interface {v0, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    :goto_0
    return-object v2

    .line 262
    :cond_1
    throw v0
.end method


# virtual methods
.method public activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
            "-",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setReconnectParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object p3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v0, v1, [Lkotlin/Pair;

    const-string v2, "activateReader"

    invoke-interface {p3, v2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 61
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->getConnectionToken()Ljava/lang/String;

    move-result-object p3

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->proxyReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    invoke-virtual {v0, p1, p3, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    move-result-object p1
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 66
    instance-of v2, v2, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ActivateReaderInvalidOfflineConnectionTokenException;

    if-eqz v2, :cond_1

    .line 68
    const-string v2, "psst_offline_token"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 69
    iget-object p3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v0, "activateReader failed while using offline conn token, retrying with new token"

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {p3, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 70
    iget-object p3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->connectionTokenRepository:Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

    invoke-virtual {p3}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->getTokenAndRefresh()Ljava/lang/String;

    move-result-object p3

    .line 71
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->proxyReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    .line 72
    invoke-virtual {v0, p1, p3, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    move-result-object p1

    .line 81
    :goto_0
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->account_id:Ljava/lang/String;

    .line 82
    iget-boolean v2, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->livemode:Z

    .line 86
    iget-object v6, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->sdk_rpc_session:Ljava/lang/String;

    .line 87
    iget-wide p2, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->canonical_reader_version:J

    .line 88
    iget-object v9, p1, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    .line 80
    new-instance v0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    const/4 v7, 0x0

    .line 87
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 80
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/model/merchant/ApiLocationPb;)V

    return-object v0

    .line 74
    :cond_0
    throw v0

    .line 76
    :cond_1
    throw v0
.end method

.method public awaitActionRequiredPaymentIntentCompletion(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/Deferred;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            ">;"
        }
    .end annotation

    const-string p2, "paymentIntentId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancelConfirmPaymentIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->proxyReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->cancelConfirmPaymentIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    return-void
.end method

.method public cancelConfirmRefund(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->proxyReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->cancelConfirmInteracRefund(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    return-void
.end method

.method public cancelConfirmSetupIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->proxyReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->cancelConfirmSetupIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    return-void
.end method

.method public cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "cancelPaymentIntent"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 193
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->proxyReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1
.end method

.method public cancelPaymentIntentActionRequired()V
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "cancelSetupIntent"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 198
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->proxyReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    return-object p1
.end method

.method public completePaymentIntentActionRequired(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const-string p2, "paymentIntentId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/stripe/transaction/CollectiblePayment;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            ">;Z",
            "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;"
        }
    .end annotation

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getCollectiblePayment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleAuthResponse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectScaPaymentMethodData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authStateListener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "confirmPaymentIntent"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->proxyReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    invoke-virtual {v0, p1, p7, p8}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->confirmPayment(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->proxyReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->finishConfirmPayment()V
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 158
    sget-object v1, Lcom/stripe/transaction/ExtendedActionConstants;->INSTANCE:Lcom/stripe/transaction/ExtendedActionConstants;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getApiError()Lcom/stripe/stripeterminal/external/api/ApiError;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/api/ApiError;->getCode()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/stripe/transaction/ExtendedActionConstants;->isExtendedActionError(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p5, :cond_1

    .line 159
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setPaymentMethodData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V

    .line 160
    invoke-virtual/range {p0 .. p8}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    move-object p2, p0

    return-object p1

    :cond_1
    move-object p2, p0

    .line 172
    iget-object p1, p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->proxyReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->finishConfirmPayment()V

    .line 173
    throw v0
.end method

.method public confirmRefund(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/stripeterminal/external/models/Refund;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
            "Lcom/stripe/transaction/CollectiblePayment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;>;",
            "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/Refund;"
        }
    .end annotation

    const-string v0, "refundParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleAuthResponse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "authStateListener"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object p3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 p4, 0x0

    new-array p4, p4, [Lkotlin/Pair;

    const-string v0, "confirmRefund"

    invoke-interface {p3, v0, p4}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 119
    invoke-virtual {p2}, Lcom/stripe/transaction/CollectiblePayment;->getPayment()Lcom/stripe/transaction/payment/Payment;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    instance-of p4, p2, Lcom/stripe/transaction/payment/RemotePayment;

    if-eqz p4, :cond_1

    move-object p3, p2

    check-cast p3, Lcom/stripe/transaction/payment/RemotePayment;

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/stripe/transaction/payment/RemotePayment;->getSdkSource()Lcom/stripe/proto/model/sdk/PaymentMethod;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 125
    iget-object p3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->proxyReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    .line 128
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->getDefaultRefundReason()Ljava/lang/String;

    move-result-object p4

    .line 125
    invoke-virtual {p3, p1, p2, p4}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->confirmInteracRefund(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/Refund;

    move-result-object p1

    return-object p1

    .line 120
    :cond_2
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 121
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->MISSING_REQUIRED_PARAMETER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 120
    const-string v2, "Confirming a refund requires a collected refund payment method"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
            "Lcom/stripe/transaction/CollectiblePayment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            ">;Z",
            "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;"
        }
    .end annotation

    const-string p2, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "handleAuthResponse"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "collectScaPaymentMethodData"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "authStateListener"

    invoke-static {p6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 p3, 0x0

    new-array p3, p3, [Lkotlin/Pair;

    const-string p4, "confirmSetupIntent"

    invoke-interface {p2, p4, p3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 188
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->proxyReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    invoke-virtual {p2, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    return-object p1
.end method

.method public createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 3

    const-string v0, "paymentIntentParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "createPaymentIntent"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 98
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->proxyReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1
.end method

.method public createReaderCollectedData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/CollectedData;
    .locals 7

    const-string v0, "paymentMethodData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->getIpCollectedData()Lcom/stripe/proto/model/rest/ReaderCollectedData;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkCollectedData(Lcom/stripe/proto/model/rest/ReaderCollectedData;)Lcom/stripe/stripeterminal/external/models/CollectedData;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 229
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 228
    const-string v2, "PaymentMethodData missing ipCollectedData"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 3

    const-string v0, "setupIntentParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "createSetupIntent"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 109
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;->proxyReaderController:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    return-object p1
.end method

.method public getReaderLocations(Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/Location;",
            ">;"
        }
    .end annotation

    const-string v0, "deviceSerials"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readReusableCard(Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/PaymentMethod;
    .locals 1

    const-string v0, "readReusableCardParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "paymentMethodData"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;Z)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 0

    const-string p2, "paymentIntent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
