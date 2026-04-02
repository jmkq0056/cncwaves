.class final Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Companion;
.super Ljava/lang/Object;
.source "QueueFileCollector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Companion;",
        "",
        "()V",
        "createDefaultTapeDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "batchdispatcher"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$-TZcVIlAl8RFWJNeNSRVtCguABA(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Companion;->createDefaultTapeDispatcher$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createDefaultTapeDispatcher(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Companion;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 323
    invoke-direct {p0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Companion;->createDefaultTapeDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    return-object p0
.end method

.method private final createDefaultTapeDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Companion$$ExternalSyntheticLambda0;-><init>()V

    .line 333
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-static {v0}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method private static final createDefaultTapeDispatcher$lambda$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 334
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    const/4 v0, 0x1

    .line 335
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 336
    const-string v0, "stripe-terminal-tape-dispatcher"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object p0
.end method
