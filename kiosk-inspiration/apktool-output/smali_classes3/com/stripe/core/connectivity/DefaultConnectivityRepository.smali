.class public final Lcom/stripe/core/connectivity/DefaultConnectivityRepository;
.super Ljava/lang/Object;
.source "ConnectivityRepository.kt"

# interfaces
.implements Lcom/stripe/core/connectivity/ConnectivityRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/connectivity/DefaultConnectivityRepository$Companion;,
        Lcom/stripe/core/connectivity/DefaultConnectivityRepository$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectivityRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectivityRepository.kt\ncom/stripe/core/connectivity/DefaultConnectivityRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,249:1\n288#2,2:250\n1855#2,2:253\n1#3:252\n12474#4,2:255\n12271#4,2:257\n*S KotlinDebug\n*F\n+ 1 ConnectivityRepository.kt\ncom/stripe/core/connectivity/DefaultConnectivityRepository\n*L\n135#1:250,2\n228#1:253,2\n238#1:255,2\n239#1:257,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 @2\u00020\u0001:\u0001@B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u0016\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020)H\u0096@\u00a2\u0006\u0002\u00102J)\u00103\u001a\u00020$2\u001a\u00104\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u001305\"\u0006\u0012\u0002\u0008\u00030\u0013H\u0002\u00a2\u0006\u0002\u00106J\u0008\u00107\u001a\u000208H\u0017J\u0014\u00109\u001a\u0004\u0018\u00010)2\u0008\u0010:\u001a\u0004\u0018\u00010;H\u0017J\u0018\u0010<\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010=0\u00122\u0006\u0010:\u001a\u00020;H\u0016J\u0008\u0010>\u001a\u000200H\u0017J\u0008\u0010?\u001a\u000208H\u0003R \u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u00130\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00188WX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR \u0010 \u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0\u00130\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010#\u001a\u0008\u0012\u0004\u0012\u00020$0\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0016R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u001fR\u0014\u0010(\u001a\u00020)8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R \u0010,\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020-0\u00130\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006A"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/DefaultConnectivityRepository;",
        "Lcom/stripe/core/connectivity/ConnectivityRepository;",
        "appScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "connectivityManager",
        "Landroid/net/ConnectivityManager;",
        "wifiManager",
        "Landroid/net/wifi/WifiManager;",
        "wifiNetworkCallback",
        "Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;",
        "ethernetNetworkCallback",
        "Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;",
        "cellularNetworkCallback",
        "Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;",
        "io",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Lkotlinx/coroutines/CoroutineScope;Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;Lkotlin/coroutines/CoroutineContext;)V",
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
        "connectionDataTransformer",
        "connections",
        "",
        "([Lcom/stripe/core/connectivity/Connection;)Lcom/stripe/core/connectivity/ConnectivityStatus;",
        "disconnectAndRemoveSavedConfigurations",
        "",
        "getIpAddress",
        "connectivityType",
        "Lcom/stripe/core/connectivity/ConnectivityType;",
        "getNetworkLinkPropertiesFlow",
        "Lcom/stripe/core/connectivity/NetworkLinkProperties;",
        "hasConfiguredWifiNetworks",
        "listenForConnectivityChanges",
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
.field public static final Companion:Lcom/stripe/core/connectivity/DefaultConnectivityRepository$Companion;

.field private static final DEVICE_DOMAIN_NAME_SUFFIX:Ljava/lang/String; = "device.stripe-terminal-local-reader.net"


# instance fields
.field private final cellularConnectionFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/Connection<",
            "Lcom/stripe/core/connectivity/Connection$Type$Cellular;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cellularNetworkCallback:Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final ethernetConnectionFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/Connection<",
            "Lcom/stripe/core/connectivity/Connection$Type$Ethernet;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ethernetNetworkCallback:Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;

.field private final generalConnectivityStatusFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/ConnectivityStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final io:Lkotlin/coroutines/CoroutineContext;

.field private final wifiConnectionFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/Connection<",
            "Lcom/stripe/core/connectivity/Connection$Type$Wifi;",
            ">;>;"
        }
    .end annotation
.end field

