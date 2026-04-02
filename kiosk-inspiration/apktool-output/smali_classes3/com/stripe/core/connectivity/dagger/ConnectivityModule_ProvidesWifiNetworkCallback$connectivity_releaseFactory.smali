.class public final Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesWifiNetworkCallback$connectivity_releaseFactory;
.super Ljava/lang/Object;
.source "ConnectivityModule_ProvidesWifiNetworkCallback$connectivity_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final appScopeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;"
        }
    .end annotation
.end field

.field private final wifiManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/wifi/WifiManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/net/wifi/WifiManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesWifiNetworkCallback$connectivity_releaseFactory;->wifiManagerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesWifiNetworkCallback$connectivity_releaseFactory;->appScopeProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesWifiNetworkCallback$connectivity_releaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/net/wifi/WifiManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;)",
            "Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesWifiNetworkCallback$connectivity_releaseFactory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesWifiNetworkCallback$connectivity_releaseFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesWifiNetworkCallback$connectivity_releaseFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesWifiNetworkCallback$connectivity_release(Landroid/net/wifi/WifiManager;Lkotlinx/coroutines/CoroutineScope;)Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;
    .locals 1

    .line 52
    sget-object v0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule;->INSTANCE:Lcom/stripe/core/connectivity/dagger/ConnectivityModule;

    invoke-virtual {v0, p0, p1}, Lcom/stripe/core/connectivity/dagger/ConnectivityModule;->providesWifiNetworkCallback$connectivity_release(Landroid/net/wifi/WifiManager;Lkotlinx/coroutines/CoroutineScope;)Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesWifiNetworkCallback$connectivity_releaseFactory;->wifiManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesWifiNetworkCallback$connectivity_releaseFactory;->appScopeProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1}, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesWifiNetworkCallback$connectivity_releaseFactory;->providesWifiNetworkCallback$connectivity_release(Landroid/net/wifi/WifiManager;Lkotlinx/coroutines/CoroutineScope;)Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesWifiNetworkCallback$connectivity_releaseFactory;->get()Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;

    move-result-object v0

    return-object v0
.end method
