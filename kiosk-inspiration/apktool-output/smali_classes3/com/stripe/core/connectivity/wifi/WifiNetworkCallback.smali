.class public final Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiNetworkCallback.kt"

# interfaces
.implements Lcom/stripe/core/connectivity/NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/ConnectivityManager$NetworkCallback;",
        "Lcom/stripe/core/connectivity/NetworkCallback<",
        "Lcom/stripe/core/connectivity/Connection$Type$Wifi;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWifiNetworkCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WifiNetworkCallback.kt\ncom/stripe/core/connectivity/wifi/WifiNetworkCallback\n+ 2 ConnectivityDataClasses.kt\ncom/stripe/core/connectivity/Connection$Unknown$Companion\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ConnectivityDataClasses.kt\ncom/stripe/core/connectivity/Connection$Disconnected$Companion\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,110:1\n118#2:111\n1#3:112\n127#4:113\n288#5,2:114\n*S KotlinDebug\n*F\n+ 1 WifiNetworkCallback.kt\ncom/stripe/core/connectivity/wifi/WifiNetworkCallback\n*L\n34#1:111\n85#1:113\n88#1:114,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 %2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001%B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000f\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0002\u00a2\u0006\u0002\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0012\u001a\u00020\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010 \u001a\u00020\u0018H\u0016J\u0008\u0010!\u001a\u00020\u0018H\u0002J\u0008\u0010\"\u001a\u00020\u0018H\u0003J\u0014\u0010#\u001a\u00020\u00182\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0016H\u0002R\u001a\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000b0\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;",
        "Lcom/stripe/core/connectivity/NetworkCallback;",
        "Lcom/stripe/core/connectivity/Connection$Type$Wifi;",
        "Landroid/net/ConnectivityManager$NetworkCallback;",
        "wifiManager",
        "Landroid/net/wifi/WifiManager;",
        "appScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Landroid/net/wifi/WifiManager;Lkotlinx/coroutines/CoroutineScope;)V",
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
        "wifiStrengthJob",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Lkotlinx/coroutines/Job;",
        "cancelWifiStrengthJob",
        "",
        "()Lkotlin/Unit;",
        "onAvailable",
        "network",
        "Landroid/net/Network;",
        "onLinkPropertiesChanged",
        "Landroid/net/LinkProperties;",
        "onLost",
        "onUnavailable",
        "startWifiStrengthJob",
        "updateWifiConnectionFlow",
        "updateWifiStrengthJob",
        "newJob",
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
.field public static final Companion:Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback$Companion;

.field public static final NUM_RSSI_LEVELS:I = 0x5


# instance fields
.field private final _connectionFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/stripe/core/connectivity/Connection<",
            "Lcom/stripe/core/connectivity/Connection$Type$Wifi;",
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

.field private final appScope:Lkotlinx/coroutines/CoroutineScope;

.field private final connectionFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/Connection<",
            "Lcom/stripe/core/connectivity/Connection$Type$Wifi;",
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

.field private final wifiManager:Landroid/net/wifi/WifiManager;

