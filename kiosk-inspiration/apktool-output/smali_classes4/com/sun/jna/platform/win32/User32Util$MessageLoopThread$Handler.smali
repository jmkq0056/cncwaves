.class public Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler;
.super Ljava/lang/Object;
.source "User32Util.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Handler"
.end annotation


# instance fields
.field private final delegate:Ljava/lang/Object;

.field final synthetic this$0:Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;Ljava/lang/Object;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler;->this$0:Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler;->delegate:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler;)Ljava/lang/Object;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler;->delegate:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 140
    :try_start_0
    iget-object p1, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler;->this$0:Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;

    new-instance v0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler$1;-><init>(Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;->runOnThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 147
    instance-of p3, p2, Ljava/lang/Exception;

    if-eqz p3, :cond_0

    .line 148
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 149
    invoke-virtual {p2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 150
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

    .line 151
    array-length v0, p3

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 152
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    array-length p1, p1

    array-length v1, p3

    invoke-static {p3, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 155
    check-cast p2, Ljava/lang/Exception;

    throw p2

    .line 157
    :cond_0
    throw p1
.end method
