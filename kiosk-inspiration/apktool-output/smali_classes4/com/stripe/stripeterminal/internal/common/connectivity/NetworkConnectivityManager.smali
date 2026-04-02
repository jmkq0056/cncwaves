.class public final Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;
.super Ljava/lang/Object;
.source "NetworkConnectivityManager.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\nJ\u0008\u0010\u000e\u001a\u00020\u000cH\u0002J\u000e\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\nJ\u0008\u0010\u0010\u001a\u00020\u000cH\u0002R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;",
        "",
        "connectivityManager",
        "Landroid/net/ConnectivityManager;",
        "(Landroid/net/ConnectivityManager;)V",
        "callbackDelegate",
        "com/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager$callbackDelegate$1",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager$callbackDelegate$1;",
        "networkCallbacks",
        "",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityCallback;",
        "registerNetworkCallback",
        "",
        "callback",
        "registerNetworkCallbacks",
        "unregisterNetworkCallback",
        "unregisterNetworkCallbacks",
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
.field private final callbackDelegate:Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager$callbackDelegate$1;

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final networkCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "connectivityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;->networkCallbacks:Ljava/util/List;

    .line 19
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager$callbackDelegate$1;

    invoke-direct {p1, p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager$callbackDelegate$1;-><init>(Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;)V

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;->callbackDelegate:Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager$callbackDelegate$1;

    return-void
.end method

.method public static final synthetic access$getNetworkCallbacks$p(Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;)Ljava/util/List;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;->networkCallbacks:Ljava/util/List;

    return-object p0
.end method

.method private final registerNetworkCallbacks()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 53
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x3

    .line 55
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 56
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xc

    .line 57
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;->callbackDelegate:Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager$callbackDelegate$1;

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private final unregisterNetworkCallbacks()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;->callbackDelegate:Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager$callbackDelegate$1;

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method


# virtual methods
.method public final registerNetworkCallback(Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;->networkCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;->networkCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;->registerNetworkCallbacks()V

    :cond_0
    return-void
.end method

.method public final unregisterNetworkCallback(Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;->networkCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 46
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;->networkCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;->unregisterNetworkCallbacks()V

    :cond_0
    return-void
.end method
