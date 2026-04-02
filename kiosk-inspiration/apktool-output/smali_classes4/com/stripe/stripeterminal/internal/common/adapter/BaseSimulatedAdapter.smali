.class public abstract Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;
.super Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;
.source "BaseSimulatedAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseSimulatedAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseSimulatedAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,479:1\n1549#2:480\n1620#2,3:481\n*S KotlinDebug\n*F\n+ 1 BaseSimulatedAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter\n*L\n143#1:480\n143#1:481,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000 h2\u00020\u0001:\u0002ghBK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000ej\u0002`\u0011\u00a2\u0006\u0002\u0010\u0012J\u0008\u0010#\u001a\u00020$H\u0016J(\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020(2\u0006\u0010+\u001a\u00020,H\u0002J\u0008\u0010-\u001a\u00020.H\u0016J\u0010\u0010\u0015\u001a\u00020.2\u0006\u0010/\u001a\u000200H\u0016J\u0008\u0010\u0016\u001a\u00020.H\u0016J\u0008\u00101\u001a\u00020.H\u0002J\n\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0010\u00102\u001a\u00020.2\u0006\u00103\u001a\u000204H\u0016J\u0018\u00105\u001a\u00020.2\u0006\u0010)\u001a\u0002062\u0006\u00107\u001a\u000208H\u0016J\u0010\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H&J\u0016\u0010=\u001a\u0008\u0012\u0004\u0012\u00020?0>2\u0006\u0010@\u001a\u00020(H\u0016J\u0010\u0010A\u001a\u00020.2\u0006\u0010B\u001a\u00020CH\u0016J\u0010\u0010D\u001a\u00020\u000c2\u0006\u0010E\u001a\u00020FH\u0002J\u0008\u0010G\u001a\u00020.H\u0016J.\u0010H\u001a\u00020:2\u0006\u0010I\u001a\u00020:2\u0006\u0010J\u001a\u00020K2\u0014\u0010L\u001a\u0010\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020.\u0018\u00010MH\u0014J\u0008\u0010N\u001a\u00020.H\u0016J\u0008\u0010O\u001a\u00020.H\u0016J\u001c\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020\u000c2\n\u0008\u0002\u0010S\u001a\u0004\u0018\u00010TH\u0014J\u0008\u0010U\u001a\u00020QH\u0016J\u0010\u0010V\u001a\u00020.2\u0006\u0010I\u001a\u00020:H\u0016J\u0010\u0010W\u001a\u00020:2\u0006\u0010I\u001a\u00020:H\u0016J\u0010\u0010X\u001a\u00020.2\u0006\u0010Y\u001a\u00020ZH\u0016J\u0010\u0010[\u001a\u00020.2\u0006\u0010\\\u001a\u00020,H\u0004J!\u0010]\u001a\u0004\u0018\u00010^2\u0008\u0010_\u001a\u0004\u0018\u00010^2\u0006\u0010I\u001a\u00020:H\u0000\u00a2\u0006\u0002\u0008`J*\u0010a\u001a\u00020b2\u0006\u0010c\u001a\u00020b2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010d\u001a\u00020\u000c2\u0006\u0010e\u001a\u00020fH\u0016R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u00020\u0014X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0014\u0010\u0008\u001a\u00020\tX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006i"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "transactionRepository",
        "Lcom/stripe/core/transaction/TransactionRepository;",
        "simulatorConfigurationRepository",
        "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
        "statusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "shopifyReadersEnabled",
        "Lkotlin/Function0;",
        "",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/time/Clock;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "cancelCollectPayment",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;",
        "cancelDiscoverReaders",
        "cancelInstallUpdate",
        "getCancelInstallUpdate",
        "()Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;",
        "setCancelInstallUpdate",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;)V",
        "getClock",
        "()Lcom/stripe/time/Clock;",
        "collectiblePayment",
        "Lcom/stripe/transaction/CollectiblePayment;",
        "getSimulatorConfigurationRepository",
        "()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
        "getStatusManager",
        "()Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "adapterType",
        "Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;",
        "buildTestOfflineVersionsWithExpirations",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb;",
        "firmware",
        "",
        "config",
        "keyProfileId",
        "expirationTimeMs",
        "",
        "cancelCollectPaymentMethod",
        "",
        "cancelDiscoverReadersReason",
        "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;",
        "clearCancellationStates",
        "disconnectReader",
        "disconnectReason",
        "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
        "discoverReaders",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
        "getSimulatedReader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "deviceType",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "handleAuthResponse",
        "Lkotlinx/coroutines/Deferred;",
        "Lcom/stripe/hardware/emv/TransactionResult;",
        "tlvBlob",
        "handleNonCardPaymentMethodConfirmationResponse",
        "data",
        "Lcom/stripe/transaction/NonCardPaymentMethodData;",
        "isDomesticDebitOnly",
        "simulatedCard",
        "Lcom/stripe/stripeterminal/external/models/SimulatedCard;",
        "onConnect",
        "onConnectReader",
        "reader",
        "connectionConfiguration",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "requestReconnection",
        "Lkotlin/Function1;",
        "onDisconnect",
        "onPaymentMethodCollectedForPaymentIntent",
        "readCard",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "reusable",
        "collectionType",
        "Lcom/stripe/transaction/PaymentMethodCollectionType;",
        "readReusableCard",
        "rebootReader",
        "reconnectReader",
        "selectDynamicCurrencyConversion",
        "dynamicCurrencyConversionData",
        "Lcom/stripe/transaction/DynamicCurrencyConversionData;",
        "sleep",
        "millis",
        "updateOfflineConfigForSimulatedReader",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;",
        "offlineConfig",
        "updateOfflineConfigForSimulatedReader$adapter_release",
        "updatePaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "paymentIntent",
        "requestDynamicCurrencyConversion",
        "apiPaymentIntentUpdater",
        "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
        "CancellationState",
        "Companion",
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
.field public static final CHIPPER_OR_M2_CONFIG_HASH:Ljava/lang/String; = "AB91315AB4D9E0ABA497398AE2219CD2"

