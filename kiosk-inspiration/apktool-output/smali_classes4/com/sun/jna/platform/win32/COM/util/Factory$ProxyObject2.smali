.class Lcom/sun/jna/platform/win32/COM/util/Factory$ProxyObject2;
.super Ljava/lang/Object;
.source "Factory.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/COM/util/Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyObject2"
.end annotation


# instance fields
.field private final delegate:Ljava/lang/Object;

.field final synthetic this$0:Lcom/sun/jna/platform/win32/COM/util/Factory;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/COM/util/Factory;Ljava/lang/Object;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/Factory$ProxyObject2;->this$0:Lcom/sun/jna/platform/win32/COM/util/Factory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/util/Factory$ProxyObject2;->delegate:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/sun/jna/platform/win32/COM/util/Factory$ProxyObject2;)Ljava/lang/Object;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sun/jna/platform/win32/COM/util/Factory$ProxyObject2;->delegate:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    .line 84
    :goto_0
    array-length v0, p3

    if-ge p1, v0, :cond_1

    .line 85
    aget-object v0, p3, p1

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    aget-object v0, p3, p1

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    .line 88
    instance-of v1, v0, Lcom/sun/jna/platform/win32/COM/util/Factory$ProxyObject2;

    if-eqz v1, :cond_0

    .line 89
    check-cast v0, Lcom/sun/jna/platform/win32/COM/util/Factory$ProxyObject2;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/COM/util/Factory$ProxyObject2;->delegate:Ljava/lang/Object;

    aput-object v0, p3, p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/util/Factory$ProxyObject2;->this$0:Lcom/sun/jna/platform/win32/COM/util/Factory;

    new-instance v0, Lcom/sun/jna/platform/win32/COM/util/Factory$ProxyObject2$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/sun/jna/platform/win32/COM/util/Factory$ProxyObject2$1;-><init>(Lcom/sun/jna/platform/win32/COM/util/Factory$ProxyObject2;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/sun/jna/platform/win32/COM/util/Factory;->access$100(Lcom/sun/jna/platform/win32/COM/util/Factory;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
