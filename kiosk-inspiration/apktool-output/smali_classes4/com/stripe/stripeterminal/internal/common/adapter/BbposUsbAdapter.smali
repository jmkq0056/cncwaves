.class public final Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;
.super Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;
.source "BbposUsbAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$Companion;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposUsbAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposUsbAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,622:1\n16#2:623\n*S KotlinDebug\n*F\n+ 1 BbposUsbAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter\n*L\n160#1:623\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ce\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 p2\u00020\u0001:\u0004pqrsB\u00bf\u0002\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\u0006\u0010\u001e\u001a\u00020\u001f\u0012\u0006\u0010 \u001a\u00020!\u0012\u0006\u0010\"\u001a\u00020#\u0012\u0006\u0010$\u001a\u00020%\u0012\u0006\u0010&\u001a\u00020\'\u0012\u0006\u0010(\u001a\u00020)\u0012\u0006\u0010*\u001a\u00020+\u0012\u0006\u0010,\u001a\u00020-\u0012\u0006\u0010.\u001a\u00020/\u0012\u0006\u00100\u001a\u000201\u0012\u0006\u00102\u001a\u000203\u0012\"\u00104\u001a\u001e\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020905j\u0002`:\u0012\u0006\u0010;\u001a\u00020<\u0012\u0006\u0010=\u001a\u00020>\u0012\"\u0010?\u001a\u001e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020A\u0012\u0004\u0012\u00020B\u0012\u0004\u0012\u00020C05j\u0002`D\u0012\u0006\u0010E\u001a\u00020F\u0012\u0006\u0010G\u001a\u00020H\u0012\u0006\u0010I\u001a\u00020J\u00a2\u0006\u0002\u0010KJ\u0014\u0010Y\u001a\u00060ZR\u00020\u00012\u0006\u0010[\u001a\u00020\\H\u0014J\u001c\u0010]\u001a\u00060^R\u00020\u00012\u0006\u0010_\u001a\u00020`2\u0006\u0010a\u001a\u00020bH\u0014J\u0012\u0010c\u001a\u0004\u0018\u00010d2\u0006\u0010[\u001a\u00020\\H\u0014J\u0014\u0010e\u001a\u00060fR\u00020\u00012\u0006\u0010[\u001a\u00020\\H\u0014J\u0010\u0010g\u001a\u00020h2\u0006\u0010i\u001a\u00020jH\u0014J\u001c\u0010k\u001a\u00020h2\u0008\u0010l\u001a\u0004\u0018\u00010m2\u0008\u0010n\u001a\u0004\u0018\u00010oH\u0016R\u001b\u0010L\u001a\u00020M8BX\u0082\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u0008P\u0010Q*\u0004\u0008N\u0010OR\u000e\u0010$\u001a\u00020%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010R\u001a\u0004\u0018\u00010SX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010TR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u00104\u001a\u001e\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020905j\u0002`:X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020<X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010U\u001a\u0004\u0018\u00010VX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010WR\u0012\u0010X\u001a\u0004\u0018\u00010VX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010WR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006t"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;",
        "updateClient",
        "Lcom/stripe/core/readerupdate/UpdateClient;",
        "sessionTokenRepository",
        "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
        "scheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "connectionManager",
        "Lcom/stripe/core/readerconnection/ConnectionManager;",
        "updateManager",
        "Lcom/stripe/core/readerupdate/UpdateManager;",
        "configListener",
        "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;",
        "readerStatusListener",
        "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
        "updateListener",
        "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
        "updateInstaller",
        "Lcom/stripe/core/readerupdate/UpdateInstaller;",
        "statusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "settingsRepository",
        "Lcom/stripe/core/transaction/SettingsRepository;",
        "deviceController",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
        "usbPermissionReceiver",
        "Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;",
        "featureFlagsRepository",
        "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
        "readerUpdateController",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
        "readerInfoController",
        "Lcom/stripe/core/hardware/ReaderInfoController;",
        "applicationInformationProvider",
        "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
        "transactionRepository",
        "Lcom/stripe/core/transaction/TransactionRepository;",
        "connectAndUpdateStateMachine",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;",
        "paymentCollectionWrapper",
        "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;",
        "resourceRepository",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;",
        "deviceListener",
        "Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;",
        "deviceListenerRegistry",
        "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;",
        "domesticDebitAidsParser",
        "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;",
        "connectivityHealthLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;",
        "Lcom/stripe/stripeterminal/internal/common/log/UsbConnectivityHealthLogger;",
        "disconnectReasonRepository",
        "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;",
        "readerInfoRepository",
        "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;",
        "singleUpdateHealthLogger",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
        "Lcom/stripe/core/readerupdate/healthreporter/SingleUpdateHealthLogger;",
        "mposReaderEventLogger",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;",
        "mposReaderDebugLogManager",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lio/reactivex/rxjava3/core/Scheduler;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/readerconnection/ConnectionManager;Lcom/stripe/core/readerupdate/UpdateManager;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/readerupdate/UpdateInstaller;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "appInfo",
        "Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "getAppInfo$delegate",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Ljava/lang/Object;",
        "getAppInfo",
        "()Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "attemptDelayMillis",
        "",
        "Ljava/lang/Long;",
        "reconnectionMaxAttempts",
        "",
        "Ljava/lang/Integer;",
        "reconnectionMaxTimeoutInSeconds",
        "makeConnectReaderOperation",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "makeDiscoverReadersOperation",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;",
        "config",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
        "makeHardwareReader",
        "Lcom/stripe/core/hardware/Reader$UsbReader;",
        "makeReconnectReaderOperation",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;",
        "onDisconnect",
        "",
        "disconnectCause",
        "Lcom/stripe/hardware/status/DisconnectCause;",
        "setReconnectParams",
        "bluetoothConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
        "usbConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
        "Companion",
        "ConnectUsbReaderOperation",
        "DiscoverUsbReadersOperation",
        "ReconnectUsbReaderOperation",
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

