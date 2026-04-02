.class public interface abstract Lcom/stripe/core/connectivity/ConnectivityRepository;
.super Ljava/lang/Object;
.source "ConnectivityRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/connectivity/ConnectivityRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000 ,2\u00020\u0001:\u0001,J\u0018\u0010 \u001a\u00020!2\u0008\u0008\u0002\u0010\"\u001a\u00020\u001aH\u00a6@\u00a2\u0006\u0002\u0010#J\u0008\u0010$\u001a\u00020%H&J\u0016\u0010&\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010(H&J\u0018\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010*0\u00032\u0006\u0010\'\u001a\u00020(H&J\u0008\u0010+\u001a\u00020!H&R\u001e\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0018\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00040\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0007R\u0018\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0007R\u0018\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0010R\u0012\u0010\u0019\u001a\u00020\u001aX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u001e\u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u00040\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0007\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006-\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/ConnectivityRepository;",
        "",
        "cellularConnectionFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lcom/stripe/core/connectivity/Connection;",
        "Lcom/stripe/core/connectivity/Connection$Type$Cellular;",
        "getCellularConnectionFlow",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "connectedWifiConfiguration",
        "Landroid/net/wifi/WifiConfiguration;",
        "getConnectedWifiConfiguration",
        "()Landroid/net/wifi/WifiConfiguration;",
        "defaultDnsServers",
        "",
        "Ljava/net/Inet4Address;",
        "getDefaultDnsServers",
        "()Ljava/util/List;",
        "ethernetConnectionFlow",
        "Lcom/stripe/core/connectivity/Connection$Type$Ethernet;",
        "getEthernetConnectionFlow",
        "generalConnectivityStatusFlow",
        "Lcom/stripe/core/connectivity/ConnectivityStatus;",
        "getGeneralConnectivityStatusFlow",
        "recommendedDnsServers",
        "getRecommendedDnsServers",
        "routerMacAddress",
        "",
        "getRouterMacAddress",
        "()Ljava/lang/String;",
        "wifiConnectionFlow",
        "Lcom/stripe/core/connectivity/Connection$Type$Wifi;",
        "getWifiConnectionFlow",
        "canResolveDns",
        "",
        "localIpAddress",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "disconnectAndRemoveSavedConfigurations",
        "",
        "getIpAddress",
        "connectivityType",
        "Lcom/stripe/core/connectivity/ConnectivityType;",
        "getNetworkLinkPropertiesFlow",
        "Lcom/stripe/core/connectivity/NetworkLinkProperties;",
        "hasConfiguredWifiNetworks",
        "Companion",
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
.field public static final Companion:Lcom/stripe/core/connectivity/ConnectivityRepository$Companion;

.field public static final UNKNOWN_SSID:Ljava/lang/String; = "<unknown ssid>"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/stripe/core/connectivity/ConnectivityRepository$Companion;->$$INSTANCE:Lcom/stripe/core/connectivity/ConnectivityRepository$Companion;

    sput-object v0, Lcom/stripe/core/connectivity/ConnectivityRepository;->Companion:Lcom/stripe/core/connectivity/ConnectivityRepository$Companion;

    return-void
.end method

.method public static synthetic canResolveDns$default(Lcom/stripe/core/connectivity/ConnectivityRepository;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 81
    const-string p1, "192.168.0.1"

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/stripe/core/connectivity/ConnectivityRepository;->canResolveDns(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: canResolveDns"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getIpAddress$default(Lcom/stripe/core/connectivity/ConnectivityRepository;Lcom/stripe/core/connectivity/ConnectivityType;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 69
    :cond_0
    invoke-interface {p0, p1}, Lcom/stripe/core/connectivity/ConnectivityRepository;->getIpAddress(Lcom/stripe/core/connectivity/ConnectivityType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getIpAddress"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract canResolveDns(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract disconnectAndRemoveSavedConfigurations()V
.end method

.method public abstract getCellularConnectionFlow()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/Connection<",
            "Lcom/stripe/core/connectivity/Connection$Type$Cellular;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getConnectedWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
.end method

.method public abstract getDefaultDnsServers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEthernetConnectionFlow()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/Connection<",
            "Lcom/stripe/core/connectivity/Connection$Type$Ethernet;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getGeneralConnectivityStatusFlow()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/ConnectivityStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIpAddress(Lcom/stripe/core/connectivity/ConnectivityType;)Ljava/lang/String;
.end method

.method public abstract getNetworkLinkPropertiesFlow(Lcom/stripe/core/connectivity/ConnectivityType;)Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/connectivity/ConnectivityType;",
            ")",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/NetworkLinkProperties;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecommendedDnsServers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRouterMacAddress()Ljava/lang/String;
.end method

.method public abstract getWifiConnectionFlow()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/Connection<",
            "Lcom/stripe/core/connectivity/Connection$Type$Wifi;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract hasConfiguredWifiNetworks()Z
.end method
