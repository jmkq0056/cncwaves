.class final Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;
.super Ljava/lang/Object;
.source "DaggerTerminalComponent.java"

# interfaces
.implements Lcom/stripe/stripeterminal/TerminalComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/DaggerTerminalComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TerminalComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl$GetSerialSupplierProvider;,
        Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl$GetEmbeddedAdapterProvider;
    }
.end annotation


# instance fields
.field private androidKeyValueStoreProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/storage/AndroidKeyValueStore;",
            ">;"
        }
    .end annotation
.end field

.field private apiClientProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private apiLogPointInterceptorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private armadaSetOfCustomCrpcInterceptorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/util/Set<",
            "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private backgroundReaderActivatorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;",
            ">;"
        }
    .end annotation
.end field

.field private bbposBluetoothDiscoveryFilterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;",
            ">;"
        }
    .end annotation
.end field

.field private bbposDeviceOtaControllerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/bbpos/BbposDeviceOtaController;",
            ">;"
        }
    .end annotation
.end field

.field private bbposOtaListenerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/bbpos/BbposOtaListener;",
            ">;"
        }
    .end annotation
.end field

.field private bindReaderActivator$terminalsession_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;",
            ">;"
        }
    .end annotation
.end field

.field private bindsOfflineListener$sdkmanager_publishProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
            ">;"
        }
    .end annotation
.end field

.field private bindsOfflineStatusChangeListener$sdkmanager_publishProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothBondStateReceiverManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;",
            ">;"
        }
    .end annotation
.end field

.field private cancelledHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler;",
            ">;"
        }
    .end annotation
.end field

.field private checkForUpdateHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler;",
            ">;"
        }
    .end annotation
.end field

.field private configurationHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private connectAndUpdateStateMachineProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private connectHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler;",
            ">;"
        }
    .end annotation
.end field

.field private connectionManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/readerconnection/ConnectionManager;",
            ">;"
        }
    .end annotation
.end field

.field private connectionTokenRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final cotsModule:Lcom/stripe/stripeterminal/dagger/CotsModule;

.field private crpcLogPointInterceptorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private defaultMetricLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/DefaultMetricLogger;",
            ">;"
        }
    .end annotation
.end field

.field private defaultNetworkConnectivityRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;",
            ">;"
        }
    .end annotation
.end field

.field private defaultOfflineConnectionServiceProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService;",
            ">;"
        }
    .end annotation
.end field

.field private defaultOfflineForwardingDelayCalculatorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;",
            ">;"
        }
    .end annotation
.end field

.field private defaultOfflineForwardingServiceProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService;",
            ">;"
        }
    .end annotation
.end field

.field private defaultOfflineKeyValueStoreProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/storage/DefaultOfflineKeyValueStore;",
            ">;"
        }
    .end annotation
.end field

.field private defaultStripeConnectivityRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;",
            ">;"
        }
    .end annotation
.end field

.field private defaultStripeNetworkHealthCheckerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;",
            ">;"
        }
    .end annotation
.end field

.field private defaultTipEligibleValidatorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator;",
            ">;"
        }
    .end annotation
.end field

.field private defaultTraceLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/DefaultTraceLogger;",
            ">;"
        }
    .end annotation
.end field

.field private directResourceRepositoryRouterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;",
            ">;"
        }
    .end annotation
.end field

.field private disconnectHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DisconnectHandler;",
            ">;"
        }
    .end annotation
.end field

.field private discoveryHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private emptyHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler;",
            ">;"
        }
    .end annotation
.end field

.field private gatorEventDispatcherProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/gator/GatorEventDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private gatorTraceDispatcherProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/gator/GatorTraceDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private getEmbeddedAdapterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
            ">;"
        }
    .end annotation
.end field

.field private getSerialSupplierProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/device/SerialSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private healthLoggerBuilderProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private identifierHeadersInterceptorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private installUpdatesHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler;",
            ">;"
        }
    .end annotation
.end field

.field private isCotsAdapterIncludedProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private locationHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mainlandIdempotencyGeneratorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private offlineDirectResourceRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;",
            ">;"
        }
    .end annotation
.end field

.field private offlineStableHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineStableHandler;",
            ">;"
        }
    .end annotation
.end field

.field private offlineUnstableHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineUnstableHandler;",
            ">;"
        }
    .end annotation
.end field

.field private onlineDirectResourceRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;",
            ">;"
        }
    .end annotation
.end field

.field private onlineStableHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineStableHandler;",
            ">;"
        }
    .end annotation
.end field

.field private onlineUnstableHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler;",
            ">;"
        }
    .end annotation
.end field

.field private paymentCollectionCoordinatorWrapperProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private pinButtonsRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;",
            ">;"
        }
    .end annotation
.end field

.field private provideAdapterRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;",
            ">;"
        }
    .end annotation
.end field

.field private provideApiLevelValidatorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/introspection/ApiLevelValidator;",
            ">;"
        }
    .end annotation
.end field

.field private provideApiLogPointInterceptorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideApiRequestFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideAppInfoParser$common_publishProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;",
            ">;"
        }
    .end annotation
.end field

.field private provideAppScopeProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;"
        }
    .end annotation
.end field

.field private provideApplicationInformationProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideApplicationTraceHelperProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideArmadaApiProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/proto/api/armada/ArmadaApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideArmadaIngesterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/updater/Ingester<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideAuthenticatedRestClientProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideBBDeviceControllerListenerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideBBDeviceControllerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController;",
            ">;"
        }
    .end annotation
.end field

.field private provideBBDeviceOTAControllerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;",
            ">;"
        }
    .end annotation
.end field

.field private provideBaseSearchIndicesProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideBatchDispatcherProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideBatchDispatcherProvider2:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideBbposApplicatorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/updater/Applicator<",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private provideBbposAssetInstallProcessorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private provideBbposBluetoothDiscoveryControllerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;",
            ">;"
        }
    .end annotation
.end field

.field private provideBbposBluetoothScannerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;",
            ">;"
        }
    .end annotation
.end field

.field private provideBbposClientDeviceTypeParserProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/device/BbposClientDeviceTypeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideBbposControllerListenerFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/bbpos/hardware/BbposControllerListener$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private provideBbposDeviceController$sdk_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/bbpos/BbposDeviceControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private provideBbposPaymentCollectionListenerFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private provideBbposReaderConnectionControllerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/bbpos/hardware/BbposReaderConnectionController;",
            ">;"
        }
    .end annotation
.end field

.field private provideBbposReaderInfoControllerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;",
            ">;"
        }
    .end annotation
.end field

.field private provideBbposReaderInfoFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideBbposUsbAdapter$adapter_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private provideBbposUsbDiscoveryControllerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;",
            ">;"
        }
    .end annotation
.end field

.field private provideBluetoothAdapter$adapter_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private provideBluetoothConnectivityHealthLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/BluetoothScope$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideBluetoothDeviceNameRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;",
            ">;"
        }
    .end annotation
.end field

.field private provideBluetoothLeScannerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/bluetooth/le/BluetoothLeScanner;",
            ">;"
        }
    .end annotation
.end field

.field private provideBuildValuesFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/device/BuildValuesFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideBuildValuesProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/device/BuildValues;",
            ">;"
        }
    .end annotation
.end field

.field private provideCancelIntentManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/cancelintent/CancelIntentManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideCardRemovalChecker$hardware_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;",
            ">;"
        }
    .end annotation
.end field

.field private provideClientDeviceTypeParserProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/device/ClientDeviceTypeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideClientDeviceTypeProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/device/ClientDeviceType;",
            ">;"
        }
    .end annotation
.end field

.field private provideClientLoggerApiProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideClientLoggerObservabilityDataCollectorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideClientLoggerSchedulerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;",
            ">;"
        }
    .end annotation
.end field

.field private provideClockProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private provideCollectInputsExternalModelTransformerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;",
            ">;"
        }
    .end annotation
.end field

.field private provideCollectInputsParametersTransformerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;",
            ">;"
        }
    .end annotation
.end field

.field private provideCollectorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideCollectorProvider2:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/api/gator/ProxyEventPb;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideCompositeOfflineStatsRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;",
            ">;"
        }
    .end annotation
.end field

.field private provideConnectionTokenProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideConnectivityManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideContextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private provideContextProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideCoroutineDispatcherProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private provideCoroutineScopeProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;"
        }
    .end annotation
.end field

.field private provideCoroutineScopeProvider2:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;"
        }
    .end annotation
.end field

.field private provideCotsClientProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/cots/common/CotsClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideCotsProxyAdapterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private provideCrpcClientBuilderProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private provideCrpcClientProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideCrpcClientProvider2:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideCrpcClientProvider3:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideCrpcLogPointInterceptorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideCrpcRequestContextProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideCurrentActivityTrackerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/CurrentActivityTracker;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultAccessibilityJackRabbitApiFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/DefaultAccessibilityJackRabbitApiFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultActivateJackRabbitApiFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/activate/DefaultActivateApiFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultActiveLocationConfigRepository$wiringProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/device/DefaultActiveLocationConfigRepository;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultBluetoothDiscoveryControllerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultDomesticDebitAidsParser$wiringProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultIpReaderActivator$terminalsession_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultJackRabbitApiRequestFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultLogRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideDefaultOfflineConfigHelper$offlinemode_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/offlinemode/helpers/DefaultOfflineConfigHelper;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultOfflineEventHandler$offlinemode_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/offlinemode/DefaultOfflineEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultOfflineForwardingApiClient$offlinemode_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultOfflineRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultPaymentIntentJackRabbitApiFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentJackRabbitApiFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideDefaultSetupIntentJackRabbitApiFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/setup/DefaultSetupIntentJackRabbitApiFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideDeviceInfoCache$sdk_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;",
            ">;"
        }
    .end annotation
.end field

.field private provideDeviceInfoRepository$wiringProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/device/DeviceInfoRepository;",
            ">;"
        }
    .end annotation
.end field

.field private provideDeviceRoleLogUploader$sdkmanager_publishProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;",
            ">;"
        }
    .end annotation
.end field

.field private provideDeviceUuidProvider$common_publishProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideDeviceUuidSharedPrefsProvider$common_publishProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideDirectOfflineStatsRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/offlinemode/storage/DirectOfflineStatusDetailsRepository;",
            ">;"
        }
    .end annotation
.end field

.field private provideDisconnectReasonRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;",
            ">;"
        }
    .end annotation
.end field

.field private provideDiscoveryControllerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;",
            ">;"
        }
    .end annotation
.end field

.field private provideDistributedTracingInterceptorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideEmulatorClientDeviceTypeParserProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideEndToEndHealthLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideEndToEndLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideEnsureSingleDiscoverOperationProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;",
            ">;"
        }
    .end annotation
.end field

.field private provideEpochProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideFactoryNotSupportedFeatureFlagRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;"
        }
    .end annotation
.end field

.field private provideFilesDirectoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private provideFilesRestClientProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideFilesServiceUrlProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideFormsIntegrationLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideFormsStageHealthMetrics$formsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/FormsDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/forms/StageScope$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideForwardingOfflineRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            ">;"
        }
    .end annotation
.end field

.field private provideGatorApiProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/proto/api/gator/GatorApi;",
            ">;"
        }
    .end annotation
.end field

.field private provideGsonProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private provideHandoffConnectionTokenProviderSupplierProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private provideHandoffReaderControllerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;",
            ">;"
        }
    .end annotation
.end field

.field private provideHandshakeCertificatesFactory$httptlsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideHardwareManufacturer$device_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/device/HardwareManufacturer;",
            ">;"
        }
    .end annotation
.end field

.field private provideHardwareManufacturerFactory$device_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/device/HardwareManufacturerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideHealthCheckHttpUrlProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lokhttp3/HttpUrl;",
            ">;"
        }
    .end annotation
.end field

.field private provideHealthMetricListenersProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideHttpClientConfigurator$sdkmanager_publishProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;",
            ">;"
        }
    .end annotation
.end field

.field private provideHttpClientConfigurator$sdkmanager_publishProvider2:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/client/dagger/HttpClientConfigurator;",
            ">;"
        }
    .end annotation
.end field

.field private provideIdempotencyRetryInterceptorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideInternetReaderDnsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lokhttp3/Dns;",
            ">;"
        }
    .end annotation
.end field

.field private provideIpReaderControllerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;",
            ">;"
        }
    .end annotation
.end field

.field private provideJackrabbitApiResolverProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcServiceResolver<",
            "Lcom/stripe/proto/api/sdk/JackRabbitApi;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideJackrabbitClientProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideKmpCrpcClientProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/kmpcore/jackrabbitclient/KmpCrpcClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideListenerRegistry$hardware_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocaleManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/locale/LocaleManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideLocationServicesValidatorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;",
            ">;"
        }
    .end annotation
.end field

.field private provideLogFlusher$wiringProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;",
            ">;"
        }
    .end annotation
.end field

.field private provideLogLevelProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/loggingmodels/LogLevel;",
            ">;"
        }
    .end annotation
.end field

.field private provideLogOperationCollectorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector<",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideLogOperationFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideLogUploaderProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;",
            ">;"
        }
    .end annotation
.end field

.field private provideLoggerExceptionListenerRegistryImpl$wiringProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private provideLoggerFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideLoggingRequestContextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/LoggingRequestContextProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideMoshiProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/squareup/moshi/Moshi;",
            ">;"
        }
    .end annotation
.end field

.field private provideMposReaderDebugLogManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideMposReaderEventLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideNetworkConnectivityFlowProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideNetworkStatusFlowProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideNfcAntennaLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/cots/common/NfcAntennaLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideObservabilityDataStructuredEventLogger$loggingProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/ObservabilityDataStructuredEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private provideOfflineDatabaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideOfflineDbReaperProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;",
            ">;"
        }
    .end annotation
.end field

.field private provideOfflineDiscreteLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideOfflineForwardingManager$offlinemode_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideOfflinePaymentMethodValidatorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;",
            ">;"
        }
    .end annotation
.end field

.field private provideOfflineRepositoryFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideOfflineStageLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/StageScope$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideOfflineTraceLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
            ">;"
        }
    .end annotation
.end field

.field private provideOfflineTraceManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideOkHttpClientProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideOptionalEmptyEventListenerFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/util/Optional<",
            "Lokhttp3/EventListener$Factory;",
            ">;>;"
        }
    .end annotation
.end field

.field private providePassthroughHealthDiscreteLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private providePassthroughHealthStageLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private providePaymentCollectionContextFactory$wiringProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private providePaymentCollectionCoordinator$wiringProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private providePaymentCollectionEventDelegateProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionEventDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private providePaymentCollectionScopeProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;"
        }
    .end annotation
.end field

.field private providePaymentCollectionStateMachine$wiringProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private providePaymentCollectionStateTimer$wiringProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
            ">;"
        }
    .end annotation
.end field

.field private providePaymentCollectionTimeoutSupplier$wiringProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private providePaymentCollector$hardware_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;",
            ">;"
        }
    .end annotation
.end field

.field private providePaymentEventReceiverProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/hardware/paymentcollection/PaymentEventReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private providePaymentIntentUpdaterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
            ">;"
        }
    .end annotation
.end field

.field private providePermissionsValidatorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;",
            ">;"
        }
    .end annotation
.end field

.field private providePinPadAccessibilityCheckerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;",
            ">;"
        }
    .end annotation
.end field

.field private providePlymouthCrpcRequestContextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/PlymouthRequestContextProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providePosInfoFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
            ">;"
        }
    .end annotation
.end field

.field private providePreflightChecksProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/cots/common/compatibility/PreFlightChecks;",
            ">;"
        }
    .end annotation
.end field

.field private provideProdEnvironmentProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/environment/EnvironmentProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideProviderMirrorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/dagger/HandoffClientModule$ProviderMirror;",
            ">;"
        }
    .end annotation
.end field

.field private provideProxyAdapterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
            ">;"
        }
    .end annotation
.end field

.field private provideProxyOfflineListenerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideProxyRemoteReaderControllerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;",
            ">;"
        }
    .end annotation
.end field

.field private provideProxyResourceRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;",
            ">;"
        }
    .end annotation
.end field

.field private provideProxyTerminalListenerProxyProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideRandomProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lkotlin/random/Random;",
            ">;"
        }
    .end annotation
.end field

.field private provideReactiveReaderStatusListenerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideReaderConfigurationUpdateControllerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;",
            ">;"
        }
    .end annotation
.end field

.field private provideReaderEventFetcherProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/DefaultReaderEventFetcher;",
            ">;"
        }
    .end annotation
.end field

.field private provideReaderEventsListenerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/offlinemode/ReaderEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideReaderInfoRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;",
            ">;"
        }
    .end annotation
.end field

.field private provideReaderProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;"
        }
    .end annotation
.end field

.field private provideReaderUpdateListenerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideRemoteOfflineStatisticsRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/repositories/RemoteOfflineStatusDetailsRepository;",
            ">;"
        }
    .end annotation
.end field

.field private provideRemoteReaderAdapterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private provideRemoteReaderCrpcRequestContextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/crpc/RemoteReaderRequestContextProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideRestClientProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideRootAccessDetectorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;",
            ">;"
        }
    .end annotation
.end field

.field private provideRootBeerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/scottyab/rootbeer/RootBeer;",
            ">;"
        }
    .end annotation
.end field

.field private provideRootCertificatesFactory$httptlsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideRpcSessionTokenProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideSchedulerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/schedulers/CoroutineScheduler;",
            ">;"
        }
    .end annotation
.end field

.field private provideSdkApplicationInformationFactory$common_publishProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideSdkInt$device_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/device/SdkInt;",
            ">;"
        }
    .end annotation
.end field

.field private provideSdkStatusRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;",
            ">;"
        }
    .end annotation
.end field

.field private provideServiceUrlProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideServiceUrlProvider2:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideServiceUrlProvider3:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CrpcClient$BaseUrlProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideServiceUrlProvider4:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideSimulatedCotsClientProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/cots/common/SimulatedCotsClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideSimulatedCotsProxyAdapterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private provideSimulatorConfigurationRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
            ">;"
        }
    .end annotation
.end field

.field private provideSingleThreadExecutorServiceProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private provideSingleUpdateHealthLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideStripeNetworkStatusProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;"
        }
    .end annotation
.end field

.field private provideTerminalExceptionTransformerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;",
            ">;"
        }
    .end annotation
.end field

.field private provideTerminalListenerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/external/callable/TerminalListener;",
            ">;"
        }
    .end annotation
