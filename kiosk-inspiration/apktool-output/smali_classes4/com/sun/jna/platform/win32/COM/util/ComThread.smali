.class public Lcom/sun/jna/platform/win32/COM/util/ComThread;
.super Ljava/lang/Object;
.source "ComThread.java"


# static fields
.field private static isCOMThread:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field executor:Ljava/util/concurrent/ExecutorService;

.field firstTask:Ljava/lang/Runnable;

.field requiresInitialisation:Z

.field timeoutMilliseconds:J

.field uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->isCOMThread:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 49
    invoke-direct/range {v0 .. v5}, Lcom/sun/jna/platform/win32/COM/util/ComThread;-><init>(Ljava/lang/String;JLjava/lang/Thread$UncaughtExceptionHandler;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/Thread$UncaughtExceptionHandler;I)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->requiresInitialisation:Z

    .line 54
    iput-wide p2, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->timeoutMilliseconds:J

    .line 55
    iput-object p4, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 56
    new-instance p2, Lcom/sun/jna/platform/win32/COM/util/ComThread$1;

    invoke-direct {p2, p0, p5}, Lcom/sun/jna/platform/win32/COM/util/ComThread$1;-><init>(Lcom/sun/jna/platform/win32/COM/util/ComThread;I)V

    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->firstTask:Ljava/lang/Runnable;

    .line 73
    new-instance p2, Lcom/sun/jna/platform/win32/COM/util/ComThread$2;

    invoke-direct {p2, p0, p1}, Lcom/sun/jna/platform/win32/COM/util/ComThread$2;-><init>(Lcom/sun/jna/platform/win32/COM/util/ComThread;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    .line 39
    sget-object v0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->isCOMThread:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static setComThread(Z)V
    .locals 1

    .line 136
    sget-object v0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->isCOMThread:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->isCOMThread:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 145
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 147
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 151
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 154
    :cond_1
    iget-boolean v0, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->requiresInitialisation:Z

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->executor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->firstTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iget-wide v0, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->timeoutMilliseconds:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x64

    .line 131
    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/platform/win32/COM/util/ComThread;->terminate(J)V

    :cond_0
    return-void
.end method

.method public terminate(J)V
    .locals 2

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sun/jna/platform/win32/COM/util/ComThread$3;

    invoke-direct {v1, p0}, Lcom/sun/jna/platform/win32/COM/util/ComThread$3;-><init>(Lcom/sun/jna/platform/win32/COM/util/ComThread;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 115
    invoke-interface {v0, p1, p2, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 117
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 124
    :catch_0
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0

    :catch_1
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
