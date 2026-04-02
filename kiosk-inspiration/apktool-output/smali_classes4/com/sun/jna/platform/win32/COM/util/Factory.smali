.class public Lcom/sun/jna/platform/win32/COM/util/Factory;
.super Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;
.source "Factory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/COM/util/Factory$CallbackProxy2;,
        Lcom/sun/jna/platform/win32/COM/util/Factory$ProxyObject2;
    }
.end annotation


# instance fields
.field private comThread:Lcom/sun/jna/platform/win32/COM/util/ComThread;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 61
    new-instance v0, Lcom/sun/jna/platform/win32/COM/util/ComThread;

    new-instance v1, Lcom/sun/jna/platform/win32/COM/util/Factory$1;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/COM/util/Factory$1;-><init>()V

    const-string v2, "Default Factory COM Thread"

    const-wide/16 v3, 0x1388

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/sun/jna/platform/win32/COM/util/ComThread;-><init>(Ljava/lang/String;JLjava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/COM/util/Factory;-><init>(Lcom/sun/jna/platform/win32/COM/util/ComThread;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/COM/util/ComThread;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/Factory;->comThread:Lcom/sun/jna/platform/win32/COM/util/ComThread;

    return-void
.end method

.method static synthetic access$100(Lcom/sun/jna/platform/win32/COM/util/Factory;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/COM/util/Factory;->runInComThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$201(Lcom/sun/jna/platform/win32/COM/util/Factory;Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;)Lcom/sun/jna/platform/win32/Guid$GUID;
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->discoverClsId(Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;)Lcom/sun/jna/platform/win32/Guid$GUID;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$301(Lcom/sun/jna/platform/win32/COM/util/Factory;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .line 56
    invoke-super {p0, p1}, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->fetchObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$401(Lcom/sun/jna/platform/win32/COM/util/Factory;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->createObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static appendStacktrace(Ljava/lang/Exception;Ljava/lang/Throwable;)V
    .locals 5

    .line 198
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 199
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 200
    array-length v1, p0

    array-length v2, v0

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    .line 201
    array-length v2, v0

    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    array-length p0, v0

    invoke-static {v0, v4, v1, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private runInComThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/Factory;->comThread:Lcom/sun/jna/platform/win32/COM/util/ComThread;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/COM/util/ComThread;->execute(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 179
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_1

    .line 182
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    .line 183
    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 184
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 185
    invoke-static {p1, v0}, Lcom/sun/jna/platform/win32/COM/util/Factory;->appendStacktrace(Ljava/lang/Exception;Ljava/lang/Throwable;)V

    .line 186
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 180
    :cond_1
    invoke-static {p1, v0}, Lcom/sun/jna/platform/win32/COM/util/Factory;->appendStacktrace(Ljava/lang/Exception;Ljava/lang/Throwable;)V

    .line 181
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :catch_1
    move-exception p1

    .line 176
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 174
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method createDispatchCallback(Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;)Lcom/sun/jna/platform/win32/COM/IDispatchCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;",
            ")",
            "Lcom/sun/jna/platform/win32/COM/IDispatchCallback;"
        }
    .end annotation

    .line 162
    new-instance v0, Lcom/sun/jna/platform/win32/COM/util/Factory$CallbackProxy2;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/sun/jna/platform/win32/COM/util/Factory$CallbackProxy2;-><init>(Lcom/sun/jna/platform/win32/COM/util/Factory;Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/util/IComEventCallbackListener;)V

    return-object v0
.end method

.method public createObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 153
    new-instance v0, Lcom/sun/jna/platform/win32/COM/util/Factory$4;

    invoke-direct {v0, p0, p1}, Lcom/sun/jna/platform/win32/COM/util/Factory$4;-><init>(Lcom/sun/jna/platform/win32/COM/util/Factory;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/COM/util/Factory;->runInComThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createProxy(Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/IDispatch;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/sun/jna/platform/win32/COM/IDispatch;",
            ")TT;"
        }
    .end annotation

    .line 125
    invoke-super {p0, p1, p2}, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->createProxy(Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/IDispatch;)Ljava/lang/Object;

    move-result-object p2

    .line 126
    new-instance v0, Lcom/sun/jna/platform/win32/COM/util/Factory$ProxyObject2;

    invoke-direct {v0, p0, p2}, Lcom/sun/jna/platform/win32/COM/util/Factory$ProxyObject2;-><init>(Lcom/sun/jna/platform/win32/COM/util/Factory;Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method discoverClsId(Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;)Lcom/sun/jna/platform/win32/Guid$GUID;
    .locals 1

    .line 133
    new-instance v0, Lcom/sun/jna/platform/win32/COM/util/Factory$2;

    invoke-direct {v0, p0, p1}, Lcom/sun/jna/platform/win32/COM/util/Factory$2;-><init>(Lcom/sun/jna/platform/win32/COM/util/Factory;Lcom/sun/jna/platform/win32/COM/util/annotation/ComObject;)V

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/COM/util/Factory;->runInComThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/Guid$GUID;

    return-object p1
.end method

.method public fetchObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/COM/COMException;
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/sun/jna/platform/win32/COM/util/Factory$3;

    invoke-direct {v0, p0, p1}, Lcom/sun/jna/platform/win32/COM/util/Factory$3;-><init>(Lcom/sun/jna/platform/win32/COM/util/Factory;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/COM/util/Factory;->runInComThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getComThread()Lcom/sun/jna/platform/win32/COM/util/ComThread;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/util/Factory;->comThread:Lcom/sun/jna/platform/win32/COM/util/ComThread;

    return-object v0
.end method

.method public getRunningObjectTable()Lcom/sun/jna/platform/win32/COM/util/IRunningObjectTable;
    .locals 1

    .line 167
    invoke-super {p0}, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->getRunningObjectTable()Lcom/sun/jna/platform/win32/COM/util/IRunningObjectTable;

    move-result-object v0

    return-object v0
.end method