.field private final wifiStrengthJob:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lkotlinx/coroutines/Job;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->Companion:Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .param p2    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/AppScope;
        .end annotation
    .end param

    const-string v0, "wifiManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 29
    iput-object p2, p0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->appScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x0

    .line 31
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->_linkProperties:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 32
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->linkProperties:Lkotlinx/coroutines/flow/StateFlow;

    .line 34
    sget-object p2, Lcom/stripe/core/connectivity/Connection$Unknown;->Companion:Lcom/stripe/core/connectivity/Connection$Unknown$Companion;

    .line 111
    new-instance p2, Lcom/stripe/core/connectivity/Connection$Unknown;

    const-class v0, Lcom/stripe/core/connectivity/Connection$Type$Wifi;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/stripe/core/connectivity/Connection$Unknown;-><init>(Lkotlin/reflect/KClass;)V

    .line 34
    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->_connectionFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 35
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->connectionFlow:Lkotlinx/coroutines/flow/StateFlow;

    .line 37
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->wifiStrengthJob:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static final synthetic access$updateWifiConnectionFlow(Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->updateWifiConnectionFlow()V

    return-void
.end method

.method private final cancelWifiStrengthJob()Lkotlin/Unit;
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->wifiStrengthJob:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_0
    return-object v1
.end method

.method private final startWifiStrengthJob()V
    .locals 7

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0}, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->updateWifiStrengthJob(Lkotlinx/coroutines/Job;)V

    .line 64
    iget-object v1, p0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->appScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback$startWifiStrengthJob$1;

    invoke-direct {v2, p0, v0}, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback$startWifiStrengthJob$1;-><init>(Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 69
    invoke-direct {p0, v0}, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->updateWifiStrengthJob(Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method private final updateWifiConnectionFlow()V
    .locals 17

    move-object/from16 v0, p0

    .line 83
    iget-object v1, v0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 84
    iget-object v2, v0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->_connectionFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v3, "<unknown ssid>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    sget-object v1, Lcom/stripe/core/connectivity/Connection$Disconnected;->Companion:Lcom/stripe/core/connectivity/Connection$Disconnected$Companion;

    .line 113
    new-instance v1, Lcom/stripe/core/connectivity/Connection$Disconnected;

    const-class v3, Lcom/stripe/core/connectivity/Connection$Type$Wifi;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/stripe/core/connectivity/Connection$Disconnected;-><init>(Lkotlin/reflect/KClass;)V

    check-cast v1, Lcom/stripe/core/connectivity/Connection;

    goto/16 :goto_1

    .line 87
    :cond_0
    iget-object v3, v0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 88
    iget-object v4, v0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    const-string v5, "getScanResults(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    .line 114
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 89
    iget-object v7, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v8, "SSID"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/stripe/strings/StringsExtKt;->removeSurroundingDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/stripe/strings/StringsExtKt;->removeSurroundingDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_2
    move-object v5, v6

    .line 88
    :goto_0
    check-cast v5, Landroid/net/wifi/ScanResult;

    if-eqz v5, :cond_3

    iget-object v6, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    :cond_3
    if-nez v6, :cond_4

    .line 90
    const-string v6, ""

    :cond_4
    move-object v13, v6

    .line 92
    sget-object v4, Lcom/stripe/core/connectivity/wifi/WifiSecurity;->Companion:Lcom/stripe/core/connectivity/wifi/WifiSecurity$Companion;

    invoke-virtual {v4, v13}, Lcom/stripe/core/connectivity/wifi/WifiSecurity$Companion;->fromCapabilities(Ljava/lang/String;)Lcom/stripe/core/connectivity/wifi/WifiSecurity;

    move-result-object v12

    .line 94
    new-instance v7, Lcom/stripe/core/connectivity/Connection$Type$Wifi;

    .line 95
    new-instance v8, Lcom/stripe/core/connectivity/WifiSSID;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v8, v1}, Lcom/stripe/core/connectivity/WifiSSID;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v9

    .line 97
    iget-object v1, v0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    const/4 v3, 0x5

    invoke-static {v1, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v10

    const/16 v15, 0x40

    const/16 v16, 0x0

    const/4 v11, 0x5

    const/4 v14, 0x0

    .line 94
    invoke-direct/range {v7 .. v16}, Lcom/stripe/core/connectivity/Connection$Type$Wifi;-><init>(Lcom/stripe/core/connectivity/WifiSSID;IIILcom/stripe/core/connectivity/wifi/WifiSecurity;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    new-instance v1, Lcom/stripe/core/connectivity/Connection$Connected;

    check-cast v7, Lcom/stripe/core/connectivity/Connection$Type;

    invoke-direct {v1, v7}, Lcom/stripe/core/connectivity/Connection$Connected;-><init>(Lcom/stripe/core/connectivity/Connection$Type;)V

    check-cast v1, Lcom/stripe/core/connectivity/Connection;

    .line 84
    :goto_1
    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final updateWifiStrengthJob(Lkotlinx/coroutines/Job;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->wifiStrengthJob:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic updateWifiStrengthJob$default(Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;Lkotlinx/coroutines/Job;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->updateWifiStrengthJob(Lkotlinx/coroutines/Job;)V

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
            "Lcom/stripe/core/connectivity/Connection$Type$Wifi;",
            ">;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->connectionFlow:Lkotlinx/coroutines/flow/StateFlow;

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

    .line 32
    iget-object v0, p0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->linkProperties:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->startWifiStrengthJob()V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "linkProperties"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->_linkProperties:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p2}, Lcom/stripe/core/connectivity/LinkPropertiesKt;->toNetworkLinkProperties(Landroid/net/LinkProperties;)Lcom/stripe/core/connectivity/NetworkLinkProperties;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->updateWifiConnectionFlow()V

    .line 56
    invoke-direct {p0}, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->cancelWifiStrengthJob()Lkotlin/Unit;

    .line 59
    iget-object p1, p0, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->_linkProperties:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->updateWifiConnectionFlow()V

    .line 46
    invoke-direct {p0}, Lcom/stripe/core/connectivity/wifi/WifiNetworkCallback;->cancelWifiStrengthJob()Lkotlin/Unit;

    return-void
.end method