.field private static final Companion:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$Companion;

.field private static final SUPPORTED_USB_DEVICE_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/DeviceType;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_READER_SERIAL_LENGTH:I = 0xf


# instance fields
.field private final applicationInformationProvider:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

.field private attemptDelayMillis:Ljava/lang/Long;

.field private final connectionManager:Lcom/stripe/core/readerconnection/ConnectionManager;

.field private final connectivityHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

.field private final disconnectReasonRepository:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

.field private final featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

.field private final readerStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

.field private reconnectionMaxAttempts:Ljava/lang/Integer;

.field private reconnectionMaxTimeoutInSeconds:Ljava/lang/Integer;

.field private final scheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

.field private final statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

.field private final updateManager:Lcom/stripe/core/readerupdate/UpdateManager;

.field private final usbPermissionReceiver:Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    .line 167
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "appInfo"

    const-string v4, "getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;"

    const-class v5, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v3, v4, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v2, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->Companion:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$Companion;

    const/4 v1, 0x5

    .line 171
    new-array v1, v1, [Lcom/stripe/stripeterminal/external/models/DeviceType;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/DeviceType;->CHIPPER_2X:Lcom/stripe/stripeterminal/external/models/DeviceType;

    aput-object v2, v1, v6

    .line 172
    sget-object v2, Lcom/stripe/stripeterminal/external/models/DeviceType;->STRIPE_M2:Lcom/stripe/stripeterminal/external/models/DeviceType;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    .line 173
    sget-object v2, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISEPAD_3:Lcom/stripe/stripeterminal/external/models/DeviceType;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    .line 174
    sget-object v2, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISEPAD_3S:Lcom/stripe/stripeterminal/external/models/DeviceType;

    aput-object v2, v1, v0

    const/4 v0, 0x4

    .line 175
    sget-object v2, Lcom/stripe/stripeterminal/external/models/DeviceType;->WISECUBE:Lcom/stripe/stripeterminal/external/models/DeviceType;

    aput-object v2, v1, v0

    .line 170
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->SUPPORTED_USB_DEVICE_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lio/reactivex/rxjava3/core/Scheduler;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/readerconnection/ConnectionManager;Lcom/stripe/core/readerupdate/UpdateManager;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/readerupdate/UpdateInstaller;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/stripe/core/readerconnection/ConnectionManager;",
            "Lcom/stripe/core/readerupdate/UpdateManager;",
            "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;",
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
            "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
            "Lcom/stripe/core/readerupdate/UpdateInstaller;",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            "Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
            "Lcom/stripe/core/hardware/ReaderInfoController;",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;",
            "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;",
            "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;",
            "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")V"
        }
    .end annotation

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v11, p11

    move-object/from16 v0, p13

    move-object/from16 v1, p14

    move-object/from16 v13, p15

    move-object/from16 v7, p18

    move-object/from16 v9, p22

    move-object/from16 v10, p26

    move-object/from16 v12, p27

    const-string v15, "updateClient"

    move-object/from16 v14, p1

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "sessionTokenRepository"

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "scheduler"

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "scope"

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "connectionManager"

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "updateManager"

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "configListener"

    move-object/from16 v2, p7

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "readerStatusListener"

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "updateListener"

    move-object/from16 v2, p9

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "updateInstaller"

    move-object/from16 v2, p10

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "statusManager"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "settingsRepository"

    move-object/from16 v2, p12

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "deviceController"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "usbPermissionReceiver"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "featureFlagsRepository"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "readerUpdateController"

    move-object/from16 v0, p16

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "readerInfoController"

    move-object/from16 v0, p17

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "applicationInformationProvider"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "transactionRepository"

    move-object/from16 v0, p19

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "connectAndUpdateStateMachine"

    move-object/from16 v0, p20

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "paymentCollectionWrapper"

    move-object/from16 v0, p21

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "resourceRepository"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "deviceListener"

    move-object/from16 v0, p23

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "deviceListenerRegistry"

    move-object/from16 v0, p24

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "domesticDebitAidsParser"

    move-object/from16 v0, p25

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "connectivityHealthLogger"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "disconnectReasonRepository"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "readerInfoRepository"

    move-object/from16 v0, p28

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "singleUpdateHealthLogger"

    move-object/from16 v0, p29

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "mposReaderEventLogger"

    move-object/from16 v0, p30

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "mposReaderDebugLogManager"

    move-object/from16 v0, p31

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "loggerFactory"

    move-object/from16 v0, p32

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    move-object/from16 v19, v9

    check-cast v19, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    .line 623
    const-class v9, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-interface {v0, v9}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v28

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v18, p17

    move-object/from16 v16, p19

    move-object/from16 v17, p20

    move-object/from16 v15, p21

    move-object/from16 v20, p23

    move-object/from16 v21, p24

    move-object/from16 v22, p25

    move-object/from16 v24, p28

    move-object/from16 v25, p29

    move-object/from16 v26, p30

    move-object/from16 v27, p31

    move-object/from16 v29, v0

    move-object/from16 v23, v12

    move-object v1, v14

    move-object/from16 v0, p0

    move-object/from16 v14, p16

    move-object v12, v2

    move-object/from16 v2, p2

    .line 132
    invoke-direct/range {v0 .. v29}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;-><init>(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lio/reactivex/rxjava3/core/Scheduler;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/readerconnection/ConnectionManager;Lcom/stripe/core/readerupdate/UpdateManager;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/readerupdate/UpdateInstaller;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    move-object/from16 v12, v23

    .line 101
    iput-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    .line 102
    iput-object v3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 103
    iput-object v4, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 104
    iput-object v5, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->connectionManager:Lcom/stripe/core/readerconnection/ConnectionManager;

    .line 105
    iput-object v6, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->updateManager:Lcom/stripe/core/readerupdate/UpdateManager;

    .line 107
    iput-object v8, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->readerStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    .line 110
    iput-object v11, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-object/from16 v1, p13

    .line 112
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-object/from16 v1, p14

    .line 113
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->usbPermissionReceiver:Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;

    .line 114
    iput-object v13, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    move-object/from16 v7, p18

    .line 117
    iput-object v7, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->applicationInformationProvider:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    move-object/from16 v10, p26

    .line 125
    iput-object v10, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->connectivityHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 126
    iput-object v12, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->disconnectReasonRepository:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    return-void
.end method

.method public static final synthetic access$getAttemptDelayMillis$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Ljava/lang/Long;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->attemptDelayMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public static final synthetic access$getConnectionManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/core/readerconnection/ConnectionManager;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->connectionManager:Lcom/stripe/core/readerconnection/ConnectionManager;

    return-object p0
.end method

.method public static final synthetic access$getConnectivityHealthLogger$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->connectivityHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-object p0
.end method

.method public static final synthetic access$getDeviceController$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    return-object p0
.end method

.method public static final synthetic access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getReaderStatusListener$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->readerStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    return-object p0
.end method

.method public static final synthetic access$getReconnectionMaxAttempts$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Ljava/lang/Integer;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->reconnectionMaxAttempts:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$getReconnectionMaxTimeoutInSeconds$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Ljava/lang/Integer;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->reconnectionMaxTimeoutInSeconds:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$getSUPPORTED_USB_DEVICE_TYPES$cp()Ljava/util/List;
    .locals 1

    .line 98
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->SUPPORTED_USB_DEVICE_TYPES:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getScheduler$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

.method public static final synthetic access$getScope$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getSessionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    return-object p0
.end method

.method public static final synthetic access$getUsbPermissionReceiver$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->usbPermissionReceiver:Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;

    return-object p0
.end method

.method public static final synthetic access$setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    return-void
.end method

.method private final getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->applicationInformationProvider:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method private static getAppInfo$delegate(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Ljava/lang/Object;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->applicationInformationProvider:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    return-object p0
.end method


# virtual methods
.method protected makeConnectReaderOperation(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ConnectUsbReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;

    return-object v0
.end method

.method protected makeDiscoverReadersOperation(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;Lcom/stripe/terminal/appinfo/ApplicationInformation;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;

    return-object v0
.end method

.method protected makeHardwareReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/core/hardware/Reader$UsbReader;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->fromUsbDeviceOrNull(Landroid/hardware/usb/UsbDevice;)Lcom/stripe/core/hardware/Reader$UsbReader;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic makeHardwareReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/core/hardware/Reader;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->makeHardwareReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/core/hardware/Reader$UsbReader;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/hardware/Reader;

    return-object p1
.end method

.method protected makeReconnectReaderOperation(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$ReconnectUsbReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;

    return-object v0
.end method

.method protected onDisconnect(Lcom/stripe/hardware/status/DisconnectCause;)V
    .locals 14

    const-string v0, "disconnectCause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    instance-of v0, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 275
    sget-object v0, Lcom/stripe/hardware/status/DisconnectCause;->CONNECTED_TO_ANOTHER_DEVICE:Lcom/stripe/hardware/status/DisconnectCause;

    if-ne p1, v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    const-string v0, "onDisconnect: Discovery is in progress. Ignore."

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {p1, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_android_sdk:Z

    if-nez v0, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->getRequestReconnection()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    instance-of v0, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;

    if-nez v0, :cond_1

    .line 284
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->onDisconnect(Lcom/stripe/hardware/status/DisconnectCause;)V

    .line 286
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 287
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->USB_RECONNECT_STARTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 286
    const-string v4, "USB unexpectedly disconnected during operation, reconnecting."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 285
    invoke-virtual {p0, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 291
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->startReconnect()V

    return-void

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    instance-of v0, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;

    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    const-string v0, "onDisconnect: Reconnection is in progress. Ignore."

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {p1, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void

    .line 295
    :cond_2
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->onDisconnect(Lcom/stripe/hardware/status/DisconnectCause;)V

    .line 296
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/hardware/status/DisconnectCause;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    .line 312
    new-instance v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 313
    sget-object v5, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->USB_DISCONNECTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v9, 0xc

    const/4 v10, 0x0

    .line 312
    const-string v6, "USB unexpectedly disconnected during operation."

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 307
    :cond_3
    new-instance v5, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 308
    sget-object v6, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->USB_DISCONNECTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v10, 0xc

    const/4 v11, 0x0

    .line 307
    const-string v7, "USB not supported by device hardware."

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v5

    goto :goto_0

    .line 302
    :cond_4
    new-instance v6, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 303
    sget-object v7, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->USB_PERMISSION_DENIED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v11, 0xc

    const/4 v12, 0x0

    .line 302
    const-string v8, "You must grant Terminal SDK permission to connect to USB reader."

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v6

    goto :goto_0

    .line 297
    :cond_5
    new-instance v7, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 298
    sget-object v8, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_CONNECTED_TO_ANOTHER_DEVICE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v12, 0xc

    const/4 v13, 0x0

    .line 297
    const-string v9, "Reader is already connected to another device."

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v13}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v7

    .line 323
    :goto_0
    invoke-virtual {p0, v4}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 326
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->disconnectReasonRepository:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->consumeDisconnectReason()Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    move-result-object p1

    .line 327
    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->connectivityHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 329
    new-array v0, v0, [Lkotlin/Pair;

    const-string v3, "disconnect_reason"

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepositoryKt;->toLogString(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v0, v1

    .line 330
    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->toLogString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "reason"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v2

    .line 328
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    .line 327
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$onDisconnect$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$onDisconnect$1;

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x5

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v11}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->reportDisconnect(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    .line 334
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->unexpectedDisconnect()V

    return-void
.end method

.method public setReconnectParams(Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;)V
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 199
    iget v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->max_retry_attempts:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->reconnectionMaxAttempts:Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 200
    iget v0, p2, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->max_timeout_seconds:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->reconnectionMaxTimeoutInSeconds:Ljava/lang/Integer;

    if-eqz p2, :cond_2

    .line 201
    iget-wide p1, p2, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->attempt_delay_millis:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->attemptDelayMillis:Ljava/lang/Long;

    return-void
.end method
