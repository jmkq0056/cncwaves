.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$3;
.super Ljava/lang/Object;
.source "BbposAdapter.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;",
        "emit",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
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
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$3;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1152
    instance-of p2, p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult$Success;

    if-eqz p2, :cond_0

    .line 1153
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$3;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;

    invoke-static {p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->access$getListener$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;)Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;

    move-result-object p2

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult$Success;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult$Success;->getReaders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;->onUpdateDiscoveredReaders(Ljava/util/List;)V

    goto :goto_0

    .line 1156
    :cond_0
    instance-of p2, p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult$Failure;

    if-eqz p2, :cond_1

    .line 1157
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$3;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult$Failure;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult$Failure;->getException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->setException(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 1160
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1150
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$3;->emit(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
