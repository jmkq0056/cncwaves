.class public final Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;
.super Ljava/lang/Object;
.source "ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/connectivity/ConnectivityRepository;",
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

.field private final cellularNetworkCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final connectivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final coroutineDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final ethernetNetworkCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;",
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

.field private final wifiNetworkCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/net/wifi/WifiManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;->appScopeProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p2, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;->connectivityManagerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p3, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;->wifiManagerProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p4, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;->coroutineDispatcherProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p5, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;->wifiNetworkCallbackProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p6, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;->ethernetNetworkCallbackProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p7, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;->cellularNetworkCallbackProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/net/wifi/WifiManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;",
            ">;)",
            "Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesConnectivityRepository$connectivity_release(Lkotlinx/coroutines/CoroutineScope;Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;)Lcom/stripe/core/connectivity/ConnectivityRepository;
    .locals 8

    .line 90
    sget-object v0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule;->INSTANCE:Lcom/stripe/core/connectivity/dagger/ConnectivityModule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/stripe/core/connectivity/dagger/ConnectivityModule;->providesConnectivityRepository$connectivity_release(Lkotlinx/coroutines/CoroutineScope;Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;)Lcom/stripe/core/connectivity/ConnectivityRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/connectivity/ConnectivityRepository;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/connectivity/ConnectivityRepository;
    .locals 8

    .line 71
    iget-object v0, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;->appScopeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;->connectivityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;->wifiManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;->coroutineDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v0, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;->wifiNetworkCallbackProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;

    iget-object v0, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;->ethernetNetworkCallbackProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;

    iget-object v0, p0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;->cellularNetworkCallbackProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;

    invoke-static/range {v1 .. v7}, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;->providesConnectivityRepository$connectivity_release(Lkotlinx/coroutines/CoroutineScope;Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;)Lcom/stripe/core/connectivity/ConnectivityRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/stripe/core/connectivity/dagger/ConnectivityModule_ProvidesConnectivityRepository$connectivity_releaseFactory;->get()Lcom/stripe/core/connectivity/ConnectivityRepository;

    move-result-object v0

    return-object v0
.end method
