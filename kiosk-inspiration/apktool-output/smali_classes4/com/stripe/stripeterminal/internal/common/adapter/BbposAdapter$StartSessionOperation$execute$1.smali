.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BbposAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$StartSessionOperation$execute$1"
    f = "BbposAdapter.kt"
    i = {}
    l = {
        0x3db,
        0x3e5
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $hardwareReader:Lcom/stripe/core/hardware/Reader;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;

.field final synthetic this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;Lcom/stripe/core/hardware/Reader;Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;",
            "Lcom/stripe/core/hardware/Reader;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;->$hardwareReader:Lcom/stripe/core/hardware/Reader;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;->$hardwareReader:Lcom/stripe/core/hardware/Reader;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;Lcom/stripe/core/hardware/Reader;Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 986
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 987
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;->$hardwareReader:Lcom/stripe/core/hardware/Reader;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;->label:I

    invoke-static {p1, v1, v4}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;->access$startSession(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;Lcom/stripe/core/hardware/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 986
    :cond_3
    :goto_0
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 988
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1$1;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->catch(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 997
    iput v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    .line 998
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getConnectionManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/readerconnection/ConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/core/readerconnection/ConnectionManager;->endOperation()V

    .line 999
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->update()V

    .line 1000
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;->set(Ljava/lang/Object;)V

    .line 1001
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
