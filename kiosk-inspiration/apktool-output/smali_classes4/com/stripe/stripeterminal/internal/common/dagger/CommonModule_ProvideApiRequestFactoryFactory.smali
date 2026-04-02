.class public final Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;
.super Ljava/lang/Object;
.source "CommonModule_ProvideApiRequestFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final locationHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
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

.field private final module:Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;

.field private final paymentIntentRestApiFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final posInfoFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final refundRestApiRequestFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;",
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

.field private final setupIntentRestApiFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;",
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
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->module:Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;

    .line 68
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->posInfoFactoryProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->locationHandlerProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->statusManagerProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->settingsRepositoryProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    .line 73
    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->setupIntentRestApiFactoryProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p8, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->paymentIntentRestApiFactoryProvider:Ljavax/inject/Provider;

    .line 75
    iput-object p9, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->refundRestApiRequestFactoryProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p10, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;-><init>(Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideApiRequestFactory(Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;
    .locals 0

    .line 104
    invoke-virtual/range {p0 .. p9}, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;->provideApiRequestFactory(Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;
    .locals 10

    .line 81
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->module:Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->posInfoFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->locationHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->statusManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->settingsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/core/transaction/SettingsRepository;

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/core/transaction/TransactionRepository;

    iget-object v6, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->setupIntentRestApiFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;

    iget-object v7, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->paymentIntentRestApiFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;

    iget-object v8, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->refundRestApiRequestFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;

    iget-object v9, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static/range {v0 .. v9}, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->provideApiRequestFactory(Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/jvmcore/terminal/api/PosInfoFactory;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvideApiRequestFactoryFactory;->get()Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    move-result-object v0

    return-object v0
.end method
