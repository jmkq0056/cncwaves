.class public final Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvideNetworkConnectivityFlowFactory;
.super Ljava/lang/Object;
.source "NetworkConnectivityModule_ProvideNetworkConnectivityFlowFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lkotlinx/coroutines/flow/Flow<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;

.field private final networkConnectivityRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvideNetworkConnectivityFlowFactory;->module:Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;

    .line 37
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvideNetworkConnectivityFlowFactory;->networkConnectivityRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvideNetworkConnectivityFlowFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvideNetworkConnectivityFlowFactory;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvideNetworkConnectivityFlowFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvideNetworkConnectivityFlowFactory;-><init>(Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideNetworkConnectivityFlow(Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;)Lkotlinx/coroutines/flow/Flow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;->provideNetworkConnectivityFlow(Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvideNetworkConnectivityFlowFactory;->get()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public get()Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvideNetworkConnectivityFlowFactory;->module:Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvideNetworkConnectivityFlowFactory;->networkConnectivityRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvideNetworkConnectivityFlowFactory;->provideNetworkConnectivityFlow(Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method
