.class public abstract Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;
.super Ljava/lang/Object;
.source "CustomCrpcInterceptor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0016J[\u0010\u000c\u001a\u00020\r\"\u0012\u0008\u0000\u0010\u000e*\u000c\u0012\u0004\u0012\u0002H\u000e\u0012\u0002\u0008\u00030\u000f\"\u0012\u0008\u0001\u0010\u0010*\u000c\u0012\u0004\u0012\u0002H\u0010\u0012\u0002\u0008\u00030\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u0002H\u00102\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u0017H&\u00a2\u0006\u0002\u0010\u0018J9\u0010\u0019\u001a\u00020\r\"\u0012\u0008\u0000\u0010\u000e*\u000c\u0012\u0004\u0012\u0002H\u000e\u0012\u0002\u0008\u00030\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u0002H\u000eH&\u00a2\u0006\u0002\u0010\u001aR\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
        "",
        "()V",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "postCallAction",
        "",
        "M",
        "Lcom/squareup/wire/Message;",
        "RE",
        "okHttpRequest",
        "Lokhttp3/Request;",
        "rpcRequest",
        "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
        "apiRequest",
        "crpcResponse",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)V",
        "preCallAction",
        "(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;)V",
        "crpcclient"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 26
    instance-of v0, p1, Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract postCallAction(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;*>;RE:",
            "Lcom/squareup/wire/Message<",
            "TRE;*>;>(",
            "Lokhttp3/Request;",
            "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
            "TRE;",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "TM;>;)V"
        }
    .end annotation
.end method

.method public abstract preCallAction(Lokhttp3/Request;Lcom/stripe/proto/net/rpc/base/RpcRequest;Lcom/squareup/wire/Message;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;*>;>(",
            "Lokhttp3/Request;",
            "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
            "TM;)V"
        }
    .end annotation
.end method
