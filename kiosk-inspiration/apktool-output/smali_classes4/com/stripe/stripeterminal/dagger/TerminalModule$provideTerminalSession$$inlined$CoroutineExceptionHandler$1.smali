.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule$provideTerminalSession$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/dagger/TerminalModule;->provideTerminalSession(Lcom/stripe/stripeterminal/internal/common/Adapter;Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/polling/ReaderBatteryInfoPoller;Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;Lcom/stripe/offlinemode/OfflineReaderSetup;Lcom/stripe/offlinemode/helpers/OfflineSessionManager;Lcom/stripe/stripeterminal/internal/common/validators/TipEligibleValidator;Lcom/stripe/stripeterminal/internal/common/validators/CollectPaymentMethodOperationValidator;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Ljavax/inject/Provider;Lcom/stripe/stripeterminal/internal/common/storage/BluetoothDeviceNameRepository;Lcom/stripe/offlinemode/helpers/OfflineDatabaseReaper;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;Lcom/stripe/spos/sentry/http/ErrorReporter;Lcom/stripe/jvmcore/forms/transform/CollectInputsExternalModelTransformer;Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;Lcom/stripe/jvmcore/forms/logger/FormsIntegrationLogger;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/stripeterminal/internal/common/terminalsession/transform/TerminalExceptionTransformer;Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;Lcom/stripe/time/Clock;Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/cancelintent/CancelIntentManager;Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;)Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 TerminalModule.kt\ncom/stripe/stripeterminal/dagger/TerminalModule\n*L\n1#1,106:1\n435#2,3:107\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u00012\u00020\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1",
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "handleException",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "exception",
        "",
        "kotlinx-coroutines-core"
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
.field final synthetic $errorReporter$inlined:Lcom/stripe/spos/sentry/http/ErrorReporter;

.field final synthetic $logger$inlined:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lcom/stripe/spos/sentry/http/ErrorReporter;)V
    .locals 0

    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule$provideTerminalSession$$inlined$CoroutineExceptionHandler$1;->$logger$inlined:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    iput-object p3, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule$provideTerminalSession$$inlined$CoroutineExceptionHandler$1;->$errorReporter$inlined:Lcom/stripe/spos/sentry/http/ErrorReporter;

    .line 44
    check-cast p1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-direct {p0, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 3

    .line 107
    iget-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule$provideTerminalSession$$inlined$CoroutineExceptionHandler$1;->$logger$inlined:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v0, 0x0

    new-array v1, v0, [Lkotlin/Pair;

    const-string v2, "Unhandled Exception in coroutine"

    invoke-interface {p1, v2, p2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 108
    iget-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule$provideTerminalSession$$inlined$CoroutineExceptionHandler$1;->$errorReporter$inlined:Lcom/stripe/spos/sentry/http/ErrorReporter;

    invoke-interface {p1, p2, v0}, Lcom/stripe/spos/sentry/http/ErrorReporter;->blockingReportError-gIAlu-s(Ljava/lang/Throwable;Z)Ljava/lang/Object;

    return-void
.end method
