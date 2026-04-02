.class public final Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager$callbackDelegate$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkConnectivityManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;-><init>(Landroid/net/ConnectivityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkConnectivityManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkConnectivityManager.kt\ncom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager$callbackDelegate$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,73:1\n1855#2,2:74\n1855#2,2:76\n1855#2,2:78\n*S KotlinDebug\n*F\n+ 1 NetworkConnectivityManager.kt\ncom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager$callbackDelegate$1\n*L\n23#1:74,2\n29#1:76,2\n34#1:78,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager$callbackDelegate$1",
        "Landroid/net/ConnectivityManager$NetworkCallback;",
        "onAvailable",
        "",
        "network",
        "Landroid/net/Network;",
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
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager$callbackDelegate$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;

    .line 19
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 22
    invoke-virtual {p1}, Landroid/net/Network;->hashCode()I

    move-result p1

    .line 23
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager$callbackDelegate$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;->access$getNetworkCallbacks$p(Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 74
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityCallback;

    .line 23
    invoke-interface {v1, p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityCallback;->onAvailable(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 28
    invoke-virtual {p1}, Landroid/net/Network;->hashCode()I

    move-result p1

    .line 29
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager$callbackDelegate$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;->access$getNetworkCallbacks$p(Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 76
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityCallback;

    .line 29
    invoke-interface {v1, p1}, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityCallback;->onLost(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 33
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 34
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager$callbackDelegate$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;->access$getNetworkCallbacks$p(Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 78
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityCallback;

    .line 34
    invoke-interface {v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityCallback;->onUnavailable()V

    goto :goto_0

    :cond_0
    return-void
.end method
