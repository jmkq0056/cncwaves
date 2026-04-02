.class final Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DefaultOfflineEventHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Lcom/stripe/device/OfflineLocationConfigs;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "<name for destructuring parameter 0>",
        "Lkotlin/Pair;",
        "",
        "Lcom/stripe/device/OfflineLocationConfigs;"
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
    c = "com.stripe.offlinemode.DefaultOfflineEventHandler$listenForLocationOfflineConfig$1$1"
    f = "DefaultOfflineEventHandler.kt"
    i = {}
    l = {
        0x290
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/offlinemode/DefaultOfflineEventHandler;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/DefaultOfflineEventHandler;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/DefaultOfflineEventHandler;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$1$1;->this$0:Lcom/stripe/offlinemode/DefaultOfflineEventHandler;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$1$1;

    iget-object v1, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$1$1;->this$0:Lcom/stripe/offlinemode/DefaultOfflineEventHandler;

    invoke-direct {v0, v1, p2}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$1$1;-><init>(Lcom/stripe/offlinemode/DefaultOfflineEventHandler;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Pair;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$1$1;->invoke(Lkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/stripe/device/OfflineLocationConfigs;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 654
    iget v1, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/device/OfflineLocationConfigs;

    .line 656
    :try_start_1
    iget-object v3, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$1$1;->this$0:Lcom/stripe/offlinemode/DefaultOfflineEventHandler;

    invoke-static {v3}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->access$getOfflineRepository$p(Lcom/stripe/offlinemode/DefaultOfflineEventHandler;)Lcom/stripe/offlinemode/storage/OfflineRepository;

    move-result-object v3

    .line 658
    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    .line 656
    iput v2, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$1$1;->label:I

    invoke-interface {v3, v1, p1, v4}, Lcom/stripe/offlinemode/storage/OfflineRepository;->updateOfflineLocationWithConfig(Ljava/lang/String;Lcom/stripe/device/OfflineLocationConfigs;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_2

    return-object v0

    .line 661
    :goto_0
    iget-object v0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$listenForLocationOfflineConfig$1$1;->this$0:Lcom/stripe/offlinemode/DefaultOfflineEventHandler;

    invoke-static {v0}, Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->access$getLogger$p(Lcom/stripe/offlinemode/DefaultOfflineEventHandler;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "Failed to update location with offline config."

    invoke-interface {v0, v2, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 663
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