.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$Companion;

.field public static final OUTDATED_SIMULATED_READER_FIRMWARE_VERSION:Ljava/lang/String; = "1.00.03.29"

.field public static final SERIAL_NUMBER_SUFFIX:Ljava/lang/String; = "SIMULATOR"

.field protected static final SLEEP_QUANTUM_MS:I = 0x7d0

.field public static final UP_TO_DATE_SIMULATED_READER_FIRMWARE_VERSION:Ljava/lang/String; = "1.00.03.32"

.field public static final WP3_CONFIG_HASH:Ljava/lang/String; = "C5F54F0DA8D5C461AD01CC258CC22DD120494D5F57495345504144332D53504C415348"


# instance fields
.field private cancelCollectPayment:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

.field private cancelDiscoverReaders:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

.field private cancelInstallUpdate:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

.field private final clock:Lcom/stripe/time/Clock;

.field private collectiblePayment:Lcom/stripe/transaction/CollectiblePayment;

.field private final shopifyReadersEnabled:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final simulatorConfigurationRepository:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

.field private final statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

.field private final transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->Companion:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/time/Clock;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simulatorConfigurationRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shopifyReadersEnabled"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, p6}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    .line 53
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->clock:Lcom/stripe/time/Clock;

    .line 54
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    .line 55
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->simulatorConfigurationRepository:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    .line 56
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    .line 57
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->shopifyReadersEnabled:Lkotlin/jvm/functions/Function0;

    .line 61
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->NOT_CANCELED:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->cancelDiscoverReaders:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    .line 62
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->NOT_CANCELED:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->cancelCollectPayment:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    .line 65
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->NOT_CANCELED:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->cancelInstallUpdate:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    return-void
.end method

