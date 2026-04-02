.class Lcom/sun/jna/platform/win32/COM/util/ComThread$2;
.super Ljava/lang/Object;
.source "ComThread.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/win32/COM/util/ComThread;-><init>(Ljava/lang/String;JLjava/lang/Thread$UncaughtExceptionHandler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/win32/COM/util/ComThread;

.field final synthetic val$threadName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/jna/platform/win32/COM/util/ComThread;Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread$2;->this$0:Lcom/sun/jna/platform/win32/COM/util/ComThread;

    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread$2;->val$threadName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread$2;->this$0:Lcom/sun/jna/platform/win32/COM/util/ComThread;

    iget-boolean v0, v0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->requiresInitialisation:Z

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread$2;->val$threadName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 86
    new-instance p1, Lcom/sun/jna/platform/win32/COM/util/ComThread$2$1;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/COM/util/ComThread$2$1;-><init>(Lcom/sun/jna/platform/win32/COM/util/ComThread$2;)V

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v0

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "ComThread executor has a problem."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
