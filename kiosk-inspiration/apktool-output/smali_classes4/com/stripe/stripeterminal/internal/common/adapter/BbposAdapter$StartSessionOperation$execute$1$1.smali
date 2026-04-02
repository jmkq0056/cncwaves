.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BbposAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Throwable;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "e",
        ""
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
    c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$StartSessionOperation$execute$1$1"
    f = "BbposAdapter.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1$1;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;

    invoke-direct {p1, v0, p3}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;Lkotlin/coroutines/Continuation;)V

    iput-object p2, p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1$1;->L$0:Ljava/lang/Object;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 988
    iget v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1$1;->L$0:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    .line 989
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation$execute$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;

    .line 990
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 991
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 990
    const-string v2, "Session initialization failed"

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 989
    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;->setException(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 996
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 988
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