.method private final buildTestOfflineVersionsWithExpirations(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb;
    .locals 16

    .line 406
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb;

    .line 408
    new-instance v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration;-><init>(Ljava/lang/String;JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 407
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 414
    new-instance v8, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration;

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v8 .. v14}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb$VersionWithExpiration;-><init>(Ljava/lang/String;JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 413
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 420
    new-instance v8, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata;

    const/16 v14, 0x8

    const/4 v15, 0x0

    const-string v9, ""

    const/4 v13, 0x0

    move-object/from16 v10, p3

    move-wide/from16 v11, p4

    invoke-direct/range {v8 .. v15}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 419
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 406
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final clearCancellationStates()V
    .locals 1

    .line 349
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->NOT_CANCELED:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->cancelCollectPayment:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    .line 350
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->NOT_CANCELED:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->cancelDiscoverReaders:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    .line 351
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->NOT_CANCELED:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->cancelInstallUpdate:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    return-void
.end method

.method private final isDomesticDebitOnly(Lcom/stripe/stripeterminal/external/models/SimulatedCard;)Z
    .locals 2

    .line 356
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->EFTPOS_AU_DEBIT:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/SimulatedCard;-><init>(Lcom/stripe/stripeterminal/external/models/SimulatedCardType;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static synthetic readCard$default(Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;ZLcom/stripe/transaction/PaymentMethodCollectionType;ILjava/lang/Object;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
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

    .line 241
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->readCard(ZLcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: readCard"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public adapterType()Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;
    .locals 1

    .line 345
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->SIMULATED:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    return-object v0
.end method

.method public cancelCollectPaymentMethod()V
    .locals 1

    .line 78
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->CANCELED_WITH_ERROR:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->cancelCollectPayment:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    return-void
.end method

.method public cancelDiscoverReaders(Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;)V
    .locals 2

    const-string v0, "cancelDiscoverReadersReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$NewDiscoverReadersQueued;->INSTANCE:Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$NewDiscoverReadersQueued;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 84
    :cond_0
    sget-object v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$MerchantRequestedCancellation;->INSTANCE:Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$MerchantRequestedCancellation;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    sget-object p1, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->CANCELED_WITH_ERROR:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    goto :goto_2

    .line 86
    :cond_1
    sget-object v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$DiscoveryCompleted;->INSTANCE:Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$DiscoveryCompleted;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 87
    :cond_2
    sget-object v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$ConnectReaderInProgress;->INSTANCE:Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$ConnectReaderInProgress;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_3

    sget-object p1, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->CANCELED_SILENTLY:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    .line 82
    :goto_2
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->cancelDiscoverReaders:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    return-void

    .line 87
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public cancelInstallUpdate()V
    .locals 1

    .line 92
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->CANCELED_WITH_ERROR:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->cancelInstallUpdate:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    return-void
.end method

.method public collectiblePayment()Lcom/stripe/transaction/CollectiblePayment;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->collectiblePayment:Lcom/stripe/transaction/CollectiblePayment;

    return-object v0
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

    .line 122
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->onDisconnect()V

    return-void
.end method

.method public discoverReaders(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->clearCancellationStates()V

    .line 131
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 132
    new-array v2, v2, [Lcom/stripe/stripeterminal/external/models/Reader;

    sget-object v4, Lcom/stripe/stripeterminal/external/models/DeviceType;->VERIFONE_P400:Lcom/stripe/stripeterminal/external/models/DeviceType;

    invoke-virtual {p0, v4}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->getSimulatedReader(Lcom/stripe/stripeterminal/external/models/DeviceType;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v4

    aput-object v4, v2, v1

    .line 133
    sget-object v1, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISEPOS_E:Lcom/stripe/stripeterminal/external/models/DeviceType;

    invoke-virtual {p0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->getSimulatedReader(Lcom/stripe/stripeterminal/external/models/DeviceType;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v1

    aput-object v1, v2, v3

    .line 131
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 136
    :cond_0
    instance-of v4, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$BluetoothDiscoveryConfiguration;

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    .line 137
    :cond_1
    instance-of v4, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$UsbDiscoveryConfiguration;

    :goto_0
    if-eqz v4, :cond_10

    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x3

    .line 138
    new-array v5, v5, [Lcom/stripe/stripeterminal/external/models/DeviceType;

    sget-object v6, Lcom/stripe/stripeterminal/external/models/DeviceType;->CHIPPER_2X:Lcom/stripe/stripeterminal/external/models/DeviceType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/stripe/stripeterminal/external/models/DeviceType;->STRIPE_M2:Lcom/stripe/stripeterminal/external/models/DeviceType;

    aput-object v1, v5, v3

    sget-object v1, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISEPAD_3:Lcom/stripe/stripeterminal/external/models/DeviceType;

    aput-object v1, v5, v2

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->shopifyReadersEnabled:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    sget-object v1, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISECUBE:Lcom/stripe/stripeterminal/external/models/DeviceType;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v1, Lcom/stripe/stripeterminal/external/models/DeviceType;->CHIPPER_1X:Lcom/stripe/stripeterminal/external/models/DeviceType;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_2
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 480
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 481
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 482
    check-cast v4, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 143
    invoke-virtual {p0, v4}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->getSimulatedReader(Lcom/stripe/stripeterminal/external/models/DeviceType;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v4

    .line 482
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 483
    :cond_3
    move-object v1, v2

    check-cast v1, Ljava/util/List;

    .line 154
    :goto_2
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v2}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 155
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v2}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 157
    :cond_4
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->cancelDiscoverReaders:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    sget-object v8, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->NOT_CANCELED:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    if-ne v2, v8, :cond_e

    .line 159
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v2}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/16 v10, 0x7d0

    cmp-long v2, v8, v10

    if-ltz v2, :cond_5

    .line 160
    invoke-interface {p2, v1}, Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;->onUpdateDiscoveredReaders(Ljava/util/List;)V

    .line 161
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v2}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v6

    .line 166
    :cond_5
    instance-of v2, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$BluetoothDiscoveryConfiguration;

    if-eqz v2, :cond_6

    move-object v8, p1

    check-cast v8, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$BluetoothDiscoveryConfiguration;

    invoke-virtual {v8}, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$BluetoothDiscoveryConfiguration;->getTimeout()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_6

    .line 167
    :cond_6
    instance-of v8, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$UsbDiscoveryConfiguration;

    if-eqz v8, :cond_7

    move-object v8, p1

    check-cast v8, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$UsbDiscoveryConfiguration;

    invoke-virtual {v8}, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$UsbDiscoveryConfiguration;->getTimeout()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_6

    .line 169
    :cond_7
    instance-of v8, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$EmbeddedDiscoveryConfiguration;

    if-eqz v8, :cond_8

    move v8, v3

    goto :goto_3

    .line 170
    :cond_8
    instance-of v8, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$HandoffDiscoveryConfiguration;

    :goto_3
    if-eqz v8, :cond_9

    move v8, v3

    goto :goto_4

    :cond_9
    move v8, v0

    :goto_4
    if-eqz v8, :cond_a

    move v8, v3

    goto :goto_5

    .line 172
    :cond_a
    instance-of v8, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$TapToPayDiscoveryConfiguration;

    :goto_5
    if-eqz v8, :cond_d

    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_4

    .line 175
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v9}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v11, v8

    cmp-long v8, v9, v11

    if-ltz v8, :cond_4

    if-nez v2, :cond_c

    .line 184
    instance-of p2, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$UsbDiscoveryConfiguration;

    if-eqz p2, :cond_b

    .line 185
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 186
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->USB_DISCOVERY_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 185
    const-string v2, "USB discovery timed out."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_7

    .line 191
    :cond_b
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 192
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 193
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected DiscoveryConfiguration: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 191
    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_7

    .line 178
    :cond_c
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 179
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_SCAN_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 178
    const-string v3, "Bluetooth scan timed out."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Throwable;

    .line 191
    :goto_7
    throw v0

    .line 172
    :cond_d
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 200
    :cond_e
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->cancelDiscoverReaders:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    sget-object p2, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->CANCELED_WITH_ERROR:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    if-eq p1, p2, :cond_f

    return-void

    .line 201
    :cond_f
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 202
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 201
    const-string v2, "DiscoverReaders was canceled by the user."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 145
    :cond_10
    instance-of p2, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$EmbeddedDiscoveryConfiguration;

    if-eqz p2, :cond_11

    move p2, v3

    goto :goto_8

    .line 146
    :cond_11
    instance-of p2, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$HandoffDiscoveryConfiguration;

    :goto_8
    if-eqz p2, :cond_12

    goto :goto_9

    .line 147
    :cond_12
    instance-of v3, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$TapToPayDiscoveryConfiguration;

    :goto_9
    if-eqz v3, :cond_13

    .line 148
    new-instance v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 149
    sget-object v5, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Simulating reader for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is not supported."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 148
    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v4

    :cond_13
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method protected final getCancelInstallUpdate()Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->cancelInstallUpdate:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    return-object v0
.end method

.method protected final getClock()Lcom/stripe/time/Clock;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->clock:Lcom/stripe/time/Clock;

    return-object v0
.end method

.method public abstract getSimulatedReader(Lcom/stripe/stripeterminal/external/models/DeviceType;)Lcom/stripe/stripeterminal/external/models/Reader;
.end method

.method protected final getSimulatorConfigurationRepository()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->simulatorConfigurationRepository:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    return-object v0
.end method

.method protected final getStatusManager()Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    return-object v0
.end method

.method public handleAuthResponse(Ljava/lang/String;)Lkotlinx/coroutines/Deferred;
    .locals 3
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 209
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    .line 210
    new-instance v1, Lcom/stripe/hardware/emv/TransactionResult;

    sget-object v2, Lcom/stripe/hardware/emv/TransactionResult$Result;->APPROVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-direct {v1, v2, p1}, Lcom/stripe/hardware/emv/TransactionResult;-><init>(Lcom/stripe/hardware/emv/TransactionResult$Result;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 209
    check-cast v0, Lkotlinx/coroutines/Deferred;

    return-object v0
.end method

.method public handleNonCardPaymentMethodConfirmationResponse(Lcom/stripe/transaction/NonCardPaymentMethodData;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onConnect()V
    .locals 0

    return-void
.end method

.method protected onConnectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function1;)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 1
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

    .line 101
    invoke-virtual {p0, p3}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->setRequestReconnection(Lkotlin/jvm/functions/Function1;)V

    const-wide/16 p2, 0x7d0

    .line 103
    invoke-virtual {p0, p2, p3}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->sleep(J)V

    .line 104
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->onConnect()V

    .line 105
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->getSimulatedReader(Lcom/stripe/stripeterminal/external/models/DeviceType;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object p1

    return-object p1
.end method

.method public onDisconnect()V
    .locals 0

    return-void
.end method

.method public onPaymentMethodCollectedForPaymentIntent()V
    .locals 0

    return-void
.end method

.method protected readCard(ZLcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 245
    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->clearCancellationStates()V

    const-wide/16 v2, 0x7d0

    .line 246
    invoke-virtual {v0, v2, v3}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->sleep(J)V

    .line 249
    iget-object v4, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->cancelCollectPayment:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    sget-object v5, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->NOT_CANCELED:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    if-ne v4, v5, :cond_d

    .line 253
    invoke-virtual {v0, v2, v3}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->sleep(J)V

    .line 256
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->cancelCollectPayment:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    sget-object v3, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;->NOT_CANCELED:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    if-ne v2, v3, :cond_c

    .line 260
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->simulatorConfigurationRepository:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;->getSimulatorConfiguration()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;

    move-result-object v2

    .line 262
    instance-of v3, v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v5, v1

    check-cast v5, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_1

    .line 263
    invoke-virtual {v5}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getComputedPriorities()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 264
    sget-object v6, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v6, v5}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkPriorities(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    if-nez v5, :cond_2

    .line 265
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 267
    :cond_2
    iget-object v6, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    .line 268
    invoke-virtual {v6}, Lcom/stripe/core/transaction/TransactionRepository;->getAmountTip()Lcom/stripe/currency/Amount;

    move-result-object v7

    .line 271
    iget-object v8, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v8}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v8

    .line 267
    invoke-static {v7, v1, v2, v8}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapterKt;->getAmountTip(Lcom/stripe/currency/Amount;Lcom/stripe/transaction/PaymentMethodCollectionType;Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/currency/Amount;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/stripe/core/transaction/TransactionRepository;->setAmountTip(Lcom/stripe/currency/Amount;)V

    .line 276
    instance-of v6, v1, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    .line 277
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->getSimulatedCard()Lcom/stripe/stripeterminal/external/models/SimulatedCard;

    move-result-object v2

    .line 280
    instance-of v7, v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;

    if-eqz v7, :cond_3

    .line 281
    sget-object v5, Lcom/stripe/jvmcore/terminal/makers/InteracEmvBlobMaker;->Companion:Lcom/stripe/jvmcore/terminal/makers/InteracEmvBlobMaker$Companion;

    .line 282
    move-object v7, v1

    check-cast v7, Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;

    invoke-virtual {v7}, Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v7

    invoke-virtual {v7}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v7

    .line 283
    new-instance v9, Lcom/stripe/stripeterminal/external/models/SimulatedCard;

    sget-object v10, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->INTERAC:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-direct {v9, v10}, Lcom/stripe/stripeterminal/external/models/SimulatedCard;-><init>(Lcom/stripe/stripeterminal/external/models/SimulatedCardType;)V

    invoke-virtual {v9}, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->getEmvBlob()Lcom/stripe/stripeterminal/external/internal/EmvBlob;

    move-result-object v9

    invoke-virtual {v9}, Lcom/stripe/stripeterminal/external/internal/EmvBlob;->getBlob()Ljava/lang/String;

    move-result-object v9

    .line 281
    invoke-virtual {v5, v7, v8, v9}, Lcom/stripe/jvmcore/terminal/makers/InteracEmvBlobMaker$Companion;->create(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 285
    sget-object v7, Lcom/stripe/hardware/emv/EmvTransactionType;->TRADITIONAL:Lcom/stripe/hardware/emv/EmvTransactionType;

    goto :goto_2

    .line 289
    :cond_3
    invoke-virtual {v2, v5, v6}, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->emvForSimulatedCard(Ljava/util/List;Z)Lcom/stripe/stripeterminal/external/internal/EmvBlob;

    move-result-object v5

    .line 292
    invoke-virtual {v5}, Lcom/stripe/stripeterminal/external/internal/EmvBlob;->getBlob()Ljava/lang/String;

    move-result-object v5

    .line 293
    sget-object v7, Lcom/stripe/hardware/emv/EmvTransactionType;->QUICK:Lcom/stripe/hardware/emv/EmvTransactionType;

    :goto_2
    move-object v9, v5

    .line 297
    new-instance v8, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    const/16 v19, 0x3fe

    const/16 v20, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v8 .. v20}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;-><init>(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v8

    .line 299
    new-instance v8, Lcom/stripe/stripeterminal/external/models/SimulatedCard;

    sget-object v10, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->OFFLINE_PIN_SCA_RETRY:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-direct {v8, v10}, Lcom/stripe/stripeterminal/external/models/SimulatedCard;-><init>(Lcom/stripe/stripeterminal/external/models/SimulatedCardType;)V

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, 0x1

    if-nez v8, :cond_5

    .line 300
    new-instance v8, Lcom/stripe/stripeterminal/external/models/SimulatedCard;

    sget-object v11, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->ONLINE_PIN_SCA_RETRY:Lcom/stripe/stripeterminal/external/models/SimulatedCardType;

    invoke-direct {v8, v11}, Lcom/stripe/stripeterminal/external/models/SimulatedCard;-><init>(Lcom/stripe/stripeterminal/external/models/SimulatedCardType;)V

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    move v14, v8

    goto :goto_4

    :cond_5
    :goto_3
    move v14, v10

    :goto_4
    if-nez v6, :cond_7

    .line 302
    invoke-virtual {v5}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->isInterac()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_5

    .line 306
    :cond_6
    sget-object v6, Lcom/stripe/hardware/emv/InterfaceType;->CONTACTLESS:Lcom/stripe/hardware/emv/InterfaceType;

    goto :goto_6

    .line 304
    :cond_7
    :goto_5
    sget-object v6, Lcom/stripe/hardware/emv/InterfaceType;->CONTACT:Lcom/stripe/hardware/emv/InterfaceType;

    .line 309
    :goto_6
    invoke-direct {v0, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->isDomesticDebitOnly(Lcom/stripe/stripeterminal/external/models/SimulatedCard;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v3, :cond_8

    move-object v4, v1

    check-cast v4, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    :cond_8
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->isOffline()Z

    move-result v1

    if-eq v1, v10, :cond_9

    goto :goto_7

    .line 310
    :cond_9
    new-instance v15, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 311
    sget-object v16, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v20, 0xc

    const/16 v21, 0x0

    .line 310
    const-string v17, "This card is not supported while operating offline."

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v15 .. v21}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v15

    .line 322
    :cond_a
    :goto_7
    invoke-virtual {v5}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->isInterac()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/stripe/hardware/emv/SourceType;->INTERAC_PRESENT:Lcom/stripe/hardware/emv/SourceType;

    goto :goto_8

    :cond_b
    sget-object v1, Lcom/stripe/hardware/emv/SourceType;->CARD_PRESENT:Lcom/stripe/hardware/emv/SourceType;

    :goto_8
    move-object v12, v1

    .line 318
    new-instance v8, Lcom/stripe/transaction/payment/EmvPayment;

    const/4 v13, 0x0

    move-object v10, v6

    move-object v11, v7

    invoke-direct/range {v8 .. v13}, Lcom/stripe/transaction/payment/EmvPayment;-><init>(Ljava/lang/String;Lcom/stripe/hardware/emv/InterfaceType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/emv/SourceType;Z)V

    .line 316
    new-instance v1, Lcom/stripe/transaction/CollectiblePayment;

    .line 318
    check-cast v8, Lcom/stripe/transaction/payment/Payment;

    .line 316
    invoke-direct {v1, v8, v10, v14}, Lcom/stripe/transaction/CollectiblePayment;-><init>(Lcom/stripe/transaction/payment/Payment;Lcom/stripe/hardware/emv/InterfaceType;Z)V

    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->collectiblePayment:Lcom/stripe/transaction/CollectiblePayment;

    return-object v5

    .line 257
    :cond_c
    new-instance v15, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v16, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v20, 0xc

    const/16 v21, 0x0

    const-string v17, "The operation was canceled by the user."

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v15 .. v21}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v15

    .line 250
    :cond_d
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v3, "The operation was canceled by the user."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public readReusableCard()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 224
    invoke-static {p0, v2, v0, v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->readCard$default(Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;ZLcom/stripe/transaction/PaymentMethodCollectionType;ILjava/lang/Object;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v0

    return-object v0
.end method

.method public rebootReader(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x7d0

    .line 116
    invoke-virtual {p0, v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->sleep(J)V

    .line 117
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->getRequestReconnection()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->REBOOT_REQUESTED:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public reconnectReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x7d0

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->sleep(J)V

    return-object p1
.end method

.method public selectDynamicCurrencyConversion(Lcom/stripe/transaction/DynamicCurrencyConversionData;)V
    .locals 1

    const-string v0, "dynamicCurrencyConversionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final setCancelInstallUpdate(Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->cancelInstallUpdate:Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter$CancellationState;

    return-void
.end method

.method protected final sleep(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 334
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 336
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 337
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 339
    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 336
    const-string v2, "Sleep failed"

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public final updateOfflineConfigForSimulatedReader$adapter_release(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;
    .locals 44

    move-object/from16 v6, p1

    const-string v0, "reader"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/DeviceType;->getHardwareModel()Lcom/stripe/proto/model/common/HardwareModel;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/proto/model/common/HardwareModel;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    if-eqz v0, :cond_5

    .line 376
    new-instance v7, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb;

    .line 378
    invoke-virtual {v0}, Lcom/stripe/proto/model/common/BBPosHardware;->name()Ljava/lang/String;

    move-result-object v8

    .line 381
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getConfigVersion()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v0, v2

    .line 382
    :cond_0
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getPinKeyProfileId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 383
    :goto_0
    sget-object v1, Lkotlinx/datetime/Instant;->Companion:Lkotlinx/datetime/Instant$Companion;

    invoke-virtual {v1}, Lkotlinx/datetime/Instant$Companion;->getDISTANT_FUTURE()Lkotlinx/datetime/Instant;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/datetime/Instant;->toEpochMilliseconds()J

    move-result-wide v4

    .line 379
    const-string v1, "1.00.03.32"

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->buildTestOfflineVersionsWithExpirations(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionsWithExpirationsPb;

    move-result-object v1

    move-object v13, v0

    .line 378
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 377
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v9

    const/4 v11, 0x5

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 376
    invoke-direct/range {v7 .. v12}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb;-><init>(Ljava/util/Map;Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "simulatedRegion"

    invoke-static {v0, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 375
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v6, :cond_4

    .line 390
    iget-object v2, v13, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->simulatorConfigurationRepository:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;->getSimulatorConfiguration()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->getOfflineEnabled()Z

    move-result v2

    .line 391
    iget-object v14, v6, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;->reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    if-eqz v14, :cond_2

    .line 392
    iget-object v3, v13, Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapter;->simulatorConfigurationRepository:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;->getSimulatorConfiguration()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->getOfflineEnabled()Z

    move-result v15

    const/16 v19, 0xe

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 391
    invoke-static/range {v14 .. v20}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;->copy$default(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;ZZZLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    move-result-object v3

    move-object v4, v3

    goto :goto_1

    :cond_2
    move-object v4, v1

    .line 394
    :goto_1
    iget-object v14, v6, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;->account_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    if-eqz v14, :cond_3

    .line 395
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v29

    const v42, 0x7ffbfff

    const/16 v43, 0x0

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

    .line 394
    invoke-static/range {v14 .. v43}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;->copy$default(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;ILjava/util/Map;IIIILjava/util/List;ZZLjava/util/Map;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IZLjava/util/List;Ljava/util/List;ZZLjava/util/Map;ZLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v1

    :cond_3
    move-object v5, v1

    const/16 v10, 0x1e6

    const/4 v11, 0x0

    move v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p1

    .line 389
    invoke-static/range {v0 .. v11}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;->copy$default(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;ZILjava/util/Map;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;ZZLjava/util/Map;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1

    :cond_5
    move-object/from16 v13, p0

    .line 366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Simulated reader must have a BBPOS hardware model."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;ZLcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 1

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiPaymentIntentUpdater"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-interface {p4, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;->invoke(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;Z)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1
.end method
