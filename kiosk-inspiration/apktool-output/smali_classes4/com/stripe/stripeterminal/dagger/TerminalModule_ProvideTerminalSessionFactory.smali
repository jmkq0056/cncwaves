.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;
.super Ljava/lang/Object;
.source "TerminalModule_ProvideTerminalSessionFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
            ">;"
        }
    .end annotation
.end field

.field private final apiClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundReaderActivatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;",
            ">;"
        }
    .end annotation
.end field

.field private final bluetoothDeviceNameRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final cancelIntentManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/cancelintent/CancelIntentManager;",
            ">;"
        }
    .end annotation
.end field

.field private final chargeAttemptManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/transaction/ChargeAttemptManager;",
            ">;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final collectInputsExternalModelTransformerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;",
            ">;"
        }
    .end annotation
.end field

.field private final collectInputsParametersTransformerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;",
            ">;"
        }
    .end annotation
.end field

.field private final collectPaymentMethodOperationValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionTokenRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final disconnectReasonRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final ensureSingleDiscoverOperationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final errorReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/spos/sentry/http/ErrorReporter;",
            ">;"
        }
    .end annotation
.end field

.field private final featureFlagsRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final formsIntegrationLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final healthLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final locationHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final locationValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

.field private final networkStatusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineConfigHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineDatabaseReaperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineReaderSetupProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/OfflineReaderSetup;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineSessionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineSessionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineStatusRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final passthroughHealthDiscreteLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final passthroughHealthStageLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final paymentIntentUpdaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
            ">;"
        }
    .end annotation
.end field

.field private final permissionsValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final proxyOfflineListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
            ">;"
        }
    .end annotation
.end field

.field private final proxyResourceRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final proxyTerminalListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;",
            ">;"
        }
    .end annotation
.end field

.field private final readerBatteryInfoPollerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionTokenInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionTokenRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final simulatorConfigurationRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final statusManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;"
        }
    .end annotation
.end field

.field private final stripeConnectivityRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final terminalExceptionTransformerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;",
            ">;"
        }
    .end annotation
.end field

