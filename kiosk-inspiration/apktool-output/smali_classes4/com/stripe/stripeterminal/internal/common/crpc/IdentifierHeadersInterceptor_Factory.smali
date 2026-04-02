.class public final Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor_Factory;
.super Ljava/lang/Object;
.source "IdentifierHeadersInterceptor_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final tokenProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor_Factory;->tokenProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor_Factory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor_Factory;->userAgentProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/environment/UserAgentProvider;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor_Factory;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/jvmcore/environment/UserAgentProvider;)Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;
    .locals 1

    .line 57
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;-><init>(Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/jvmcore/environment/UserAgentProvider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor_Factory;->tokenProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor_Factory;->transactionRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/transaction/TransactionRepository;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor_Factory;->userAgentProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/environment/UserAgentProvider;

    invoke-static {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor_Factory;->newInstance(Lcom/stripe/jvmcore/crpcclient/interfaces/RpcSessionTokenProvider;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/jvmcore/environment/UserAgentProvider;)Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor_Factory;->get()Lcom/stripe/stripeterminal/internal/common/crpc/IdentifierHeadersInterceptor;

    move-result-object v0

    return-object v0
.end method
