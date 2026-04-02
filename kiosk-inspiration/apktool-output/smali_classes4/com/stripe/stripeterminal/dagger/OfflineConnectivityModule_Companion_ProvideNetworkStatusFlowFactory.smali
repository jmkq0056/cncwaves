.class public final Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideNetworkStatusFlowFactory;
.super Ljava/lang/Object;
.source "OfflineConnectivityModule_Companion_ProvideNetworkStatusFlowFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lkotlinx/coroutines/flow/Flow<",
        "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final stripeConnectivityRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideNetworkStatusFlowFactory;->stripeConnectivityRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideNetworkStatusFlowFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideNetworkStatusFlowFactory;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideNetworkStatusFlowFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideNetworkStatusFlowFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideNetworkStatusFlow(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule;->Companion:Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion;->provideNetworkStatusFlow(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideNetworkStatusFlowFactory;->get()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public get()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideNetworkStatusFlowFactory;->stripeConnectivityRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideNetworkStatusFlowFactory;->provideNetworkStatusFlow(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method
