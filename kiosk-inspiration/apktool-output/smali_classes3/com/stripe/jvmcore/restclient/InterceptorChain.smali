.class public final Lcom/stripe/jvmcore/restclient/InterceptorChain;
.super Ljava/lang/Object;
.source "InterceptorChain.kt"

# interfaces
.implements Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Rq:",
        "Lcom/squareup/wire/Message<",
        "TRq;*>;Rsp:",
        "Lcom/squareup/wire/Message<",
        "TRsp;*>;Err:",
        "Lcom/squareup/wire/Message<",
        "TErr;*>;>",
        "Ljava/lang/Object;",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain<",
        "TRq;TRsp;TErr;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInterceptorChain.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InterceptorChain.kt\ncom/stripe/jvmcore/restclient/InterceptorChain\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000*\u001c\u0008\u0000\u0010\u0001*\u0016\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\u0008\u00030\u0002j\u0008\u0012\u0004\u0012\u0002H\u0001`\u0003*\u001c\u0008\u0001\u0010\u0004*\u0016\u0012\u0004\u0012\u0002H\u0004\u0012\u0002\u0008\u00030\u0002j\u0008\u0012\u0004\u0012\u0002H\u0004`\u0003*\u001c\u0008\u0002\u0010\u0005*\u0016\u0012\u0004\u0012\u0002H\u0005\u0012\u0002\u0008\u00030\u0002j\u0008\u0012\u0004\u0012\u0002H\u0005`\u00032\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0006BY\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00028\u0000\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0013\u0012\u0006\u0010\u0014\u001a\u00028\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0002\u0010\u0017J\r\u0010\u0014\u001a\u00028\u0002H\u0016\u00a2\u0006\u0002\u0010\u001bJ\u0013\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0001\u00a2\u0006\u0002\u0008\u001cJ\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u001c\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u001e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u000e\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0013H\u0016J\r\u0010\u001f\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001bJ\u0008\u0010\u000c\u001a\u00020\rH\u0016R\u0010\u0010\u0014\u001a\u00028\u0002X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00028\u0000X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/InterceptorChain;",
        "Rq",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/restclient/Proto;",
        "Rsp",
        "Err",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;",
        "interceptors",
        "",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
        "index",
        "",
        "service",
        "",
        "method",
        "request",
        "Lokhttp3/Request;",
        "requestProto",
        "responseProtoType",
        "Ljava/lang/Class;",
        "error",
        "restConfig",
        "Lcom/stripe/jvmcore/restclient/RestConfig;",
        "(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lokhttp3/Request;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)V",
        "Lcom/squareup/wire/Message;",
        "getRestConfig",
        "()Lcom/stripe/jvmcore/restclient/RestConfig;",
        "()Lcom/squareup/wire/Message;",
        "interceptors$base",
        "proceed",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "rpcRequest",
        "base"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final error:Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TErr;"
        }
    .end annotation
.end field

.field private final index:I

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/String;

.field private final request:Lokhttp3/Request;

.field private final requestProto:Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRq;"
        }
    .end annotation
.end field

.field private final responseProtoType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TRsp;>;"
        }
    .end annotation
.end field

.field private final restConfig:Lcom/stripe/jvmcore/restclient/RestConfig;

.field private final service:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lokhttp3/Request;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lokhttp3/Request;",
            "TRq;",
            "Ljava/lang/Class<",
            "TRsp;>;TErr;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")V"
        }
    .end annotation

    const-string v0, "interceptors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestProto"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseProtoType"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restConfig"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->interceptors:Ljava/util/List;

    .line 13
    iput p2, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->index:I

    .line 14
    iput-object p3, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->service:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->method:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->request:Lokhttp3/Request;

    .line 17
    iput-object p6, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->requestProto:Lcom/squareup/wire/Message;

    .line 18
    iput-object p7, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->responseProtoType:Ljava/lang/Class;

    .line 19
    iput-object p8, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->error:Lcom/squareup/wire/Message;

    .line 20
    iput-object p9, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->restConfig:Lcom/stripe/jvmcore/restclient/RestConfig;

    .line 24
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    if-ltz p2, :cond_0

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Invalid index "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", must be greater than zero."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Interceptors in chain must not be empty"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public error()Lcom/squareup/wire/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TErr;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->error:Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public getRestConfig()Lcom/stripe/jvmcore/restclient/RestConfig;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->restConfig:Lcom/stripe/jvmcore/restclient/RestConfig;

    return-object v0
.end method

.method public final interceptors$base()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->method:Ljava/lang/String;

    return-object v0
.end method

.method public proceed(Lokhttp3/Request;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget v0, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->index:I

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->interceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 33
    new-instance v2, Lcom/stripe/jvmcore/restclient/InterceptorChain;

    .line 34
    iget-object v3, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->interceptors:Ljava/util/List;

    .line 35
    iget v0, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->index:I

    add-int/lit8 v4, v0, 0x1

    .line 36
    iget-object v5, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->service:Ljava/lang/String;

    .line 37
    iget-object v6, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->method:Ljava/lang/String;

    .line 39
    iget-object v8, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->requestProto:Lcom/squareup/wire/Message;

    .line 40
    iget-object v9, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->responseProtoType:Ljava/lang/Class;

    .line 41
    iget-object v10, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->error:Lcom/squareup/wire/Message;

    .line 42
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/InterceptorChain;->getRestConfig()Lcom/stripe/jvmcore/restclient/RestConfig;

    move-result-object v11

    move-object v7, p1

    .line 33
    invoke-direct/range {v2 .. v11}, Lcom/stripe/jvmcore/restclient/InterceptorChain;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lokhttp3/Request;Lcom/squareup/wire/Message;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/restclient/RestConfig;)V

    .line 44
    iget-object p1, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->interceptors:Ljava/util/List;

    iget v0, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->index:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/restclient/RestInterceptor;

    .line 46
    check-cast v2, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;

    invoke-virtual {p1, v2}, Lcom/stripe/jvmcore/restclient/RestInterceptor;->intercept(Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "index "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->index:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " does not map to an interceptor"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public request()Lokhttp3/Request;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->request:Lokhttp3/Request;

    return-object v0
.end method

.method public responseProtoType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TRsp;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->responseProtoType:Ljava/lang/Class;

    return-object v0
.end method

.method public rpcRequest()Lcom/squareup/wire/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRq;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->requestProto:Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public service()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/InterceptorChain;->service:Ljava/lang/String;

    return-object v0
.end method