.field private final tipEligibleValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final traceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final transactionRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final updatePaymentIntentParamRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/transaction/ChargeAttemptManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/OfflineReaderSetup;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineSessionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/spos/sentry/http/ErrorReporter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/cancelintent/CancelIntentManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;",
            ">;)V"
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    .line 218
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->adapterProvider:Ljavax/inject/Provider;

    .line 219
    iput-object p3, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->apiClientProvider:Ljavax/inject/Provider;

    .line 220
    iput-object p4, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->locationValidatorProvider:Ljavax/inject/Provider;

    .line 221
    iput-object p5, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->locationHandlerProvider:Ljavax/inject/Provider;

    .line 222
    iput-object p6, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->statusManagerProvider:Ljavax/inject/Provider;

    .line 223
    iput-object p7, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->connectionTokenRepositoryProvider:Ljavax/inject/Provider;

    .line 224
    iput-object p8, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->sessionTokenRepositoryProvider:Ljavax/inject/Provider;

    .line 225
    iput-object p9, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->proxyResourceRepositoryProvider:Ljavax/inject/Provider;

    .line 226
    iput-object p10, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->chargeAttemptManagerProvider:Ljavax/inject/Provider;

    .line 227
    iput-object p11, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    .line 228
    iput-object p12, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->readerBatteryInfoPollerProvider:Ljavax/inject/Provider;

    .line 229
    iput-object p13, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->traceManagerProvider:Ljavax/inject/Provider;

    .line 230
    iput-object p14, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->offlineReaderSetupProvider:Ljavax/inject/Provider;

    .line 231
    iput-object p15, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->offlineSessionManagerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p16

    .line 232
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->tipEligibleValidatorProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p17

    .line 233
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->collectPaymentMethodOperationValidatorProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p18

    .line 234
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p19

    .line 235
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->networkStatusProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p20

    .line 236
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->bluetoothDeviceNameRepositoryProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p21

    .line 237
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->offlineDatabaseReaperProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p22

    .line 238
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->stripeConnectivityRepositoryProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p23

    .line 239
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->healthLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p24

    .line 240
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->offlineConfigHelperProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p25

    .line 241
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->simulatorConfigurationRepositoryProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p26

    .line 242
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->proxyTerminalListenerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p27

    .line 243
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->proxyOfflineListenerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p28

    .line 244
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->offlineRepositoryProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p29

    .line 245
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->backgroundReaderActivatorProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p30

    .line 246
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->sessionTokenInterceptorProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p31

    .line 247
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->errorReporterProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p32

    .line 248
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->collectInputsExternalModelTransformerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p33

    .line 249
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->permissionsValidatorProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p34

    .line 250
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->offlineStatusRepositoryProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p35

    .line 251
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->formsIntegrationLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p36

    .line 252
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->disconnectReasonRepositoryProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p37

    .line 253
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->settingsRepositoryProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p38

    .line 254
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->terminalExceptionTransformerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p39

    .line 255
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->collectInputsParametersTransformerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p40

    .line 256
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->clockProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p41

    .line 257
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->updatePaymentIntentParamRepositoryProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p42

    .line 258
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->passthroughHealthStageLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p43

    .line 259
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->passthroughHealthDiscreteLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p44

    .line 260
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->paymentIntentUpdaterProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p45

    .line 261
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p46

    .line 262
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->cancelIntentManagerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, p47

    .line 263
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->ensureSingleDiscoverOperationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/transaction/ChargeAttemptManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/OfflineReaderSetup;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineSessionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/spos/sentry/http/ErrorReporter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/StageScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/PassthroughDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/passthrough/DiscreteScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/cancelintent/CancelIntentManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;"
        }
    .end annotation

    .line 317
    new-instance v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

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

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v35, p34

    move-object/from16 v36, p35

    move-object/from16 v37, p36

    move-object/from16 v38, p37

    move-object/from16 v39, p38

    move-object/from16 v40, p39

    move-object/from16 v41, p40

    move-object/from16 v42, p41

    move-object/from16 v43, p42

    move-object/from16 v44, p43

    move-object/from16 v45, p44

    move-object/from16 v46, p45

    move-object/from16 v47, p46

    invoke-direct/range {v0 .. v47}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;-><init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTerminalSession(Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/stripeterminal/internal/common/Adapter;Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;Lcom/stripe/offlinemode/OfflineReaderSetup;Lcom/stripe/offlinemode/helpers/OfflineSessionManager;Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Ljavax/inject/Provider;Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;Lcom/stripe/spos/sentry/http/ErrorReporter;Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;Lcom/stripe/time/Clock;Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/cancelintent/CancelIntentManager;Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;)Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
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

    .line 352
    invoke-virtual/range {p0 .. p46}, Lcom/stripe/stripeterminal/dagger/TerminalModule;->provideTerminalSession(Lcom/stripe/stripeterminal/internal/common/Adapter;Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;Lcom/stripe/offlinemode/OfflineReaderSetup;Lcom/stripe/offlinemode/helpers/OfflineSessionManager;Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Ljavax/inject/Provider;Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;Lcom/stripe/spos/sentry/http/ErrorReporter;Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;Lcom/stripe/time/Clock;Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/cancelintent/CancelIntentManager;Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;)Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
    .locals 49

    move-object/from16 v0, p0

    .line 268
    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    iget-object v2, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->adapterProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/Adapter;

    iget-object v3, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->apiClientProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    iget-object v4, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->locationValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;

    iget-object v5, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->locationHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    iget-object v6, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->statusManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    iget-object v7, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->connectionTokenRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

    iget-object v8, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->sessionTokenRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    iget-object v9, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->proxyResourceRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

    iget-object v10, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->chargeAttemptManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/stripe/transaction/ChargeAttemptManager;

    iget-object v11, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/stripe/core/transaction/TransactionRepository;

    iget-object v12, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->readerBatteryInfoPollerProvider:Ljavax/inject/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;

    iget-object v13, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->traceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

    iget-object v14, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->offlineReaderSetupProvider:Ljavax/inject/Provider;

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/stripe/offlinemode/OfflineReaderSetup;

    iget-object v15, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->offlineSessionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/stripe/offlinemode/helpers/OfflineSessionManager;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->tipEligibleValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->collectPaymentMethodOperationValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->networkStatusProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->bluetoothDeviceNameRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->offlineDatabaseReaperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->stripeConnectivityRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->healthLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/logging/HealthLogger;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->offlineConfigHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->simulatorConfigurationRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->proxyTerminalListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->proxyOfflineListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->offlineRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/offlinemode/storage/OfflineRepository;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->backgroundReaderActivatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->sessionTokenInterceptorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->errorReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/spos/sentry/http/ErrorReporter;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->collectInputsExternalModelTransformerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->permissionsValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->offlineStatusRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;

    move-object/from16 v35, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->formsIntegrationLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;

    move-object/from16 v36, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->disconnectReasonRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    move-object/from16 v37, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->settingsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/transaction/SettingsRepository;

    move-object/from16 v38, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->terminalExceptionTransformerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;

    move-object/from16 v39, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->collectInputsParametersTransformerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;

    move-object/from16 v40, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/time/Clock;

    move-object/from16 v41, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->updatePaymentIntentParamRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;

    move-object/from16 v42, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->passthroughHealthStageLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/logging/HealthLogger;

    move-object/from16 v43, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->passthroughHealthDiscreteLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/logging/HealthLogger;

    move-object/from16 v44, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->paymentIntentUpdaterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;

    move-object/from16 v45, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    move-object/from16 v46, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->cancelIntentManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/cancelintent/CancelIntentManager;

    move-object/from16 v47, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->ensureSingleDiscoverOperationProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;

    move-object/from16 v48, v47

    move-object/from16 v47, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v35

    move-object/from16 v35, v36

    move-object/from16 v36, v37

    move-object/from16 v37, v38

    move-object/from16 v38, v39

    move-object/from16 v39, v40

    move-object/from16 v40, v41

    move-object/from16 v41, v42

    move-object/from16 v42, v43

    move-object/from16 v43, v44

    move-object/from16 v44, v45

    move-object/from16 v45, v46

    move-object/from16 v46, v48

    invoke-static/range {v1 .. v47}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->provideTerminalSession(Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/stripeterminal/internal/common/Adapter;Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;Lcom/stripe/offlinemode/OfflineReaderSetup;Lcom/stripe/offlinemode/helpers/OfflineSessionManager;Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Ljavax/inject/Provider;Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;Lcom/stripe/spos/sentry/http/ErrorReporter;Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;Lcom/stripe/time/Clock;Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/cancelintent/CancelIntentManager;Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;)Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideTerminalSessionFactory;->get()Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    move-result-object v0

    return-object v0
.end method
