.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BbposAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


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
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;",
        ">;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;",
        "event"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$2"
    f = "BbposAdapter.kt"
    i = {
        0x0
    }
    l = {
        0x47b
    }
    m = "invokeSuspend"
    n = {
        "event"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$2;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$2;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$2;

    invoke-direct {v0, p3}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$2;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1146
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;

    .line 1147
    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation$discoveryJob$1$1$2;->label:I

    invoke-interface {p1, v1, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v1

    .line 1148
    :goto_0
    instance-of p1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult$Failure;

    xor-int/2addr p1, v2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
