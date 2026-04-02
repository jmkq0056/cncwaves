.class public Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;
.super Ljava/lang/Thread;
.source "User32Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/User32Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageLoopThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler;
    }
.end annotation


# static fields
.field private static messageLoopId:J


# instance fields
.field private volatile javaThreadId:J

.field private volatile nativeThreadId:I

.field private final workQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/FutureTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 168
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 163
    iput v0, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->nativeThreadId:I

    const-wide/16 v0, 0x0

    .line 164
    iput-wide v0, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->javaThreadId:J

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->workQueue:Ljava/util/List;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JNA User32 MessageLoop "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v1, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->messageLoopId:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->messageLoopId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 4

    .line 252
    sget-object v0, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    iget v1, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->nativeThreadId:I

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/sun/jna/platform/win32/User32;->PostThreadMessage(IILcom/sun/jna/platform/win32/WinDef$WPARAM;Lcom/sun/jna/platform/win32/WinDef$LPARAM;)I

    return-void
.end method

.method protected getMessageFailed()Z
    .locals 4

    .line 271
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    .line 272
    const-string v1, "com.sun.jna.platform.win32.User32Util.MessageLoopThread"

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Message loop was interrupted by an error. [lastError: {0}]"

    .line 275
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 273
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 6

    .line 174
    new-instance v1, Lcom/sun/jna/platform/win32/WinUser$MSG;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/WinUser$MSG;-><init>()V

    .line 177
    sget-object v0, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/User32;->PeekMessage(Lcom/sun/jna/platform/win32/WinUser$MSG;Lcom/sun/jna/platform/win32/WinDef$HWND;III)Z

    .line 178
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->javaThreadId:J

    .line 179
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetCurrentThreadId()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->nativeThreadId:I

    .line 182
    :cond_0
    :goto_0
    sget-object v0, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/sun/jna/platform/win32/User32;->GetMessage(Lcom/sun/jna/platform/win32/WinUser$MSG;Lcom/sun/jna/platform/win32/WinDef$HWND;II)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 185
    :goto_1
    iget-object v0, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->workQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->workQueue:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/FutureTask;

    .line 188
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 193
    :catch_0
    :cond_1
    sget-object v0, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/User32;->TranslateMessage(Lcom/sun/jna/platform/win32/WinUser$MSG;)Z

    .line 194
    sget-object v0, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/User32;->DispatchMessage(Lcom/sun/jna/platform/win32/WinUser$MSG;)Lcom/sun/jna/platform/win32/WinDef$LRESULT;

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->getMessageFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->workQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 204
    iget-object v0, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->workQueue:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method public runAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 209
    :goto_0
    iget v0, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->nativeThreadId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x14

    .line 211
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 213
    const-class v2, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 217
    iget-object p1, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->workQueue:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object p1, Lcom/sun/jna/platform/win32/User32;->INSTANCE:Lcom/sun/jna/platform/win32/User32;

    iget v2, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->nativeThreadId:I

    const/16 v3, 0x400

    invoke-interface {p1, v2, v3, v1, v1}, Lcom/sun/jna/platform/win32/User32;->PostThreadMessage(IILcom/sun/jna/platform/win32/WinDef$WPARAM;Lcom/sun/jna/platform/win32/WinDef$LPARAM;)I

    return-object v0
.end method

.method public runOnThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    :goto_0
    iget-wide v0, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->javaThreadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x14

    .line 225
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 227
    const-class v1, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 231
    :cond_0
    iget-wide v0, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->javaThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 232
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 235
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->runAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 237
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 241
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 242
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_2

    .line 243
    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 245
    :cond_2
    throw p1

    :catch_2
    move-exception p1

    .line 239
    throw p1
.end method
