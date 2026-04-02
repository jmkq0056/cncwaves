.class public final Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvidesNetworkConnectivityRepositoryFactory;
.super Ljava/lang/Object;
.source "NetworkConnectivityModule_ProvidesNetworkConnectivityRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final defaultNetworkConnectivityRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvidesNetworkConnectivityRepositoryFactory;->module:Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;

    .line 37
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvidesNetworkConnectivityRepositoryFactory;->defaultNetworkConnectivityRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvidesNetworkConnectivityRepositoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvidesNetworkConnectivityRepositoryFactory;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvidesNetworkConnectivityRepositoryFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvidesNetworkConnectivityRepositoryFactory;-><init>(Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesNetworkConnectivityRepository(Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;)Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;->providesNetworkConnectivityRepository(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;)Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvidesNetworkConnectivityRepositoryFactory;->module:Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvidesNetworkConnectivityRepositoryFactory;->defaultNetworkConnectivityRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvidesNetworkConnectivityRepositoryFactory;->providesNetworkConnectivityRepository(Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule;Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;)Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/dagger/NetworkConnectivityModule_ProvidesNetworkConnectivityRepositoryFactory;->get()Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;

    move-result-object v0

    return-object v0
.end method
