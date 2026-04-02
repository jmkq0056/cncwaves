.class public final Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideStripeNetworkStatusFactory;
.super Ljava/lang/Object;
.source "OfflineConnectivityModule_Companion_ProvideStripeNetworkStatusFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        ">;"
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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideStripeNetworkStatusFactory;->stripeConnectivityRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideStripeNetworkStatusFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideStripeNetworkStatusFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideStripeNetworkStatusFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideStripeNetworkStatusFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideStripeNetworkStatus(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;)Lcom/stripe/stripeterminal/external/models/NetworkStatus;
    .locals 1

    .line 48
    sget-object v0, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule;->Companion:Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule$Companion;->provideStripeNetworkStatus(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;)Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/external/models/NetworkStatus;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideStripeNetworkStatusFactory;->stripeConnectivityRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideStripeNetworkStatusFactory;->provideStripeNetworkStatus(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;)Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/OfflineConnectivityModule_Companion_ProvideStripeNetworkStatusFactory;->get()Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    move-result-object v0

    return-object v0
.end method
