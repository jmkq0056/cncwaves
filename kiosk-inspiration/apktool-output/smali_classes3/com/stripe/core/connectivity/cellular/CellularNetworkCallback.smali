.class public final Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CellularNetworkCallback.kt"

# interfaces
.implements Lcom/stripe/core/connectivity/NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/ConnectivityManager$NetworkCallback;",
        "Lcom/stripe/core/connectivity/NetworkCallback<",
        "Lcom/stripe/core/connectivity/Connection$Type$Cellular;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCellularNetworkCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CellularNetworkCallback.kt\ncom/stripe/core/connectivity/cellular/CellularNetworkCallback\n+ 2 ConnectivityDataClasses.kt\ncom/stripe/core/connectivity/Connection$Unknown$Companion\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ConnectivityDataClasses.kt\ncom/stripe/core/connectivity/Connection$Disconnected$Companion\n*L\n1#1,88:1\n118#2:89\n1#3:90\n127#4:91\n127#4:92\n*S KotlinDebug\n*F\n+ 1 CellularNetworkCallback.kt\ncom/stripe/core/connectivity/cellular/CellularNetworkCallback\n*L\n32#1:89\n81#1:91\n84#1:92\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000f\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0002\u00a2\u0006\u0002\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0015\u001a\u00020\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010 \u001a\u00020\u0018H\u0016J\u0008\u0010!\u001a\u00020\u0018H\u0002J\u0008\u0010\"\u001a\u00020\u0018H\u0003J\u0014\u0010#\u001a\u00020\u00182\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0010H\u0002R\u001a\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u000b0\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;",
        "Lcom/stripe/core/connectivity/NetworkCallback;",
        "Lcom/stripe/core/connectivity/Connection$Type$Cellular;",
        "Landroid/net/ConnectivityManager$NetworkCallback;",
        "telephonyManager",
        "Landroid/telephony/TelephonyManager;",
        "appScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Landroid/telephony/TelephonyManager;Lkotlinx/coroutines/CoroutineScope;)V",
        "_connectionFlow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/stripe/core/connectivity/Connection;",
        "_linkProperties",
        "Lcom/stripe/core/connectivity/NetworkLinkProperties;",
        "cellularStrengthJob",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Lkotlinx/coroutines/Job;",
        "connectionFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getConnectionFlow",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "linkProperties",
        "getLinkProperties",
        "cancelCellularStrengthJob",
        "",
        "()Lkotlin/Unit;",
        "onAvailable",
        "network",
        "Landroid/net/Network;",
        "onLinkPropertiesChanged",
        "Landroid/net/LinkProperties;",
        "onLost",
        "onUnavailable",
        "startCellularStrengthJob",
        "updateCellularConnectionFlow",
        "updateCellularStrengthJob",
        "newJob",
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
            "Lcom/stripe/core/connectivity/Connection$Type$Cellular;",
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

.field private final cellularStrengthJob:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lkotlinx/coroutines/Job;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/core/connectivity/Connection<",
            "Lcom/stripe/core/connectivity/Connection$Type$Cellular;",
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

