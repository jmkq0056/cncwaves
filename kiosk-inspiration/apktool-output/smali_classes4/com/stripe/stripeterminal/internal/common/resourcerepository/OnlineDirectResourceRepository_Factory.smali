.class public final Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;
.super Ljava/lang/Object;
.source "OnlineDirectResourceRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final apiClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private final apiRequestFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
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

.field private final connectionTokenRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final dispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
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

.field private final logWriterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
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

.field private final offlineConfigHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineDiscreteLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
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

.field private final statusManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/transaction/ChargeAttemptManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->apiClientProvider:Ljavax/inject/Provider;

    .line 80
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->chargeAttemptManagerProvider:Ljavax/inject/Provider;

    .line 81
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->statusManagerProvider:Ljavax/inject/Provider;

    .line 82
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    .line 83
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->connectionTokenRepositoryProvider:Ljavax/inject/Provider;

    .line 84
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->apiRequestFactoryProvider:Ljavax/inject/Provider;

    .line 85
    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->offlineConfigHelperProvider:Ljavax/inject/Provider;

    .line 86
    iput-object p8, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->offlineDiscreteLoggerProvider:Ljavax/inject/Provider;

    .line 87
    iput-object p9, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->logWriterProvider:Ljavax/inject/Provider;

    .line 88
    iput-object p10, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->dispatcherProvider:Ljavax/inject/Provider;

    .line 89
    iput-object p11, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    .line 90
    iput-object p12, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->paymentIntentUpdaterProvider:Ljavax/inject/Provider;

    .line 91
    iput-object p13, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/transaction/ChargeAttemptManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;"
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;

    move-object v1, p0

    move-object v2, p1

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

    invoke-direct/range {v0 .. v13}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/logwriter/LogWriter;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
            "Lcom/stripe/transaction/ChargeAttemptManager;",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/logwriter/LogWriter;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;"
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-object v1, p0

    move-object v2, p1

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

    invoke-direct/range {v0 .. v13}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;-><init>(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/logwriter/LogWriter;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;
    .locals 14

    .line 96
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->apiClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->chargeAttemptManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/transaction/ChargeAttemptManager;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->statusManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/core/transaction/TransactionRepository;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->connectionTokenRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->apiRequestFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->offlineConfigHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->offlineDiscreteLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/stripe/jvmcore/logging/HealthLogger;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/stripe/logwriter/LogWriter;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->dispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->paymentIntentUpdaterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static/range {v1 .. v13}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->newInstance(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/logwriter/LogWriter;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository_Factory;->get()Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    move-result-object v0

    return-object v0
.end method