.end field

.field private provideTerminalLogWriterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/logwriter/TerminalLogWriter;",
            ">;"
        }
    .end annotation
.end field

.field private provideTerminalLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideTerminalSdkDeviceListenerWrapper$adapter_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private provideTerminalSessionProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
            ">;"
        }
    .end annotation
.end field

.field private provideTraceLoggingInterceptorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideTraceLoggingRestClientInterceptorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private provideTraceManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideTransactionExecutorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private provideTransactionSchedulerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private provideUpdateClientProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            ">;"
        }
    .end annotation
.end field

.field private provideUpdateController$sdk_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/bbpos/BbposReaderUpdateController;",
            ">;"
        }
    .end annotation
.end field

.field private provideUpdateDispatcherProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private provideUpdatePaymentIntentParamRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;",
            ">;"
        }
    .end annotation
.end field

.field private provideUpdateSchedulerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private provideUsbConnectivityHealthLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/ConnectivityDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/connectivity/UsbScope$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private provideUsbManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/hardware/usb/UsbManager;",
            ">;"
        }
    .end annotation
.end field

.field private provideUserAgentProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providerVerifoneClientDeviceTypeParserProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesBatchDispatcherProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesChargeAttemptManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/transaction/ChargeAttemptManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesClientLoggerObservabilityDataDispatcherProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/ObservabilityData;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesClientLoggerTraceDispatcherProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;>;"
        }
    .end annotation
.end field

.field private providesConfigureReaderHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/manualentry/ConfigureReaderHandler;",
            ">;"
        }
    .end annotation
.end field

.field private providesConfirmDetailsHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/manualentry/ConfirmDetailsHandler;",
            ">;"
        }
    .end annotation
.end field

.field private providesCvvEntryHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/manualentry/CvvEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private providesDebugFlavorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private providesDebugLogsShouldBeSentToSplunkFeatureFlagProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private providesDiscreteEventLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/metrics/DiscreteEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field private providesEmptyHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/manualentry/EmptyHandler;",
            ">;"
        }
    .end annotation
.end field

.field private providesEndToEndEventLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/metrics/EndToEndEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field private providesEventLoggersProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/metrics/EventLoggers;",
            ">;"
        }
    .end annotation
.end field

.field private providesExpiryDateEntryHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/manualentry/ExpiryDateEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private providesFeatureFlagRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;",
            ">;"
        }
    .end annotation
.end field

.field private providesFinishedHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/manualentry/FinishedHandler;",
            ">;"
        }
    .end annotation
.end field

.field private providesGatorUploaderOutOfMemoryLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/gator/GatorUploaderOutOfMemoryLogger;",
            ">;"
        }
    .end annotation
.end field

.field private providesIsNetworkAvailableProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private providesManualEntryEventLogger$wiringProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryLoggerInterface;",
            ">;"
        }
    .end annotation
.end field

.field private providesManualEntryEventReceiverProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/hardware/paymentcollection/ManualEntryEventReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private providesManualEntryLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;",
            ">;"
        }
    .end annotation
.end field

.field private providesManualEntryStateMachineProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private providesNetworkConnectivityManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesNetworkConnectivityRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;",
            ">;"
        }
    .end annotation
.end field

.field private providesObservabilityFeatureFlagsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private providesOnlineAuthStateLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/metrics/OnlineAuthStateLogger;",
            ">;"
        }
    .end annotation
.end field

.field private providesPanEntryHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/manualentry/PanEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private providesPaymentCollectionLocaleManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;",
            ">;"
        }
    .end annotation
.end field

.field private providesPaymentCollectionLoggerFactoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/log/PaymentCollectionLoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private providesPaymentCollectionSettingsRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/SettingsRepository;",
            ">;"
        }
    .end annotation
.end field

.field private providesPaymentCollectionTransactionRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/TransactionRepository;",
            ">;"
        }
    .end annotation
.end field

.field private providesReaderFeatureFlagsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private providesStageEventLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/metrics/StageEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field private providesTippingLoggerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/metrics/TippingLogger;",
            ">;"
        }
    .end annotation
.end field

.field private providesUnAckedEventsHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;",
            ">;"
        }
    .end annotation
.end field

.field private providesZipCodeHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/paymentcollection/manualentry/ZipCodeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private reactiveConfigurationListenerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private reactiveReaderUpdateListenerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private readerBatteryInfoPollerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;",
            ">;"
        }
    .end annotation
.end field

.field private readerInfoHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/hardware/reactive/ReaderInfoHandler;",
            ">;"
        }
    .end annotation
.end field

.field private readerInfoHandlerProvider2:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ReaderInfoHandler;",
            ">;"
        }
    .end annotation
.end field

.field private readerPlatformDeviceInfoProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private rebootHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/RebootHandler;",
            ">;"
        }
    .end annotation
.end field

.field private remoteReaderResourceRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;",
            ">;"
        }
    .end annotation
.end field

.field private sentryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/spos/sentry/http/ErrorReporter;",
            ">;"
        }
    .end annotation
.end field

.field private sessionHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private sessionTokenInterceptorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private sessionTokenRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            ">;"
        }
    .end annotation
.end field

.field private setOfLoggerExceptionListenerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Ljava/util/Set<",
            "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private settingsRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            ">;"
        }
    .end annotation
.end field

.field private sharedPrefsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            ">;"
        }
    .end annotation
.end field

.field private simulatedIpAdapterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private simulatedMobileAdapterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private stripeHealthCheckerStateMachineProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private final terminalComponentImpl:Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;

.field private terminalStatusManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;"
        }
    .end annotation
.end field

.field private transactionRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;"
        }
    .end annotation
.end field

.field private unknownHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler;",
            ">;"
        }
    .end annotation
.end field

.field private updateInstallerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateInstaller;",
            ">;"
        }
    .end annotation
.end field

.field private updateManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateManager;",
            ">;"
        }
    .end annotation
.end field