.field private final telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .param p2    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/AppScope;
        .end annotation
    .end param

    const-string v0, "telephonyManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 26
    iput-object p2, p0, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->appScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x0

    .line 28
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->_linkProperties:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 29
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->linkProperties:Lkotlinx/coroutines/flow/StateFlow;

    .line 32
    sget-object p2, Lcom/stripe/core/connectivity/Connection$Unknown;->Companion:Lcom/stripe/core/connectivity/Connection$Unknown$Companion;

    .line 89
    new-instance p2, Lcom/stripe/core/connectivity/Connection$Unknown;

    const-class v0, Lcom/stripe/core/connectivity/Connection$Type$Cellular;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/stripe/core/connectivity/Connection$Unknown;-><init>(Lkotlin/reflect/KClass;)V

    .line 32
    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->_connectionFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 33
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->connectionFlow:Lkotlinx/coroutines/flow/StateFlow;

    .line 35
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->cellularStrengthJob:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static final synthetic access$updateCellularConnectionFlow(Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->updateCellularConnectionFlow()V

    return-void
.end method

.method private final cancelCellularStrengthJob()Lkotlin/Unit;
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->cellularStrengthJob:Ljava/util/concurrent/atomic/AtomicReference;

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

.method private final startCellularStrengthJob()V
    .locals 7

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->updateCellularStrengthJob(Lkotlinx/coroutines/Job;)V

    .line 62
    iget-object v1, p0, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->appScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback$startCellularStrengthJob$1;

    invoke-direct {v2, p0, v0}, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback$startCellularStrengthJob$1;-><init>(Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 67
    invoke-direct {p0, v0}, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->updateCellularStrengthJob(Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method private final updateCellularConnectionFlow()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->_connectionFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v1, p0, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 79
    iget-object v1, p0, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    .line 80
    new-instance v2, Lcom/stripe/core/connectivity/Connection$Connected;

    new-instance v3, Lcom/stripe/core/connectivity/Connection$Type$Cellular;

    invoke-direct {v3, v1}, Lcom/stripe/core/connectivity/Connection$Type$Cellular;-><init>(I)V

    check-cast v3, Lcom/stripe/core/connectivity/Connection$Type;

    invoke-direct {v2, v3}, Lcom/stripe/core/connectivity/Connection$Connected;-><init>(Lcom/stripe/core/connectivity/Connection$Type;)V

    .line 79
    check-cast v2, Lcom/stripe/core/connectivity/Connection;

    goto :goto_0

    .line 81
    :cond_0
    sget-object v1, Lcom/stripe/core/connectivity/Connection$Disconnected;->Companion:Lcom/stripe/core/connectivity/Connection$Disconnected$Companion;

    .line 91
    new-instance v1, Lcom/stripe/core/connectivity/Connection$Disconnected;

    const-class v2, Lcom/stripe/core/connectivity/Connection$Type$Cellular;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/stripe/core/connectivity/Connection$Disconnected;-><init>(Lkotlin/reflect/KClass;)V

    move-object v2, v1

    check-cast v2, Lcom/stripe/core/connectivity/Connection;

    goto :goto_0

    .line 84
    :cond_1
    sget-object v1, Lcom/stripe/core/connectivity/Connection$Disconnected;->Companion:Lcom/stripe/core/connectivity/Connection$Disconnected$Companion;

    .line 92
    new-instance v1, Lcom/stripe/core/connectivity/Connection$Disconnected;

    const-class v2, Lcom/stripe/core/connectivity/Connection$Type$Cellular;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/stripe/core/connectivity/Connection$Disconnected;-><init>(Lkotlin/reflect/KClass;)V

    move-object v2, v1

    check-cast v2, Lcom/stripe/core/connectivity/Connection;

    .line 77
    :goto_0
    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final updateCellularStrengthJob(Lkotlinx/coroutines/Job;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->cellularStrengthJob:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic updateCellularStrengthJob$default(Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;Lkotlinx/coroutines/Job;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 70
    :cond_0
    invoke-direct {p0, p1}, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->updateCellularStrengthJob(Lkotlinx/coroutines/Job;)V

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
            "Lcom/stripe/core/connectivity/Connection$Type$Cellular;",
            ">;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->connectionFlow:Lkotlinx/coroutines/flow/StateFlow;

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

    .line 29
    iget-object v0, p0, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->linkProperties:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->startCellularStrengthJob()V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "linkProperties"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->_linkProperties:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p2}, Lcom/stripe/core/connectivity/LinkPropertiesKt;->toNetworkLinkProperties(Landroid/net/LinkProperties;)Lcom/stripe/core/connectivity/NetworkLinkProperties;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->updateCellularConnectionFlow()V

    .line 52
    invoke-direct {p0}, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->cancelCellularStrengthJob()Lkotlin/Unit;

    .line 54
    iget-object p1, p0, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->_linkProperties:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->updateCellularConnectionFlow()V

    .line 43
    invoke-direct {p0}, Lcom/stripe/core/connectivity/cellular/CellularNetworkCallback;->cancelCellularStrengthJob()Lkotlin/Unit;

    return-void
.end method
