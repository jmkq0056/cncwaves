.class final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AsyncQueryJob.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;->launch()Lkotlinx/coroutines/Job;
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0012\u0008\u0000\u0010\u0002*\u000c\u0012\u0004\u0012\u0002H\u0002\u0012\u0002\u0008\u00030\u0003\"\u0012\u0008\u0001\u0010\u0004*\u000c\u0012\u0004\u0012\u0002H\u0004\u0012\u0002\u0008\u00030\u0003\"\u0012\u0008\u0002\u0010\u0005*\u000c\u0012\u0004\u0012\u0002H\u0005\u0012\u0002\u0008\u00030\u0003\"\u0012\u0008\u0003\u0010\u0006*\u000c\u0012\u0004\u0012\u0002H\u0006\u0012\u0002\u0008\u00030\u0003\"\u0004\u0008\u0004\u0010\u0007*\u00020\u0008H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "JobRequest",
        "Lcom/squareup/wire/Message;",
        "JobResponse",
        "QueryRequest",
        "QueryResponse",
        "CallbackType",
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
    c = "com.stripe.stripeterminal.internal.common.remotereadercontrollers.AsyncQueryJob$launch$1"
    f = "AsyncQueryJob.kt"
    i = {}
    l = {
        0xf3
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob<",
            "TJobRequest;TJobResponse;TQueryRequest;TQueryResponse;TCallbackType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob<",
            "TJobRequest;TJobResponse;TQueryRequest;TQueryResponse;TCallbackType;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;

    invoke-direct {p1, v0, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 241
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 243
    :try_start_1
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;->access$getCallback$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;->label:I

    invoke-static {v1, v3}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;->access$makeJobRequest(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p1

    .line 255
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;->access$getOnFailure$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    .line 256
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 257
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 256
    const-string v2, "Unexpected SDK error"

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 255
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 247
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;->access$getOnFailure$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 248
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 249
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 251
    move-object v4, p1

    check-cast v4, Ljava/lang/Throwable;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 248
    const-string v3, "Job was canceled"

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 247
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 245
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$launch$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;->access$getOnFailure$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