.field private usbPermissionReceiverManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V
    .locals 0

    .line 1454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    iput-object p0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalComponentImpl:Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;

    .line 1455
    iput-object p14, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->cotsModule:Lcom/stripe/stripeterminal/dagger/CotsModule;

    .line 1456
    invoke-direct/range {p0 .. p36}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->initialize(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V

    .line 1457
    invoke-direct/range {p0 .. p36}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->initialize2(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V

    .line 1458
    invoke-direct/range {p0 .. p36}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->initialize3(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V

    .line 1459
    invoke-direct/range {p0 .. p36}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->initialize4(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V

    .line 1460
    invoke-direct/range {p0 .. p36}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->initialize5(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V

    .line 1461
    invoke-direct/range {p0 .. p36}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->initialize6(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V

    .line 1462
    invoke-direct/range {p0 .. p36}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->initialize7(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V

    .line 1463
    invoke-direct/range {p0 .. p36}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->initialize8(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V

    .line 1464
    invoke-direct/range {p0 .. p36}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->initialize9(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V

    .line 1465
    invoke-direct/range {p0 .. p36}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->initialize10(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V

    .line 1466
    invoke-direct/range {p0 .. p36}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->initialize11(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V

    .line 1467
    invoke-direct/range {p0 .. p36}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->initialize12(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V

    .line 1468
    invoke-direct/range {p0 .. p36}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->initialize13(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V

    .line 1469
    invoke-direct/range {p0 .. p36}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->initialize14(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;Lcom/stripe/stripeterminal/DaggerTerminalComponent$1;)V
    .locals 0

    .line 756
    invoke-direct/range {p0 .. p36}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;-><init>(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V

    return-void
.end method

.method private appScopeCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 1474
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->provideIoDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideAppScopeFactory;->provideAppScope(Lkotlinx/coroutines/CoroutineDispatcher;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method private initialize(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V
    .locals 0

    move-object/from16 p5, p30

    .line 1511
    invoke-static {p10}, Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideContextFactory;->create(Lcom/stripe/stripeterminal/dagger/ContextModule;)Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideContextFactory;

    move-result-object p6

    invoke-static {p6}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p6

    iput-object p6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    .line 1512
    invoke-static {p2, p6}, Lcom/stripe/stripeterminal/dagger/ApiLevelModule_ProvideApiLevelValidatorFactory;->create(Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/ApiLevelModule_ProvideApiLevelValidatorFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApiLevelValidatorProvider:Ldagger/internal/Provider;

    .line 1513
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    move-object/from16 p6, p28

    invoke-static {p6, p2}, Lcom/stripe/stripeterminal/dagger/PermissionsModule_ProvideLocationServicesValidatorFactory;->create(Lcom/stripe/stripeterminal/dagger/PermissionsModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/PermissionsModule_ProvideLocationServicesValidatorFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLocationServicesValidatorProvider:Ldagger/internal/Provider;

    .line 1514
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    invoke-static {p5, p2}, Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootBeerFactory;->create(Lcom/stripe/stripeterminal/dagger/RootAccessModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootBeerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRootBeerProvider:Ldagger/internal/Provider;

    .line 1515
    invoke-static {p5, p2}, Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootAccessDetectorFactory;->create(Lcom/stripe/stripeterminal/dagger/RootAccessModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootAccessDetectorFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRootAccessDetectorProvider:Ldagger/internal/Provider;

    .line 1516
    invoke-static {p14}, Lcom/stripe/stripeterminal/dagger/CotsModule_IsCotsAdapterIncludedFactory;->create(Lcom/stripe/stripeterminal/dagger/CotsModule;)Lcom/stripe/stripeterminal/dagger/CotsModule_IsCotsAdapterIncludedFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->isCotsAdapterIncludedProvider:Ldagger/internal/Provider;

    .line 1517
    invoke-static/range {p33 .. p33}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideOptionalEmptyEventListenerFactoryFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideOptionalEmptyEventListenerFactoryFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOptionalEmptyEventListenerFactoryProvider:Ldagger/internal/Provider;

    .line 1518
    invoke-static {}, Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideRootCertificatesFactory$httptlsFactory;->create()Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideRootCertificatesFactory$httptlsFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRootCertificatesFactory$httptlsProvider:Ldagger/internal/Provider;

    .line 1519
    invoke-static {p2}, Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideHandshakeCertificatesFactory$httptlsFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideHandshakeCertificatesFactory$httptlsFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideHandshakeCertificatesFactory$httptlsProvider:Ldagger/internal/Provider;

    .line 1520
    invoke-static {}, Ldagger/internal/SetFactory;->empty()Ldagger/internal/Factory;

    move-result-object p2

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->isCotsAdapterIncludedProvider:Ldagger/internal/Provider;

    iget-object p6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOptionalEmptyEventListenerFactoryProvider:Ldagger/internal/Provider;

    iget-object p7, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideHandshakeCertificatesFactory$httptlsProvider:Ldagger/internal/Provider;

    move-object/from16 p8, p34

    invoke-static {p8, p2, p5, p6, p7}, Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule_ProvideOkHttpClientProviderFactory;->create(Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule_ProvideOkHttpClientProviderFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOkHttpClientProvider:Ldagger/internal/Provider;

    .line 1521
    invoke-static {}, Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory;->create()Lcom/stripe/jvmcore/environment/dagger/ProdEnvironmentModule_ProvideProdEnvironmentProviderFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProdEnvironmentProvider:Ldagger/internal/Provider;

    .line 1522
    invoke-static {p2}, Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule_ProvideServiceUrlProviderFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule_ProvideServiceUrlProviderFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideServiceUrlProvider:Ldagger/internal/Provider;

    .line 1523
    invoke-static {}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository_Factory;->create()Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository_Factory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sessionTokenRepositoryProvider:Ldagger/internal/Provider;

    .line 1524
    invoke-static {p2}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideRpcSessionTokenProvider$sdkmanager_publishFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/LogModule_ProvideRpcSessionTokenProvider$sdkmanager_publishFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRpcSessionTokenProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;

    .line 1525
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    invoke-static {p3, p2}, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidSharedPrefsProvider$common_publishFactory;->create(Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidSharedPrefsProvider$common_publishFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDeviceUuidSharedPrefsProvider$common_publishProvider:Ldagger/internal/Provider;

    .line 1526
    invoke-static {p15}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturerFactory$device_releaseFactory;->create(Lcom/stripe/core/device/dagger/BuildValuesModule;)Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturerFactory$device_releaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideHardwareManufacturerFactory$device_releaseProvider:Ldagger/internal/Provider;

    .line 1527
    invoke-static {p15, p2}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory;->create(Lcom/stripe/core/device/dagger/BuildValuesModule;Ljavax/inject/Provider;)Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideHardwareManufacturer$device_releaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideHardwareManufacturer$device_releaseProvider:Ldagger/internal/Provider;

    .line 1528
    new-instance p2, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl$GetSerialSupplierProvider;

    move-object/from16 p5, p36

    invoke-direct {p2, p5}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl$GetSerialSupplierProvider;-><init>(Lcom/stripe/stripeterminal/dagger/Dependencies;)V

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->getSerialSupplierProvider:Ldagger/internal/Provider;

    .line 1529
    iget-object p6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDeviceUuidSharedPrefsProvider$common_publishProvider:Ldagger/internal/Provider;

    iget-object p7, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object p8

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideHardwareManufacturer$device_releaseProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->getSerialSupplierProvider:Ldagger/internal/Provider;

    move-object p9, p2

    move-object p10, p5

    move-object p5, p3

    invoke-static/range {p5 .. p10}, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;->create(Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDeviceUuidProvider$common_publishProvider:Ldagger/internal/Provider;

    .line 1530
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    invoke-static {p3, p2}, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideAppInfoParser$common_publishFactory;->create(Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideAppInfoParser$common_publishFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideAppInfoParser$common_publishProvider:Ldagger/internal/Provider;

    .line 1531
    invoke-static/range {p16 .. p16}, Lcom/stripe/core/device/dagger/SdkIntModule_ProvideSdkInt$device_releaseFactory;->create(Lcom/stripe/core/device/dagger/SdkIntModule;)Lcom/stripe/core/device/dagger/SdkIntModule_ProvideSdkInt$device_releaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideSdkInt$device_releaseProvider:Ldagger/internal/Provider;

    .line 1532
    iget-object p6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideHardwareManufacturer$device_releaseProvider:Ldagger/internal/Provider;

    invoke-static {p15, p6, p2}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactoryFactory;->create(Lcom/stripe/core/device/dagger/BuildValuesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactoryFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBuildValuesFactoryProvider:Ldagger/internal/Provider;

    .line 1533
    invoke-static {p15, p2}, Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactory;->create(Lcom/stripe/core/device/dagger/BuildValuesModule;Ljavax/inject/Provider;)Lcom/stripe/core/device/dagger/BuildValuesModule_ProvideBuildValuesFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBuildValuesProvider:Ldagger/internal/Provider;

    .line 1534
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    iget-object p6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDeviceUuidProvider$common_publishProvider:Ldagger/internal/Provider;

    iget-object p7, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideAppInfoParser$common_publishProvider:Ldagger/internal/Provider;

    invoke-static {p3, p2, p6, p7, p1}, Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory;->create(Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule_ProvideSdkApplicationInformationFactory$common_publishFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideSdkApplicationInformationFactory$common_publishProvider:Ldagger/internal/Provider;

    .line 1535
    invoke-static {p4, p1}, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideApplicationInformationProvider$sdkmanager_publishFactory;->create(Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideApplicationInformationProvider$sdkmanager_publishFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApplicationInformationProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;

    return-void
.end method

.method private initialize10(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2024
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultIpReaderActivator$terminalsession_releaseProvider:Ldagger/internal/Provider;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule_BindReaderActivator$terminalsession_releaseFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule_BindReaderActivator$terminalsession_releaseFactory;

    move-result-object v11

    iput-object v11, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->bindReaderActivator$terminalsession_releaseProvider:Ldagger/internal/Provider;

    .line 2025
    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApiRequestFactoryProvider:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRemoteReaderCrpcRequestContextProvider:Ldagger/internal/Provider;

    iget-object v6, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCurrentActivityTrackerProvider:Ldagger/internal/Provider;

    iget-object v7, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    iget-object v8, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultJackRabbitApiRequestFactoryProvider:Ldagger/internal/Provider;

    iget-object v9, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRemoteOfflineStatisticsRepositoryProvider:Ldagger/internal/Provider;

    iget-object v10, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReaderEventsListenerProvider:Ldagger/internal/Provider;

    iget-object v12, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideAppScopeProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/core/schedulers/dagger/SchedulersModule_ProvideMainDispatcherFactory;->create()Lcom/stripe/core/schedulers/dagger/SchedulersModule_ProvideMainDispatcherFactory;

    move-result-object v13

    iget-object v14, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    iget-object v15, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFactoryNotSupportedFeatureFlagRepositoryProvider:Ldagger/internal/Provider;

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->getSerialSupplierProvider:Ldagger/internal/Provider;

    move-object/from16 v2, p20

    move-object/from16 v16, v1

    invoke-static/range {v2 .. v16}, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;->create(Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideProviderMirrorFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProviderMirrorProvider:Ldagger/internal/Provider;

    .line 2026
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object/from16 v3, p20

    invoke-static {v3, v1, v2}, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideHandoffConnectionTokenProviderSupplierFactory;->create(Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideHandoffConnectionTokenProviderSupplierFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideHandoffConnectionTokenProviderSupplierProvider:Ldagger/internal/Provider;

    move-object/from16 v2, p33

    .line 2027
    invoke-static {v2, v1}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideConnectionTokenProviderFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideConnectionTokenProviderFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideConnectionTokenProvider:Ldagger/internal/Provider;

    .line 2028
    invoke-static {v2}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEpochProviderFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEpochProviderFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideEpochProvider:Ldagger/internal/Provider;

    .line 2029
    invoke-static {v2}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideSingleThreadExecutorServiceFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideSingleThreadExecutorServiceFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideSingleThreadExecutorServiceProvider:Ldagger/internal/Provider;

    .line 2030
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideConnectionTokenProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideEpochProvider:Ldagger/internal/Provider;

    invoke-static {v2, v3, v1}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->connectionTokenRepositoryProvider:Ldagger/internal/Provider;

    .line 2031
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->apiClientProvider:Ldagger/internal/Provider;

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->transactionRepositoryProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApiRequestFactoryProvider:Ldagger/internal/Provider;

    move-object/from16 v5, p9

    invoke-static {v5, v1, v2, v3, v4}, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvidePaymentIntentUpdaterFactory;->create(Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvidePaymentIntentUpdaterFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentIntentUpdaterProvider:Ldagger/internal/Provider;

    .line 2032
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->apiClientProvider:Ldagger/internal/Provider;

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesChargeAttemptManagerProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->transactionRepositoryProvider:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->connectionTokenRepositoryProvider:Ldagger/internal/Provider;

    iget-object v6, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApiRequestFactoryProvider:Ldagger/internal/Provider;

    iget-object v7, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineConfigHelper$offlinemode_releaseProvider:Ldagger/internal/Provider;

    iget-object v8, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineDiscreteLoggerProvider:Ldagger/internal/Provider;

    iget-object v9, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object v10

    iget-object v11, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFactoryNotSupportedFeatureFlagRepositoryProvider:Ldagger/internal/Provider;

    iget-object v12, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentIntentUpdaterProvider:Ldagger/internal/Provider;

    iget-object v13, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    invoke-static/range {p1 .. p13}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->onlineDirectResourceRepositoryProvider:Ldagger/internal/Provider;

    .line 2033
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCoroutineDispatcherProvider:Ldagger/internal/Provider;

    invoke-static {v1}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineScopeFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineScopeFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCoroutineScopeProvider2:Ldagger/internal/Provider;

    .line 2034
    invoke-static {}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideMoshiFactory;->create()Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideMoshiFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideMoshiProvider:Ldagger/internal/Provider;

    .line 2035
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->healthLoggerBuilderProvider:Ldagger/internal/Provider;

    invoke-static {v1}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineStageLoggerFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineStageLoggerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineStageLoggerProvider:Ldagger/internal/Provider;

    .line 2036
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideMoshiProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOkHttpClientProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideServiceUrlProvider4:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineConfigHelper$offlinemode_releaseProvider:Ldagger/internal/Provider;

    iget-object v6, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUserAgentProvider:Ldagger/internal/Provider;

    iget-object v7, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultTraceLoggerProvider:Ldagger/internal/Provider;

    iget-object v8, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    move-object/from16 p6, v1

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-static/range {p1 .. p8}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingService_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultOfflineForwardingServiceProvider:Ldagger/internal/Provider;

    .line 2037
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRandomProvider:Ldagger/internal/Provider;

    invoke-static {v1}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceManagerFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceManagerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineTraceManagerProvider:Ldagger/internal/Provider;

    .line 2038
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultTraceLoggerProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClockProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceHelperFactory;->create()Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceHelperFactory;

    move-result-object v5

    invoke-static {}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineLogRepositoryFactory;->create()Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineLogRepositoryFactory;

    move-result-object v6

    iget-object v7, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideGsonProvider:Ldagger/internal/Provider;

    move-object/from16 p4, v1

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    invoke-static/range {p1 .. p7}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineTraceLoggerProvider:Ldagger/internal/Provider;

    .line 2039
    invoke-static {}, Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository_Factory;->create()Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository_Factory;

    move-result-object v1

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineRepositoryFactoryProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineTraceLoggerProvider:Ldagger/internal/Provider;

    invoke-static {v1, v2, v3}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideForwardingOfflineRepositoryProvider:Ldagger/internal/Provider;

    .line 2040
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideMoshiProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOkHttpClientProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideServiceUrlProvider4:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUserAgentProvider:Ldagger/internal/Provider;

    iget-object v6, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineStageLoggerProvider:Ldagger/internal/Provider;

    iget-object v7, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineConfigHelper$offlinemode_releaseProvider:Ldagger/internal/Provider;

    iget-object v8, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultTraceLoggerProvider:Ldagger/internal/Provider;

    iget-object v9, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    iget-object v10, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCoroutineDispatcherProvider:Ldagger/internal/Provider;

    move-object/from16 p9, v1

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p10, v10

    invoke-static/range {p1 .. p10}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/forwarding/DefaultOfflineConnectionService_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultOfflineConnectionServiceProvider:Ldagger/internal/Provider;

    .line 2041
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineConfigHelper$offlinemode_releaseProvider:Ldagger/internal/Provider;

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRandomProvider:Ldagger/internal/Provider;

    invoke-static {v1, v2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator_Factory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultOfflineForwardingDelayCalculatorProvider:Ldagger/internal/Provider;

    .line 2042
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultOfflineConnectionServiceProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideConnectionTokenProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineTraceManagerProvider:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineTraceLoggerProvider:Ldagger/internal/Provider;

    iget-object v6, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineDiscreteLoggerProvider:Ldagger/internal/Provider;

    move-object/from16 p3, v1

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    invoke-static/range {p1 .. p6}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineConnectionCredentialsProvider$offlinemode_releaseProvider:Ldagger/internal/Provider;

    .line 2043
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProxyOfflineListenerProvider:Ldagger/internal/Provider;

    invoke-static {v1, v2}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseProvider:Ldagger/internal/Provider;

    .line 2044
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultOfflineForwardingServiceProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->locationHandlerProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineTraceLoggerProvider:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineTraceManagerProvider:Ldagger/internal/Provider;

    invoke-static {v2, v3, v1, v4, v5}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideDefaultOfflineForwardingApiClient$offlinemode_releaseFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineForwardingApiClient$offlinemode_releaseProvider:Ldagger/internal/Provider;

    .line 2045
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesNetworkConnectivityRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 v2, p23

    invoke-static {v2, v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvideNetworkConnectivityFlowFactory;->create(Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvideNetworkConnectivityFlowFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideNetworkConnectivityFlowProvider:Ldagger/internal/Provider;

    .line 2046
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler_Factory;->create()Lcom/stripe/stripeterminal/internal/common/connectivity/UnknownHandler_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->unknownHandlerProvider:Ldagger/internal/Provider;

    .line 2047
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineStableHandler_Factory;->create()Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineStableHandler_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->onlineStableHandlerProvider:Ldagger/internal/Provider;

    .line 2048
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineStableHandler_Factory;->create()Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineStableHandler_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->offlineStableHandlerProvider:Ldagger/internal/Provider;

    return-void
.end method

.method private initialize11(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V
    .locals 11

    .line 2081
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler_Factory;->create()Lcom/stripe/stripeterminal/internal/common/connectivity/OnlineUnstableHandler_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->onlineUnstableHandlerProvider:Ldagger/internal/Provider;

    .line 2082
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineUnstableHandler_Factory;->create()Lcom/stripe/stripeterminal/internal/common/connectivity/OfflineUnstableHandler_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->offlineUnstableHandlerProvider:Ldagger/internal/Provider;

    .line 2083
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->unknownHandlerProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->onlineStableHandlerProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->offlineStableHandlerProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->onlineUnstableHandlerProvider:Ldagger/internal/Provider;

    invoke-static {p2, v0, v1, v2, p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->stripeHealthCheckerStateMachineProvider:Ldagger/internal/Provider;

    .line 2084
    invoke-static/range {p25 .. p25}, Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideHealthCheckHttpUrlFactory;->create(Lcom/stripe/stripeterminal/dagger/OfflineModule;)Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideHealthCheckHttpUrlFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideHealthCheckHttpUrlProvider:Ldagger/internal/Provider;

    .line 2085
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->stripeHealthCheckerStateMachineProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOkHttpClientProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineConfigHelper$offlinemode_releaseProvider:Ldagger/internal/Provider;

    invoke-static {p2, v0, p1, v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultStripeNetworkHealthCheckerProvider:Ldagger/internal/Provider;

    .line 2086
    new-instance p1, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl$GetEmbeddedAdapterProvider;

    move-object/from16 p2, p36

    invoke-direct {p1, p2}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl$GetEmbeddedAdapterProvider;-><init>(Lcom/stripe/stripeterminal/dagger/Dependencies;)V

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->getEmbeddedAdapterProvider:Ldagger/internal/Provider;

    .line 2087
    invoke-static {p1}, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideSdkStatusRepositoryFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideSdkStatusRepositoryFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideSdkStatusRepositoryProvider:Ldagger/internal/Provider;

    .line 2088
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object p2

    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesNetworkConnectivityRepositoryProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultStripeNetworkHealthCheckerProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineRepositoryProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProxyOfflineListenerProvider:Ldagger/internal/Provider;

    iget-object v3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideSdkStatusRepositoryProvider:Ldagger/internal/Provider;

    iget-object v4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object p3, p1

    move-object p4, v0

    move-object/from16 p5, v1

    move-object/from16 p6, v2

    move-object/from16 p7, v3

    move-object/from16 p8, v4

    invoke-static/range {p2 .. p8}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultStripeConnectivityRepositoryProvider:Ldagger/internal/Provider;

    .line 2089
    invoke-static {p1}, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideStripeNetworkStatusFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideStripeNetworkStatusFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideStripeNetworkStatusProvider:Ldagger/internal/Provider;

    .line 2090
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->healthLoggerBuilderProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideEndToEndLoggerFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideEndToEndLoggerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideEndToEndLoggerProvider:Ldagger/internal/Provider;

    .line 2091
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineForwardingApiClient$offlinemode_releaseProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideForwardingOfflineRepositoryProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideNetworkConnectivityFlowProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCoroutineDispatcherProvider:Ldagger/internal/Provider;

    iget-object v3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->bindsOfflineListener$sdkmanager_publishProvider:Ldagger/internal/Provider;

    iget-object v4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideStripeNetworkStatusProvider:Ldagger/internal/Provider;

    iget-object v5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultOfflineForwardingDelayCalculatorProvider:Ldagger/internal/Provider;

    iget-object v6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineConfigHelper$offlinemode_releaseProvider:Ldagger/internal/Provider;

    iget-object v7, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineConnectionCredentialsProviderProxy$offlinemode_releaseProvider:Ldagger/internal/Provider;

    iget-object v8, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClockProvider:Ldagger/internal/Provider;

    iget-object v9, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineDiscreteLoggerProvider:Ldagger/internal/Provider;

    iget-object v10, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineTraceLoggerProvider:Ldagger/internal/Provider;

    move-object/from16 p12, p1

    move-object p3, v0

    move-object p4, v1

    move-object/from16 p5, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move-object/from16 p11, v8

    move-object/from16 p13, v9

    move-object/from16 p14, v10

    invoke-static/range {p2 .. p14}, Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineForwardingModule_Companion_ProvideOfflineForwardingManager$offlinemode_releaseFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineForwardingManager$offlinemode_releaseProvider:Ldagger/internal/Provider;

    .line 2092
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultStripeConnectivityRepositoryProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideNetworkStatusFlowFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideNetworkStatusFlowFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideNetworkStatusFlowProvider:Ldagger/internal/Provider;

    .line 2093
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClockProvider:Ldagger/internal/Provider;

    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineRepositoryProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/offlinemode/OfflineUUIDGenerator_Factory;->create()Lcom/stripe/offlinemode/OfflineUUIDGenerator_Factory;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCoroutineScopeProvider2:Ldagger/internal/Provider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultActiveLocationConfigRepository$wiringProvider:Ldagger/internal/Provider;

    iget-object v3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePosInfoFactoryProvider:Ldagger/internal/Provider;

    iget-object v4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineForwardingManager$offlinemode_releaseProvider:Ldagger/internal/Provider;

    iget-object v5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineConfigHelper$offlinemode_releaseProvider:Ldagger/internal/Provider;

    iget-object v6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideNetworkStatusFlowProvider:Ldagger/internal/Provider;

    iget-object v7, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineDiscreteLoggerProvider:Ldagger/internal/Provider;

    iget-object v8, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object p3, p1

    move-object p4, v0

    move-object/from16 p5, v1

    move-object/from16 p6, v2

    move-object/from16 p7, v3

    move-object/from16 p8, v4

    move-object/from16 p9, v5

    move-object/from16 p10, v6

    move-object/from16 p11, v7

    move-object/from16 p12, v8

    invoke-static/range {p2 .. p12}, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineEventHandler$offlinemode_releaseFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineEventHandler$offlinemode_releaseProvider:Ldagger/internal/Provider;

    .line 2094
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineConfigHelper$offlinemode_releaseProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineDiscreteLoggerProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2, v0, v1}, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideOfflinePaymentMethodValidatorFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideOfflinePaymentMethodValidatorFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflinePaymentMethodValidatorProvider:Ldagger/internal/Provider;

    .line 2095
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApiRequestFactoryProvider:Ldagger/internal/Provider;

    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->transactionRepositoryProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineEventHandler$offlinemode_releaseProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper_Factory;->create()Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper_Factory;

    move-result-object v2

    iget-object v3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideAuthenticatedRestClientProvider:Ldagger/internal/Provider;

    iget-object v4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesChargeAttemptManagerProvider:Ldagger/internal/Provider;

    iget-object v5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineConfigHelper$offlinemode_releaseProvider:Ldagger/internal/Provider;

    iget-object v6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineDiscreteLoggerProvider:Ldagger/internal/Provider;

    iget-object v7, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflinePaymentMethodValidatorProvider:Ldagger/internal/Provider;

    move-object v8, v3

    move-object p3, p1

    move-object p4, v0

    move-object/from16 p5, v1

    move-object/from16 p6, v2

    move-object/from16 p7, v3

    move-object/from16 p8, v4

    move-object/from16 p10, v5

    move-object/from16 p11, v6

    move-object/from16 p12, v7

    move-object/from16 p9, v8

    invoke-static/range {p2 .. p12}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->offlineDirectResourceRepositoryProvider:Ldagger/internal/Provider;

    .line 2096
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->onlineDirectResourceRepositoryProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultStripeConnectivityRepositoryProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineConfigHelper$offlinemode_releaseProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineDiscreteLoggerProvider:Ldagger/internal/Provider;

    iget-object v3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sessionTokenRepositoryProvider:Ldagger/internal/Provider;

    move-object p4, p1

    move-object p3, p2

    move-object/from16 p5, v0

    move-object/from16 p6, v1

    move-object/from16 p7, v2

    move-object/from16 p8, v3

    invoke-static/range {p3 .. p8}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->directResourceRepositoryRouterProvider:Ldagger/internal/Provider;

    .line 2097
    invoke-static {}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInetAddressValidatorFactory;->create()Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInetAddressValidatorFactory;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInternetReaderDnsFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideInternetReaderDnsFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideInternetReaderDnsProvider:Ldagger/internal/Provider;

    .line 2098
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRemoteReaderCrpcRequestContextProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcRequestContextProvider$sdkmanager_publishFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcRequestContextProvider$sdkmanager_publishFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCrpcRequestContextProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;

    .line 2099
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTraceManagerProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideDistributedTracingInterceptorFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideDistributedTracingInterceptorFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDistributedTracingInterceptorProvider:Ldagger/internal/Provider;

    .line 2100
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOkHttpClientProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideInternetReaderDnsProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCrpcRequestContextProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    invoke-static {p2, v0, v1, p1, v2}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcClientBuilderFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideCrpcClientBuilderFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCrpcClientBuilderProvider:Ldagger/internal/Provider;

    .line 2101
    invoke-static {p1}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideJackrabbitApiResolverFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideJackrabbitApiResolverFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideJackrabbitApiResolverProvider:Ldagger/internal/Provider;

    .line 2102
    invoke-static/range {p26 .. p26}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideReaderEventFetcherFactory;->create(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;)Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideReaderEventFetcherFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReaderEventFetcherProvider:Ldagger/internal/Provider;

    .line 2103
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object p1

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReaderEventFetcherProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReaderEventsListenerProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object/from16 v2, p26

    invoke-static {v2, p1, p2, v0, v1}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory;->create(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesUnAckedEventsHandlerProvider:Ldagger/internal/Provider;

    .line 2104
    invoke-static/range {p21 .. p21}, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideKmpCrpcClientFactory;->create(Lcom/stripe/stripeterminal/dagger/IpReaderModule;)Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideKmpCrpcClientFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideKmpCrpcClientProvider:Ldagger/internal/Provider;

    move-object/from16 p2, p21

    .line 2105
    invoke-static {p2, p1}, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideJackrabbitClientFactory;->create(Lcom/stripe/stripeterminal/dagger/IpReaderModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideJackrabbitClientFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideJackrabbitClientProvider:Ldagger/internal/Provider;

    return-void
.end method

.method private initialize12(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p33

    .line 2138
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->apiClientProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideJackrabbitApiResolverProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRemoteReaderCrpcRequestContextProvider:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultJackRabbitApiRequestFactoryProvider:Ldagger/internal/Provider;

    iget-object v6, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFactoryNotSupportedFeatureFlagRepositoryProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object v7

    iget-object v8, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    iget-object v9, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->bindReaderActivator$terminalsession_releaseProvider:Ldagger/internal/Provider;

    iget-object v10, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRemoteOfflineStatisticsRepositoryProvider:Ldagger/internal/Provider;

    iget-object v11, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesUnAckedEventsHandlerProvider:Ldagger/internal/Provider;

    iget-object v12, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideJackrabbitClientProvider:Ldagger/internal/Provider;

    iget-object v13, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object/from16 p1, p21

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    invoke-static/range {p1 .. p13}, Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;->create(Lcom/stripe/stripeterminal/dagger/IpReaderModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/IpReaderModule_ProvideIpReaderControllerFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideIpReaderControllerProvider:Ldagger/internal/Provider;

    .line 2139
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProviderMirrorProvider:Ldagger/internal/Provider;

    move-object/from16 v3, p20

    invoke-static {v3, v2}, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideHandoffReaderControllerFactory;->create(Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideHandoffReaderControllerFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideHandoffReaderControllerProvider:Ldagger/internal/Provider;

    .line 2140
    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideIpReaderControllerProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {v1, v3, v2, v4}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyRemoteReaderControllerFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyRemoteReaderControllerFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProxyRemoteReaderControllerProvider:Ldagger/internal/Provider;

    .line 2141
    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->connectionTokenRepositoryProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultStripeConnectivityRepositoryProvider:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {v2, v3, v4, v5}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->remoteReaderResourceRepositoryProvider:Ldagger/internal/Provider;

    .line 2142
    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->directResourceRepositoryRouterProvider:Ldagger/internal/Provider;

    invoke-static {v1, v3, v2}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyResourceRepositoryFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyResourceRepositoryFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProxyResourceRepositoryProvider:Ldagger/internal/Provider;

    .line 2143
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->healthLoggerBuilderProvider:Ldagger/internal/Provider;

    invoke-static {v1}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideBluetoothConnectivityHealthLoggerFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/LogModule_ProvideBluetoothConnectivityHealthLoggerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBluetoothConnectivityHealthLoggerProvider:Ldagger/internal/Provider;

    .line 2144
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBuildValuesProvider:Ldagger/internal/Provider;

    invoke-static {v1}, Lcom/stripe/core/device/dagger/EmulatorModule_ProvideEmulatorClientDeviceTypeParserFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/core/device/dagger/EmulatorModule_ProvideEmulatorClientDeviceTypeParserFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideEmulatorClientDeviceTypeParserProvider:Ldagger/internal/Provider;

    .line 2145
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->getSerialSupplierProvider:Ldagger/internal/Provider;

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBuildValuesProvider:Ldagger/internal/Provider;

    invoke-static {v1, v2}, Lcom/stripe/core/device/dagger/BbposModule_ProvideBbposClientDeviceTypeParserFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/device/dagger/BbposModule_ProvideBbposClientDeviceTypeParserFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposClientDeviceTypeParserProvider:Ldagger/internal/Provider;

    .line 2146
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBuildValuesProvider:Ldagger/internal/Provider;

    invoke-static {v1}, Lcom/stripe/core/device/dagger/VerifoneModule_ProviderVerifoneClientDeviceTypeParserFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/core/device/dagger/VerifoneModule_ProviderVerifoneClientDeviceTypeParserFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providerVerifoneClientDeviceTypeParserProvider:Ldagger/internal/Provider;

    .line 2147
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBuildValuesProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideEmulatorClientDeviceTypeParserProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposClientDeviceTypeParserProvider:Ldagger/internal/Provider;

    invoke-static {v2, v3, v4, v1}, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeParserFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeParserFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClientDeviceTypeParserProvider:Ldagger/internal/Provider;

    .line 2148
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/DeviceTypeModule_ProvideClientDeviceTypeFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClientDeviceTypeProvider:Ldagger/internal/Provider;

    .line 2149
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesDebugFlavorProvider:Ldagger/internal/Provider;

    invoke-static {v2, v1}, Lcom/stripe/core/bbpos/hardware/dagger/BbposReaderModule_ProvideBbposReaderInfoFactoryFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/dagger/BbposReaderModule_ProvideBbposReaderInfoFactoryFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposReaderInfoFactoryProvider:Ldagger/internal/Provider;

    .line 2150
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReactiveReaderStatusListenerProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->reactiveConfigurationListenerProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesDebugLogsShouldBeSentToSplunkFeatureFlagProvider:Ldagger/internal/Provider;

    invoke-static {v2, v3, v1, v4}, Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/dagger/BbposControllerListenerModule_ProvideBbposControllerListenerFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposControllerListenerFactoryProvider:Ldagger/internal/Provider;

    .line 2151
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionCoordinator$wiringProvider:Ldagger/internal/Provider;

    invoke-static {v1}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentEventReceiverFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentEventReceiverFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentEventReceiverProvider:Ldagger/internal/Provider;

    .line 2152
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesManualEntryStateMachineProvider:Ldagger/internal/Provider;

    invoke-static {v1}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesManualEntryEventReceiverFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesManualEntryEventReceiverFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesManualEntryEventReceiverProvider:Ldagger/internal/Provider;

    .line 2153
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentEventReceiverProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->healthLoggerBuilderProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCardRemovalChecker$hardware_releaseProvider:Ldagger/internal/Provider;

    invoke-static {v2, v1, v3, v4}, Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/dagger/BbposPaymentCollectionModule_ProvideBbposPaymentCollectionListenerFactoryFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposPaymentCollectionListenerFactoryProvider:Ldagger/internal/Provider;

    .line 2154
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposControllerListenerFactoryProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReactiveReaderStatusListenerProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->bbposBluetoothDiscoveryFilterProvider:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {v2, v1, v3, v4, v5}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideTerminalSdkDeviceListenerWrapper$adapter_releaseFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalSdkDeviceListenerWrapper$adapter_releaseProvider:Ldagger/internal/Provider;

    .line 2155
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sharedPrefsProvider:Ldagger/internal/Provider;

    move-object/from16 v2, p31

    invoke-static {v2, v1}, Lcom/stripe/stripeterminal/dagger/StorageModule_ProvideBluetoothDeviceNameRepositoryFactory;->create(Lcom/stripe/stripeterminal/dagger/StorageModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/StorageModule_ProvideBluetoothDeviceNameRepositoryFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBluetoothDeviceNameRepositoryProvider:Ldagger/internal/Provider;

    .line 2156
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClockProvider:Ldagger/internal/Provider;

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {v1, v2}, Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideDisconnectReasonRepositoryFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideDisconnectReasonRepositoryFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDisconnectReasonRepositoryProvider:Ldagger/internal/Provider;

    .line 2157
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->healthLoggerBuilderProvider:Ldagger/internal/Provider;

    invoke-static {v1}, Lcom/stripe/core/readerupdate/dagger/ObservabilityModule_ProvideSingleUpdateHealthLoggerFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/core/readerupdate/dagger/ObservabilityModule_ProvideSingleUpdateHealthLoggerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideSingleUpdateHealthLoggerProvider:Ldagger/internal/Provider;

    .line 2158
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->getSerialSupplierProvider:Ldagger/internal/Provider;

    invoke-static {v1}, Lcom/stripe/core/device/dagger/DeviceInfoModule_ProvideBaseSearchIndicesFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/core/device/dagger/DeviceInfoModule_ProvideBaseSearchIndicesFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBaseSearchIndicesProvider:Ldagger/internal/Provider;

    .line 2159
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBatchDispatcherProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClockProvider:Ldagger/internal/Provider;

    move-object/from16 v4, p32

    invoke-static {v4, v2, v3, v1}, Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory;->create(Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule_ProvideObservabilityDataStructuredEventLogger$loggingFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideObservabilityDataStructuredEventLogger$loggingProvider:Ldagger/internal/Provider;

    .line 2160
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideAppScopeProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReactiveReaderStatusListenerProvider:Ldagger/internal/Provider;

    invoke-static {v2, v1, v3, v4}, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderEventLoggerModule_ProvideMposReaderEventLoggerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideMposReaderEventLoggerProvider:Ldagger/internal/Provider;

    .line 2161
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFactoryNotSupportedFeatureFlagRepositoryProvider:Ldagger/internal/Provider;

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposReaderConnectionControllerProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideAppScopeProvider:Ldagger/internal/Provider;

    invoke-static {v1, v2, v3}, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideMposReaderDebugLogManagerProvider:Ldagger/internal/Provider;

    .line 2162
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUpdateClientProvider:Ldagger/internal/Provider;

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sessionTokenRepositoryProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTransactionSchedulerProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCoroutineScopeProvider:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->connectionManagerProvider:Ldagger/internal/Provider;

    iget-object v6, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->updateManagerProvider:Ldagger/internal/Provider;

    iget-object v7, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->reactiveConfigurationListenerProvider:Ldagger/internal/Provider;

    iget-object v8, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReactiveReaderStatusListenerProvider:Ldagger/internal/Provider;

    iget-object v9, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->reactiveReaderUpdateListenerProvider:Ldagger/internal/Provider;

    iget-object v10, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->updateInstallerProvider:Ldagger/internal/Provider;

    iget-object v11, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    iget-object v12, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->settingsRepositoryProvider:Ldagger/internal/Provider;

    iget-object v13, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->bluetoothBondStateReceiverManagerProvider:Ldagger/internal/Provider;

    iget-object v14, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFactoryNotSupportedFeatureFlagRepositoryProvider:Ldagger/internal/Provider;

    iget-object v15, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUpdateController$sdk_releaseProvider:Ldagger/internal/Provider;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposReaderInfoControllerProvider:Ldagger/internal/Provider;

    move-object/from16 p16, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApplicationInformationProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;

    move-object/from16 p17, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->transactionRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 p18, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->connectAndUpdateStateMachineProvider:Ldagger/internal/Provider;

    move-object/from16 p19, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->paymentCollectionCoordinatorWrapperProvider:Ldagger/internal/Provider;

    move-object/from16 p20, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProxyResourceRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 p21, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposDeviceController$sdk_releaseProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory;->create()Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory;

    move-result-object v16

    move-object/from16 p22, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBluetoothConnectivityHealthLoggerProvider:Ldagger/internal/Provider;

    move-object/from16 p24, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalSdkDeviceListenerWrapper$adapter_releaseProvider:Ldagger/internal/Provider;

    move-object/from16 p25, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideListenerRegistry$hardware_releaseProvider:Ldagger/internal/Provider;

    move-object/from16 p26, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultDomesticDebitAidsParser$wiringProvider:Ldagger/internal/Provider;

    move-object/from16 p27, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBluetoothDeviceNameRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 p28, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDisconnectReasonRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 p29, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReaderInfoRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 p30, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideSingleUpdateHealthLoggerProvider:Ldagger/internal/Provider;

    move-object/from16 p31, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideMposReaderEventLoggerProvider:Ldagger/internal/Provider;

    move-object/from16 p32, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideMposReaderDebugLogManagerProvider:Ldagger/internal/Provider;

    move-object/from16 p33, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object/from16 p34, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p23, v16

    invoke-static/range {p1 .. p34}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBluetoothAdapter$adapter_releaseFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBluetoothAdapter$adapter_releaseFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBluetoothAdapter$adapter_releaseProvider:Ldagger/internal/Provider;

    return-void
.end method

.method private initialize13(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p14

    .line 2195
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBuildValuesProvider:Ldagger/internal/Provider;

    invoke-static {v1, v2, v3}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvidePreflightChecksFactory;->create(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/CotsModule_ProvidePreflightChecksFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePreflightChecksProvider:Ldagger/internal/Provider;

    .line 2196
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object v3

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->isCotsAdapterIncludedProvider:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePreflightChecksProvider:Ldagger/internal/Provider;

    iget-object v6, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    invoke-static/range {p1 .. p6}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;->create(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCotsClientProvider:Ldagger/internal/Provider;

    .line 2197
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBuildValuesProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {v2, v1, v3, v4}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideNfcAntennaLoggerFactory;->create(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideNfcAntennaLoggerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideNfcAntennaLoggerProvider:Ldagger/internal/Provider;

    .line 2198
    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApplicationInformationProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCotsClientProvider:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    iget-object v6, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFactoryNotSupportedFeatureFlagRepositoryProvider:Ldagger/internal/Provider;

    iget-object v7, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideAppScopeProvider:Ldagger/internal/Provider;

    iget-object v8, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object/from16 p7, v1

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p8, v8

    invoke-static/range {p1 .. p8}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsProxyAdapterFactory;->create(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsProxyAdapterFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCotsProxyAdapterProvider:Ldagger/internal/Provider;

    .line 2199
    invoke-static {}, Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideSimulatorConfigurationRepositoryFactory;->create()Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideSimulatorConfigurationRepositoryFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideSimulatorConfigurationRepositoryProvider:Ldagger/internal/Provider;

    .line 2200
    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->isCotsAdapterIncludedProvider:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePreflightChecksProvider:Ldagger/internal/Provider;

    invoke-static {v2, v3, v4, v5, v1}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsClientFactory;->create(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsClientFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideSimulatedCotsClientProvider:Ldagger/internal/Provider;

    .line 2201
    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApplicationInformationProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFactoryNotSupportedFeatureFlagRepositoryProvider:Ldagger/internal/Provider;

    iget-object v6, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideAppScopeProvider:Ldagger/internal/Provider;

    iget-object v7, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideNfcAntennaLoggerProvider:Ldagger/internal/Provider;

    iget-object v8, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object/from16 p3, v1

    move-object/from16 p2, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-static/range {p1 .. p8}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;->create(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideSimulatedCotsProxyAdapterFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideSimulatedCotsProxyAdapterProvider:Ldagger/internal/Provider;

    .line 2202
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProxyRemoteReaderControllerProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->connectionTokenRepositoryProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineRepositoryProvider:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFactoryNotSupportedFeatureFlagRepositoryProvider:Ldagger/internal/Provider;

    iget-object v6, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object/from16 p1, p33

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    invoke-static/range {p1 .. p7}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideRemoteReaderAdapterFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideRemoteReaderAdapterFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRemoteReaderAdapterProvider:Ldagger/internal/Provider;

    .line 2203
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClockProvider:Ldagger/internal/Provider;

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->transactionRepositoryProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/core/schedulers/dagger/SchedulersModule_ProvideMainDispatcherFactory;->create()Lcom/stripe/core/schedulers/dagger/SchedulersModule_ProvideMainDispatcherFactory;

    move-result-object v3

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideSimulatorConfigurationRepositoryProvider:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    iget-object v6, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApplicationInformationProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;

    iget-object v7, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposReaderInfoFactoryProvider:Ldagger/internal/Provider;

    iget-object v8, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUpdateClientProvider:Ldagger/internal/Provider;

    iget-object v9, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineConfigHelper$offlinemode_releaseProvider:Ldagger/internal/Provider;

    iget-object v10, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    invoke-static/range {p1 .. p10}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->simulatedMobileAdapterProvider:Ldagger/internal/Provider;

    .line 2204
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClockProvider:Ldagger/internal/Provider;

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->transactionRepositoryProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideSimulatorConfigurationRepositoryProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    iget-object v6, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUpdateClientProvider:Ldagger/internal/Provider;

    iget-object v7, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineConfigHelper$offlinemode_releaseProvider:Ldagger/internal/Provider;

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    invoke-static/range {p1 .. p7}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->simulatedIpAdapterProvider:Ldagger/internal/Provider;

    .line 2205
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUsbManagerProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBuildValuesProvider:Ldagger/internal/Provider;

    invoke-static {v1, v2, v3}, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->usbPermissionReceiverManagerProvider:Ldagger/internal/Provider;

    .line 2206
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->healthLoggerBuilderProvider:Ldagger/internal/Provider;

    invoke-static {v1}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideUsbConnectivityHealthLoggerFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/LogModule_ProvideUsbConnectivityHealthLoggerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUsbConnectivityHealthLoggerProvider:Ldagger/internal/Provider;

    .line 2207
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUpdateClientProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sessionTokenRepositoryProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTransactionSchedulerProvider:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCoroutineScopeProvider:Ldagger/internal/Provider;

    iget-object v6, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->connectionManagerProvider:Ldagger/internal/Provider;

    iget-object v7, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->updateManagerProvider:Ldagger/internal/Provider;

    iget-object v8, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->reactiveConfigurationListenerProvider:Ldagger/internal/Provider;

    iget-object v9, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReactiveReaderStatusListenerProvider:Ldagger/internal/Provider;

    iget-object v10, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->reactiveReaderUpdateListenerProvider:Ldagger/internal/Provider;

    iget-object v11, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->updateInstallerProvider:Ldagger/internal/Provider;

    iget-object v12, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    iget-object v13, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->settingsRepositoryProvider:Ldagger/internal/Provider;

    iget-object v14, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposDeviceController$sdk_releaseProvider:Ldagger/internal/Provider;

    iget-object v15, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->usbPermissionReceiverManagerProvider:Ldagger/internal/Provider;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFactoryNotSupportedFeatureFlagRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUpdateController$sdk_releaseProvider:Ldagger/internal/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposReaderInfoControllerProvider:Ldagger/internal/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApplicationInformationProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->transactionRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->connectAndUpdateStateMachineProvider:Ldagger/internal/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->paymentCollectionCoordinatorWrapperProvider:Ldagger/internal/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProxyResourceRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalSdkDeviceListenerWrapper$adapter_releaseProvider:Ldagger/internal/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideListenerRegistry$hardware_releaseProvider:Ldagger/internal/Provider;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultDomesticDebitAidsParser$wiringProvider:Ldagger/internal/Provider;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDisconnectReasonRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReaderInfoRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideSingleUpdateHealthLoggerProvider:Ldagger/internal/Provider;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideMposReaderEventLoggerProvider:Ldagger/internal/Provider;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideMposReaderDebugLogManagerProvider:Ldagger/internal/Provider;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object/from16 v33, v1

    invoke-static/range {v2 .. v33}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvideBbposUsbAdapter$adapter_releaseFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposUsbAdapter$adapter_releaseProvider:Ldagger/internal/Provider;

    .line 2208
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBluetoothAdapter$adapter_releaseProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCotsProxyAdapterProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideSimulatedCotsProxyAdapterProvider:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRemoteReaderAdapterProvider:Ldagger/internal/Provider;

    iget-object v6, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->simulatedMobileAdapterProvider:Ldagger/internal/Provider;

    iget-object v7, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->simulatedIpAdapterProvider:Ldagger/internal/Provider;

    iget-object v8, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->getEmbeddedAdapterProvider:Ldagger/internal/Provider;

    iget-object v9, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object v10, v6

    move-object/from16 p1, p33

    move-object/from16 p10, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p9, v8

    move-object/from16 p11, v9

    move-object/from16 p8, v10

    invoke-static/range {p1 .. p11}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideAdapterRepositoryFactory;

    move-result-object v1

    move-object/from16 v2, p1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideAdapterRepositoryProvider:Ldagger/internal/Provider;

    .line 2209
    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {v2, v1, v3}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyAdapterFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyAdapterFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProxyAdapterProvider:Ldagger/internal/Provider;

    .line 2210
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object v1

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClockProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {v1, v3, v4}, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->readerBatteryInfoPollerProvider:Ldagger/internal/Provider;

    .line 2211
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator_Factory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/validators/DefaultTipEligibleValidator_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultTipEligibleValidatorProvider:Ldagger/internal/Provider;

    .line 2212
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideComputationDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideComputationDispatcherFactory;

    move-result-object v1

    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object v3

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineRepositoryProvider:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {v1, v3, v4, v5}, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideOfflineDbReaperFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideOfflineDbReaperFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineDbReaperProvider:Ldagger/internal/Provider;

    .line 2213
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->healthLoggerBuilderProvider:Ldagger/internal/Provider;

    invoke-static {v1}, Lcom/stripe/core/readerupdate/dagger/ObservabilityModule_ProvideEndToEndHealthLoggerFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/core/readerupdate/dagger/ObservabilityModule_ProvideEndToEndHealthLoggerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideEndToEndHealthLoggerProvider:Ldagger/internal/Provider;

    .line 2214
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    invoke-static {v2, v1}, Lcom/stripe/stripeterminal/dagger/TerminalModule_SentryFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_SentryFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sentryProvider:Ldagger/internal/Provider;

    .line 2215
    invoke-static {v2}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideCollectInputsExternalModelTransformerFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideCollectInputsExternalModelTransformerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCollectInputsExternalModelTransformerProvider:Ldagger/internal/Provider;

    .line 2216
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    move-object/from16 v2, p28

    invoke-static {v2, v1}, Lcom/stripe/stripeterminal/dagger/PermissionsModule_ProvidePermissionsValidatorFactory;->create(Lcom/stripe/stripeterminal/dagger/PermissionsModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/PermissionsModule_ProvidePermissionsValidatorFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePermissionsValidatorProvider:Ldagger/internal/Provider;

    .line 2217
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object v1

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineRepositoryProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideNetworkStatusFlowProvider:Ldagger/internal/Provider;

    invoke-static {v1, v2, v3}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDirectOfflineStatsRepositoryProvider:Ldagger/internal/Provider;

    .line 2218
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProxyOfflineListenerProvider:Ldagger/internal/Provider;

    move-object/from16 v2, p25

    invoke-static {v2, v1}, Lcom/stripe/stripeterminal/dagger/OfflineModule_BindsOfflineStatusChangeListener$sdkmanager_publishFactory;->create(Lcom/stripe/stripeterminal/dagger/OfflineModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/OfflineModule_BindsOfflineStatusChangeListener$sdkmanager_publishFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->bindsOfflineStatusChangeListener$sdkmanager_publishProvider:Ldagger/internal/Provider;

    .line 2219
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRemoteOfflineStatisticsRepositoryProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDirectOfflineStatsRepositoryProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object v4

    move-object/from16 v5, p26

    invoke-static {v5, v2, v3, v1, v4}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory;->create(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCompositeOfflineStatsRepositoryProvider:Ldagger/internal/Provider;

    return-void
.end method

.method private initialize14(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V
    .locals 49

    move-object/from16 v0, p0

    .line 2252
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->healthLoggerBuilderProvider:Ldagger/internal/Provider;

    invoke-static {v1}, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsStageHealthMetrics$formsFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsStageHealthMetrics$formsFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFormsStageHealthMetrics$formsProvider:Ldagger/internal/Provider;

    .line 2253
    invoke-static {v1}, Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsIntegrationLoggerFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/forms/dagger/FormsIntegrationLoggerModule_ProvideFormsIntegrationLoggerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFormsIntegrationLoggerProvider:Ldagger/internal/Provider;

    .line 2254
    invoke-static/range {p33 .. p33}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalExceptionTransformerFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalExceptionTransformerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalExceptionTransformerProvider:Ldagger/internal/Provider;

    .line 2255
    invoke-static/range {p33 .. p33}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideCollectInputsParametersTransformerFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideCollectInputsParametersTransformerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCollectInputsParametersTransformerProvider:Ldagger/internal/Provider;

    .line 2256
    invoke-static/range {p33 .. p33}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdatePaymentIntentParamRepositoryFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdatePaymentIntentParamRepositoryFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUpdatePaymentIntentParamRepositoryProvider:Ldagger/internal/Provider;

    .line 2257
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->healthLoggerBuilderProvider:Ldagger/internal/Provider;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule_ProvidePassthroughHealthStageLoggerFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule_ProvidePassthroughHealthStageLoggerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePassthroughHealthStageLoggerProvider:Ldagger/internal/Provider;

    .line 2258
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->healthLoggerBuilderProvider:Ldagger/internal/Provider;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule_ProvidePassthroughHealthDiscreteLoggerFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/PassthroughHealthLoggerModule_ProvidePassthroughHealthDiscreteLoggerFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePassthroughHealthDiscreteLoggerProvider:Ldagger/internal/Provider;

    .line 2259
    invoke-static/range {p33 .. p33}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideCancelIntentManagerFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideCancelIntentManagerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCancelIntentManagerProvider:Ldagger/internal/Provider;

    .line 2260
    invoke-static/range {p33 .. p33}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEnsureSingleDiscoverOperationFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideEnsureSingleDiscoverOperationFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideEnsureSingleDiscoverOperationProvider:Ldagger/internal/Provider;

    .line 2261
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalSessionProvider:Ldagger/internal/Provider;

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProxyAdapterProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->apiClientProvider:Ldagger/internal/Provider;

    iget-object v5, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLocationServicesValidatorProvider:Ldagger/internal/Provider;

    iget-object v6, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->locationHandlerProvider:Ldagger/internal/Provider;

    iget-object v7, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    iget-object v8, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->connectionTokenRepositoryProvider:Ldagger/internal/Provider;

    iget-object v9, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sessionTokenRepositoryProvider:Ldagger/internal/Provider;

    iget-object v10, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProxyResourceRepositoryProvider:Ldagger/internal/Provider;

    iget-object v11, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesChargeAttemptManagerProvider:Ldagger/internal/Provider;

    iget-object v12, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->transactionRepositoryProvider:Ldagger/internal/Provider;

    iget-object v13, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->readerBatteryInfoPollerProvider:Ldagger/internal/Provider;

    iget-object v14, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTraceManagerProvider:Ldagger/internal/Provider;

    iget-object v15, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineEventHandler$offlinemode_releaseProvider:Ldagger/internal/Provider;

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultTipEligibleValidatorProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/validators/DefaultCollectPaymentMethodOperationValidator_Factory;->create()Lcom/stripe/stripeterminal/internal/common/validators/DefaultCollectPaymentMethodOperationValidator_Factory;

    move-result-object v18

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFactoryNotSupportedFeatureFlagRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideStripeNetworkStatusProvider:Ldagger/internal/Provider;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBluetoothDeviceNameRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineDbReaperProvider:Ldagger/internal/Provider;

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultStripeConnectivityRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideEndToEndHealthLoggerProvider:Ldagger/internal/Provider;

    move-object/from16 v24, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineConfigHelper$offlinemode_releaseProvider:Ldagger/internal/Provider;

    move-object/from16 v25, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideSimulatorConfigurationRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 v26, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProxyTerminalListenerProxyProvider:Ldagger/internal/Provider;

    move-object/from16 v27, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProxyOfflineListenerProvider:Ldagger/internal/Provider;

    move-object/from16 v28, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 v29, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->backgroundReaderActivatorProvider:Ldagger/internal/Provider;

    move-object/from16 v30, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sessionTokenInterceptorProvider:Ldagger/internal/Provider;

    move-object/from16 v31, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sentryProvider:Ldagger/internal/Provider;

    move-object/from16 v32, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCollectInputsExternalModelTransformerProvider:Ldagger/internal/Provider;

    move-object/from16 v33, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePermissionsValidatorProvider:Ldagger/internal/Provider;

    move-object/from16 v34, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCompositeOfflineStatsRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 v35, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFormsIntegrationLoggerProvider:Ldagger/internal/Provider;

    move-object/from16 v36, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDisconnectReasonRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 v37, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->settingsRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 v38, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalExceptionTransformerProvider:Ldagger/internal/Provider;

    move-object/from16 v39, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCollectInputsParametersTransformerProvider:Ldagger/internal/Provider;

    move-object/from16 v40, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClockProvider:Ldagger/internal/Provider;

    move-object/from16 v41, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUpdatePaymentIntentParamRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 v42, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePassthroughHealthStageLoggerProvider:Ldagger/internal/Provider;

    move-object/from16 v43, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePassthroughHealthDiscreteLoggerProvider:Ldagger/internal/Provider;

    move-object/from16 v44, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentIntentUpdaterProvider:Ldagger/internal/Provider;

    move-object/from16 v45, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object/from16 v46, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCancelIntentManagerProvider:Ldagger/internal/Provider;

    move-object/from16 v47, v2

    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideEnsureSingleDiscoverOperationProvider:Ldagger/internal/Provider;

    move-object/from16 v16, v15

    move-object/from16 v48, v2

    move-object/from16 v2, p33

    invoke-static/range {v2 .. v48}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Ldagger/internal/DelegateFactory;->setDelegate(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    .line 2262
    iget-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDeviceUuidProvider$common_publishProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogRoleFactory;->create()Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogRoleFactory;

    move-result-object v2

    iget-object v3, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClientLoggerApiProvider:Ldagger/internal/Provider;

    iget-object v4, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {v1, v2, v3, v4}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideDeviceRoleLogUploader$sdkmanager_publishFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/LogModule_ProvideDeviceRoleLogUploader$sdkmanager_publishFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDeviceRoleLogUploader$sdkmanager_publishProvider:Ldagger/internal/Provider;

    .line 2263
    invoke-static {v1}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogUploaderFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/LogModule_ProvideLogUploaderFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLogUploaderProvider:Ldagger/internal/Provider;

    .line 2264
    iget-object v2, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule_ProvideScheduledExecutorServiceFactory;->create()Lcom/stripe/core/stripeterminal/log/dagger/AndroidLogModule_ProvideScheduledExecutorServiceFactory;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogFlusher$wiringFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogFlusher$wiringFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLogFlusher$wiringProvider:Ldagger/internal/Provider;

    return-void
.end method

.method private initialize2(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V
    .locals 1

    move-object/from16 p1, p23

    .line 1568
    invoke-static/range {p22 .. p22}, Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule_ProvideLogLevelFactory;->create(Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;)Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule_ProvideLogLevelFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLogLevelProvider:Ldagger/internal/Provider;

    .line 1569
    invoke-static {}, Lcom/stripe/logwriter/dagger/LogWriterModule_ProvidePlatformLogWriterFactory;->create()Lcom/stripe/logwriter/dagger/LogWriterModule_ProvidePlatformLogWriterFactory;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideTerminalLogWriterFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideTerminalLogWriterFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    .line 1570
    invoke-static {}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideDefaultLogRepositoryFactory;->create()Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideDefaultLogRepositoryFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultLogRepositoryProvider:Ldagger/internal/Provider;

    .line 1571
    invoke-static/range {p35 .. p35}, Lcom/stripe/time/dagger/TimeModule_ProvideClockFactory;->create(Lcom/stripe/time/dagger/TimeModule;)Lcom/stripe/time/dagger/TimeModule_ProvideClockFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClockProvider:Ldagger/internal/Provider;

    .line 1572
    invoke-static {p10}, Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideFilesDirectoryFactory;->create(Lcom/stripe/stripeterminal/dagger/ContextModule;)Lcom/stripe/stripeterminal/dagger/ContextModule_ProvideFilesDirectoryFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFilesDirectoryProvider:Ldagger/internal/Provider;

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 1573
    invoke-static {p2, p3}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object p2

    invoke-static {}, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory;->create()Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory;

    move-result-object p3

    invoke-virtual {p2, p3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ldagger/internal/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object p2

    invoke-virtual {p2}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->setOfLoggerExceptionListenerProvider:Ldagger/internal/Provider;

    .line 1574
    invoke-static {p2}, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideLoggerExceptionListenerRegistryImpl$wiringFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideLoggerExceptionListenerRegistryImpl$wiringFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerExceptionListenerRegistryImpl$wiringProvider:Ldagger/internal/Provider;

    .line 1575
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFilesDirectoryProvider:Ldagger/internal/Provider;

    invoke-static {p12, p3, p5, p2}, Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule_ProvideCollectorFactory;->create(Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule_ProvideCollectorFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCollectorProvider:Ldagger/internal/Provider;

    .line 1576
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProdEnvironmentProvider:Ldagger/internal/Provider;

    invoke-static {p2}, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideServiceUrlProviderFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideServiceUrlProviderFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideServiceUrlProvider2:Ldagger/internal/Provider;

    .line 1577
    new-instance p2, Ldagger/internal/DelegateFactory;

    invoke-direct {p2}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    .line 1578
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApplicationInformationProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;

    invoke-static {p4, p3, p2}, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvidePosInfoFactoryFactory;->create(Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvidePosInfoFactoryFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePosInfoFactoryProvider:Ldagger/internal/Provider;

    .line 1579
    new-instance p2, Ldagger/internal/DelegateFactory;

    invoke-direct {p2}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePlymouthCrpcRequestContextProvider:Ldagger/internal/Provider;

    .line 1580
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePosInfoFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p3, p2}, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvideLoggingRequestContextProviderFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvideLoggingRequestContextProviderFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggingRequestContextProvider:Ldagger/internal/Provider;

    .line 1581
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor_Factory;->create()Lcom/stripe/stripeterminal/internal/common/crpc/CrpcLogPointInterceptor_Factory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->crpcLogPointInterceptorProvider:Ldagger/internal/Provider;

    .line 1582
    invoke-static {p2}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideCrpcLogPointInterceptorFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/LogModule_ProvideCrpcLogPointInterceptorFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCrpcLogPointInterceptorProvider:Ldagger/internal/Provider;

    .line 1583
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApplicationInformationProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;

    invoke-static {p4, p2}, Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideUserAgentProviderFactory;->create(Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule_ProvideUserAgentProviderFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUserAgentProvider:Ldagger/internal/Provider;

    .line 1584
    invoke-static {p2}, Lcom/stripe/stripeterminal/dagger/GatorClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/GatorClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideHttpClientConfigurator$sdkmanager_publishProvider:Ldagger/internal/Provider;

    .line 1585
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOkHttpClientProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideServiceUrlProvider2:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggingRequestContextProvider:Ldagger/internal/Provider;

    iget-object p6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCrpcLogPointInterceptorProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory;->create()Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory;

    move-result-object p7

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideHttpClientConfigurator$sdkmanager_publishProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    move-object p8, p2

    move-object p9, v0

    invoke-static/range {p3 .. p9}, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideCrpcClientFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCrpcClientProvider:Ldagger/internal/Provider;

    .line 1586
    invoke-static {p2}, Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideGatorApiFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/client/dagger/GatorModule_ProvideGatorApiFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideGatorApiProvider:Ldagger/internal/Provider;

    .line 1587
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    invoke-static {p2}, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideConnectivityManagerFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideConnectivityManagerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideConnectivityManagerProvider:Ldagger/internal/Provider;

    .line 1588
    invoke-static {p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvidesNetworkConnectivityManagerFactory;->create(Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvidesNetworkConnectivityManagerFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesNetworkConnectivityManagerProvider:Ldagger/internal/Provider;

    .line 1589
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository_Factory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultNetworkConnectivityRepositoryProvider:Ldagger/internal/Provider;

    .line 1590
    invoke-static {p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvidesNetworkConnectivityRepositoryFactory;->create(Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvidesNetworkConnectivityRepositoryFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesNetworkConnectivityRepositoryProvider:Ldagger/internal/Provider;

    .line 1591
    invoke-static {p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvidesIsNetworkAvailableFactory;->create(Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvidesIsNetworkAvailableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesIsNetworkAvailableProvider:Ldagger/internal/Provider;

    .line 1592
    invoke-static/range {p24 .. p24}, Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule_ProvidesGatorUploaderOutOfMemoryLoggerFactory;->create(Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;)Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule_ProvidesGatorUploaderOutOfMemoryLoggerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesGatorUploaderOutOfMemoryLoggerProvider:Ldagger/internal/Provider;

    return-void
.end method

.method private initialize3(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V
    .locals 1

    .line 1625
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object p3

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideGatorApiProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesIsNetworkAvailableProvider:Ldagger/internal/Provider;

    iget-object p6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesGatorUploaderOutOfMemoryLoggerProvider:Ldagger/internal/Provider;

    invoke-static {p3, p4, p5, p6}, Lcom/stripe/jvmcore/gator/GatorTraceDispatcher_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/gator/GatorTraceDispatcher_Factory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->gatorTraceDispatcherProvider:Ldagger/internal/Provider;

    .line 1626
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProdEnvironmentProvider:Ldagger/internal/Provider;

    invoke-static {p3}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideServiceUrlProviderFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/LogModule_ProvideServiceUrlProviderFactory;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideServiceUrlProvider3:Ldagger/internal/Provider;

    .line 1627
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/stripe/core/storage/AndroidKeyValueStore_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/storage/AndroidKeyValueStore_Factory;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->androidKeyValueStoreProvider:Ldagger/internal/Provider;

    .line 1628
    invoke-static {p3}, Lcom/stripe/jvmcore/storage/SharedPrefs_Factory;->create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/storage/SharedPrefs_Factory;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sharedPrefsProvider:Ldagger/internal/Provider;

    .line 1629
    invoke-static {p3}, Lcom/stripe/core/transaction/SettingsRepository_Factory;->create(Ljavax/inject/Provider;)Lcom/stripe/core/transaction/SettingsRepository_Factory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->settingsRepositoryProvider:Ldagger/internal/Provider;

    .line 1630
    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p3, p4}, Lcom/stripe/core/transaction/TransactionRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/transaction/TransactionRepository_Factory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->transactionRepositoryProvider:Ldagger/internal/Provider;

    .line 1631
    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRpcSessionTokenProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUserAgentProvider:Ldagger/internal/Provider;

    invoke-static {p4, p3, p5}, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor_Factory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->identifierHeadersInterceptorProvider:Ldagger/internal/Provider;

    .line 1632
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOkHttpClientProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideServiceUrlProvider3:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggingRequestContextProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory;->create()Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory;

    move-result-object p6

    iget-object p7, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->identifierHeadersInterceptorProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    move-object/from16 p20, p3

    move-object/from16 p21, p4

    move-object/from16 p22, p5

    move-object/from16 p23, p6

    move-object/from16 p24, p7

    move-object/from16 p25, v0

    invoke-static/range {p20 .. p25}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideCrpcClientFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/LogModule_ProvideCrpcClientFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCrpcClientProvider2:Ldagger/internal/Provider;

    .line 1633
    invoke-static {p3}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideClientLoggerApiFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/LogModule_ProvideClientLoggerApiFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClientLoggerApiProvider:Ldagger/internal/Provider;

    .line 1634
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object p4

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesIsNetworkAvailableProvider:Ldagger/internal/Provider;

    iget-object p6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    invoke-static {p8, p3, p4, p5, p6}, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory;->create(Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerTraceDispatcherFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesClientLoggerTraceDispatcherProvider:Ldagger/internal/Provider;

    .line 1635
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object p3

    invoke-static {p3}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideAppScopeFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideAppScopeFactory;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideAppScopeProvider:Ldagger/internal/Provider;

    .line 1636
    invoke-static {}, Lcom/stripe/core/schedulers/dagger/SchedulersModule_ProvideMainDispatcherFactory;->create()Lcom/stripe/core/schedulers/dagger/SchedulersModule_ProvideMainDispatcherFactory;

    move-result-object p4

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    invoke-static {p13, p3, p4, p5}, Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule_ProvideSchedulerFactory;->create(Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule_ProvideSchedulerFactory;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideSchedulerProvider:Ldagger/internal/Provider;

    .line 1637
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sharedPrefsProvider:Ldagger/internal/Provider;

    move-object/from16 p4, p17

    invoke-static {p4, p3}, Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule_ProvideFactoryNotSupportedFeatureFlagRepositoryFactory;->create(Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule_ProvideFactoryNotSupportedFeatureFlagRepositoryFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFactoryNotSupportedFeatureFlagRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 p4, p18

    .line 1638
    invoke-static {p4, p3}, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesObservabilityFeatureFlagsFactory;->create(Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Ljavax/inject/Provider;)Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesObservabilityFeatureFlagsFactory;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesObservabilityFeatureFlagsProvider:Ldagger/internal/Provider;

    .line 1639
    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCollectorProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->gatorTraceDispatcherProvider:Ldagger/internal/Provider;

    iget-object p6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesClientLoggerTraceDispatcherProvider:Ldagger/internal/Provider;

    iget-object p7, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideSchedulerProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    move-object/from16 p24, p3

    move-object/from16 p20, p4

    move-object/from16 p21, p5

    move-object/from16 p22, p6

    move-object/from16 p23, p7

    move-object/from16 p25, v0

    invoke-static/range {p20 .. p25}, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule_ProvidesBatchDispatcherFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesBatchDispatcherProvider:Ldagger/internal/Provider;

    .line 1640
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFilesDirectoryProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerExceptionListenerRegistryImpl$wiringProvider:Ldagger/internal/Provider;

    invoke-static {p8, p3, p4, p5}, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvideClientLoggerObservabilityDataCollectorFactory;->create(Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvideClientLoggerObservabilityDataCollectorFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClientLoggerObservabilityDataCollectorProvider:Ldagger/internal/Provider;

    .line 1641
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClientLoggerApiProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object p4

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesIsNetworkAvailableProvider:Ldagger/internal/Provider;

    invoke-static {p8, p3, p4, p5}, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory;->create(Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvidesClientLoggerObservabilityDataDispatcherFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesClientLoggerObservabilityDataDispatcherProvider:Ldagger/internal/Provider;

    .line 1642
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideAppScopeProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/core/schedulers/dagger/SchedulersModule_ProvideMainDispatcherFactory;->create()Lcom/stripe/core/schedulers/dagger/SchedulersModule_ProvideMainDispatcherFactory;

    move-result-object p5

    invoke-static {p13, p3, p4, p5}, Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory;->create(Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule_ProvideClientLoggerSchedulerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClientLoggerSchedulerProvider:Ldagger/internal/Provider;

    .line 1643
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClientLoggerObservabilityDataCollectorProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesClientLoggerObservabilityDataDispatcherProvider:Ldagger/internal/Provider;

    invoke-static {p8, p3, p4, p5, p2}, Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvideBatchDispatcherFactory;->create(Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule_ProvideBatchDispatcherFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBatchDispatcherProvider:Ldagger/internal/Provider;

    .line 1644
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesBatchDispatcherProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesObservabilityFeatureFlagsProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClockProvider:Ldagger/internal/Provider;

    invoke-static {p2, p1, p3, p4}, Lcom/stripe/jvmcore/logging/DefaultTraceLogger_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/DefaultTraceLogger_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultTraceLoggerProvider:Ldagger/internal/Provider;

    .line 1645
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFilesDirectoryProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerExceptionListenerRegistryImpl$wiringProvider:Ldagger/internal/Provider;

    invoke-static {p11, p1, p2, p3}, Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule_ProvideCollectorFactory;->create(Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule_ProvideCollectorFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCollectorProvider2:Ldagger/internal/Provider;

    .line 1646
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object p1

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideGatorApiProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesIsNetworkAvailableProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2, p3}, Lcom/stripe/jvmcore/gator/GatorEventDispatcher_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/gator/GatorEventDispatcher_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->gatorEventDispatcherProvider:Ldagger/internal/Provider;

    .line 1647
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCollectorProvider2:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideSchedulerProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    move-object/from16 p5, p19

    invoke-static {p5, p2, p1, p3, p4}, Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;->create(Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule_ProvideBatchDispatcherFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBatchDispatcherProvider2:Ldagger/internal/Provider;

    .line 1648
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClockProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/stripe/jvmcore/logging/DefaultMetricLogger_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/DefaultMetricLogger_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultMetricLoggerProvider:Ldagger/internal/Provider;

    .line 1649
    invoke-static {}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTraceManagerFactory;->create()Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTraceManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTraceManagerProvider:Ldagger/internal/Provider;

    return-void
.end method

.method private initialize4(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V
    .locals 0

    move-object/from16 p1, p33

    .line 1682
    invoke-static {}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideGsonFactory;->create()Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideGsonFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideGsonProvider:Ldagger/internal/Provider;

    .line 1683
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultTraceLoggerProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultMetricLoggerProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTraceManagerProvider:Ldagger/internal/Provider;

    invoke-static {p3, p4, p5, p2}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogOperationFactoryFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogOperationFactoryFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLogOperationFactoryProvider:Ldagger/internal/Provider;

    .line 1684
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultTraceLoggerProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultMetricLoggerProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideGsonProvider:Ldagger/internal/Provider;

    invoke-static {p2, p3, p4}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogOperationCollectorFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogOperationCollectorFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLogOperationCollectorProvider:Ldagger/internal/Provider;

    .line 1685
    invoke-static {}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideApplicationTraceHelperFactory;->create()Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideApplicationTraceHelperFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p8

    iput-object p8, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApplicationTraceHelperProvider:Ldagger/internal/Provider;

    .line 1686
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultLogRepositoryProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClockProvider:Ldagger/internal/Provider;

    iget-object p6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLogOperationFactoryProvider:Ldagger/internal/Provider;

    iget-object p7, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLogOperationCollectorProvider:Ldagger/internal/Provider;

    invoke-static/range {p3 .. p8}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLoggerProvider:Ldagger/internal/Provider;

    .line 1687
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    invoke-static {p4, p2}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLoggerFactoryFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLoggerFactoryFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    invoke-static {p3, p2}, Ldagger/internal/DelegateFactory;->setDelegate(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    .line 1688
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyTerminalListenerProxyFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyTerminalListenerProxyFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProxyTerminalListenerProxyProvider:Ldagger/internal/Provider;

    .line 1689
    invoke-static {p1, p2}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalListenerFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalListenerFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalListenerProvider:Ldagger/internal/Provider;

    .line 1690
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->transactionRepositoryProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideAppScopeProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p2, p3, p4, p5}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager_Factory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    .line 1691
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePlymouthCrpcRequestContextProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRpcSessionTokenProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApplicationInformationProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;

    iget-object p6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePosInfoFactoryProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/ConnectivityModule_Companion_ProvideDefaultLocalIpAddressProviderFactory;->create()Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/ConnectivityModule_Companion_ProvideDefaultLocalIpAddressProviderFactory;

    move-result-object p7

    invoke-static {p4, p5, p2, p6, p7}, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory;

    move-result-object p2

    invoke-static {p3, p2}, Ldagger/internal/DelegateFactory;->setDelegate(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    .line 1692
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePlymouthCrpcRequestContextProvider:Ldagger/internal/Provider;

    invoke-static {p2}, Lcom/stripe/stripeterminal/dagger/ArmadaClientModule_ProvideContextProvider$sdkmanager_publishFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/ArmadaClientModule_ProvideContextProvider$sdkmanager_publishFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;

    .line 1693
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCrpcLogPointInterceptorProvider:Ldagger/internal/Provider;

    invoke-static {p2}, Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule_ProvideTraceLoggingInterceptorFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule_ProvideTraceLoggingInterceptorFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTraceLoggingInterceptorProvider:Ldagger/internal/Provider;

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 1694
    invoke-static {p2, p3}, Ldagger/internal/SetFactory;->builder(II)Ldagger/internal/SetFactory$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTraceLoggingInterceptorProvider:Ldagger/internal/Provider;

    invoke-virtual {p2, p3}, Ldagger/internal/SetFactory$Builder;->addProvider(Ldagger/internal/Provider;)Ldagger/internal/SetFactory$Builder;

    move-result-object p2

    invoke-virtual {p2}, Ldagger/internal/SetFactory$Builder;->build()Ldagger/internal/SetFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->armadaSetOfCustomCrpcInterceptorProvider:Ldagger/internal/Provider;

    .line 1695
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->identifierHeadersInterceptorProvider:Ldagger/internal/Provider;

    invoke-static {p2}, Lcom/stripe/stripeterminal/dagger/ArmadaClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/ArmadaClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory;

    move-result-object p7

    iput-object p7, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideHttpClientConfigurator$sdkmanager_publishProvider2:Ldagger/internal/Provider;

    .line 1696
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOkHttpClientProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideServiceUrlProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;

    iget-object p6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->armadaSetOfCustomCrpcInterceptorProvider:Ldagger/internal/Provider;

    iget-object p8, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    invoke-static/range {p3 .. p8}, Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule_ProvideCrpcClientFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule_ProvideCrpcClientFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCrpcClientProvider3:Ldagger/internal/Provider;

    .line 1697
    invoke-static {p2}, Lcom/stripe/jvmcore/client/dagger/ArmadaApiModule_ProvideArmadaApiFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/client/dagger/ArmadaApiModule_ProvideArmadaApiFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideArmadaApiProvider:Ldagger/internal/Provider;

    .line 1698
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBuildValuesProvider:Ldagger/internal/Provider;

    invoke-static {p2, p3}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/deviceinfo/ReaderPlatformDeviceInfo_Factory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->readerPlatformDeviceInfoProvider:Ldagger/internal/Provider;

    .line 1699
    invoke-static {p2}, Lcom/stripe/device/dagger/DeviceInfoModule_ProvideDeviceInfoRepository$wiringFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/device/dagger/DeviceInfoModule_ProvideDeviceInfoRepository$wiringFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDeviceInfoRepository$wiringProvider:Ldagger/internal/Provider;

    .line 1700
    invoke-static {p1}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvidesDebugFlavorFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvidesDebugFlavorFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesDebugFlavorProvider:Ldagger/internal/Provider;

    .line 1701
    invoke-static {}, Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory;->create()Lcom/stripe/jvmcore/logging/dagger/EmptyHealthMetricsListenerModule_ProvideHealthMetricListenersProviderFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideHealthMetricListenersProvider:Ldagger/internal/Provider;

    .line 1702
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultMetricLoggerProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesDebugFlavorProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    invoke-static {p2, p3, p1, p4}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/HealthLoggerBuilder_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->healthLoggerBuilderProvider:Ldagger/internal/Provider;

    .line 1703
    invoke-static {p1}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineDiscreteLoggerFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineDiscreteLoggerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineDiscreteLoggerProvider:Ldagger/internal/Provider;

    .line 1704
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p2, p1, p3}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineDatabaseProviderFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineDatabaseProviderFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineDatabaseProvider:Ldagger/internal/Provider;

    .line 1705
    invoke-static {}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineDispatcherFactory;->create()Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineDispatcherFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCoroutineDispatcherProvider:Ldagger/internal/Provider;

    .line 1706
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->androidKeyValueStoreProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/stripe/jvmcore/offlinemode/storage/DefaultOfflineKeyValueStore_Factory;->create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/offlinemode/storage/DefaultOfflineKeyValueStore_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultOfflineKeyValueStoreProvider:Ldagger/internal/Provider;

    return-void
.end method

.method private initialize5(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V
    .locals 5

    move-object/from16 p2, p33

    .line 1739
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineDatabaseProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineDiscreteLoggerProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/offlinemode/cipher/OfflineCipherProvider_Factory;->create()Lcom/stripe/offlinemode/cipher/OfflineCipherProvider_Factory;

    move-result-object p5

    invoke-static {}, Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider_Factory;->create()Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider_Factory;

    move-result-object v0

    invoke-static {}, Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper_Factory;->create()Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper_Factory;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCoroutineDispatcherProvider:Ldagger/internal/Provider;

    iget-object v3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultOfflineKeyValueStoreProvider:Ldagger/internal/Provider;

    iget-object v4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClockProvider:Ldagger/internal/Provider;

    move-object p7, p3

    move-object p8, p4

    move-object p9, p5

    move-object p10, v0

    move-object/from16 p11, v1

    move-object/from16 p12, v2

    move-object/from16 p13, v3

    move-object/from16 p14, v4

    invoke-static/range {p7 .. p14}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineRepositoryFactoryProvider:Ldagger/internal/Provider;

    .line 1740
    invoke-static {}, Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository_Factory;->create()Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository_Factory;

    move-result-object p3

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOfflineRepositoryFactoryProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p3, p4, p5}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideDefaultOfflineRepositoryFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideDefaultOfflineRepositoryFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineRepositoryProvider:Ldagger/internal/Provider;

    .line 1741
    invoke-static/range {p25 .. p25}, Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideProxyOfflineListenerFactory;->create(Lcom/stripe/stripeterminal/dagger/OfflineModule;)Lcom/stripe/stripeterminal/dagger/OfflineModule_ProvideProxyOfflineListenerFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProxyOfflineListenerProvider:Ldagger/internal/Provider;

    .line 1742
    invoke-static {}, Lcom/stripe/device/dagger/ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory;->create()Lcom/stripe/device/dagger/ActiveLocationConfigModule_Companion_ProvideDefaultActiveLocationConfigRepository$wiringFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultActiveLocationConfigRepository$wiringProvider:Ldagger/internal/Provider;

    .line 1743
    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->settingsRepositoryProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineRepositoryProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProxyOfflineListenerProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p4, p5, v0, p3, v1}, Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultOfflineConfigHelper$offlinemode_releaseProvider:Ldagger/internal/Provider;

    .line 1744
    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideArmadaApiProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOkHttpClientProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDeviceInfoRepository$wiringProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->readerPlatformDeviceInfoProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFactoryNotSupportedFeatureFlagRepositoryProvider:Ldagger/internal/Provider;

    iget-object v3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->settingsRepositoryProvider:Ldagger/internal/Provider;

    iget-object v4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object/from16 p13, p3

    move-object p7, p4

    move-object p8, p5

    move-object p9, v0

    move-object p10, v1

    move-object/from16 p11, v2

    move-object/from16 p12, v3

    move-object/from16 p14, v4

    invoke-static/range {p7 .. p14}, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideUpdateClientFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUpdateClientProvider:Ldagger/internal/Provider;

    .line 1745
    invoke-static {p2}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTransactionExecutorFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTransactionExecutorFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTransactionExecutorProvider:Ldagger/internal/Provider;

    .line 1746
    invoke-static {p2, p3}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTransactionSchedulerFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTransactionSchedulerFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTransactionSchedulerProvider:Ldagger/internal/Provider;

    .line 1747
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTransactionExecutorProvider:Ldagger/internal/Provider;

    invoke-static {p2, p3}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideCoroutineScopeFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideCoroutineScopeFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCoroutineScopeProvider:Ldagger/internal/Provider;

    .line 1748
    invoke-static {}, Lcom/stripe/core/readerconnection/ConnectionManager_Factory;->create()Lcom/stripe/core/readerconnection/ConnectionManager_Factory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->connectionManagerProvider:Ldagger/internal/Provider;

    .line 1749
    invoke-static {}, Lcom/stripe/core/readerupdate/UpdateManager_Factory;->create()Lcom/stripe/core/readerupdate/UpdateManager_Factory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->updateManagerProvider:Ldagger/internal/Provider;

    .line 1750
    invoke-static {}, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener_Factory;->create()Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener_Factory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->reactiveConfigurationListenerProvider:Ldagger/internal/Provider;

    .line 1751
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object/from16 p4, p29

    invoke-static {p4, p3}, Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule_ProvideReactiveReaderStatusListenerFactory;->create(Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Ljavax/inject/Provider;)Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule_ProvideReactiveReaderStatusListenerFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReactiveReaderStatusListenerProvider:Ldagger/internal/Provider;

    .line 1752
    invoke-static {}, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener_Factory;->create()Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener_Factory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->reactiveReaderUpdateListenerProvider:Ldagger/internal/Provider;

    .line 1753
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTransactionExecutorProvider:Ldagger/internal/Provider;

    invoke-static {p2, p3}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateDispatcherFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateDispatcherFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUpdateDispatcherProvider:Ldagger/internal/Provider;

    .line 1754
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    invoke-static {p2, p3}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideReaderFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideReaderFactory;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReaderProvider:Ldagger/internal/Provider;

    .line 1755
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesEncryptionHandlerFactory;->create()Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesEncryptionHandlerFactory;

    move-result-object p3

    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesObservabilityHandlerFactory;->create()Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesObservabilityHandlerFactory;

    move-result-object p4

    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesMissingKeyHandlerFactory;->create()Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesMissingKeyHandlerFactory;

    move-result-object p5

    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesReaderStatusHandlerFactory;->create()Lcom/stripe/stripeterminal/internal/common/adapter/dagger/MposAdaptersModule_ProvidesReaderStatusHandlerFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p3, p4, p5, v0, v1}, Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule_ProvideListenerRegistry$hardware_releaseFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/dagger/DeviceListenerModule_ProvideListenerRegistry$hardware_releaseFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideListenerRegistry$hardware_releaseProvider:Ldagger/internal/Provider;

    .line 1756
    invoke-static {p6}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideDeviceInfoCache$sdk_releaseFactory;->create(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;)Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideDeviceInfoCache$sdk_releaseFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDeviceInfoCache$sdk_releaseProvider:Ldagger/internal/Provider;

    .line 1757
    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideListenerRegistry$hardware_releaseProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p6, p4, p3, p5}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerListenerFactory;->create(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerListenerFactory;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBBDeviceControllerListenerProvider:Ldagger/internal/Provider;

    .line 1758
    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    invoke-static {p6, p4, p3}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerFactory;->create(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBBDeviceControllerFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBBDeviceControllerProvider:Ldagger/internal/Provider;

    .line 1759
    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideAppScopeProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDeviceInfoCache$sdk_releaseProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p6, p4, p3, p5, v0}, Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory;->create(Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/dagger/BbposSdkModule_ProvideBbposDeviceController$sdk_releaseFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposDeviceController$sdk_releaseProvider:Ldagger/internal/Provider;

    .line 1760
    invoke-static {p1}, Lcom/stripe/core/bbpos/hardware/dagger/BbposUpdateHardwareModule_ProvideReaderConfigurationUpdateControllerFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/dagger/BbposUpdateHardwareModule_ProvideReaderConfigurationUpdateControllerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReaderConfigurationUpdateControllerProvider:Ldagger/internal/Provider;

    .line 1761
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/stripe/hardware/dagger/EmvModule_Companion_ProvideDefaultDomesticDebitAidsParser$wiringFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/hardware/dagger/EmvModule_Companion_ProvideDefaultDomesticDebitAidsParser$wiringFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultDomesticDebitAidsParser$wiringProvider:Ldagger/internal/Provider;

    .line 1762
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoSchedulerFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoSchedulerFactory;

    move-result-object p3

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReaderConfigurationUpdateControllerProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDeviceInfoRepository$wiringProvider:Ldagger/internal/Provider;

    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sharedPrefsProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->reactiveConfigurationListenerProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->transactionRepositoryProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultDomesticDebitAidsParser$wiringProvider:Ldagger/internal/Provider;

    iget-object v3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object p6, p1

    move-object p7, v0

    move-object p8, v1

    move-object p9, v2

    move-object p10, v3

    invoke-static/range {p3 .. p10}, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->configurationHandlerProvider:Ldagger/internal/Provider;

    .line 1763
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTransactionSchedulerProvider:Ldagger/internal/Provider;

    invoke-static {p2, p1}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateSchedulerFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideUpdateSchedulerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUpdateSchedulerProvider:Ldagger/internal/Provider;

    return-void
.end method

.method private initialize6(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V
    .locals 0

    .line 1796
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->reactiveReaderUpdateListenerProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/stripe/core/hardware/reactive/dagger/ReaderUpdateListenerModule_ProvideReaderUpdateListenerFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/core/hardware/reactive/dagger/ReaderUpdateListenerModule_ProvideReaderUpdateListenerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReaderUpdateListenerProvider:Ldagger/internal/Provider;

    .line 1797
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFactoryNotSupportedFeatureFlagRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 p2, p18

    invoke-static {p2, p1}, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesDebugLogsShouldBeSentToSplunkFeatureFlagFactory;->create(Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Ljavax/inject/Provider;)Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesDebugLogsShouldBeSentToSplunkFeatureFlagFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesDebugLogsShouldBeSentToSplunkFeatureFlagProvider:Ldagger/internal/Provider;

    .line 1798
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReaderUpdateListenerProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p2, p1, p3}, Lcom/stripe/core/bbpos/BbposOtaListener_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/BbposOtaListener_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->bbposOtaListenerProvider:Ldagger/internal/Provider;

    .line 1799
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBBDeviceControllerProvider:Ldagger/internal/Provider;

    invoke-static {p2, p1, p3}, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideBBDeviceOTAControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideBBDeviceOTAControllerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBBDeviceOTAControllerProvider:Ldagger/internal/Provider;

    .line 1800
    invoke-static {p1}, Lcom/stripe/core/bbpos/BbposDeviceOtaController_Factory;->create(Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/BbposDeviceOtaController_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->bbposDeviceOtaControllerProvider:Ldagger/internal/Provider;

    .line 1801
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReaderUpdateListenerProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->bbposOtaListenerProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2, p3}, Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/dagger/BbposUpdateModule_ProvideUpdateController$sdk_releaseFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUpdateController$sdk_releaseProvider:Ldagger/internal/Provider;

    .line 1802
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideUsbManagerFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/core/dagger/modules/SystemServiceModule_ProvideUsbManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUsbManagerProvider:Ldagger/internal/Provider;

    .line 1803
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposDeviceController$sdk_releaseProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p2, p1, p3}, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p6

    iput-object p6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposReaderConnectionControllerProvider:Ldagger/internal/Provider;

    .line 1804
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUpdateSchedulerProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->reactiveReaderUpdateListenerProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReactiveReaderStatusListenerProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUpdateController$sdk_releaseProvider:Ldagger/internal/Provider;

    iget-object p7, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static/range {p2 .. p7}, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposAssetInstallProcessorFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposAssetInstallProcessorProvider:Ldagger/internal/Provider;

    .line 1805
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object p2

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReaderProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->configurationHandlerProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->readerPlatformDeviceInfoProvider:Ldagger/internal/Provider;

    iget-object p6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposAssetInstallProcessorProvider:Ldagger/internal/Provider;

    iget-object p7, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDeviceInfoRepository$wiringProvider:Ldagger/internal/Provider;

    iget-object p8, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static/range {p2 .. p8}, Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/readerupdate/dagger/BbposModule_ProvideBbposApplicatorFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposApplicatorProvider:Ldagger/internal/Provider;

    .line 1806
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUpdateClientProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReaderProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFactoryNotSupportedFeatureFlagRepositoryProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2, p3, p4}, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideArmadaIngesterFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideArmadaIngesterFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideArmadaIngesterProvider:Ldagger/internal/Provider;

    .line 1807
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUpdateDispatcherProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposApplicatorProvider:Ldagger/internal/Provider;

    invoke-static {p2, p3, p1}, Lcom/stripe/core/readerupdate/UpdateInstaller_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/readerupdate/UpdateInstaller_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->updateInstallerProvider:Ldagger/internal/Provider;

    .line 1808
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->bluetoothBondStateReceiverManagerProvider:Ldagger/internal/Provider;

    .line 1809
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposDeviceController$sdk_releaseProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderInfoControllerFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/dagger/BbposConnectionAndInfoModule_ProvideBbposReaderInfoControllerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposReaderInfoControllerProvider:Ldagger/internal/Provider;

    .line 1810
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler_Factory;->create()Lcom/stripe/stripeterminal/internal/common/connectandupdate/EmptyHandler_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->emptyHandlerProvider:Ldagger/internal/Provider;

    .line 1811
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReaderConfigurationUpdateControllerProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler_Factory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/CheckForUpdateHandler_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->checkForUpdateHandlerProvider:Ldagger/internal/Provider;

    .line 1812
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposReaderConnectionControllerProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler_Factory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectHandler_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->connectHandlerProvider:Ldagger/internal/Provider;

    .line 1813
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposReaderConnectionControllerProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/RebootHandler_Factory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/RebootHandler_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->rebootHandlerProvider:Ldagger/internal/Provider;

    .line 1814
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposReaderConnectionControllerProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DisconnectHandler_Factory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/DisconnectHandler_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->disconnectHandlerProvider:Ldagger/internal/Provider;

    .line 1815
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory;->create()Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothAdapterFactory;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothLeScannerFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBluetoothLeScannerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBluetoothLeScannerProvider:Ldagger/internal/Provider;

    .line 1816
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object p1

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReactiveReaderStatusListenerProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBluetoothLeScannerProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposBluetoothScannerProvider:Ldagger/internal/Provider;

    .line 1817
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object p1

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposBluetoothScannerProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReactiveReaderStatusListenerProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClockProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultBluetoothDiscoveryControllerProvider:Ldagger/internal/Provider;

    .line 1818
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter_Factory;->create()Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->bbposBluetoothDiscoveryFilterProvider:Ldagger/internal/Provider;

    .line 1819
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposDeviceController$sdk_releaseProvider:Ldagger/internal/Provider;

    invoke-static {p2, p1}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothDiscoveryControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposBluetoothDiscoveryControllerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposBluetoothDiscoveryControllerProvider:Ldagger/internal/Provider;

    .line 1820
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideAppScopeProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReactiveReaderStatusListenerProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUsbManagerProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposUsbDiscoveryControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/BbposDiscoveryModule_ProvideBbposUsbDiscoveryControllerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposUsbDiscoveryControllerProvider:Ldagger/internal/Provider;

    return-void
.end method

.method private initialize7(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V
    .locals 8

    move-object/from16 p2, p27

    .line 1853
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultBluetoothDiscoveryControllerProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposBluetoothDiscoveryControllerProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposUsbDiscoveryControllerProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p3, p4, v0, v1}, Lcom/stripe/stripeterminal/internal/common/dagger/BbposProxyDiscoveryModule_ProvideDiscoveryControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/BbposProxyDiscoveryModule_ProvideDiscoveryControllerFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDiscoveryControllerProvider:Ldagger/internal/Provider;

    .line 1854
    invoke-static {p3}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler_Factory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryHandler_Factory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->discoveryHandlerProvider:Ldagger/internal/Provider;

    .line 1855
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->updateInstallerProvider:Ldagger/internal/Provider;

    invoke-static {p3}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler_Factory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/InstallUpdatesHandler_Factory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->installUpdatesHandlerProvider:Ldagger/internal/Provider;

    .line 1856
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposReaderConnectionControllerProvider:Ldagger/internal/Provider;

    invoke-static {p3}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler_Factory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/SessionHandler_Factory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sessionHandlerProvider:Ldagger/internal/Provider;

    .line 1857
    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoSchedulerFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoSchedulerFactory;

    move-result-object p3

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposReaderInfoControllerProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReactiveReaderStatusListenerProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->healthLoggerBuilderProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p3, p4, v0, v1, v2}, Lcom/stripe/core/hardware/reactive/ReaderInfoHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/hardware/reactive/ReaderInfoHandler_Factory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->readerInfoHandlerProvider:Ldagger/internal/Provider;

    .line 1858
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideAppScopeProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object p4

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->readerInfoHandlerProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p3, p4, v0, v1}, Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule_ProvideReaderInfoRepositoryFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/hardware/reactive/dagger/ReaderInfoModule_ProvideReaderInfoRepositoryFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReaderInfoRepositoryProvider:Ldagger/internal/Provider;

    .line 1859
    invoke-static {p3}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ReaderInfoHandler_Factory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/ReaderInfoHandler_Factory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->readerInfoHandlerProvider2:Ldagger/internal/Provider;

    .line 1860
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDiscoveryControllerProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->updateInstallerProvider:Ldagger/internal/Provider;

    invoke-static {p3, p4}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/CancelledHandler_Factory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->cancelledHandlerProvider:Ldagger/internal/Provider;

    .line 1861
    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->emptyHandlerProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->checkForUpdateHandlerProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->connectHandlerProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->rebootHandlerProvider:Ldagger/internal/Provider;

    iget-object v3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->disconnectHandlerProvider:Ldagger/internal/Provider;

    iget-object v4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->discoveryHandlerProvider:Ldagger/internal/Provider;

    iget-object v5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->installUpdatesHandlerProvider:Ldagger/internal/Provider;

    iget-object v6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sessionHandlerProvider:Ldagger/internal/Provider;

    iget-object v7, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->readerInfoHandlerProvider2:Ldagger/internal/Provider;

    move-object/from16 p13, p3

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object/from16 p8, v3

    move-object/from16 p9, v4

    move-object/from16 p10, v5

    move-object/from16 p11, v6

    move-object/from16 p12, v7

    invoke-static/range {p4 .. p13}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine_Factory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->connectAndUpdateStateMachineProvider:Ldagger/internal/Provider;

    .line 1862
    invoke-static {}, Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository_Factory;->create()Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository_Factory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->pinButtonsRepositoryProvider:Ldagger/internal/Provider;

    .line 1863
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFactoryNotSupportedFeatureFlagRepositoryProvider:Ldagger/internal/Provider;

    move-object/from16 p4, p18

    invoke-static {p4, p3}, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesReaderFeatureFlagsFactory;->create(Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Ljavax/inject/Provider;)Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesReaderFeatureFlagsFactory;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesReaderFeatureFlagsProvider:Ldagger/internal/Provider;

    .line 1864
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideAppScopeProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p3, p4}, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvideCardRemovalChecker$hardware_releaseFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvideCardRemovalChecker$hardware_releaseFactory;

    move-result-object p3

    invoke-static {p3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCardRemovalChecker$hardware_releaseProvider:Ldagger/internal/Provider;

    .line 1865
    invoke-static {p1}, Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule_ProvidePinPadAccessibilityCheckerFactory;->create(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;)Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule_ProvidePinPadAccessibilityCheckerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePinPadAccessibilityCheckerProvider:Ldagger/internal/Provider;

    .line 1866
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBbposDeviceController$sdk_releaseProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClockProvider:Ldagger/internal/Provider;

    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideAppScopeProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;->create()Lcom/stripe/jvmcore/schedulers/dagger/JvmSchedulersModule_ProvideIoDispatcherFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->healthLoggerBuilderProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->pinButtonsRepositoryProvider:Ldagger/internal/Provider;

    iget-object v3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesReaderFeatureFlagsProvider:Ldagger/internal/Provider;

    iget-object v4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCardRemovalChecker$hardware_releaseProvider:Ldagger/internal/Provider;

    iget-object v5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePinPadAccessibilityCheckerProvider:Ldagger/internal/Provider;

    move-object p5, p1

    move-object p6, v0

    move-object p7, v1

    move-object/from16 p8, v2

    move-object/from16 p9, v3

    move-object/from16 p10, v4

    move-object/from16 p11, v5

    invoke-static/range {p3 .. p11}, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvidePaymentCollector$hardware_releaseFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollector$hardware_releaseProvider:Ldagger/internal/Provider;

    .line 1867
    invoke-static {}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionScopeFactory;->create()Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionScopeFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionScopeProvider:Ldagger/internal/Provider;

    .line 1868
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->settingsRepositoryProvider:Ldagger/internal/Provider;

    invoke-static {p2, p1}, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule_ProvidesPaymentCollectionSettingsRepositoryFactory;->create(Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule_ProvidesPaymentCollectionSettingsRepositoryFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPaymentCollectionSettingsRepositoryProvider:Ldagger/internal/Provider;

    .line 1869
    invoke-static/range {p33 .. p33}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideLocaleManagerFactory;->create(Lcom/stripe/stripeterminal/dagger/TerminalModule;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideLocaleManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLocaleManagerProvider:Ldagger/internal/Provider;

    .line 1870
    invoke-static {p2, p1}, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule_ProvidesPaymentCollectionLocaleManagerFactory;->create(Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule_ProvidesPaymentCollectionLocaleManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPaymentCollectionLocaleManagerProvider:Ldagger/internal/Provider;

    .line 1871
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->healthLoggerBuilderProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClockProvider:Ldagger/internal/Provider;

    invoke-static {p1, p3}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEndToEndEventLoggerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEndToEndEventLoggerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesEndToEndEventLoggerProvider:Ldagger/internal/Provider;

    .line 1872
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->healthLoggerBuilderProvider:Ldagger/internal/Provider;

    invoke-static {p3, p1}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesStageEventLoggerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesStageEventLoggerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesStageEventLoggerProvider:Ldagger/internal/Provider;

    .line 1873
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->healthLoggerBuilderProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p1, p3}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesDiscreteEventLoggerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesDiscreteEventLoggerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesDiscreteEventLoggerProvider:Ldagger/internal/Provider;

    .line 1874
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesStageEventLoggerProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesOnlineAuthStateLoggerFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesOnlineAuthStateLoggerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesOnlineAuthStateLoggerProvider:Ldagger/internal/Provider;

    .line 1875
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->healthLoggerBuilderProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesEndToEndEventLoggerProvider:Ldagger/internal/Provider;

    invoke-static {p1, p3}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesTippingLoggerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesTippingLoggerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesTippingLoggerProvider:Ldagger/internal/Provider;

    .line 1876
    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesEndToEndEventLoggerProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesStageEventLoggerProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesDiscreteEventLoggerProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesOnlineAuthStateLoggerProvider:Ldagger/internal/Provider;

    invoke-static {p3, p4, v0, v1, p1}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEventLoggersFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesEventLoggersFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesEventLoggersProvider:Ldagger/internal/Provider;

    .line 1877
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->transactionRepositoryProvider:Ldagger/internal/Provider;

    invoke-static {p2, p1}, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule_ProvidesPaymentCollectionTransactionRepositoryFactory;->create(Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule_ProvidesPaymentCollectionTransactionRepositoryFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPaymentCollectionTransactionRepositoryProvider:Ldagger/internal/Provider;

    return-void
.end method

.method private initialize8(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V
    .locals 9

    .line 1910
    new-instance p1, Ldagger/internal/DelegateFactory;

    invoke-direct {p1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionCoordinator$wiringProvider:Ldagger/internal/Provider;

    .line 1911
    invoke-static {p1}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionEventDelegateFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionEventDelegateFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionEventDelegateProvider:Ldagger/internal/Provider;

    .line 1912
    invoke-static {}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory;->create()Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionTimeoutSupplier$wiringFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionTimeoutSupplier$wiringProvider:Ldagger/internal/Provider;

    .line 1913
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesPaymentCollectionLoggerFactoryFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesPaymentCollectionLoggerFactoryFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPaymentCollectionLoggerFactoryProvider:Ldagger/internal/Provider;

    .line 1914
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionScopeProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionTimeoutSupplier$wiringProvider:Ldagger/internal/Provider;

    invoke-static {p2, p3, p1}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionStateTimer$wiringFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionStateTimer$wiringProvider:Ldagger/internal/Provider;

    .line 1915
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesReaderFeatureFlagsProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sharedPrefsProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesFeatureFlagRepositoryFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesFeatureFlagRepositoryFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesFeatureFlagRepositoryProvider:Ldagger/internal/Provider;

    .line 1916
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionEventDelegateProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPaymentCollectionLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesEmptyHandlerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesEmptyHandlerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesEmptyHandlerProvider:Ldagger/internal/Provider;

    .line 1917
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionEventDelegateProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPaymentCollectionLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesConfigureReaderHandlerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesConfigureReaderHandlerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesConfigureReaderHandlerProvider:Ldagger/internal/Provider;

    .line 1918
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionEventDelegateProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPaymentCollectionLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesZipCodeHandlerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesZipCodeHandlerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesZipCodeHandlerProvider:Ldagger/internal/Provider;

    .line 1919
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionEventDelegateProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPaymentCollectionLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesConfirmDetailsHandlerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesConfirmDetailsHandlerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesConfirmDetailsHandlerProvider:Ldagger/internal/Provider;

    .line 1920
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionEventDelegateProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPaymentCollectionLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesPanEntryHandlerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesPanEntryHandlerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPanEntryHandlerProvider:Ldagger/internal/Provider;

    .line 1921
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionEventDelegateProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPaymentCollectionLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesExpiryDateEntryHandlerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesExpiryDateEntryHandlerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesExpiryDateEntryHandlerProvider:Ldagger/internal/Provider;

    .line 1922
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionEventDelegateProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPaymentCollectionLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesCvvEntryHandlerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesCvvEntryHandlerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesCvvEntryHandlerProvider:Ldagger/internal/Provider;

    .line 1923
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionEventDelegateProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPaymentCollectionLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesFinishedHandlerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesFinishedHandlerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesFinishedHandlerProvider:Ldagger/internal/Provider;

    .line 1924
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->healthLoggerBuilderProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesEndToEndEventLoggerProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryLoggerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryLoggerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesManualEntryLoggerProvider:Ldagger/internal/Provider;

    .line 1925
    invoke-static {p1}, Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryEventLogger$wiringFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/metrics/dagger/PaymentCollectionLoggerModule_ProvidesManualEntryEventLogger$wiringFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesManualEntryEventLogger$wiringProvider:Ldagger/internal/Provider;

    .line 1926
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesEmptyHandlerProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesConfigureReaderHandlerProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesZipCodeHandlerProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesConfirmDetailsHandlerProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPanEntryHandlerProvider:Ldagger/internal/Provider;

    iget-object v3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesExpiryDateEntryHandlerProvider:Ldagger/internal/Provider;

    iget-object v4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesCvvEntryHandlerProvider:Ldagger/internal/Provider;

    iget-object v5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesFinishedHandlerProvider:Ldagger/internal/Provider;

    iget-object v6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPaymentCollectionLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object/from16 p18, p1

    move-object/from16 p10, p2

    move-object/from16 p11, p3

    move-object/from16 p12, v0

    move-object/from16 p13, v1

    move-object/from16 p14, v2

    move-object/from16 p15, v3

    move-object/from16 p16, v4

    move-object/from16 p17, v5

    move-object/from16 p19, v6

    invoke-static/range {p10 .. p19}, Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesManualEntryStateMachineFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/manualentry/dagger/ManualEntryStateMachineModule_ProvidesManualEntryStateMachineFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesManualEntryStateMachineProvider:Ldagger/internal/Provider;

    .line 1927
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionEventDelegateProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesEventLoggersProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionStateTimer$wiringProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesFeatureFlagRepositoryProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPaymentCollectionLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object/from16 p15, p1

    move-object/from16 p11, p2

    move-object/from16 p12, p3

    move-object/from16 p10, p5

    move-object/from16 p13, v0

    move-object/from16 p14, v1

    move-object/from16 p16, v2

    invoke-static/range {p10 .. p16}, Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;->create(Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule_ProvidePaymentCollectionStateMachine$wiringFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionStateMachine$wiringProvider:Ldagger/internal/Provider;

    .line 1928
    invoke-static {p1}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionContextFactory$wiringFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionContextFactory$wiringFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionContextFactory$wiringProvider:Ldagger/internal/Provider;

    .line 1929
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionCoordinator$wiringProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollector$hardware_releaseProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionScopeProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPaymentCollectionSettingsRepositoryProvider:Ldagger/internal/Provider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPaymentCollectionLocaleManagerProvider:Ldagger/internal/Provider;

    iget-object v3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesEventLoggersProvider:Ldagger/internal/Provider;

    iget-object v4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPaymentCollectionTransactionRepositoryProvider:Ldagger/internal/Provider;

    iget-object v5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDeviceInfoRepository$wiringProvider:Ldagger/internal/Provider;

    iget-object v6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesFeatureFlagRepositoryProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory;->create()Lcom/stripe/paymentcollection/dagger/NoopTransactionListenerModule_ProvideNoopTransactionListenerFactory;

    move-result-object v7

    iget-object v8, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesPaymentCollectionLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object/from16 p16, p1

    move-object/from16 p10, p3

    move-object/from16 p11, v0

    move-object/from16 p12, v1

    move-object/from16 p13, v2

    move-object/from16 p14, v3

    move-object/from16 p15, v4

    move-object/from16 p17, v5

    move-object/from16 p18, v6

    move-object/from16 p19, v7

    move-object/from16 p20, v8

    invoke-static/range {p10 .. p20}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidePaymentCollectionCoordinator$wiringFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    invoke-static {p2, p1}, Ldagger/internal/DelegateFactory;->setDelegate(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    .line 1930
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePaymentCollectionCoordinator$wiringProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->transactionRepositoryProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->settingsRepositoryProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2, p3, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->paymentCollectionCoordinatorWrapperProvider:Ldagger/internal/Provider;

    .line 1931
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/stripe/stripeterminal/internal/common/LocationHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/LocationHandler_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->locationHandlerProvider:Ldagger/internal/Provider;

    .line 1932
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePosInfoFactoryProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->settingsRepositoryProvider:Ldagger/internal/Provider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->transactionRepositoryProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestSetupIntentRequestFactoryFactory;->create()Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestSetupIntentRequestFactoryFactory;

    move-result-object v2

    invoke-static {}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory;->create()Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory;

    move-result-object v3

    invoke-static {}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestRefundApiRequestFactoryFactory;->create()Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestRefundApiRequestFactoryFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    move-object/from16 p12, p1

    move-object/from16 p11, p2

    move-object/from16 p13, p3

    move-object/from16 p10, p9

    move-object/from16 p14, v0

    move-object/from16 p15, v1

    move-object/from16 p16, v2

    move-object/from16 p17, v3

    move-object/from16 p18, v4

    move-object/from16 p19, v5

    invoke-static/range {p10 .. p19}, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->create(Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApiRequestFactoryProvider:Ldagger/internal/Provider;

    .line 1933
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProdEnvironmentProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideServiceUrlProviderFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideServiceUrlProviderFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideServiceUrlProvider4:Ldagger/internal/Provider;

    .line 1934
    invoke-static {}, Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomFactory;->create()Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRandomProvider:Ldagger/internal/Provider;

    return-void
.end method

.method private initialize9(Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;Lcom/stripe/stripeterminal/dagger/ApiLevelModule;Lcom/stripe/stripeterminal/internal/common/dagger/AppInfoModule;Lcom/stripe/stripeterminal/dagger/ApplicationInfoModule;Lcom/stripe/paymentcollection/dagger/BbposPaymentStateMachineModule;Lcom/stripe/core/bbpos/dagger/BbposSdkModule;Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/batchdispatcher/dagger/CoroutineSchedulerModule;Lcom/stripe/stripeterminal/dagger/CotsModule;Lcom/stripe/core/device/dagger/BuildValuesModule;Lcom/stripe/core/device/dagger/SdkIntModule;Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/logging/dagger/GatorMetricLoggerBatchDispatcherModule;Lcom/stripe/stripeterminal/dagger/HandoffClientModule;Lcom/stripe/stripeterminal/dagger/IpReaderModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/jvmcore/gator/dagger/NoopGatorUploaderOutOfMemoryLoggerModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;Lcom/stripe/stripeterminal/dagger/PermissionsModule;Lcom/stripe/core/hardware/reactive/dagger/ReaderStatusModule;Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/stripe/stripeterminal/dagger/StorageModule;Lcom/stripe/jvmcore/logging/dagger/StructuredEventLoggerModule;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/client/dagger/HttpClientBaseModule;Lcom/stripe/time/dagger/TimeModule;Lcom/stripe/stripeterminal/dagger/Dependencies;)V
    .locals 0

    .line 1967
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideClockProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDeviceInfoRepository$wiringProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRandomProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2, p3}, Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->mainlandIdempotencyGeneratorProvider:Ldagger/internal/Provider;

    .line 1968
    invoke-static {p1}, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideIdempotencyRetryInterceptorFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideIdempotencyRetryInterceptorFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideIdempotencyRetryInterceptorProvider:Ldagger/internal/Provider;

    .line 1969
    new-instance p1, Ldagger/internal/DelegateFactory;

    invoke-direct {p1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalSessionProvider:Ldagger/internal/Provider;

    .line 1970
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sessionTokenRepositoryProvider:Ldagger/internal/Provider;

    invoke-static {p2, p3, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->backgroundReaderActivatorProvider:Ldagger/internal/Provider;

    .line 1971
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sessionTokenRepositoryProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sessionTokenInterceptorProvider:Ldagger/internal/Provider;

    .line 1972
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor_Factory;->create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->apiLogPointInterceptorProvider:Ldagger/internal/Provider;

    .line 1973
    invoke-static {p1}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideApiLogPointInterceptorFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/LogModule_ProvideApiLogPointInterceptorFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApiLogPointInterceptorProvider:Ldagger/internal/Provider;

    .line 1974
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultMetricLoggerProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultTraceLoggerProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2, p3}, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideTraceLoggingRestClientInterceptorFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTraceLoggingRestClientInterceptorProvider:Ldagger/internal/Provider;

    .line 1975
    iget-object p8, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOkHttpClientProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideServiceUrlProvider4:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideIdempotencyRetryInterceptorProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sessionTokenInterceptorProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApiLogPointInterceptorProvider:Ldagger/internal/Provider;

    iget-object p6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    move-object p13, p1

    move-object p9, p2

    move-object p10, p3

    move-object p11, p4

    move-object p12, p5

    move-object p14, p6

    invoke-static/range {p8 .. p14}, Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideRestClientFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/MainlandModule_Companion_ProvideRestClientFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRestClientProvider:Ldagger/internal/Provider;

    .line 1976
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProdEnvironmentProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesServiceUrlProviderFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesServiceUrlProviderFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFilesServiceUrlProvider:Ldagger/internal/Provider;

    .line 1977
    iget-object p8, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOkHttpClientProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideIdempotencyRetryInterceptorProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->sessionTokenInterceptorProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApiLogPointInterceptorProvider:Ldagger/internal/Provider;

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTraceLoggingRestClientInterceptorProvider:Ldagger/internal/Provider;

    iget-object p6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    move-object p9, p1

    move-object p10, p2

    move-object p11, p3

    move-object p12, p4

    move-object p13, p5

    move-object p14, p6

    invoke-static/range {p8 .. p14}, Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/FilesModule_ProvideFilesRestClientFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFilesRestClientProvider:Ldagger/internal/Provider;

    .line 1978
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRestClientProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideUserAgentProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->transactionRepositoryProvider:Ldagger/internal/Provider;

    invoke-static {p2, p3, p4, p1}, Lcom/stripe/core/transaction/dagger/CoreTransactionModule_ProvideAuthenticatedRestClientFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/transaction/dagger/CoreTransactionModule_ProvideAuthenticatedRestClientFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideAuthenticatedRestClientProvider:Ldagger/internal/Provider;

    .line 1979
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApiRequestFactoryProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOkHttpClientProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p2, p1, p3, p4}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/api/ApiClient_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->apiClientProvider:Ldagger/internal/Provider;

    .line 1980
    invoke-static {p7}, Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule_ProvidesChargeAttemptManagerFactory;->create(Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule;)Lcom/stripe/transaction/dagger/ChargeAttemptManagerModule_ProvidesChargeAttemptManagerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providesChargeAttemptManagerProvider:Ldagger/internal/Provider;

    .line 1981
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->providePosInfoFactoryProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/ConnectivityModule_Companion_ProvideDefaultLocalIpAddressProviderFactory;->create()Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/ConnectivityModule_Companion_ProvideDefaultLocalIpAddressProviderFactory;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvideRemoteReaderCrpcRequestContextProviderFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/CrpcContextProviderModule_Companion_ProvideRemoteReaderCrpcRequestContextProviderFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRemoteReaderCrpcRequestContextProvider:Ldagger/internal/Provider;

    .line 1982
    invoke-static/range {p20 .. p20}, Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideCurrentActivityTrackerFactory;->create(Lcom/stripe/stripeterminal/dagger/HandoffClientModule;)Lcom/stripe/stripeterminal/dagger/HandoffClientModule_ProvideCurrentActivityTrackerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCurrentActivityTrackerProvider:Ldagger/internal/Provider;

    .line 1983
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApplicationInformationProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultActivateJackRabbitApiFactoryFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultActivateJackRabbitApiFactoryFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultActivateJackRabbitApiFactoryProvider:Ldagger/internal/Provider;

    .line 1984
    invoke-static {}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultAccessibilityJackRabbitApiFactoryFactory;->create()Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultAccessibilityJackRabbitApiFactoryFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultAccessibilityJackRabbitApiFactoryProvider:Ldagger/internal/Provider;

    .line 1985
    invoke-static {}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory;->create()Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestPaymentApiRequestFactoryFactory;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultPaymentIntentJackRabbitApiFactoryFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultPaymentIntentJackRabbitApiFactoryFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultPaymentIntentJackRabbitApiFactoryProvider:Ldagger/internal/Provider;

    .line 1986
    invoke-static {}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestSetupIntentRequestFactoryFactory;->create()Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalRestRequestFactoryModule_ProvideDefaultRestSetupIntentRequestFactoryFactory;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultSetupIntentJackRabbitApiFactoryFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultSetupIntentJackRabbitApiFactoryFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultSetupIntentJackRabbitApiFactoryProvider:Ldagger/internal/Provider;

    .line 1987
    iget-object p2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultActivateJackRabbitApiFactoryProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultDiscoveryJackRabbitApiFactoryFactory;->create()Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultDiscoveryJackRabbitApiFactoryFactory;

    move-result-object p3

    invoke-static {}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultReaderDisplayJackRabbitApiFactoryFactory;->create()Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultReaderDisplayJackRabbitApiFactoryFactory;

    move-result-object p4

    iget-object p5, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultAccessibilityJackRabbitApiFactoryProvider:Ldagger/internal/Provider;

    iget-object p6, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultPaymentIntentJackRabbitApiFactoryProvider:Ldagger/internal/Provider;

    iget-object p7, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultSetupIntentJackRabbitApiFactoryProvider:Ldagger/internal/Provider;

    invoke-static {}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultRefundJackRabbitApiFactoryFactory;->create()Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultRefundJackRabbitApiFactoryFactory;

    move-result-object p8

    invoke-static/range {p2 .. p8}, Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/terminal/requestfactories/dagger/TerminalJackRabbitRequestFactoryModule_ProvideDefaultJackRabbitApiRequestFactoryFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultJackRabbitApiRequestFactoryProvider:Ldagger/internal/Provider;

    .line 1988
    invoke-static/range {p26 .. p26}, Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideRemoteOfflineStatisticsRepositoryFactory;->create(Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule;)Lcom/stripe/jvmcore/offlinemode/dagger/JvmOfflineModule_ProvideRemoteOfflineStatisticsRepositoryFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRemoteOfflineStatisticsRepositoryProvider:Ldagger/internal/Provider;

    .line 1989
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideProxyOfflineListenerProvider:Ldagger/internal/Provider;

    move-object/from16 p2, p25

    invoke-static {p2, p1}, Lcom/stripe/stripeterminal/dagger/OfflineModule_BindsOfflineListener$sdkmanager_publishFactory;->create(Lcom/stripe/stripeterminal/dagger/OfflineModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/OfflineModule_BindsOfflineListener$sdkmanager_publishFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->bindsOfflineListener$sdkmanager_publishProvider:Ldagger/internal/Provider;

    .line 1990
    invoke-static {p1}, Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule_ProvideReaderEventsListenerFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule_ProvideReaderEventsListenerFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/SingleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideReaderEventsListenerProvider:Ldagger/internal/Provider;

    .line 1991
    iget-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->backgroundReaderActivatorProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule_ProvideDefaultIpReaderActivator$terminalsession_releaseFactory;->create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule_ProvideDefaultIpReaderActivator$terminalsession_releaseFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideDefaultIpReaderActivator$terminalsession_releaseProvider:Ldagger/internal/Provider;

    return-void
.end method

.method private nfcAntennaLogger()Lcom/stripe/cots/common/NfcAntennaLogger;
    .locals 4

    .line 1478
    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->cotsModule:Lcom/stripe/stripeterminal/dagger/CotsModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideContextProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideBuildValuesProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/core/device/BuildValues;

    iget-object v3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideNfcAntennaLoggerFactory;->provideNfcAntennaLogger(Lcom/stripe/stripeterminal/dagger/CotsModule;Landroid/content/Context;Lcom/stripe/core/device/BuildValues;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/cots/common/NfcAntennaLogger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApiLevelValidator()Lcom/stripe/stripeterminal/internal/common/introspection/ApiLevelValidator;
    .locals 1

    .line 2269
    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApiLevelValidatorProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/introspection/ApiLevelValidator;

    return-object v0
.end method

.method public getConnectionExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 2329
    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideSingleThreadExecutorServiceProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getCotsAdapter()Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;
    .locals 8

    .line 2309
    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->cotsModule:Lcom/stripe/stripeterminal/dagger/CotsModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideApplicationInformationProvider$sdkmanager_publishProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;

    iget-object v2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideCotsClientProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/cots/common/CotsClient;

    iget-object v3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->terminalStatusManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    iget-object v4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideFactoryNotSupportedFeatureFlagRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {v4}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    invoke-direct {p0}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->appScopeCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    invoke-direct {p0}, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->nfcAntennaLogger()Lcom/stripe/cots/common/NfcAntennaLogger;

    move-result-object v6

    iget-object v7, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLoggerFactoryProvider:Ldagger/internal/Provider;

    invoke-interface {v7}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-virtual/range {v0 .. v7}, Lcom/stripe/stripeterminal/dagger/CotsModule;->provideCotsProxyAdapter(Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/cots/common/CotsClient;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/cots/common/NfcAntennaLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getLocationHandler()Lcom/stripe/stripeterminal/internal/common/LocationHandler;
    .locals 1

    .line 2294
    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->locationHandlerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    return-object v0
.end method

.method public getLocationValidator()Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;
    .locals 1

    .line 2274
    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLocationServicesValidatorProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;

    return-object v0
.end method

.method public getLogInitializer()Lcom/stripe/jvmcore/logging/terminal/contracts/LogInitializer;
    .locals 5

    .line 2314
    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultTraceLoggerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/loggingmodels/TraceLogger;

    iget-object v1, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultMetricLoggerProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/loggingmodels/MetricLogger;

    iget-object v2, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLoggerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    iget-object v3, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalLogWriterProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/logwriter/LogLevelAwareWriter;

    iget-object v4, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideObservabilityDataStructuredEventLogger$loggingProvider:Ldagger/internal/Provider;

    invoke-interface {v4}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogInitializerFactory;->provideLogInitializer(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lcom/stripe/logwriter/LogLevelAwareWriter;Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogInitializer;

    move-result-object v0

    return-object v0
.end method

.method public getMetricLogger()Lcom/stripe/loggingmodels/MetricLogger;
    .locals 1

    .line 2299
    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultMetricLoggerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/loggingmodels/MetricLogger;

    return-object v0
.end method

.method public getOkHttpClientProvider()Lcom/stripe/jvmcore/client/OkHttpClientProvider;
    .locals 1

    .line 2319
    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideOkHttpClientProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    return-object v0
.end method

.method public getRootAccessDetector()Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;
    .locals 1

    .line 2279
    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideRootAccessDetectorProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;

    return-object v0
.end method

.method public getTerminalSession()Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
    .locals 1

    .line 2284
    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTerminalSessionProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    return-object v0
.end method

.method public getTraceFlusher()Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;
    .locals 1

    .line 2289
    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideLogFlusher$wiringProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;

    return-object v0
.end method

.method public getTraceLogger()Lcom/stripe/loggingmodels/TraceLogger;
    .locals 1

    .line 2304
    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->defaultTraceLoggerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/loggingmodels/TraceLogger;

    return-object v0
.end method

.method public getTransactionExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 2324
    iget-object v0, p0, Lcom/stripe/stripeterminal/DaggerTerminalComponent$TerminalComponentImpl;->provideTransactionExecutorProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
