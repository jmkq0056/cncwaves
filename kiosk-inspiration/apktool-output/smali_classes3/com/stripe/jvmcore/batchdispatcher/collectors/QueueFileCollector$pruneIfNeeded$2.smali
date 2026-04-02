.class final Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$pruneIfNeeded$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "QueueFileCollector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->pruneIfNeeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
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
    c = "com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$pruneIfNeeded$2"
    f = "QueueFileCollector.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$pruneIfNeeded$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$pruneIfNeeded$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

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

    new-instance p1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$pruneIfNeeded$2;

    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$pruneIfNeeded$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-direct {p1, v0, p2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$pruneIfNeeded$2;-><init>(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$pruneIfNeeded$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$pruneIfNeeded$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$pruneIfNeeded$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$pruneIfNeeded$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 267
    iget v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$pruneIfNeeded$2;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 269
    :goto_0
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$pruneIfNeeded$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$getQueueFile$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Lcom/squareup/tape2/QueueFile;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "queueFile"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/squareup/tape2/QueueFile;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$pruneIfNeeded$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$usedBytes(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$pruneIfNeeded$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$getConfiguration$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;->getPruneFileBytes()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$pruneIfNeeded$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$getQueueFile$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Lcom/squareup/tape2/QueueFile;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/squareup/tape2/QueueFile;->remove()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    .line 276
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$pruneIfNeeded$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$getLogWriter$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Lcom/stripe/logwriter/LogWriter;

    move-result-object v0

    .line 277
    invoke-static {}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollectorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$pruneIfNeeded$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v3}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$queueFilename(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pruned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " file entries due to over sized file."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-interface {v0, v1, p1}, Lcom/stripe/logwriter/LogWriter;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 267
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
