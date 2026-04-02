.class public final Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;
.super Ljava/lang/Object;
.source "UnacknowledgedReaderEventsHandler.kt"

# interfaces
.implements Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUnacknowledgedReaderEventsHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnacknowledgedReaderEventsHandler.kt\ncom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,61:1\n44#2,4:62\n*S KotlinDebug\n*F\n+ 1 UnacknowledgedReaderEventsHandler.kt\ncom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler\n*L\n41#1:62,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B7\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\u000c\u00a2\u0006\u0002\u0010\rB5\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u0012\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\u000c\u00a2\u0006\u0002\u0010\u0011J \u0010\u0018\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0096@\u00a2\u0006\u0002\u0010\u001dR\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "fetcher",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;",
        "listener",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "readerEventsListener",
        "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "errorHandler",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "job",
        "Lkotlinx/coroutines/Job;",
        "lock",
        "Ljava/util/concurrent/locks/Lock;",
        "notifyUnAckedEvents",
        "api",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;",
        "count",
        "",
        "(Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "offlinemode"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final errorHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private final fetcher:Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;

.field private job:Lkotlinx/coroutines/Job;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final readerEventsListener:Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 32
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerEventsListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 22
    iput-object p2, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;->fetcher:Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;

    .line 23
    iput-object p3, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;->readerEventsListener:Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;

    .line 24
    iput-object p4, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 38
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    iput-object p1, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;->lock:Ljava/util/concurrent/locks/Lock;

    .line 62
    sget-object p1, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance p2, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {p2, p1, p0}, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;)V

    check-cast p2, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 41
    iput-object p2, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;->errorHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    return-void
.end method

.method public static final synthetic access$getFetcher$p(Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;)Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;->fetcher:Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-object p0
.end method

.method public static final synthetic access$getReaderEventsListener$p(Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;)Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;->readerEventsListener:Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;

    return-object p0
.end method


# virtual methods
.method public notifyUnAckedEvents(Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/Job;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 46
    iget-object p3, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-lez p2, :cond_1

    .line 50
    :try_start_0
    iget-object p2, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;->job:Lkotlinx/coroutines/Job;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p2, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;->errorHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    move-object v1, p2

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance p2, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler$notifyUnAckedEvents$2$1;

    const/4 v2, 0x0

    invoke-direct {p2, p0, p1, v2}, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler$notifyUnAckedEvents$2$1;-><init>(Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;->job:Lkotlinx/coroutines/Job;

    .line 57
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/stripe/jvmcore/offlinemode/readerevent/UnacknowledgedReaderEventsHandler;->job:Lkotlinx/coroutines/Job;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
