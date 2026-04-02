.class final Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultNetworkConnectivityRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $networkCallback:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$networkCallback$1;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$networkCallback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$1;->$networkCallback:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$networkCallback$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;->access$getConnectivityManager$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository;)Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$1;->$networkCallback:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultNetworkConnectivityRepository$networkConnectivityState$1$networkCallback$1;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityCallback;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityManager;->unregisterNetworkCallback(Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityCallback;)V

    return-void
.end method
