.class Lcom/sun/jna/platform/win32/COM/util/ComThread$1;
.super Ljava/lang/Object;
.source "ComThread.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$coinitialiseExFlag:I


# direct methods
.method constructor <init>(Lcom/sun/jna/platform/win32/COM/util/ComThread;I)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread$1;->this$0:Lcom/sun/jna/platform/win32/COM/util/ComThread;

    iput p2, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread$1;->val$coinitialiseExFlag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 64
    :try_start_0
    sget-object v0, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    iget v1, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread$1;->val$coinitialiseExFlag:I

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/sun/jna/platform/win32/Ole32;->CoInitializeEx(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 65
    invoke-static {}, Lcom/sun/jna/platform/win32/COM/util/ComThread;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 66
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 67
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread$1;->this$0:Lcom/sun/jna/platform/win32/COM/util/ComThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/jna/platform/win32/COM/util/ComThread;->requiresInitialisation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 69
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/util/ComThread$1;->this$0:Lcom/sun/jna/platform/win32/COM/util/ComThread;

    iget-object v1, v1, Lcom/sun/jna/platform/win32/COM/util/ComThread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
