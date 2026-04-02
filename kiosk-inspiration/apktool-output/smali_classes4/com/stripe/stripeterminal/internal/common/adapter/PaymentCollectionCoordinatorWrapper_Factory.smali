.class public final Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper_Factory;
.super Ljava/lang/Object;
.source "PaymentCollectionCoordinatorWrapper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentCollectionCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper_Factory;->paymentCollectionCoordinatorProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper_Factory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper_Factory;->settingsRepositoryProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper_Factory;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;
    .locals 1

    .line 66
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper_Factory;->paymentCollectionCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper_Factory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/transaction/TransactionRepository;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper_Factory;->settingsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/core/transaction/SettingsRepository;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper_Factory;->newInstance(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper_Factory;->get()Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    move-result-object v0

    return-object v0
.end method
