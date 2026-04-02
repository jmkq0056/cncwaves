.class public final Lcom/stripe/core/transaction/dagger/CoreTransactionModule_ProvideAuthenticatedRestClientFactory;
.super Ljava/lang/Object;
.source "CoreTransactionModule_ProvideAuthenticatedRestClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final baseFilesRestClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;"
        }
    .end annotation
.end field

.field private final baseRestClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
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

.field private final userAgentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
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
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/stripe/core/transaction/dagger/CoreTransactionModule_ProvideAuthenticatedRestClientFactory;->baseRestClientProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p2, p0, Lcom/stripe/core/transaction/dagger/CoreTransactionModule_ProvideAuthenticatedRestClientFactory;->userAgentProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p3, p0, Lcom/stripe/core/transaction/dagger/CoreTransactionModule_ProvideAuthenticatedRestClientFactory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p4, p0, Lcom/stripe/core/transaction/dagger/CoreTransactionModule_ProvideAuthenticatedRestClientFactory;->baseFilesRestClientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/transaction/dagger/CoreTransactionModule_ProvideAuthenticatedRestClientFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;)",
            "Lcom/stripe/core/transaction/dagger/CoreTransactionModule_ProvideAuthenticatedRestClientFactory;"
        }
    .end annotation

    .line 63
    new-instance v0, Lcom/stripe/core/transaction/dagger/CoreTransactionModule_ProvideAuthenticatedRestClientFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/core/transaction/dagger/CoreTransactionModule_ProvideAuthenticatedRestClientFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideAuthenticatedRestClient(Ldagger/Lazy;Lcom/stripe/jvmcore/environment/UserAgentProvider;Lcom/stripe/core/transaction/TransactionRepository;Ldagger/Lazy;)Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;",
            "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            "Ldagger/Lazy<",
            "Lcom/stripe/jvmcore/restclient/RestClient;",
            ">;)",
            "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;"
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/stripe/core/transaction/dagger/CoreTransactionModule;->INSTANCE:Lcom/stripe/core/transaction/dagger/CoreTransactionModule;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/stripe/core/transaction/dagger/CoreTransactionModule;->provideAuthenticatedRestClient(Ldagger/Lazy;Lcom/stripe/jvmcore/environment/UserAgentProvider;Lcom/stripe/core/transaction/TransactionRepository;Ldagger/Lazy;)Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/stripe/core/transaction/dagger/CoreTransactionModule_ProvideAuthenticatedRestClientFactory;->baseRestClientProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/transaction/dagger/CoreTransactionModule_ProvideAuthenticatedRestClientFactory;->userAgentProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/environment/UserAgentProvider;

    iget-object v2, p0, Lcom/stripe/core/transaction/dagger/CoreTransactionModule_ProvideAuthenticatedRestClientFactory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/core/transaction/TransactionRepository;

    iget-object v3, p0, Lcom/stripe/core/transaction/dagger/CoreTransactionModule_ProvideAuthenticatedRestClientFactory;->baseFilesRestClientProvider:Ljavax/inject/Provider;

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/core/transaction/dagger/CoreTransactionModule_ProvideAuthenticatedRestClientFactory;->provideAuthenticatedRestClient(Ldagger/Lazy;Lcom/stripe/jvmcore/environment/UserAgentProvider;Lcom/stripe/core/transaction/TransactionRepository;Ldagger/Lazy;)Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/stripe/core/transaction/dagger/CoreTransactionModule_ProvideAuthenticatedRestClientFactory;->get()Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    move-result-object v0

    return-object v0
.end method
