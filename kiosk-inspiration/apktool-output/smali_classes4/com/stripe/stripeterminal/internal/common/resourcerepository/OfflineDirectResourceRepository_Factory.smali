.class public final Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;
.super Ljava/lang/Object;
.source "OfflineDirectResourceRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final apiRequestFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final authenticatedRestClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;",
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

.field private final customHeadersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;",
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

.field private final offlineEventHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/OfflineEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final offlinePaymentMethodValidatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineRequestHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/OfflineEventHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/transaction/ChargeAttemptManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;",
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
            "Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->apiRequestFactoryProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    .line 75
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->offlineEventHandlerProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->statusManagerProvider:Ljavax/inject/Provider;

    .line 77
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->offlineRequestHelperProvider:Ljavax/inject/Provider;

    .line 78
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->customHeadersProvider:Ljavax/inject/Provider;

    .line 79
    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->chargeAttemptManagerProvider:Ljavax/inject/Provider;

    .line 80
    iput-object p8, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->authenticatedRestClientProvider:Ljavax/inject/Provider;

    .line 81
    iput-object p9, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->offlineConfigHelperProvider:Ljavax/inject/Provider;

    .line 82
    iput-object p10, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->offlineDiscreteLoggerProvider:Ljavax/inject/Provider;

    .line 83
    iput-object p11, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->offlinePaymentMethodValidatorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/OfflineEventHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/transaction/ChargeAttemptManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;",
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
            "Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/offlinemode/OfflineEventHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            "Lcom/stripe/offlinemode/OfflineEventHandler;",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;",
            "Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;",
            "Lcom/stripe/transaction/ChargeAttemptManager;",
            "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;",
            ")",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;"
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;-><init>(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/offlinemode/OfflineEventHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;
    .locals 12

    .line 88
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->apiRequestFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/core/transaction/TransactionRepository;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->offlineEventHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/offlinemode/OfflineEventHandler;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->statusManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->offlineRequestHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->customHeadersProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->chargeAttemptManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/transaction/ChargeAttemptManager;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->authenticatedRestClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->offlineConfigHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->offlineDiscreteLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/stripe/jvmcore/logging/HealthLogger;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->offlinePaymentMethodValidatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;

    invoke-static/range {v1 .. v11}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->newInstance(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/offlinemode/OfflineEventHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;Lcom/stripe/jvmcore/restclient/CustomHeadersProvider;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/helpers/OfflinePaymentMethodValidator;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository_Factory;->get()Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    move-result-object v0

    return-object v0
.end method
