.class Lcom/sun/jna/platform/win32/DdemlUtil$MessageLoopWrapper;
.super Ljava/lang/Object;
.source "DdemlUtil.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DdemlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageLoopWrapper"
.end annotation


# instance fields
.field private final delegate:Ljava/lang/Object;

.field private final loopThread:Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;Ljava/lang/Object;)V
    .locals 0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object p1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$MessageLoopWrapper;->loopThread:Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;

    .line 372
    iput-object p2, p0, Lcom/sun/jna/platform/win32/DdemlUtil$MessageLoopWrapper;->delegate:Ljava/lang/Object;

    return-void
.end method

.method private wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;",
            "Ljava/lang/Class;",
            ")TV;"
        }
    .end annotation

    .line 401
    const-class v0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    new-instance v4, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler;

    iget-object v5, p0, Lcom/sun/jna/platform/win32/DdemlUtil$MessageLoopWrapper;->loopThread:Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5, p1}, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler;-><init>(Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;Ljava/lang/Object;)V

    invoke-static {v0, v2, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    .line 404
    const-class v0, Lcom/sun/jna/platform/win32/DdemlUtil$StandaloneDdeClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Class;

    aput-object p2, v1, v3

    new-instance p2, Lcom/sun/jna/platform/win32/DdemlUtil$MessageLoopWrapper;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/DdemlUtil$MessageLoopWrapper;->loopThread:Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;

    invoke-direct {p2, v2, p1}, Lcom/sun/jna/platform/win32/DdemlUtil$MessageLoopWrapper;-><init>(Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread;Ljava/lang/Object;)V

    invoke-static {v0, v1, p2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 377
    :try_start_0
    iget-object p1, p0, Lcom/sun/jna/platform/win32/DdemlUtil$MessageLoopWrapper;->delegate:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 379
    instance-of p3, p1, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;

    if-eqz p3, :cond_0

    .line 380
    const-class p3, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnection;

    goto :goto_0

    .line 381
    :cond_0
    instance-of p3, p1, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;

    if-eqz p3, :cond_1

    .line 382
    const-class p3, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeConnectionList;

    goto :goto_0

    .line 383
    :cond_1
    instance-of p3, p1, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    if-eqz p3, :cond_2

    .line 384
    const-class p3, Lcom/sun/jna/platform/win32/DdemlUtil$IDdeClient;

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_3

    .line 386
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 387
    invoke-direct {p0, p1, p3}, Lcom/sun/jna/platform/win32/DdemlUtil$MessageLoopWrapper;->wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    .line 391
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 392
    instance-of p3, p2, Ljava/lang/Exception;

    if-eqz p3, :cond_4

    .line 393
    check-cast p2, Ljava/lang/Exception;

    throw p2

    .line 395
    :cond_4
    throw p1
.end method
