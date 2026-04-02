.class public final Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;
.super Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;
.source "BbposBluetoothAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposBluetoothAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposBluetoothAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,630:1\n16#2:631\n1549#3:632\n1620#3,2:633\n1622#3:636\n1238#3,4:639\n1#4:635\n468#5:637\n414#5:638\n*S KotlinDebug\n*F\n+ 1 BbposBluetoothAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter\n*L\n153#1:631\n256#1:632\n256#1:633,2\n256#1:636\n265#1:639,4\n265#1:637\n265#1:638\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ee\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0003z{|B\u00d1\u0002\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\u0006\u0010\u001e\u001a\u00020\u001f\u0012\u0006\u0010 \u001a\u00020!\u0012\u0006\u0010\"\u001a\u00020#\u0012\u0006\u0010$\u001a\u00020%\u0012\u0006\u0010&\u001a\u00020\'\u0012\u0006\u0010(\u001a\u00020)\u0012\u0006\u0010*\u001a\u00020+\u0012\u0006\u0010,\u001a\u00020-\u0012\u0008\u0010.\u001a\u0004\u0018\u00010/\u0012\"\u00100\u001a\u001e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020501j\u0002`6\u0012\u0006\u00107\u001a\u000208\u0012\u0006\u00109\u001a\u00020:\u0012\u0006\u0010;\u001a\u00020<\u0012\u0006\u0010=\u001a\u00020>\u0012\u0006\u0010?\u001a\u00020@\u0012\u0006\u0010A\u001a\u00020B\u0012\"\u0010C\u001a\u001e\u0012\u0004\u0012\u00020D\u0012\u0004\u0012\u00020E\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020G01j\u0002`H\u0012\u0006\u0010I\u001a\u00020J\u0012\u0006\u0010K\u001a\u00020L\u0012\u0006\u0010M\u001a\u00020N\u00a2\u0006\u0002\u0010OJ\"\u0010Z\u001a\u000e\u0012\u0004\u0012\u00020\\\u0012\u0004\u0012\u00020]0[2\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u00020\\0_H\u0014J\u0014\u0010`\u001a\u00060aR\u00020\u00012\u0006\u0010b\u001a\u00020cH\u0014J\u001c\u0010d\u001a\u00060eR\u00020\u00012\u0006\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020iH\u0014J\u0012\u0010j\u001a\u0004\u0018\u00010k2\u0006\u0010b\u001a\u00020cH\u0014J\u0014\u0010l\u001a\u00060mR\u00020\u00012\u0006\u0010b\u001a\u00020cH\u0014J\u0010\u0010n\u001a\u00020o2\u0006\u0010p\u001a\u00020qH\u0014J\u0010\u0010r\u001a\u00020o2\u0006\u0010s\u001a\u00020tH\u0014J\u001c\u0010u\u001a\u00020o2\u0008\u0010v\u001a\u0004\u0018\u00010w2\u0008\u0010x\u001a\u0004\u0018\u00010yH\u0016R\u001b\u0010P\u001a\u00020Q8BX\u0082\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u0008T\u0010U*\u0004\u0008R\u0010SR\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020>X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u00100\u001a\u001e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020501j\u0002`6X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020@X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010V\u001a\u0004\u0018\u00010WX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010XR\u0012\u0010Y\u001a\u0004\u0018\u00010WX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010XR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006}"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;",
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
        "bluetoothBondStateReceiver",
        "Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;",
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
        "deviceController",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
        "bluetoothAdapter",
        "Landroid/bluetooth/BluetoothAdapter;",
        "connectivityHealthLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope$Builder;",
        "Lcom/stripe/stripeterminal/internal/common/log/BluetoothConnectivityHealthLogger;",
        "deviceListener",
        "Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;",
        "deviceListenerRegistry",
        "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;",
        "domesticDebitAidsParser",
        "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;",
        "bluetoothDeviceNameRepository",
        "Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;",
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
        "(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lio/reactivex/rxjava3/core/Scheduler;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/readerconnection/ConnectionManager;Lcom/stripe/core/readerupdate/UpdateManager;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/readerupdate/UpdateInstaller;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Landroid/bluetooth/BluetoothAdapter;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "appInfo",
        "Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "getAppInfo$delegate",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Ljava/lang/Object;",
        "getAppInfo",
        "()Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "reconnectionMaxAttempts",
        "",
        "Ljava/lang/Integer;",
        "reconnectionMaxTimeoutInSeconds",
        "getLocationsForDiscovery",
        "",
        "",
        "Lcom/stripe/stripeterminal/external/models/Location;",
        "deviceSerials",
        "",
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
        "Lcom/stripe/core/hardware/Reader$BluetoothReader;",
        "makeReconnectReaderOperation",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;",
        "onDisconnect",
        "",
        "disconnectCause",
        "Lcom/stripe/hardware/status/DisconnectCause;",
        "onFailure",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "setReconnectParams",
        "bluetoothConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
        "usbConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
        "ConnectBluetoothReaderOperation",
        "DiscoverBluetoothReadersOperation",
        "ReconnectBluetoothReaderOperation",
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
.field private final applicationInformationProvider:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