.field private final wifiManager:Landroid/net/wifi/WifiManager;

.field private final wifiNetworkCallback:Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/connectivity/DefaultConnectivityRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->Companion:Lcom/stripe/core/connectivity/DefaultConnectivityRepository$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "appScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wifiManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wifiNetworkCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ethernetNetworkCallback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellularNetworkCallback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "io"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 107
    iput-object p3, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 108
    iput-object p4, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->wifiNetworkCallback:Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;

    .line 109
    iput-object p5, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->ethernetNetworkCallback:Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;

    .line 110
    iput-object p6, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->cellularNetworkCallback:Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;

    .line 111
    iput-object p7, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->io:Lkotlin/coroutines/CoroutineContext;

    .line 122
    invoke-virtual {p4}, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->getConnectionFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->wifiConnectionFlow:Lkotlinx/coroutines/flow/StateFlow;

    .line 124
    invoke-virtual {p5}, Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;->getConnectionFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->ethernetConnectionFlow:Lkotlinx/coroutines/flow/StateFlow;

    .line 126
    invoke-virtual {p6}, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->getConnectionFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->cellularConnectionFlow:Lkotlinx/coroutines/flow/StateFlow;

    .line 159
    invoke-virtual {p0}, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->getWifiConnectionFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {p0}, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->getEthernetConnectionFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p3

    check-cast p3, Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {p0}, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->getCellularConnectionFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p4

    check-cast p4, Lkotlinx/coroutines/flow/Flow;

    new-instance p5, Lcom/stripe/core/connectivity/DefaultConnectivityRepository$generalConnectivityStatusFlow$1;

    const/4 p6, 0x0

    invoke-direct {p5, p0, p6}, Lcom/stripe/core/connectivity/DefaultConnectivityRepository$generalConnectivityStatusFlow$1;-><init>(Lcom/stripe/core/connectivity/DefaultConnectivityRepository;Lkotlin/coroutines/Continuation;)V

    check-cast p5, Lkotlin/jvm/functions/Function5;

    invoke-static {p2, p3, p4, p5}, Lkotlinx/coroutines/flow/FlowKt;->combineTransform(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    .line 161
    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->getEagerly()Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object p3

    sget-object p4, Lcom/stripe/core/connectivity/ConnectivityStatus;->UNKNOWN:Lcom/stripe/core/connectivity/ConnectivityStatus;

    invoke-static {p2, p1, p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->generalConnectivityStatusFlow:Lkotlinx/coroutines/flow/StateFlow;

    .line 164
    invoke-direct {p0}, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->listenForConnectivityChanges()V

    return-void
.end method

.method public static final varargs synthetic access$connectionDataTransformer(Lcom/stripe/core/connectivity/DefaultConnectivityRepository;[Lcom/stripe/core/connectivity/Connection;)Lcom/stripe/core/connectivity/ConnectivityStatus;
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->connectionDataTransformer([Lcom/stripe/core/connectivity/Connection;)Lcom/stripe/core/connectivity/ConnectivityStatus;

    move-result-object p0

    return-object p0
.end method

.method private final varargs connectionDataTransformer([Lcom/stripe/core/connectivity/Connection;)Lcom/stripe/core/connectivity/ConnectivityStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/stripe/core/connectivity/Connection<",
            "*>;)",
            "Lcom/stripe/core/connectivity/ConnectivityStatus;"
        }
    .end annotation

    .line 255
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 238
    instance-of v3, v3, Lcom/stripe/core/connectivity/Connection$Connected;

    if-eqz v3, :cond_0

    sget-object p1, Lcom/stripe/core/connectivity/ConnectivityStatus;->AVAILABLE:Lcom/stripe/core/connectivity/ConnectivityStatus;

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    :cond_1
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 239
    instance-of v2, v2, Lcom/stripe/core/connectivity/Connection$Unknown;

    if-nez v2, :cond_2

    .line 240
    sget-object p1, Lcom/stripe/core/connectivity/ConnectivityStatus;->UNAVAILABLE:Lcom/stripe/core/connectivity/ConnectivityStatus;

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    :cond_3
    sget-object p1, Lcom/stripe/core/connectivity/ConnectivityStatus;->UNKNOWN:Lcom/stripe/core/connectivity/ConnectivityStatus;

    return-object p1
.end method

.method private final listenForConnectivityChanges()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 170
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x1

    .line 171
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->wifiNetworkCallback:Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 175
    iget-object v0, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 176
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x3

    .line 177
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->ethernetNetworkCallback:Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 181
    iget-object v0, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 182
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x0

    .line 183
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 185
    iget-object v2, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->cellularNetworkCallback:Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 181
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method


# virtual methods
.method public canResolveDns(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    .line 207
    iget-object v0, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->io:Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/core/connectivity/DefaultConnectivityRepository$canResolveDns$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/stripe/core/connectivity/DefaultConnectivityRepository$canResolveDns$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public disconnectAndRemoveSavedConfigurations()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 228
    iget-object v0, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    .line 253
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 229
    iget-object v2, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->wifiManager:Landroid/net/wifi/WifiManager;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCellularConnectionFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/Connection<",
            "Lcom/stripe/core/connectivity/Connection$Type$Cellular;",
            ">;>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->cellularConnectionFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public getConnectedWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    const-string v1, "getConfiguredNetworks(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 250
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 136
    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 251
    :goto_0
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    return-object v1
.end method

.method public getDefaultDnsServers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 154
    new-array v0, v0, [Ljava/net/Inet4Address;

    sget-object v1, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->INSTANCE:Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;

    const-string v2, "8.8.8.8"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    const-string v3, "getByName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->ipv4orNull(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 155
    sget-object v1, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->INSTANCE:Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;

    const-string v2, "8.8.4.4"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->ipv4orNull(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 153
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEthernetConnectionFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/Connection<",
            "Lcom/stripe/core/connectivity/Connection$Type$Ethernet;",
            ">;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->ethernetConnectionFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public getGeneralConnectivityStatusFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/ConnectivityStatus;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->generalConnectivityStatusFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public getIpAddress(Lcom/stripe/core/connectivity/ConnectivityType;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p0, p1}, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->getNetworkLinkPropertiesFlow(Lcom/stripe/core/connectivity/ConnectivityType;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/connectivity/NetworkLinkProperties;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/stripe/core/connectivity/NetworkLinkProperties;->getIpAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0

    .line 200
    :cond_1
    invoke-static {}, Lcom/stripe/core/connectivity/ConnectivityType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/connectivity/ConnectivityType;

    invoke-virtual {p0, v1}, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->getNetworkLinkPropertiesFlow(Lcom/stripe/core/connectivity/ConnectivityType;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/connectivity/NetworkLinkProperties;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/core/connectivity/NetworkLinkProperties;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    return-object v1

    :cond_4
    return-object v0
.end method

.method public getNetworkLinkPropertiesFlow(Lcom/stripe/core/connectivity/ConnectivityType;)Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
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

    const-string v0, "connectivityType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/core/connectivity/ConnectivityType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 117
    iget-object p1, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->wifiNetworkCallback:Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;

    invoke-virtual {p1}, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->getLinkProperties()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->ethernetNetworkCallback:Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;

    invoke-virtual {p1}, Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;->getLinkProperties()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    return-object p1

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->cellularNetworkCallback:Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;

    invoke-virtual {p1}, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->getLinkProperties()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    return-object p1
.end method

.method public getRecommendedDnsServers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 144
    new-array v0, v0, [Ljava/net/Inet4Address;

    sget-object v1, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->INSTANCE:Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;

    const-string v2, "1.1.1.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    const-string v3, "getByName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->ipv4orNull(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 145
    sget-object v1, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->INSTANCE:Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;

    const-string v2, "1.0.0.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/stripe/core/connectivity/wifi/WifiConfigurationUtilities;->ipv4orNull(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 143
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRouterMacAddress()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getWifiConnectionFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/Connection<",
            "Lcom/stripe/core/connectivity/Connection$Type$Wifi;",
            ">;>;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->wifiConnectionFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public hasConfiguredWifiNetworks()Z
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/stripe/core/connectivity/DefaultConnectivityRepository;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    const-string v1, "getConfiguredNetworks(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
