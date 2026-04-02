.class public final Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvidePaymentIntentUpdaterFactory;
.super Ljava/lang/Object;
.source "CommonModule_ProvidePaymentIntentUpdaterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
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

.field private final module:Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;

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
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvidePaymentIntentUpdaterFactory;->module:Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;

    .line 47
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvidePaymentIntentUpdaterFactory;->apiClientProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvidePaymentIntentUpdaterFactory;->statusManagerProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvidePaymentIntentUpdaterFactory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvidePaymentIntentUpdaterFactory;->apiRequestFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvidePaymentIntentUpdaterFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvidePaymentIntentUpdaterFactory;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvidePaymentIntentUpdaterFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvidePaymentIntentUpdaterFactory;-><init>(Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providePaymentIntentUpdater(Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;)Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;->providePaymentIntentUpdater(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;)Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvidePaymentIntentUpdaterFactory;->module:Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvidePaymentIntentUpdaterFactory;->apiClientProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvidePaymentIntentUpdaterFactory;->statusManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvidePaymentIntentUpdaterFactory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/core/transaction/TransactionRepository;

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvidePaymentIntentUpdaterFactory;->apiRequestFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvidePaymentIntentUpdaterFactory;->providePaymentIntentUpdater(Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule;Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;)Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/dagger/CommonModule_ProvidePaymentIntentUpdaterFactory;->get()Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;

    move-result-object v0

    return-object v0
.end method