.field private final bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final bluetoothBondStateReceiver:Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;

.field private final bluetoothDeviceNameRepository:Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;

.field private final connectionManager:Lcom/stripe/core/readerconnection/ConnectionManager;

.field private final connectivityHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope$Builder;",
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

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

.field private final statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 159
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "appInfo"

    const-string v3, "getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;"

    const-class v4, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lio/reactivex/rxjava3/core/Scheduler;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/readerconnection/ConnectionManager;Lcom/stripe/core/readerupdate/UpdateManager;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/readerupdate/UpdateInstaller;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Landroid/bluetooth/BluetoothAdapter;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
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
            "Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
            "Lcom/stripe/core/hardware/ReaderInfoController;",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
            "Landroid/bluetooth/BluetoothAdapter;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope$Builder;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;",
            "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;",
            "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;",
            "Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;",
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

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p8

    move-object/from16 v11, p11

    move-object/from16 v0, p13

    move-object/from16 v13, p14

    move-object/from16 v1, p17

    move-object/from16 v3, p21

    move-object/from16 v6, p22

    move-object/from16 v7, p24

    move-object/from16 v9, p28

    move-object/from16 v10, p29

    move-object/from16 v12, p34

    const-string v14, "updateClient"

    move-object/from16 v15, p1

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "sessionTokenRepository"

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "scheduler"

    move-object/from16 v2, p3

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "scope"

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "connectionManager"

    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "updateManager"

    move-object/from16 v2, p6

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "configListener"

    move-object/from16 v2, p7

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "readerStatusListener"

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "updateListener"

    move-object/from16 v2, p9

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "updateInstaller"

    move-object/from16 v2, p10

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "statusManager"

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "settingsRepository"

    move-object/from16 v2, p12

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "bluetoothBondStateReceiver"

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "featureFlagsRepository"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "readerUpdateController"

    move-object/from16 v0, p15

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "readerInfoController"

    move-object/from16 v0, p16

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "applicationInformationProvider"

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "transactionRepository"

    move-object/from16 v0, p18

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "connectAndUpdateStateMachine"

    move-object/from16 v0, p19

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "paymentCollectionWrapper"

    move-object/from16 v0, p20

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "resourceRepository"

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "deviceController"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "connectivityHealthLogger"

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "deviceListener"

    move-object/from16 v0, p25

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "deviceListenerRegistry"

    move-object/from16 v0, p26

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "domesticDebitAidsParser"

    move-object/from16 v0, p27

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "bluetoothDeviceNameRepository"

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "disconnectReasonRepository"

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "readerInfoRepository"

    move-object/from16 v0, p30

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "singleUpdateHealthLogger"

    move-object/from16 v0, p31

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "mposReaderEventLogger"

    move-object/from16 v0, p32

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "mposReaderDebugLogManager"

    move-object/from16 v0, p33

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "loggerFactory"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    const-class v14, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-interface {v12, v14}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v28

    .line 144
    move-object/from16 v19, v3

    check-cast v19, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    move-object/from16 v3, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v14, p15

    move-object/from16 v18, p16

    move-object/from16 v16, p18

    move-object/from16 v17, p19

    move-object/from16 v20, p25

    move-object/from16 v21, p26

    move-object/from16 v22, p27

    move-object/from16 v24, p30

    move-object/from16 v25, p31

    move-object/from16 v26, p32

    move-object/from16 v27, v0

    move-object/from16 v23, v10

    move-object/from16 v29, v12

    move-object v1, v15

    move-object/from16 v0, p0

    move-object/from16 v10, p10

    move-object/from16 v15, p20

    move-object v12, v2

    move-object/from16 v2, p2

    .line 125
    invoke-direct/range {v0 .. v29}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;-><init>(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lio/reactivex/rxjava3/core/Scheduler;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/readerconnection/ConnectionManager;Lcom/stripe/core/readerupdate/UpdateManager;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/readerupdate/UpdateInstaller;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    move-object/from16 v10, v23

    .line 92
    iput-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    .line 94
    iput-object v4, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 95
    iput-object v5, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->connectionManager:Lcom/stripe/core/readerconnection/ConnectionManager;

    .line 98
    iput-object v8, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->readerStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    .line 101
    iput-object v11, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-object/from16 v1, p13

    .line 103
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->bluetoothBondStateReceiver:Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;

    .line 104
    iput-object v13, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    move-object/from16 v1, p17

    .line 107
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->applicationInformationProvider:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    move-object/from16 v6, p22

    .line 112
    iput-object v6, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-object/from16 v1, p23

    .line 113
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    move-object/from16 v7, p24

    .line 114
    iput-object v7, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->connectivityHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    move-object/from16 v9, p28

    .line 118
    iput-object v9, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->bluetoothDeviceNameRepository:Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;

    .line 119
    iput-object v10, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->disconnectReasonRepository:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    return-void
.end method

.method public static final synthetic access$getAppInfo(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/terminal/appinfo/ApplicationInformation;
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBluetoothAdapter$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method public static final synthetic access$getBluetoothBondStateReceiver$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->bluetoothBondStateReceiver:Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;

    return-object p0
.end method

.method public static final synthetic access$getBluetoothDeviceNameRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->bluetoothDeviceNameRepository:Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;

    return-object p0
.end method

.method public static final synthetic access$getConnectionManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/core/readerconnection/ConnectionManager;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->connectionManager:Lcom/stripe/core/readerconnection/ConnectionManager;

    return-object p0
.end method

.method public static final synthetic access$getConnectivityHealthLogger$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->connectivityHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-object p0
.end method

.method public static final synthetic access$getDeviceController$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    return-object p0
.end method

.method public static final synthetic access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getReaderStatusListener$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->readerStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    return-object p0
.end method

.method public static final synthetic access$getReconnectionMaxAttempts$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Ljava/lang/Integer;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->reconnectionMaxAttempts:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$getReconnectionMaxTimeoutInSeconds$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Ljava/lang/Integer;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->reconnectionMaxTimeoutInSeconds:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$getScope$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getSessionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    return-object p0
.end method

.method public static final synthetic access$setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    return-void
.end method

.method private final getAppInfo()Lcom/stripe/terminal/appinfo/ApplicationInformation;
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->applicationInformationProvider:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method private static getAppInfo$delegate(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;)Ljava/lang/Object;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->applicationInformationProvider:Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    return-object p0
.end method


# virtual methods
.method protected getLocationsForDiscovery(Ljava/util/List;)Ljava/util/Map;
    .locals 5
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

    .line 254
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 255
    check-cast p1, Ljava/lang/Iterable;

    .line 632
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 633
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 634
    check-cast v2, Ljava/lang/String;

    .line 258
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->bluetoothDeviceNameRepository:Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;

    invoke-interface {v3, v2}, Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;->getDeviceSerialFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 261
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    .line 634
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 636
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 264
    invoke-super {p0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getLocationsForDiscovery(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 637
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 638
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 639
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 640
    check-cast v2, Ljava/util/Map$Entry;

    .line 265
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 268
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v4

    .line 638
    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 640
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method protected makeConnectReaderOperation(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ConnectBluetoothReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;

    return-object v0
.end method

.method protected makeDiscoverReadersOperation(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$DiscoverBluetoothReadersOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;

    return-object v0
.end method

.method protected makeHardwareReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/core/hardware/Reader$BluetoothReader;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->fromBluetoothDeviceOrNull(Landroid/bluetooth/BluetoothDevice;)Lcom/stripe/core/hardware/Reader$BluetoothReader;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic makeHardwareReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/core/hardware/Reader;
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->makeHardwareReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/core/hardware/Reader$BluetoothReader;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/hardware/Reader;

    return-object p1
.end method

.method protected makeReconnectReaderOperation(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$ReconnectBluetoothReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;

    return-object v0
.end method

.method protected onDisconnect(Lcom/stripe/hardware/status/DisconnectCause;)V
    .locals 11

    const-string v0, "disconnectCause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_android_sdk:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->getRequestReconnection()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    instance-of v0, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 188
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->onDisconnect(Lcom/stripe/hardware/status/DisconnectCause;)V

    .line 190
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 191
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_RECONNECT_STARTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 190
    const-string v4, "Bluetooth unexpectedly disconnected during operation, reconnecting."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 189
    invoke-virtual {p0, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 195
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->startReconnect()V

    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    instance-of v0, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    const-string v0, "onDisconnect: Reconnection is in progress. Ignore."

    new-array v1, v2, [Lkotlin/Pair;

    invoke-interface {p1, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void

    .line 199
    :cond_1
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->onDisconnect(Lcom/stripe/hardware/status/DisconnectCause;)V

    .line 200
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 201
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/hardware/status/DisconnectCause;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-ne p1, v1, :cond_2

    .line 202
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 203
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->READER_CONNECTED_TO_ANOTHER_DEVICE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 202
    const-string v5, "Reader is already connected to another device."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 207
    :cond_2
    new-instance v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 208
    sget-object v5, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_DISCONNECTED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v9, 0xc

    const/4 v10, 0x0

    .line 207
    const-string v6, "Bluetooth unexpectedly disconnected during operation."

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v4

    goto :goto_0

    .line 213
    :cond_3
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->disconnectReasonRepository:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    sget-object v0, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->BLUETOOTH_DISABLED:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->setDisconnectReason(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    .line 214
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 215
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 214
    const-string v5, "Bluetooth is disabled on your device, please turn it on."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 220
    :goto_0
    invoke-virtual {p0, v3}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 223
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->disconnectReasonRepository:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->consumeDisconnectReason()Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    move-result-object p1

    .line 224
    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->connectivityHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    const/4 v0, 0x2

    .line 226
    new-array v0, v0, [Lkotlin/Pair;

    const-string v5, "disconnect_reason"

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepositoryKt;->toLogString(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v0, v2

    .line 227
    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->toLogString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "reason"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 225
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    .line 224
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$onDisconnect$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter$onDisconnect$1;

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->reportDisconnect(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    .line 231
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->unexpectedDisconnect()V

    return-void
.end method

.method protected onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->bluetoothBondStateReceiver:Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;->stopListening()V

    .line 237
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public setReconnectParams(Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;)V
    .locals 1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 407
    iget v0, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;->max_retry_attempts:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->reconnectionMaxAttempts:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 408
    iget p1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;->max_timeout_seconds:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;->reconnectionMaxTimeoutInSeconds:Ljava/lang/Integer;

    return-void
.end method
