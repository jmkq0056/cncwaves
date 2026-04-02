.class public final Lcom/stripe/core/connectivity/dagger/ConnectivityModule;
.super Ljava/lang/Object;
.source "ConnectivityModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0001\u00a2\u0006\u0002\u0008\tJI\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0004H\u0001\u00a2\u0006\u0002\u0008\u0017J\r\u0010\u0018\u001a\u00020\u0015H\u0001\u00a2\u0006\u0002\u0008\u0019J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000bH\u0007J\u001f\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0001\u00a2\u0006\u0002\u0008\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/dagger/ConnectivityModule;",
        "",
        "()V",
        "providesCellularNetworkCallback",
        "Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;",
        "telephonyManager",
        "Landroid/telephony/TelephonyManager;",
        "appScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "providesCellularNetworkCallback$connectivity_release",
        "providesConnectivityRepository",
        "Lcom/stripe/core/connectivity/ConnectivityRepository;",
        "connectivityManager",
        "Landroid/net/ConnectivityManager;",
        "wifiManager",
        "Landroid/net/wifi/WifiManager;",
        "coroutineDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "wifiNetworkCallback",
        "Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;",
        "ethernetNetworkCallback",
        "Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;",
        "cellularNetworkCallback",
        "providesConnectivityRepository$connectivity_release",
        "providesEthernetNetworkCallback",
        "providesEthernetNetworkCallback$connectivity_release",
        "providesIsNetworkAvailable",
        "",
        "connectivityRepository",
        "providesWifiNetworkCallback",
        "providesWifiNetworkCallback$connectivity_release",
        "connectivity_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/core/connectivity/dagger/ConnectivityModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule;

    invoke-direct {v0}, Lcom/stripe/core/connectivity/dagger/ConnectivityModule;-><init>()V

    sput-object v0, Lcom/stripe/core/connectivity/dagger/ConnectivityModule;->INSTANCE:Lcom/stripe/core/connectivity/dagger/ConnectivityModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final providesCellularNetworkCallback$connectivity_release(Landroid/telephony/TelephonyManager;Lkotlinx/coroutines/CoroutineScope;)Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;
    .locals 1
    .param p2    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/AppScope;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "telephonyManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;-><init>(Landroid/telephony/TelephonyManager;Lkotlinx/coroutines/CoroutineScope;)V

    return-object v0
.end method

.method public final providesConnectivityRepository$connectivity_release(Lkotlinx/coroutines/CoroutineScope;Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;)Lcom/stripe/core/connectivity/ConnectivityRepository;
    .locals 9
    .param p1    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/AppScope;
        .end annotation
    .end param
    .param p4    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "appScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wifiManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineDispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wifiNetworkCallback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ethernetNetworkCallback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellularNetworkCallback"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v1, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;

    .line 41
    move-object v8, p4

    check-cast v8, Lkotlin/coroutines/CoroutineContext;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 34
    invoke-direct/range {v1 .. v8}, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;Lkotlin/coroutines/CoroutineContext;)V

    check-cast v1, Lcom/stripe/core/connectivity/ConnectivityRepository;

    return-object v1
.end method

.method public final providesEthernetNetworkCallback$connectivity_release()Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 60
    new-instance v0, Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;

    invoke-direct {v0}, Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;-><init>()V

    return-object v0
.end method

.method public final providesIsNetworkAvailable(Lcom/stripe/core/connectivity/ConnectivityRepository;)Z
    .locals 1
    .annotation runtime Lcom/stripe/jvmcore/dagger/IsNetworkAvailable;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "connectivityRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-interface {p1}, Lcom/stripe/core/connectivity/ConnectivityRepository;->getGeneralConnectivityStatusFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/stripe/core/connectivity/ConnectivityStatus;->AVAILABLE:Lcom/stripe/core/connectivity/ConnectivityStatus;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final providesWifiNetworkCallback$connectivity_release(Landroid/net/wifi/WifiManager;Lkotlinx/coroutines/CoroutineScope;)Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;
    .locals 1
    .param p2    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/AppScope;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "wifiManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;-><init>(Landroid/net/wifi/WifiManager;Lkotlinx/coroutines/CoroutineScope;)V

    return-object v0
.end method
