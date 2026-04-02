.class public final Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesIsNetworkAvailableFactory;
.super Ljava/lang/Object;
.source "ConnectivityModule_ProvidesIsNetworkAvailableFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectivityRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/connectivity/ConnectivityRepository;",
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
            "Lcom/stripe/core/connectivity/ConnectivityRepository;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesIsNetworkAvailableFactory;->connectivityRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesIsNetworkAvailableFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/connectivity/ConnectivityRepository;",
            ">;)",
            "Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesIsNetworkAvailableFactory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesIsNetworkAvailableFactory;

    invoke-direct {v0, p0}, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesIsNetworkAvailableFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesIsNetworkAvailable(Lcom/stripe/core/connectivity/ConnectivityRepository;)Z
    .locals 1

    .line 45
    sget-object v0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule;->INSTANCE:Lcom/stripe/core/connectivity/dagger/ConnectivityModule;

    invoke-virtual {v0, p0}, Lcom/stripe/core/connectivity/dagger/ConnectivityModule;->providesIsNetworkAvailable(Lcom/stripe/core/connectivity/ConnectivityRepository;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesIsNetworkAvailableFactory;->connectivityRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/connectivity/ConnectivityRepository;

    invoke-static {v0}, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesIsNetworkAvailableFactory;->providesIsNetworkAvailable(Lcom/stripe/core/connectivity/ConnectivityRepository;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesIsNetworkAvailableFactory;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
