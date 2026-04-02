.class final Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "QueueFileCollector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->peek(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+TT;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u0003H\u008a@"
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
    c = "com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$peek$2"
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
            "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

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

    new-instance p1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;

    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-direct {p1, v0, p2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;-><init>(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string v0, "queueFile"

    const-string v1, "access$getTAG$p(...)"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 176
    iget v2, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;->label:I

    if-nez v2, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 177
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    const/4 v2, 0x0

    .line 180
    :try_start_0
    iget-object v3, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v3, p1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$populateBatch(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$getLogWriter$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Lcom/stripe/logwriter/LogWriter;

    move-result-object v0

    invoke-static {}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollectorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v3}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$queueFilename(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " batch of size "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " generated."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/stripe/logwriter/LogWriter;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 204
    iget-object v3, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v3}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$getLogWriter$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Lcom/stripe/logwriter/LogWriter;

    move-result-object v3

    .line 205
    invoke-static {}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollectorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v5}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$queueFilename(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " oom error, file appears to be corrupt, dropping."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    move-object v5, p1

    check-cast v5, Ljava/lang/Throwable;

    .line 204
    invoke-interface {v3, v4, v1, v5}, Lcom/stripe/logwriter/LogWriter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$getQueueFile$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Lcom/squareup/tape2/QueueFile;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {v2}, Lcom/squareup/tape2/QueueFile;->clear()V

    .line 210
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$getLoggerExceptionListener$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Lcom/stripe/loggingmodels/LoggerExceptionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$queueFilename(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/stripe/loggingmodels/LoggerExceptionListener;->onFileOutOfMemoryError(Ljava/lang/String;Ljava/lang/OutOfMemoryError;)V

    .line 211
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 193
    iget-object v3, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v3}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$getLogWriter$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Lcom/stripe/logwriter/LogWriter;

    move-result-object v3

    .line 194
    invoke-static {}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollectorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v5}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$queueFilename(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " failed to read, file appears to be corrupt, dropping."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    check-cast p1, Ljava/lang/Throwable;

    .line 193
    invoke-interface {v3, v4, v1, p1}, Lcom/stripe/logwriter/LogWriter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    iget-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$peek$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {p1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$getQueueFile$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Lcom/squareup/tape2/QueueFile;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, p1

    :goto_1
    invoke-virtual {v2}, Lcom/squareup/tape2/QueueFile;->clear()V

    .line 199
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 176
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
