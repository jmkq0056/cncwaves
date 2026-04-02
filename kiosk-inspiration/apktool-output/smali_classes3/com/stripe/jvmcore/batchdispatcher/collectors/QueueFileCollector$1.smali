.class final Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "QueueFileCollector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;-><init>(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/loggingmodels/LoggerExceptionListener;Lcom/stripe/logwriter/LogWriter;)V
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
    c = "com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector$1"
    f = "QueueFileCollector.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

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
            "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

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

    new-instance v0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;

    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-direct {v0, v1, p2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;-><init>(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-string v0, "access$getFile(...)"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 84
    iget v1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;->label:I

    if-nez v1, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 85
    iget-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 86
    invoke-static {p1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$getFile(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$prepareQueueFile(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;Ljava/io/File;)Lcom/squareup/tape2/QueueFile;

    move-result-object v1

    .line 85
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 87
    :goto_0
    iget-object v2, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    const-string v4, "access$getTAG$p(...)"

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 91
    invoke-static {v2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$getLogWriter$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Lcom/stripe/logwriter/LogWriter;

    move-result-object v1

    invoke-static {}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollectorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$getFile(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed to restore, deleting:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6, v3}, Lcom/stripe/logwriter/LogWriter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    invoke-static {v2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$getFile(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 93
    invoke-static {v2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$getFile(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$prepareQueueFile(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;Ljava/io/File;)Lcom/squareup/tape2/QueueFile;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 94
    :goto_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v1, Lcom/squareup/tape2/QueueFile;

    .line 85
    invoke-static {p1, v1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$setQueueFile$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;Lcom/squareup/tape2/QueueFile;)V

    .line 96
    iget-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {p1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$getLogWriter$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Lcom/stripe/logwriter/LogWriter;

    move-result-object p1

    .line 97
    invoke-static {}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollectorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$getFile(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ready to use with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$getQueueFile$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Lcom/squareup/tape2/QueueFile;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "queueFile"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v2}, Lcom/squareup/tape2/QueueFile;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$1;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v2}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$usedBytes(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)J

    move-result-wide v2

    .line 98
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    const-string v2, " bytes."

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-interface {p1, v0, v1}, Lcom/stripe/logwriter/LogWriter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 84
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
