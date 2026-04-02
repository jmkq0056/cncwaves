.class Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler$1;
.super Ljava/lang/Object;
.source "User32Util.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler$1;->this$1:Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler;

    iput-object p2, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler$1;->val$method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler$1;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler$1;->val$method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler$1;->this$1:Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler;

    invoke-static {v1}, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler;->access$000(Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/jna/platform/win32/User32Util$MessageLoopThread$Handler$1;->val$args:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
