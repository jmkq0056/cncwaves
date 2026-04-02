.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule;
.super Ljava/lang/Object;
.source "TerminalModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/jvmcore/client/dagger/HttpClientModule;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/dagger/TerminalModule$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTerminalModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TerminalModule.kt\ncom/stripe/stripeterminal/dagger/TerminalModule\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n+ 3 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,484:1\n16#2:485\n16#2:486\n16#2:487\n16#2:488\n16#2:489\n44#3,4:490\n*S KotlinDebug\n*F\n+ 1 TerminalModule.kt\ncom/stripe/stripeterminal/dagger/TerminalModule\n*L\n200#1:485\n228#1:486\n248#1:487\n327#1:488\n397#1:489\n434#1:490,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006Jz\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0001\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\n2\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00120\n2\n\u0008\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\n2\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\u0008\u0010\u001c\u001a\u00020\u001dH\u0007J\u0008\u0010\u001e\u001a\u00020\u001fH\u0007J\u0008\u0010 \u001a\u00020!H\u0007J\u0010\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020$H\u0007J\u0012\u0010%\u001a\u00020&2\u0008\u0008\u0001\u0010\'\u001a\u00020(H\u0007J\u0008\u0010)\u001a\u00020*H\u0007J\u000e\u0010+\u001a\u0008\u0012\u0004\u0012\u00020-0,H\u0007J\u0008\u0010.\u001a\u00020/H\u0007J\u000e\u00100\u001a\u0008\u0012\u0004\u0012\u00020201H\u0007J\u0018\u00103\u001a\u00020\u00172\u0006\u00104\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J$\u00105\u001a\u0002062\u0006\u00107\u001a\u0002082\n\u0008\u0001\u00109\u001a\u0004\u0018\u00010:2\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\u0018\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@H\u0007J\u0010\u0010A\u001a\u00020B2\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\u0012\u0010C\u001a\u0004\u0018\u00010D2\u0006\u0010E\u001a\u00020FH\u0007J:\u0010G\u001a\u00020\u00102\u0006\u0010E\u001a\u00020F2\u0006\u0010H\u001a\u0002062\u0006\u0010I\u001a\u00020J2\u0008\u0008\u0001\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020N2\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\u0008\u0010O\u001a\u00020(H\u0007J\u0008\u0010P\u001a\u00020QH\u0007J\u0010\u0010R\u001a\u00020\u00052\u0006\u0010S\u001a\u00020BH\u0007J\u0081\u0004\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020\u00172\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020Z2\u0006\u0010[\u001a\u00020\\2\u0006\u0010E\u001a\u00020F2\u0006\u0010I\u001a\u00020J2\u0006\u0010]\u001a\u00020^2\u0006\u0010_\u001a\u00020<2\u0006\u0010`\u001a\u00020a2\u0006\u0010b\u001a\u00020c2\u0006\u0010d\u001a\u00020e2\u0006\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020i2\u0006\u0010j\u001a\u00020k2\u0006\u0010l\u001a\u00020m2\u0006\u0010n\u001a\u00020o2\u0006\u0010M\u001a\u00020N2\u000c\u0010p\u001a\u0008\u0012\u0004\u0012\u00020r0q2\u0006\u0010s\u001a\u00020t2\u0006\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020x2\"\u0010y\u001a\u001e\u0012\u0004\u0012\u00020{\u0012\u0004\u0012\u00020|\u0012\u0004\u0012\u00020}\u0012\u0004\u0012\u00020~0zj\u0002`\u007f2\u0008\u0010\u0080\u0001\u001a\u00030\u0081\u00012\u0008\u0010\u0082\u0001\u001a\u00030\u0083\u00012\u0006\u0010S\u001a\u00020B2\u0008\u0010\u0084\u0001\u001a\u00030\u0085\u00012\u0008\u0008\u0001\u0010K\u001a\u00020L2\u0008\u0010\u0086\u0001\u001a\u00030\u0087\u00012\u0008\u0010\u0088\u0001\u001a\u00030\u0089\u00012\u0008\u0010\u008a\u0001\u001a\u00030\u008b\u00012\u0007\u0010\u008c\u0001\u001a\u00020\u001f2\u0008\u0010\u008d\u0001\u001a\u00030\u008e\u00012\u0008\u0010\u008f\u0001\u001a\u00030\u0090\u00012\u0008\u0010\u0091\u0001\u001a\u00030\u0092\u00012\u0008\u0010\u0093\u0001\u001a\u00030\u0094\u00012\u0008\u0010\u0095\u0001\u001a\u00030\u0096\u00012\u0007\u0010\u0097\u0001\u001a\u00020Q2\u0007\u0010\u0098\u0001\u001a\u00020!2\u0008\u0010\u0099\u0001\u001a\u00030\u009a\u00012\u0008\u0010\u009b\u0001\u001a\u00030\u009c\u00012(\u0010\u009d\u0001\u001a#\u0012\u0005\u0012\u00030\u009e\u0001\u0012\u0005\u0012\u00030\u009f\u0001\u0012\u0005\u0012\u00030\u00a0\u0001\u0012\u0005\u0012\u00030\u00a1\u00010zj\u0003`\u00a2\u00012(\u0010\u00a3\u0001\u001a#\u0012\u0005\u0012\u00030\u009e\u0001\u0012\u0005\u0012\u00030\u009f\u0001\u0012\u0005\u0012\u00030\u00a4\u0001\u0012\u0005\u0012\u00030\u00a5\u00010zj\u0003`\u00a6\u00012\u0008\u0010\u00a7\u0001\u001a\u00030\u00a8\u00012\u0006\u0010\u001a\u001a\u00020\u001b2\u0007\u0010\u00a9\u0001\u001a\u00020\u001d2\u0007\u0010\u00aa\u0001\u001a\u00020*H\u0007J\t\u0010\u00ab\u0001\u001a\u00020(H\u0007J\u0014\u0010\u00ac\u0001\u001a\u00030\u00ad\u00012\u0008\u0008\u0001\u0010\'\u001a\u00020(H\u0007J\u0014\u0010\u00ae\u0001\u001a\u00030\u00af\u00012\u0008\u0008\u0001\u0010\'\u001a\u00020(H\u0007J\n\u0010\u00b0\u0001\u001a\u00030\u009c\u0001H\u0007J\u0016\u0010\u00b1\u0001\u001a\u00030\u00ad\u00012\n\u0008\u0001\u0010\u00b2\u0001\u001a\u00030\u00ad\u0001H\u0007J\n\u0010\u00b3\u0001\u001a\u00030\u00b4\u0001H\u0007J\u0016\u0010\u00b5\u0001\u001a\u00030\u008b\u00012\n\u0008\u0001\u0010\u00b6\u0001\u001a\u00030\u00b7\u0001H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00b8\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
        "",
        "tokenProvider",
        "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;",
        "integrationTerminalListener",
        "Lcom/stripe/stripeterminal/external/callable/TerminalListener;",
        "(Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;)V",
        "provideAdapterRepository",
        "Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;",
        "bbposAdapter",
        "Ldagger/Lazy;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;",
        "cotsAdapter",
        "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
        "simulatedCotsAdapter",
        "remoteReaderAdapter",
        "Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;",
        "simulatedBluetoothAdapter",
        "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;",
        "simulatedIpAdapter",
        "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;",
        "simulatedUsbAdapter",
        "embeddedAdapter",
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "usbAdapter",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideCancelIntentManager",
        "Lcom/stripe/cancelintent/CancelIntentManager;",
        "provideCollectInputsExternalModelTransformer",
        "Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;",
        "provideCollectInputsParametersTransformer",
        "Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;",
        "provideConnectionTokenProvider",
        "handoffConnectionTokenProviderSupplier",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;",
        "provideCoroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "executor",
        "Ljava/util/concurrent/ExecutorService;",
        "provideEnsureSingleDiscoverOperation",
        "Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;",
        "provideEpochProvider",
        "Lkotlin/Function0;",
        "",
        "provideLocaleManager",
        "Lcom/stripe/core/locale/LocaleManager;",
        "provideOptionalEmptyEventListenerFactory",
        "Ljava/util/Optional;",
        "Lokhttp3/EventListener$Factory;",
        "provideProxyAdapter",
        "repository",
        "provideProxyRemoteReaderController",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;",
        "ipReaderController",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;",
        "handoffReaderController",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;",
        "provideProxyResourceRepository",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;",
        "directResourceRepository",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;",
        "remoteReaderResourceRepository",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;",
        "provideProxyTerminalListenerProxy",
        "Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;",
        "provideReader",
        "Lcom/stripe/core/hardware/Reader;",
        "statusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "provideRemoteReaderAdapter",
        "proxyRemoteReaderController",
        "connectionTokenRepository",
        "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;",
        "offlineRepository",
        "Lcom/stripe/offlinemode/storage/OfflineRepository;",
        "featureFlagsRepository",
        "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
        "provideSingleThreadExecutorService",
        "provideTerminalExceptionTransformer",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;",
        "provideTerminalListener",
        "proxyTerminalListener",
        "provideTerminalSession",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "adapter",
        "apiClient",
        "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
        "locationValidator",
        "Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;",
        "locationHandler",
        "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
        "sessionTokenRepository",
        "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
        "proxyResourceRepository",
        "chargeAttemptManager",
        "Lcom/stripe/transaction/ChargeAttemptManager;",
        "transactionRepository",
        "Lcom/stripe/core/transaction/TransactionRepository;",
        "readerBatteryInfoPoller",
        "Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;",
        "traceManager",
        "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
        "offlineReaderSetup",
        "Lcom/stripe/offlinemode/OfflineReaderSetup;",
        "offlineSessionManager",
        "Lcom/stripe/offlinemode/helpers/OfflineSessionManager;",
        "tipEligibleValidator",
        "Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;",
        "collectPaymentMethodOperationValidator",
        "Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;",
        "networkStatusProvider",
        "Ljavax/inject/Provider;",
        "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        "bluetoothDeviceNameRepository",
        "Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;",
        "offlineDatabaseReaper",
        "Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;",
        "stripeConnectivityRepository",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
        "healthLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatesHealthLogger;",
        "offlineConfigHelper",
        "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
        "simulatorConfigurationRepository",
        "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
        "proxyOfflineListener",
        "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
        "backgroundReaderActivator",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;",
        "sessionTokenInterceptor",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;",
        "errorReporter",
        "Lcom/stripe/spos/sentry/http/ErrorReporter;",
        "collectInputsExternalModelTransformer",
        "permissionsValidator",
        "Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;",
        "offlineStatusRepository",
        "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;",
        "formsIntegrationLogger",
        "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;",
        "disconnectReasonRepository",
        "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;",
        "settingsRepository",
        "Lcom/stripe/core/transaction/SettingsRepository;",
        "terminalExceptionTransformer",
        "collectInputsParametersTransformer",
        "clock",
        "Lcom/stripe/time/Clock;",
        "updatePaymentIntentParamRepository",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;",
        "passthroughHealthStageLogger",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope$Builder;",
        "Lcom/stripe/stripeterminal/internal/common/log/PassthroughHealthStageLogger;",
        "passthroughHealthDiscreteLogger",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope$Builder;",
        "Lcom/stripe/stripeterminal/internal/common/log/PassthroughHealthDiscreteLogger;",
        "paymentIntentUpdater",
        "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
        "cancelIntentManager",
        "ensureSingleDiscoverOperation",
        "provideTransactionExecutor",
        "provideTransactionScheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "provideUpdateDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "provideUpdatePaymentIntentParamRepository",
        "provideUpdateScheduler",
        "scheduler",
        "providesDebugFlavor",
        "",
        "sentry",
        "context",
        "Landroid/content/Context;",
        "sdkmanager_publish"
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
.field private final integrationTerminalListener:Lcom/stripe/stripeterminal/external/callable/TerminalListener;

