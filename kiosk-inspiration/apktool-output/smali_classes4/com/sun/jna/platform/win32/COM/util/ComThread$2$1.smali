.class Lcom/sun/jna/platform/win32/COM/util/ComThread$2$1;
.super Ljava/lang/Object;
.source "ComThread.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/win32/COM/util/ComThread$2;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/jna/platform/win32/COM/util/ComThread$2;


# direct methods
.method constructor <init>(Lcom/sun/jna/platform/win32/COM/util/ComThread$2;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread$2$1;->this$1:Lcom/sun/jna/platform/win32/COM/util/ComThread$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread$2$1;->this$1:Lcom/sun/jna/platform/win32/COM/util/ComThread$2;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/COM/util/ComThread$2;->this$0:Lcom/sun/jna/platform/win32/COM/util/ComThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->requiresInitialisation:Z

    .line 90
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread$2$1;->this$1:Lcom/sun/jna/platform/win32/COM/util/ComThread$2;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/COM/util/ComThread$2;->this$0:Lcom/sun/jna/platform/win32/COM/util/ComThread;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
