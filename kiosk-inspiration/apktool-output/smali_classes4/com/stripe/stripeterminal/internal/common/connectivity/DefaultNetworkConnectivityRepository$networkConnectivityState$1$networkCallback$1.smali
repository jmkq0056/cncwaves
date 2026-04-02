.class public final Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$networkCallback$1;
.super Ljava/lang/Object;
.source "DefaultNetworkConnectivityRepository.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$networkCallback$1",
        "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityCallback;",
        "onAvailable",
        "",
        "uniqueId",
        "",
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
.field final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $availableNetworks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$networkCallback$1;->$availableNetworks:Ljava/util/Set;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$networkCallback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(I)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$networkCallback$1;->$availableNetworks:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$networkCallback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$networkCallback$1;->$availableNetworks:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ProducerScope;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onLost(I)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$networkCallback$1;->$availableNetworks:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 29
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$networkCallback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$networkCallback$1;->$availableNetworks:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ProducerScope;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$networkCallback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/ProducerScope;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
