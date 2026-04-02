.class public final Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "EthernetNetworkCallback.kt"

# interfaces
.implements Lcom/stripe/core/connectivity/NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/ConnectivityManager$NetworkCallback;",
        "Lcom/stripe/core/connectivity/NetworkCallback<",
        "Lcom/stripe/core/connectivity/Connection$Type$Ethernet;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEthernetNetworkCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EthernetNetworkCallback.kt\ncom/stripe/core/connectivity/ethernet/EthernetNetworkCallback\n+ 2 ConnectivityDataClasses.kt\ncom/stripe/core/connectivity/Connection$Unknown$Companion\n+ 3 ConnectivityDataClasses.kt\ncom/stripe/core/connectivity/Connection$Disconnected$Companion\n*L\n1#1,40:1\n118#2:41\n127#3:42\n127#3:43\n*S KotlinDebug\n*F\n+ 1 EthernetNetworkCallback.kt\ncom/stripe/core/connectivity/ethernet/EthernetNetworkCallback\n*L\n19#1:41\n27#1:42\n36#1:43\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0017\u001a\u00020\u0011H\u0016R\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00070\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;",
        "Lcom/stripe/core/connectivity/NetworkCallback;",
        "Lcom/stripe/core/connectivity/Connection$Type$Ethernet;",
        "Landroid/net/ConnectivityManager$NetworkCallback;",
        "()V",
        "_connectionFlow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/stripe/core/connectivity/Connection;",
        "_linkProperties",
        "Lcom/stripe/core/connectivity/NetworkLinkProperties;",
        "connectionFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getConnectionFlow",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "linkProperties",
        "getLinkProperties",
        "onAvailable",
        "",
        "network",
        "Landroid/net/Network;",
        "onLinkPropertiesChanged",
        "Landroid/net/LinkProperties;",
        "onLost",
        "onUnavailable",
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


# instance fields
.field private final _connectionFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/stripe/core/connectivity/Connection<",
            "Lcom/stripe/core/connectivity/Connection$Type$Ethernet;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _linkProperties:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/stripe/core/connectivity/NetworkLinkProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/Connection<",
            "Lcom/stripe/core/connectivity/Connection$Type$Ethernet;",
            ">;>;"
        }
    .end annotation
.end field

.field private final linkProperties:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/NetworkLinkProperties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;->_linkProperties:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 16
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;->linkProperties:Lkotlinx/coroutines/flow/StateFlow;

    .line 19
    sget-object v0, Lcom/stripe/core/connectivity/Connection$Unknown;->Companion:Lcom/stripe/core/connectivity/Connection$Unknown$Companion;

    .line 41
    new-instance v0, Lcom/stripe/core/connectivity/Connection$Unknown;

    const-class v1, Lcom/stripe/core/connectivity/Connection$Type$Ethernet;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/stripe/core/connectivity/Connection$Unknown;-><init>(Lkotlin/reflect/KClass;)V

    .line 19
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;->_connectionFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 20
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;->connectionFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public getConnectionFlow()Lkotlinx/coroutines/flow/StateFlow;
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

    .line 20
    iget-object v0, p0, Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;->connectionFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public getLinkProperties()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/NetworkLinkProperties;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;->linkProperties:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;->_connectionFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v0, Lcom/stripe/core/connectivity/Connection$Connected;

    sget-object v1, Lcom/stripe/core/connectivity/Connection$Type$Ethernet;->INSTANCE:Lcom/stripe/core/connectivity/Connection$Type$Ethernet;

    check-cast v1, Lcom/stripe/core/connectivity/Connection$Type;

    invoke-direct {v0, v1}, Lcom/stripe/core/connectivity/Connection$Connected;-><init>(Lcom/stripe/core/connectivity/Connection$Type;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "linkProperties"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;->_linkProperties:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p2}, Lcom/stripe/core/connectivity/LinkPropertiesKt;->toNetworkLinkProperties(Landroid/net/LinkProperties;)Lcom/stripe/core/connectivity/NetworkLinkProperties;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 32
    iget-object p1, p0, Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;->_connectionFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance p2, Lcom/stripe/core/connectivity/Connection$Connected;

    sget-object v0, Lcom/stripe/core/connectivity/Connection$Type$Ethernet;->INSTANCE:Lcom/stripe/core/connectivity/Connection$Type$Ethernet;

    check-cast v0, Lcom/stripe/core/connectivity/Connection$Type;

    invoke-direct {p2, v0}, Lcom/stripe/core/connectivity/Connection$Connected;-><init>(Lcom/stripe/core/connectivity/Connection$Type;)V

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;->_connectionFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/stripe/core/connectivity/Connection$Disconnected;->Companion:Lcom/stripe/core/connectivity/Connection$Disconnected$Companion;

    .line 43
    new-instance v0, Lcom/stripe/core/connectivity/Connection$Disconnected;

    const-class v1, Lcom/stripe/core/connectivity/Connection$Type$Ethernet;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/stripe/core/connectivity/Connection$Disconnected;-><init>(Lkotlin/reflect/KClass;)V

    .line 36
    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;->_linkProperties:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/stripe/core/connectivity/ethernet/EthernetNetworkCallback;->_connectionFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/stripe/core/connectivity/Connection$Disconnected;->Companion:Lcom/stripe/core/connectivity/Connection$Disconnected$Companion;

    .line 42
    new-instance v1, Lcom/stripe/core/connectivity/Connection$Disconnected;

    const-class v2, Lcom/stripe/core/connectivity/Connection$Type$Ethernet;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/stripe/core/connectivity/Connection$Disconnected;-><init>(Lkotlin/reflect/KClass;)V

    .line 27
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method