.field private final tokenProvider:Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;)V
    .locals 1

    const-string v0, "tokenProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "integrationTerminalListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule;->tokenProvider:Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;

    .line 119
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule;->integrationTerminalListener:Lcom/stripe/stripeterminal/external/callable/TerminalListener;

    return-void
.end method


# virtual methods
.method public final provideAdapterRepository(Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/Adapter;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;
    .locals 13
    .param p3    # Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;
        .annotation runtime Lcom/stripe/stripeterminal/dagger/SimulatedCotsAdapter;
        .end annotation
    .end param
    .param p8    # Lcom/stripe/stripeterminal/internal/common/Adapter;
        .annotation runtime Lcom/stripe/stripeterminal/dagger/EmbeddedAdapter;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;",
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;",
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")",
            "Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;"
        }
    .end annotation

    move-object/from16 v0, p10

    const-string v1, "bbposAdapter"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "remoteReaderAdapter"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "simulatedBluetoothAdapter"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "simulatedIpAdapter"

    move-object/from16 v8, p6

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "simulatedUsbAdapter"

    move-object/from16 v9, p7

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "usbAdapter"

    move-object/from16 v11, p9

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "loggerFactory"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;

    .line 486
    const-class v1, Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v12

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p8

    .line 218
    invoke-direct/range {v2 .. v12}, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;-><init>(Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/Adapter;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;

    return-object v2
.end method

.method public final provideCancelIntentManager()Lcom/stripe/cancelintent/CancelIntentManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 338
    new-instance v0, Lcom/stripe/cancelintent/DefaultCancelIntentManager;

    invoke-direct {v0}, Lcom/stripe/cancelintent/DefaultCancelIntentManager;-><init>()V

    check-cast v0, Lcom/stripe/cancelintent/CancelIntentManager;

    return-object v0
.end method

.method public final provideCollectInputsExternalModelTransformer()Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    .line 459
    new-instance v0, Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;

    invoke-direct {v0}, Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;-><init>()V

    return-object v0
.end method

.method public final provideCollectInputsParametersTransformer()Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    .line 471
    new-instance v0, Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;

    invoke-direct {v0}, Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;-><init>()V

    return-object v0
.end method

.method public final provideConnectionTokenProvider(Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;)Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "handoffConnectionTokenProviderSupplier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule;->tokenProvider:Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;

    .line 280
    invoke-interface {p1, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/HandoffConnectionTokenProviderSupplier;->replaceConnectionTokenProvider(Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;)Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;

    move-result-object p1

    return-object p1
.end method

.method public final provideCoroutineScope(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/CoroutineScope;
    .locals 2
    .param p1    # Ljava/util/concurrent/ExecutorService;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Transaction;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/Transaction;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 158
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-static {p1}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    const-string v1, "Transaction"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    .line 157
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    return-object p1
.end method

.method public final provideEnsureSingleDiscoverOperation()Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 344
    new-instance v0, Lcom/stripe/discoverreaders/DefaultEnsureSingleDiscoverOperation;

    invoke-direct {v0}, Lcom/stripe/discoverreaders/DefaultEnsureSingleDiscoverOperation;-><init>()V

    check-cast v0, Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;

    return-object v0
.end method

.method public final provideEpochProvider()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/ConnectionTokenManagement;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 288
    sget-object v0, Lcom/stripe/stripeterminal/dagger/TerminalModule$provideEpochProvider$1;->INSTANCE:Lcom/stripe/stripeterminal/dagger/TerminalModule$provideEpochProvider$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final provideLocaleManager()Lcom/stripe/core/locale/LocaleManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    .line 174
    new-instance v0, Lcom/stripe/core/locale/NoOpLocaleManager;

    invoke-direct {v0}, Lcom/stripe/core/locale/NoOpLocaleManager;-><init>()V

    check-cast v0, Lcom/stripe/core/locale/LocaleManager;

    return-object v0
.end method

.method public final provideOptionalEmptyEventListenerFactory()Ljava/util/Optional;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lokhttp3/EventListener$Factory;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 476
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    const-string v1, "empty(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final provideProxyAdapter(Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/Adapter;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;

    .line 485
    const-class v1, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p2

    .line 198
    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxyAdapter;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/Adapter;

    return-object v0
.end method

.method public final provideProxyRemoteReaderController(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;
    .locals 1
    .param p2    # Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;
        .annotation runtime Lcom/stripe/stripeterminal/dagger/HandoffReaderController;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "ipReaderController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    return-object v0
.end method

.method public final provideProxyResourceRepository(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "directResourceRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteReaderResourceRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;-><init>(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;)V

    return-object v0
.end method

.method public final provideProxyTerminalListenerProxy(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;
    .locals 3
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "loggerFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule;->integrationTerminalListener:Lcom/stripe/stripeterminal/external/callable/TerminalListener;

    .line 488
    const-class v2, Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    .line 327
    invoke-direct {v0, v1, p1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;-><init>(Lcom/stripe/stripeterminal/external/callable/TerminalListener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v0
.end method

.method public final provideReader(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;)Lcom/stripe/core/hardware/Reader;
    .locals 7
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "statusManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 301
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_6

    .line 302
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v5

    sget-object v6, Lcom/stripe/stripeterminal/dagger/TerminalModule$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/external/models/DeviceType;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    if-eq v5, v4, :cond_3

    if-eq v5, v3, :cond_2

    if-eq v5, v2, :cond_1

    if-eq v5, v1, :cond_0

    .line 309
    sget-object v0, Lcom/stripe/core/hardware/Reader$SerialReader;->INSTANCE:Lcom/stripe/core/hardware/Reader$SerialReader;

    check-cast v0, Lcom/stripe/core/hardware/Reader;

    goto :goto_0

    .line 307
    :cond_0
    new-instance v5, Lcom/stripe/core/hardware/Reader$BluetoothReader$Wisepad3Reader;

    invoke-direct {v5, v0}, Lcom/stripe/core/hardware/Reader$BluetoothReader$Wisepad3Reader;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    move-object v0, v5

    check-cast v0, Lcom/stripe/core/hardware/Reader;

    goto :goto_0

    .line 306
    :cond_1
    new-instance v5, Lcom/stripe/core/hardware/Reader$BluetoothReader$WisecubeReader;

    invoke-direct {v5, v0}, Lcom/stripe/core/hardware/Reader$BluetoothReader$WisecubeReader;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    move-object v0, v5

    check-cast v0, Lcom/stripe/core/hardware/Reader;

    goto :goto_0

    .line 305
    :cond_2
    new-instance v5, Lcom/stripe/core/hardware/Reader$BluetoothReader$StripeM2Reader;

    invoke-direct {v5, v0}, Lcom/stripe/core/hardware/Reader$BluetoothReader$StripeM2Reader;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    move-object v0, v5

    check-cast v0, Lcom/stripe/core/hardware/Reader;

    goto :goto_0

    .line 304
    :cond_3
    new-instance v5, Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper2xReader;

    invoke-direct {v5, v0}, Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper2xReader;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    move-object v0, v5

    check-cast v0, Lcom/stripe/core/hardware/Reader;

    goto :goto_0

    .line 303
    :cond_4
    new-instance v5, Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper1xReader;

    invoke-direct {v5, v0}, Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper1xReader;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    move-object v0, v5

    check-cast v0, Lcom/stripe/core/hardware/Reader;

    :goto_0
    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    return-object v0

    .line 311
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 312
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object p1

    sget-object v5, Lcom/stripe/stripeterminal/dagger/TerminalModule$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/DeviceType;->ordinal()I

    move-result p1

    aget p1, v5, p1

    if-eq p1, v4, :cond_b

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_9

    if-eq p1, v1, :cond_8

    const/4 v1, 0x6

    if-eq p1, v1, :cond_7

    .line 318
    sget-object p1, Lcom/stripe/core/hardware/Reader$UsbReader$UnspecifiedUsbReader;->INSTANCE:Lcom/stripe/core/hardware/Reader$UsbReader$UnspecifiedUsbReader;

    check-cast p1, Lcom/stripe/core/hardware/Reader$UsbReader;

    goto :goto_2

    .line 317
    :cond_7
    new-instance p1, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3SReader;

    invoke-direct {p1, v0}, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3SReader;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast p1, Lcom/stripe/core/hardware/Reader$UsbReader;

    goto :goto_2

    .line 316
    :cond_8
    new-instance p1, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3Reader;

    invoke-direct {p1, v0}, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3Reader;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast p1, Lcom/stripe/core/hardware/Reader$UsbReader;

    goto :goto_2

    .line 315
    :cond_9
    new-instance p1, Lcom/stripe/core/hardware/Reader$UsbReader$WisecubeReader;

    invoke-direct {p1, v0}, Lcom/stripe/core/hardware/Reader$UsbReader$WisecubeReader;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast p1, Lcom/stripe/core/hardware/Reader$UsbReader;

    goto :goto_2

    .line 314
    :cond_a
    new-instance p1, Lcom/stripe/core/hardware/Reader$UsbReader$StripeM2Reader;

    invoke-direct {p1, v0}, Lcom/stripe/core/hardware/Reader$UsbReader$StripeM2Reader;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast p1, Lcom/stripe/core/hardware/Reader$UsbReader;

    goto :goto_2

    .line 313
    :cond_b
    new-instance p1, Lcom/stripe/core/hardware/Reader$UsbReader$Chipper2xReader;

    invoke-direct {p1, v0}, Lcom/stripe/core/hardware/Reader$UsbReader$Chipper2xReader;-><init>(Landroid/hardware/usb/UsbDevice;)V

    check-cast p1, Lcom/stripe/core/hardware/Reader$UsbReader;

    .line 311
    :goto_2
    check-cast p1, Lcom/stripe/core/hardware/Reader;

    return-object p1

    .line 320
    :cond_c
    sget-object p1, Lcom/stripe/core/hardware/Reader$SerialReader;->INSTANCE:Lcom/stripe/core/hardware/Reader$SerialReader;

    check-cast p1, Lcom/stripe/core/hardware/Reader;

    return-object p1

    :cond_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public final provideRemoteReaderAdapter(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;
    .locals 8
    .param p4    # Lcom/stripe/offlinemode/storage/OfflineRepository;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "statusManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyRemoteReaderController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionTokenRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlagsRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    .line 247
    new-instance v0, Lcom/stripe/stripeterminal/dagger/TerminalModule$provideRemoteReaderAdapter$1;

    invoke-direct {v0, p5}, Lcom/stripe/stripeterminal/dagger/TerminalModule$provideRemoteReaderAdapter$1;-><init>(Ljava/lang/Object;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 487
    const-class p5, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    invoke-static {p5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p5

    invoke-interface {p6, p5}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v7

    move-object v3, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 242
    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/offlinemode/storage/OfflineRepository;Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-object v1
.end method

.method public final provideSingleThreadExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 2
    .annotation runtime Lcom/stripe/jvmcore/dagger/ConnectionTokenManagement;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 295
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final provideTerminalExceptionTransformer()Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    .line 465
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;-><init>()V

    return-object v0
.end method

.method public final provideTerminalListener(Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;)Lcom/stripe/stripeterminal/external/callable/TerminalListener;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "proxyTerminalListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    check-cast p1, Lcom/stripe/stripeterminal/external/callable/TerminalListener;

    return-object p1
.end method

.method public final provideTerminalSession(Lcom/stripe/stripeterminal/internal/common/Adapter;Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;Lcom/stripe/offlinemode/OfflineReaderSetup;Lcom/stripe/offlinemode/helpers/OfflineSessionManager;Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Ljavax/inject/Provider;Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;Lcom/stripe/spos/sentry/http/ErrorReporter;Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;Lcom/stripe/time/Clock;Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/cancelintent/CancelIntentManager;Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;)Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
    .locals 50
    .param p27    # Lcom/stripe/offlinemode/storage/OfflineRepository;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
            "Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;",
            "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;",
            "Lcom/stripe/transaction/ChargeAttemptManager;",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            "Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;",
            "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
            "Lcom/stripe/offlinemode/OfflineReaderSetup;",
            "Lcom/stripe/offlinemode/helpers/OfflineSessionManager;",
            "Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;",
            "Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;",
            "Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
            ">;",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;",
            "Lcom/stripe/spos/sentry/http/ErrorReporter;",
            "Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;",
            "Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;",
            "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;",
            "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;",
            "Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope$Builder;",
            ">;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            "Lcom/stripe/cancelintent/CancelIntentManager;",
            "Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;",
            ")",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    move-object/from16 v0, p29

    move-object/from16 v1, p30

    move-object/from16 v2, p44

    const-string v3, "adapter"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "apiClient"

    move-object/from16 v5, p2

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "locationValidator"

    move-object/from16 v6, p3

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "locationHandler"

    move-object/from16 v7, p4

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "statusManager"

    move-object/from16 v8, p5

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "connectionTokenRepository"

    move-object/from16 v9, p6

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "sessionTokenRepository"

    move-object/from16 v10, p7

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "proxyResourceRepository"

    move-object/from16 v11, p8

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "chargeAttemptManager"

    move-object/from16 v12, p9

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "transactionRepository"

    move-object/from16 v13, p10

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "readerBatteryInfoPoller"

    move-object/from16 v14, p11

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "traceManager"

    move-object/from16 v15, p12

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "offlineReaderSetup"

    move-object/from16 v4, p13

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "offlineSessionManager"

    move-object/from16 v4, p14

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "tipEligibleValidator"

    move-object/from16 v4, p15

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "collectPaymentMethodOperationValidator"

    move-object/from16 v4, p16

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "featureFlagsRepository"

    move-object/from16 v4, p17

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "networkStatusProvider"

    move-object/from16 v4, p18

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "bluetoothDeviceNameRepository"

    move-object/from16 v4, p19

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "offlineDatabaseReaper"

    move-object/from16 v4, p20

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "stripeConnectivityRepository"

    move-object/from16 v4, p21

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "healthLogger"

    move-object/from16 v4, p22

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "offlineConfigHelper"

    move-object/from16 v4, p23

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "simulatorConfigurationRepository"

    move-object/from16 v4, p24

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "proxyTerminalListener"

    move-object/from16 v4, p25

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "proxyOfflineListener"

    move-object/from16 v4, p26

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "offlineRepository"

    move-object/from16 v4, p27

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "backgroundReaderActivator"

    move-object/from16 v4, p28

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "sessionTokenInterceptor"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "errorReporter"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "collectInputsExternalModelTransformer"

    move-object/from16 v0, p31

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "permissionsValidator"

    move-object/from16 v0, p32

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "offlineStatusRepository"

    move-object/from16 v0, p33

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "formsIntegrationLogger"

    move-object/from16 v0, p34

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "disconnectReasonRepository"

    move-object/from16 v0, p35

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "settingsRepository"

    move-object/from16 v0, p36

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "terminalExceptionTransformer"

    move-object/from16 v0, p37

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "collectInputsParametersTransformer"

    move-object/from16 v0, p38

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "clock"

    move-object/from16 v0, p39

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "updatePaymentIntentParamRepository"

    move-object/from16 v0, p40

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "passthroughHealthStageLogger"

    move-object/from16 v0, p41

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "passthroughHealthDiscreteLogger"

    move-object/from16 v0, p42

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "paymentIntentUpdater"

    move-object/from16 v0, p43

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "loggerFactory"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "cancelIntentManager"

    move-object/from16 v0, p45

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "ensureSingleDiscoverOperation"

    move-object/from16 v0, p46

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    const-class v3, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v3

    .line 398
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 411
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v13

    move-object/from16 v16, v0

    const-string v0, "newSingleThreadExecutor(...)"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    move-object/from16 v30, p29

    check-cast v30, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ReaderActivationListener;

    .line 434
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v4, v2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v2}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 490
    sget-object v2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v4, Lcom/stripe/stripeterminal/dagger/TerminalModule$provideTerminalSession$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v4, v2, v3, v1}, Lcom/stripe/stripeterminal/dagger/TerminalModule$provideTerminalSession$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lcom/stripe/spos/sentry/http/ErrorReporter;)V

    check-cast v4, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 493
    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    .line 434
    invoke-interface {v0, v4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 433
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v35

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v37, p34

    move-object/from16 v38, p35

    move-object/from16 v39, p36

    move-object/from16 v40, p37

    move-object/from16 v41, p38

    move-object/from16 v42, p39

    move-object/from16 v43, p40

    move-object/from16 v44, p41

    move-object/from16 v45, p42

    move-object/from16 v46, p43

    move-object/from16 v47, p44

    move-object/from16 v48, p45

    move-object/from16 v49, p46

    move-object/from16 v31, v1

    move-object/from16 v36, v3

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    move-object v11, v14

    move-object v12, v15

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v10, p10

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 398
    invoke-direct/range {v0 .. v49}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;-><init>(Lcom/stripe/stripeterminal/internal/common/Adapter;Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;Ljava/util/concurrent/ExecutorService;Lcom/stripe/offlinemode/OfflineReaderSetup;Lcom/stripe/offlinemode/helpers/OfflineSessionManager;Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Ljavax/inject/Provider;Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ReaderActivationListener;Lcom/stripe/spos/sentry/http/ErrorReporter;Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;Lcom/stripe/time/Clock;Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/cancelintent/CancelIntentManager;Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;)V

    return-object v0
.end method

.method public final provideTransactionExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 2
    .annotation runtime Lcom/stripe/jvmcore/dagger/Transaction;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 141
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final provideTransactionScheduler(Ljava/util/concurrent/ExecutorService;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1
    .param p1    # Ljava/util/concurrent/ExecutorService;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Transaction;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/Transaction;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lio/reactivex/rxjava3/schedulers/Schedulers;->from(Ljava/util/concurrent/Executor;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p1

    const-string v0, "from(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final provideUpdateDispatcher(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .param p1    # Ljava/util/concurrent/ExecutorService;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Transaction;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/Updates;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-static {p1}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p1
.end method

.method public final provideUpdatePaymentIntentParamRepository()Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 481
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultUpdatePaymentIntentParamRepository;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultUpdatePaymentIntentParamRepository;-><init>()V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;

    return-object v0
.end method

.method public final provideUpdateScheduler(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/Scheduler;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Transaction;
        .end annotation
    .end param
    .annotation runtime Lcom/stripe/jvmcore/dagger/Updates;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "scheduler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final providesDebugFlavor()Z
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/Debug;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final sentry(Landroid/content/Context;)Lcom/stripe/spos/sentry/http/ErrorReporter;
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x40

    const/4 v9, 0x0

    .line 127
    const-string v2, "https://ec696654b69f4676822d0e173e31745a@errors.stripe.com/1047"

    const-string v3, "com.stripe.stripeterminal"

    const-string v4, "4.1.0"

    const/4 v5, 0x0

    const-string v6, "publish"

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lcom/stripe/stripeterminal/internal/common/log/SentryAndroidKt;->createSentryAndroid$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/spos/sentry/http/SentryHttpClient;

    move-result-object p1

    check-cast p1, Lcom/stripe/spos/sentry/http/ErrorReporter;

    return-object p1
.end method
